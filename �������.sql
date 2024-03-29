create table B_RPT_MLGK_CA2_MONO  (
FUNDCODE	varchar2(30),
VALIDATION	DATE,
REPCOD	varchar2(30),
INS_DESC	varchar2(30),
TRT	varchar2(30),
RECORD_DATE	DATETIME,
TRA_TRADE_DATE	DATETIME,
TRA_VALUE_DATE	DATETIME,
QTY	number,
RATE_BEFORE_TAX	number,
RATE_AFTER_TAX	number,
DVD_BEFORE_TAX	number,
DVD_AFTER_TAX	number,
TAX	number,
DDSD_QTY	number,
FUND_DESC	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_MLGK_SBR_MONO  (
FUNDCODE	varchar2(30),
VALIDATION	DATE,
ID_GLA_ACCOUNT	varchar2(30),
GLA_LNG_DESCRIPTION	varchar2(30),
ID_INS_CODE	varchar2(30),
NDNA_SHARE_PAR	number,
UNIT_PRICE	number,
NDNA_FUND_COST_PRICE	number,
COST_N	number,
NDNA_VALUATION_PRICE	number,
MV	number,
MV_N	number,
GZZZ	number,
MARKET_CAP	number,
SHARE_OS	number,
HOLDING	number,
FND_LNG_DESC	varchar2(30),
FLAG	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_MLGK_SR_MONO   (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
ASSET_CODE	varchar2(30),
ASSET_DESC	varchar2(30),
SECTOR	varchar2(30),
SHARE_PAR	number,
PRICE	number,
GROSS_AMOUNT	number,
COMMIN	number,
STAMPD	number,
HANFEE	number,
SETTLE_AMOUNT	number,
MV_COST	number,
GAINLOSS	number,
MKT	varchar2(30),
TRADE_DATE	DATE,
TRADE_DIR	varchar2(30),
FND_LNG_DESCRIPTION	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_MLGK_VR_MONO   (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
ID_GLA_ACCOUNT	varchar2(30),
GLA_LNG_DESCRIPTION	varchar2(30),
ID_INS_CODE	varchar2(30),
NDNA_SHARE_PAR	number,
UNIT_PRICE	number,
NDNA_FUND_COST_PRICE	number,
COST_N	number,
NDNA_VALUATION_PRICE	number,
MV	number,
MV_N	number,
GZZZ	number,
MARKET_CAP	number,
SHARE_OS	number,
HOLDING	number,
FND_LNG_DESC	varchar2(30),
TOTAL_NAV	number,
INC_DAY	number,
INC_PERIOD	number,
INC_ACC	number,
ETLDATE	DATE
)
create table B_RPT_MLGK_CASH_DUO  (
FUNDCODE	varchar2(30),
VALUATIONDATE	varchar2(30),
FUNDLEVEL	varchar2(30),
SUBREPORT_DIR	varchar2(30),
LINE_TYPE	varchar2(30),
ASSET	varchar2(30),
FUND_DESC	varchar2(30),
AMT	number,
WEIGHT	int,
ETLDATE	DATE
)
create table B_RPT_MLGK_EXP_DUO   (
FUNDCODE	varchar2(30),
VALUATIONDATE	varchar2(30),
FUNDLEVEL	varchar2(30),
RID	number,
LINE_TYPE	varchar2(30),
ASSET	varchar2(30),
FUND_DESC	varchar2(30),
AMT	number,
WEIGHT	number,
AMT2	number,
WEIGHT2	number,
ASSET_CODE	varchar2(30),
EMPTY_FLAG1	varchar2(30),
EMPTY_FLAG2	varchar2(30),
WEIGHT_TOTAL	number,
AMT3	number,
AMT4	number,
WEIGHT_TOTAL_OS	number,
ETLDATE	DATE
)
create table B_RPT_MLGK_HOLD_DUO  (
FUNDCODE	varchar2(30),
VALUATIONDATE	varchar2(30),
FUNDLEVEL	varchar2(30),
SUBREPORT_DIR	,
SECTOR	number,
SECTOR_DESC	varchar2(30),
ASSET_CODE	varchar2(30),
ID_FND_CODE	varchar2(30),
MI_AMT	number,
WEIGHT	number,
ETLDATE	DATE
)
create table B_RPT_MLGK_VAL_DUO   (
FUNDCODE	varchar2(30),
VALUATIONDATE	varchar2(30),
FUNDLEVEL	varchar2(30),
RID	number,
ASSET	varchar2(30),
ASSET2	varchar2(30),
FUND_DESC	varchar2(30),
AMT	number,
WEIGHT	number,
WEIGHT2	number,
DAILY_INC	number,
YEAR_INC	number,
ACC_INC	number,
ETLDATE	DATE
)
create table B_RPT_MLGK_CAP_FRC_QD(
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
ITEM	number,
SERIAL_NUMBER	varchar2(30),
ABSTRACT	varchar2(30),
DAY1	number,
DAY2	number,
DAY3	number,
DAY4	number,
DAY5	number,
FLAG	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_MLGK_CA2_QD    (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
REPCOD	varchar2(30),
INS_DESC	varchar2(30),
TRT	varchar2(30),
RECORD_DATE	DATETIME,
TRA_TRADE_DATE	DATETIME,
TRA_VALUE_DATE	DATETIME,
QTY	number,
RATE_BEFORE_TAX	number,
RATE_AFTER_TAX	number,
DVD_BEFORE_TAX	number,
DVD_AFTER_TAX	number,
TAX	number,
DDSD_QTY	number,
FUND_DESC	varchar2(30),
FND_LNG_DESCRIPTION	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_MLGK_SBR_QD    (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
ID_GLA_ACCOUNT	varchar2(30),
GLA_LNG_DESCRIPTION	varchar2(30),
ID_INS_CODE	varchar2(30),
NDNA_SHARE_PAR	number,
UNIT_PRICE	number,
NDNA_FUND_COST_PRICE	number,
COST_N	number,
NDNA_VALUATION_PRICE	number,
MV	number,
MV_N	number,
GZZZ	number,
MARKET_CAP	number,
SHARE_OS	number,
HOLDING	number,
FND_LNG_DESC	varchar2(30),
FLAG	varchar2(30),
FND_LNG_DESCRIPTION	varchar2(30),
MV_A	number,
ETLDATE	DATE
)
create table B_RPT_MLGK_SR_QD     (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
ASSET_CODE	varchar2(30),
ASSET_DESC	varchar2(30),
SECTOR	varchar2(30),
SHARE_PAR	number,
PRICE	number,
GROSS_AMOUNT	number,
COMMIN	number,
STAMPD	number,
HANFEE	number,
SETTLE_AMOUNT	number,
MV_COST	number,
GAINLOSS	number,
MKT	varchar2(30),
TRADE_DATE	DATE,
TRADE_DIR	varchar2(30),
FND_LNG_DESCRIPTION	varchar2(30),
REPO_INCOME_A	number,
ETLDATE	DATE
)
create table B_RPT_MLGK_VR_QD     (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
ID_GLA_ACCOUNT	varchar2(30),
GLA_LNG_DESCRIPTION	varchar2(30),
ID_INS_CODE	varchar2(30),
NDNA_SHARE_PAR	number,
UNIT_PRICE	number,
NDNA_FUND_COST_PRICE	number,
COST_N	number,
NDNA_VALUATION_PRICE	number,
MV	number,
MV_N	number,
GZZZ	number,
MARKET_CAP	number,
SHARE_OS	number,
HOLDING	number,
FND_LNG_DESC	varchar2(30),
TOTAL_NAV	number,
INC_DAY	number,
INC_PERIOD	number,
INC_ACC	number,
FND_LNG_DESCRIPTION	varchar2(30),
MV_A	number,
TOTAL_NAV_USD	number,
USD_INC_DAY	number,
USD_INC_ACC	number,
USD_INC_PERIOD	number,
ETLDATE	DATE
)
create table B_RPT_TRADE          (
FUNDCODE		varchar2(30),
TRADEDATE		varchar2(30),
FUNDLEVEL		varchar2(30),
EXCHANGETYPE		varchar2(30),
assetType		varchar2(30),
ASSET_CODE		varchar2(30),
ASSET_DESC		varchar2(30),
SHARE_PAR		number,
GROSS_AMOUNT		varchar2(30),
COMMIN		number,
STAMPD		number,
HANFEE		number,
TRFFEE		number,
SMGFEE		number,
SRFFEE		number,
OTHFEE		number,
BOND_INCOME		number,
REPO_INCOME		number,
SETTLE_AMOUNT		varchar2(30),
TRANSACTION_TYPE		varchar2(30),
AIM		varchar2(30),
MKT		varchar2(30),
DIR		varchar2(30),
ETLDATE		DATE

)
create table B_RPT_VAL (
FUNDCODE	varchar2(30),
TRADEDATE	varchar2(30),
ACCOUNTLEVEL	varchar2(30),
ID_GLA_ACCOUNT	varchar2(30),
GLA_LNG_DESCRIPTION	varchar2(30),
NDNA_SHARE_PAR	varchar2(30),
UNIT_PRICE	varchar2(30),
NDNA_FUND_COST_PRICE	varchar2(30),
COST_N	varchar2(30),
NDNA_VALUATION_PRICE	varchar2(30),
MV	varchar2(30),
MV_N	varchar2(30),
GZZZ	varchar2(30),
SUS_INFO	varchar2(30),
NDNA_ACCRUED_INT	varchar2(30),
FND_SHT_DESCRIPTION	varchar2(30),
ETLDATE	DATE	
)
create table B_RPT_SUBJ_BAL       (
FUNDCODE	VARCHAR2(30),
VALUATIONDATE	DATE,
SUBJECTCODE	varchar2(30),
SUBJECTNAME	varchar2(30),
YEARDIR	varchar2(30),
YEARQTYBAL	number,
BEGINDIR	varchar2(30),
BEGINQTYBAL	number,
ENDDIR	varchar2(30),
ENDQTYBAL	number,
YEARDEBIT	number,
YEARCREDIT	number,
PERIODDEBIT	number,
PERIODCREDIT	number,
MOST_DETAIL_ACCOUNT	varchar2(30),
FND_SHT_DESCRIPTION	varchar2(30),
BalanceSwitch	VARCHAR2(30),
ETLDATE	DATE	
)
create table B_RPT_BALSHT         (
FUNDCODE	VARCHAR2(30),
VALUATIONDATE	DATE,
LINE_A	number,
TITLE_A	varchar2(30),
THIS_YEAR_BAL_A	varchar2(30),
LAST_YEAR_BAL_A	varchar2(30),
LINE_L	number,
TITLE_L	varchar2(30),
THIS_YEAR_BAL_L	varchar2(30),
LAST_YEAR_BAL_L	varchar2(30),
FND_SHT_DESCRIPTION	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_INSTMT         (
FUNDCODE	VARCHAR2(30),
VALUATIONDATE	DATE,
LINE	number,
项目	varchar2(30),
本期金额	varchar2(30),
本年累计数	varchar2(30),
FND_SHT_DESCRIPTION	varchar2(30),
FND_CLASSIFICATION	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_FEE            (
FUNDCODE	VARCHAR2(30),
VALUATIONDATE	DATE,
FUNDLEVEL	varchar2(30),
ANNUITY_NAME	varchar2(30),
BANK	varchar2(30),
FEE1	number,
FEE2	number,
FEE3	number,
ETLDATE	DATE	
)
create table B_RPT_NAV            (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
FUNDLEVEL	varchar2(30),
FUNDNAME	varchar2(30),
SHARES	number,
NAV	number,
UNIT_NAV	varchar2(30),
SUN_NAV	varchar2(30),
NNUV_NUV	number,
ACC_NUV	number,
ETLDATE	DATE
)
create table B_RPT_FUND_WEIGHT    (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
TITLE	varchar2(30),
WEIGHT	varchar2(30),
FUND_DESC	varchar2(30),
ETLDATE	DATE,
)
create table B_RPT_SEC_INVEST     (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
SECTOR	varchar2(30),
MV	number,
MV_N	number,
ETLDATE	DATE

)
create table B_RPT_MLGK_Z         (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
ID_GLA_ACCOUNT	varchar2(30),
GLA_LNG_DESCRIPTION	varchar2(30),
ID_INS_CODE	varchar2(30),
NDNA_SHARE_PAR	number,
UNIT_PRICE	number,
NDNA_FUND_COST_PRICE	number,
COST_N	number,
NDNA_VALUATION_PRICE	number,
MV	number,
MV_N	number,
GZZZ	number,
MARKET_CAP	number,
SHARE_OS	number,
HOLDING	number,
FND_LNG_DESC	varchar2(30),
FLAG	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_HOLD_VIEW      (
FUNDCODE	varchar2(30),
VALUATIONDATE	date,
FUNDLEVEL	varchar2(30),
FUNDNAME	varchar2(30),
SECURITYNAME	varchar2(30),
SECURITYCODE	varchar2(30),
ACCRUALBEGINDATE	DATETIME,
MATURITYDATE	DATETIME,
RESTDAYS	number,
NEXTDAYS	number,
INTERESTRATE	number,
FUNDTIMELIMIT	number,
ACCRUALMETHOD	varchar2(30),
COUPONFREQUENCY	number,
NEXTPAYDAY	DATETIME,
LASTPAYDAY	DATETIME,
RESTINTERESTTIMES	number,
INTERESTPERCENT	number,
HOLDMOUNT	number,
HOLDSHARES	number,
ACCRUEDINCOME	number,
RELATORG	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_MULTI_TRANS    (
FUNDCODE	varchar2(30),
VALUATIONDATE	date,
FUNDLEVEL	varchar2(30),
CUSTODY_DESC	varchar2(30),
BROKER_DESC	varchar2(30),
STOCK_EXCHANGE	varchar2(30),
SEAT	varchar2(30),
REPO_AMOUNT	number,
SHRAE_AMOUNT	number,
BOND_AMOUNT	number,
WARR_AMOUNT	number,
FUND_AMOUNT	number,
TOTAL_AMOUNT	number,
COMMIN_PAID	number,
COMMIN_RATE	number,
PUR_STAMPD	number,
SAL_STAMPD	number,
ETLDATE	DATE
)
create table B_RPT_SETT_PROV      ()
create table B_RPT_SETT_PROV_FRC  ()
create table B_RPT_SWAP_DETAIL    (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
BKE_MVT_CODE	varchar2(30),
INS_ISSUE_DATE	DATETIME,
INS_MATURITY_DATE	DATETIME,
REAL_AMT	number,
UNREAL_AMT	number,
BAL_AMT	number,
FND_SHT_DESCRIPTION	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_FUTU_DETAIL    (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
BKE_MVT_CODE	varchar2(30),
TRD_LNG_DESCRIPTION	varchar2(30),
INS_TICK	number,
NDNA_SHARE_PAR	number,
PRIX	number,
NDNA_FUND_DIRTY_VALUE	number,
REAL_AMT	number,
UNREAL_AMT	number,
GAINLOSS	number,
PRICE_T	number,
PRICE_T_1	number,
FND_SHT_DESCRIPTION	varchar2(30),
ETLDATE	DATE
)
create table B_RPT_OPTI_DETAIL    (
FUNDCODE	varchar2(30),
VALUATIONDATE	DATE,
ID_INS_CODE	varchar2(30),
COD_EXTERNAL_CODE	varchar2(30),
INS_SHT_DESCRIPTION	varchar2(30),
INS_LNG_DESCRIPTION	varchar2(30),
DES_SHT_DESCRIPTION	varchar2(30),
NDNA_SHARE_PAR	number,
UNIT_PRICE	number,
NDNA_FUND_COST_PRICE	number,
VALUATION_PRICE	number,
NDNA_FUND_DIRTY_VALUE	number,
UNREAL	number,
FND_SHT_DESCRIPTION	varchar2(30),
OPMULT	number,
ETLDATE	DATE	
)
