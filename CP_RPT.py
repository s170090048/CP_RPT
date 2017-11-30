import cx_Oracle as orcl;
import xml.etree.cElementTree as ET;
import  datetime
import xlwt ;
import os
import  sys
import  csv
import collections

#获取调用脚本时传入的参数信息
# if len(sys.argv)>=2:
#     FUNDCODE=sys.argv[1]
#     VALUATIONDATE=sys.argv[2]

#获取所有配置信息
tree=ET.parse('common_conf.xml')
conf=tree.getroot();
subject=conf.find("subject").text
src_info=conf.find("src_info")
src_host=src_info.find("host").text
src_port=src_info.find("port").text
src_username=src_info.find("username").text
src_passwd=src_info.find("password").text
src_sid=src_info.find("sid").text
src_dns=orcl.makedsn(src_host,src_port,src_sid)

tgt_info=conf.find("tgt_info")
tgt_host=tgt_info.find("host").text
tgt_port=tgt_info.find("port").text
tgt_username=tgt_info.find("username").text
tgt_passwd=tgt_info.find("password").text
tgt_sid=tgt_info.find("sid").text
tgt_schema=tgt_info.find("tgt_schema").text

reports=conf.find('REPORTS').findall('report')
reports_attrib=conf.find('REPORTS').attrib
print(reports_attrib)

# 获取配置文件目录
conf_dir = sys.path[0].replace('\\', '/') + '/' + reports_attrib['confdir']
# print(conf_dir)

# 获取CSV文件保存目录
resultdir = sys.path[0].replace('\\', '/') + '/' + reports_attrib['resultdir']
print(resultdir)

#获取要处理的报表信息
rep_list=[]
for report in reports:
   rep= {'rep_name': report.find('name').text,
   'rep_conf_file':report.find('conf_file').text,
   'rep_desc':report.find('desc').text,
   'rep_valid':report.find('valid').text}


   rep_list.append(rep)

print(rep_list)


#连接源数据库
src_conn=orcl.connect(src_username,src_passwd,src_dns);
src_cursor=src_conn.cursor();

#连接目标数据
tgt_dns=orcl.makedsn(tgt_host,tgt_port,tgt_sid)
tgt_conn=orcl.connect(tgt_username,tgt_passwd,tgt_dns)

tgt_cursor=tgt_conn.cursor();




#处理每一个报表
for rep in rep_list:
    if rep['rep_name']!='B_RPT_SEC_INVEST':
        continue

    #获取执行sql
    querysql=ET.parse(conf_dir+rep['rep_conf_file']).find('querysql').text
    #print(querysql)
    #获取执行参数
    parametes=ET.parse(conf_dir+rep['rep_conf_file']).find('parameters').findall('parameter')
    #print(parametes)
    rep_params=[]   ###用于存放所有参数信息，供其他部分调用
    query_param={}  ###用于给查询传参
    for param in parametes:
        each_rep_param={'param_name':param.find('name').text,
                    'param_value':param.find('value').text,
                    'param_type':param.find('type').text}
        rep_params.append(each_rep_param)
        query_param[param.find('name').text]=param.find('value').text

   # print(rep_params)
    print(query_param)
    query_param['FUNDCODE']= '000041'   #FUNDCODE
    query_param['VALUATIONDATE']=datetime.date(2011,1,1)   #VALUATIONDATE
    print(query_param)
    src_cursor.execute(querysql,query_param)
    rows=src_cursor.fetchall();
    print("获取到",len(rows),'行')

    # 写入CSV文件

    csv_dir=resultdir+rep['rep_name']+'/';

    if not os.path.exists(csv_dir):  # result/rep_name/  文件夹不存在则创建
        os.mkdir(csv_dir)

    csv_filename=csv_dir+query_param['VALUATIONDATE'].strftime('%Y-%m-%d')+'-'+query_param['FUNDCODE']+ rep['rep_name'] + '.csv'


    csvfile=open(csv_filename,'w',newline='')
    csvwriter=csv.writer(csvfile,delimiter=',',quotechar='"',quoting=csv.QUOTE_MINIMAL);

    #获取目标表字段信息
    cols=ET.parse(conf_dir + rep['rep_conf_file']).find('cols').findall('col')

    col_fields=[]  #用户写表头
    col_mappings=[]  #用于存放行
    col_loader_format=collections.OrderedDict() #用于存放sqlloader 导入格式信息
    for col in cols:
        col_fields.append(col.find('name').text)
        col_mappings.append(col.find('mapping').text)
        col_loader_format[col.find('name').text]=col.find('loader_format').text

    csvwriter.writerow(col_fields)
    lambda_getval=lambda argv:eval(str(argv))

    num=1
    for row  in rows:
       #print(row)
         writer_row=list(map(lambda_getval,col_mappings))
         writer_row[0]=query_param['FUNDCODE']
         writer_row[1] = query_param['VALUATIONDATE']
         csvwriter.writerow(writer_row) ##需要定制的地方 举例： #[funcode,in_date,row[0],row[1],row[2],datetime.datetime.strptime(datetime.datetime.now().strftime('%Y-%m-%d %H-%M-%S'),'%Y-%m-%d %H-%M-%S')]
         num=num+1

    csvfile.close()
    print("成功写入",num-1,'行')


    #删除目标表无效数据

    delsql='delete from  '+tgt_schema+'.'+rep['rep_name']+' where FUNDCODE=:FUNDCODE and VALUATIONDATE =:VALUATIONDATE'
    print(delsql)
    del_param={'FUNDCODE':query_param['FUNDCODE'], 'VALUATIONDATE': query_param['VALUATIONDATE']}
    tgt_cursor.execute(delsql,del_param)
    del_num=tgt_cursor.rowcount
    print("成功删除",del_num,'行')

    tgt_conn.commit();






    #调用sqlloader 导入数据

    loadfile_dir=resultdir+rep['rep_name']+'/';
    if not os.path.exists(loadfile_dir):  #  result/rep_name/  文件夹不存在则创建
        os.mkdir(loadfile_dir)

    loadfilename=loadfile_dir+rep['rep_name']+"_LOADER.TXT"
    print(loadfilename)
    loaderfile=open(loadfilename,'w')

    #构建sqlldr导入时的format信息
    print(col_loader_format)

    format_str=''
    for col_format in col_loader_format:
        format_str=  format_str+(col_format+' '+str(col_loader_format[col_format]).replace('None',''))+','

    #print(format_str[0:-1])


    #构建sqlldr 控制文件内容
    loaderfile_content='''options(skip=1) \r\n'''\
                       '''load data  \r\n''' \
                       '''infile \''''+csv_filename +'''\' \r\n''' \
                       '''append \r\n '''\
                       ''' into table '''+tgt_schema+'''.'''+rep['rep_name']+'''  \r\n'''\
                       ''' fields terminated by ',' optionally enclosed by '\"'  \r\n''' \
                       '''  trailing nullcols  \r\n''' \
                       '''('''+format_str[0:-1]+''')\r\n''';


    loaderfile.write(loaderfile_content);
    loaderfile.flush();
    loaderfile.close();
    loader="sqlldr userid="+tgt_username+"/"+tgt_passwd+"@"+tgt_host+":"+tgt_port+"/"+tgt_sid+" "+"control="+loadfilename
    print(loader)
    os.system(loader)

# 关闭连接资源
tgt_cursor.close();
src_cursor.close();
src_conn.close();
tgt_conn.close();

