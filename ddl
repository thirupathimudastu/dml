					DDL

DIM_CHARGE_CATEG_SQL_IN1563

CREATE TABLE DIM_CHARGE_CATEG_SQL_IN1563(
Charge_categ_Key int  IDENTITY(1,1) Primary Key   Not Null,
CHARGE_CATEG_ID int      Not Null,
TENANT_ORG_ID int      Not Null,
CHARGE_CATEG varchar(50)      Not Null,
CHARGE_CATEG_DESC varchar(50)      Not Null,
TAX_IND int      Not Null,
Version Int      
)

SELECT * FROM DIM_CHARGE_CATEG_SQL_IN1563

dim_cust_SQL_IN1563
CREATE TABLE dim_cust_SQL_IN1563 (
cust_key int  IDENTITY(1,1) Primary Key   Not Null,
CUST_ID int      Not Null,
TENANT_ORG_ID int      Not Null,
CUST_TYPE_ID int      Not Null,
NICKNAME varchar(50)      Not Null,
SALUTE varchar(50)      Not Null,
MIDDLE_NM varchar(50)      Not Null,
CUST_TITLE varchar(50)      Not Null,
SUFFIX varchar(50)      Not Null,
WM_EMPLOYEE_ID int      Not Null,
CRE_DT date      Not Null,
CRE_USER varchar(50)      Not Null,
UPD_TS datetime      Not Null,
UPD_USER varchar(50)      Not Null,
StartDate datetime      ,
EndDate datetime      ,
SIGNUP_TS datetime      Not Null,
REALM_ID varchar(50)      Not Null,
VALID_CUST_IND varchar(50)      Not Null,
DELTD_YN varchar(50)      Not Null
)

SELECT * FROM dim_cust_SQL_IN1563

dim_cust_address_SQL_IN1563
CREATE TABLE dim_cust_address_SQL_IN1563 (
cust_addr_key int  IDENTITY(1,1) Primary Key   Not Null,
ADDR_ID float      Not Null,
TENANT_ORG_ID int      Not Null,
DATA_SRC_ID int      Not Null,
VALID_TS datetime      Not Null,
VALID_STS varchar(1)     Not Null,
CITY nvarchar(255)      Not Null,
MUNICIPALITY nvarchar(255)      Not Null,
TOWN nvarchar(255)      Not Null,
VILLAGE nvarchar(255)      Not Null,
COUNTY nvarchar(255)      Not Null,
DISTRICT nvarchar(255)      Not Null,
ZIP_CD int      Not Null,
POSTAL_CD int      Not Null,
ZIP_EXTN int      Not Null,
ADDR_TYPE nvarchar(255)      Not Null,
AREA nvarchar(255)      Not Null,
CNTRY_CD nvarchar(255)      Not Null,
STATE_PRVNCE_TYPE nvarchar(255)      Not Null,
OWNER_ID int      Not Null,
PARENT_ID int      Not Null,
DELTD_YN char(1)     Not Null,
StartDate datetime      ,
EndDate datetime      ,
CRE_DT date      Not Null,
CRE_USER nvarchar(255)      Not Null,
UPD_TS datetime      Not Null,
UPD_USER nvarchar(255)      Not Null
)
SELECT * FROM dim_cust_address_SQL_IN1563

dim_cust_addr_zone_SQL_IN1563

CREATE TABLE dim_cust_addr_zone_SQL_IN1563(
addr_zone_id_key int  IDENTITY(1,1) Primary Key   Not Null,
ADDR_ZONE_ID int      Not Null,
TENANT_ORG_ID int      Not Null,
DATA_SRC_ID int      Not Null,
CITY varchar(50)      Not Null,
POSTAL_CD varchar(50)      Not Null,
STATE varchar(50)      Not Null,
DELTD_YN varchar(50)      Not Null,
CRE_USER varchar(50)      Not Null,
CRE_DT date      Not Null,
UPD_USER varchar(50)      Not Null,
UPD_TS datetime      Not Null,
)

SELECT * FROM dim_cust_addr_zone_SQL_IN1563

DIM_CUST_EMAIL_SQL_IN1563

CREATE TABLE DIM_CUST_EMAIL_SQL_IN1563 (
Cust_email_key int  IDENTITY(1,1) Primary Key   Not Null,
EMAIL_ID bigint      Not Null,
TENANT_ORG_ID int      Not Null,
CNTCT_TYPE_ID int      Not Null,
DATA_SRC_ID int      Not Null,
DELTD_YN varchar(50)     Not Null,
CRE_DT Date      Not Null,
UPD_TS Date      Not Null,
)
SELECT * FROM DIM_CUST_EMAIL_SQL_IN1563


DIM_CUST_PHONE_SQL_IN1563

CREATE TABLE DIM_CUST_PHONE_SQL_IN1563 (
Cust_phone_key int  IDENTITY(1,1) Primary Key   Not Null,
PHONE_ID bigint      Not Null,
TENANT_ORG_ID int      Not Null,
CNTCT_TYPE_ID bigint      Not Null,
SRC_PHONE_ID varchar(50)      Not Null,
DATA_SRC_ID int      Not Null,
AREA_CD varchar(50)      Not Null,
CNTRY_CD varchar(50)      Not Null,
EXTN varchar(50)      Not Null,
CRE_DT Date      Not Null,
DELTD_YN varchar(50)      Not Null,
UPD_TS DateTime      Not Null,
)

SELECT * FROM DIM_CUST_PHONE_SQL_IN1563

Dim_FULFMT_TYPE_LKP_SQL_IN1563

CREATE TABLE Dim_FULFMT_TYPE_LKP_SQL_IN1563 (
FULFMT_TYPE_KEY INT  IDENTITY(1,1)    Not Null,
FULFMT_TYPE_ID INT   Primary Key   Not Null,
FULFMT_TYPE_CD VARCHAR(50)   Not Null,
FULFMT_TYPE_DESC VARCHAR (50)     Not Null,
CRE_DT DATE      Not Null,
UPD_TS Nvarchar (255)    Not Null,
)
SELECT * FROM Dim_FULFMT_TYPE_LKP_SQL_IN1563

Dim_ORG_TYPE_LKP_SQL_IN1563
CREATE TABLE Dim_ORG_TYPE_LKP_SQL_IN1563(
ORG_TYPE_LKP_KEY INT  IDENTITY(1,1)    Not Null,
ORG_TYPE_ID INT      Not Null,
ORG_TYPE_CD varchar (50)     Not Null,
ORG_TYPE_DESC VARCHAR (50)     Not Null,
ORG_TYPE_NM VARCHAR (50)    Not Null,
PARENT_ORG_TYPE_NM varchar (50)     Not Null,
PARENT_ORG_TYPE_CD VARCHAR (50)     Not Null,
CRE_DT DATE      Not Null,
CRE_USER VARCHAR (50)     Not Null,
History_1 VARCHAR (50),
History_2 VARCHAR (50)
)

SELECT * FROM Dim_ORG_TYPE_LKP_SQL_IN1563








Dim_RSN_TYPE_LKP_SQL_IN1563

CREATE TABLE Dim_RSN_TYPE_LKP_SQL_IN1563(
RSN_TYPE_LKP_KEY INT  IDENTITY(1,1),
RSN_TYPE_ID INT      Not Null,
RSN_TYPE_CD varchar (50)     Not Null,
RSN_TYPE_DESC varchar (200)     Not Null,
CRE_TS datetime      Not Null,
CRE_USER varchar (50)    Not Null,
)

SELECT * FROM Dim_RSN_TYPE_LKP_SQL_IN1563

dim_RSN_LKP_SQL_IN1563
CREATE Table dim_RSN_LKP_SQL_IN1563(
rsn_key integer  IDENTITY(1,1) Primary Key   Not Null,
RSN_ID integer      Not Null,
TENANT_ORG_ID integer      Not Null,
DATA_SRC_ID integer      Not Null,
RSN_TYPE_ID integer      Not Null,
RSN_CD integer      Not Null,
SRC_RSN_ID integer      Not Null,
RSN_DESC varchar(200)     Not Null,
RSN_LONG_DESC varchar(200)     Not Null,
CRE_TS datetime      Not Null,
CRE_USER varchar(50)     ,
UPD_TS datetime      Not Null,
UPD_USER varchar(50)      ,
)
SELECT * FROM dim_RSN_LKP_SQL_IN1563

dim_prod_SQL_IN1563

CREATE TABLE dim_prod_SQL_IN1563(
prod_key INT  IDENTITY(1,1) Primary Key   Not Null,
CATLG_ITEM_ID integer      Not Null,
PRMRY_DSTRBTR_NM varchar (200)     Not Null,
PRMRY_VEND_NUM integer      Not Null,
SRC_IMS_CRE_TS varchar (50)     Not Null,
SRC_IMS_MODFD_TS varchar (50)     Not Null,
VEND_PACK_QTY integer      Not Null,
WHSE_PACK_QTY integer      Not Null,
CURR_PRICE_MODFD_TS datetime      Not Null,
AMT_ITEM_COST decimal    (19,6) Not Null,
AMT_BASE_ITEM_PRICE decimal    (19,6) Not Null,
AMT_BASE_SUGG_PRICE decimal    (19,6) Not Null,
AMT_SUGG_PRICE decimal    (19,6) Not Null,
MIN_ITEM_COST decimal    (19,6) Not Null,
ORIG_PRICE decimal    (19,6) Not Null,
ORIG_ITEM_PRICE decimal    (19,6) Not Null,
PROD_NM varchar (200)     Not Null,
PROD_HT decimal  (19,6)    Not Null,
PROD_WT decimal   (19,6)   Not Null,
PROD_LEN decimal   (19,6)   Not Null,
PROD_WDTH decimal   (19,6)   Not Null,
CRE_DT date      Not Null,
CRE_USER varchar (50)     Not Null,
UPD_TS datetime      Not Null,
UPD_USER varchar (50)    Not Null,
)

SELECT * FROM dim_prod_SQL_IN1563


Dim_ORDER_STS_MASTER_LKP_SQL_IN1563

CREATE TABLE  Dim_ORDER_STS_MASTER_LKP_SQL_IN1563(
ORDER_STS_MASTER_LKP_KEY INT  IDENTITY(1,1)    Not Null,
ORDER_STS_MASTER_ID bigint   Primary Key      Not Null,
ORDER_STS_MASTER_CD VARCHAR (50)  Not Null,
ORDER_STS_SHORT_DESC VARCHAR (50)     Not Null,
ORDER_STS_LONG_DESC VARCHAR (50)     Not Null,
CRE_TS DATETIME      Not Null,
UPD_TS DATETIME      Not Null
)
SELECT * FROM Dim_ORDER_STS_MASTER_LKP_SQL_IN1563

Dim_OFFR_SQL_IN1563
CREATE TABLE Dim_OFFR_SQL_IN1563 (
OFFR_KEY INT IDENTITY(1,1) NOT NULL,
OFFER_PK VARCHAR(50)   Primary Key   Not Null,
CATLG_ITEM_ID bigint    Not Null,
SRC_ORG_CD bigint      Not Null,
TENANT_ORG_ID bigint      Not Null,
SRC_ITEM_KEY bigint      Not Null,
UPC VARCHAR(50)     Not Null,
WM_ITEM_NUM BIGint      Not Null,
WM_UPC VARCHAR (50)     Not Null,
OFFR_NM VARCHAR (250)     Not Null,
OFFR_START_TS NVARCHAR(50)      Not Null,
OFFR_START_DT DATETIME      Not Null,
OFFR_END_TS DATETIME      Not Null,
OFFR_TYPE_ID VARCHAR(50)     Not Null,
COMM_PCT DECIMAL(25,18) Not Null,
SLR_OFFR_ID VARCHAR (50)     Not Null,
PRTNR_ID VARCHAR (50)     Not Null,
START_PRICE DECIMAL    (25,18) Not Null,
LAST_PRICE_UPD_TS DATETIME      Not Null,
CURR_PRICE DECIMAL    (25,18) Not Null,
CURR_SUGG_PRICE DECIMAL    (25,18) Not Null,
BASE_ITEM_PRICE DECIMAL    (25,18) Not Null,
BASE_SUGG_PRICE DECIMAL    (25,18) Not Null,
UOM VARCHAR (50)     Not Null,
TAXABLE_IND bigint      Not Null,
GIFT_WRAP_IND bigint      Not Null,
SHIP_ALONE_IND bigint      Not Null,
FREE_RETURNS_IND bigint      Not Null,
SLR_UPC VARCHAR (50)    Not Null,
SHIPTOSTORE_IND bigint      Not Null,
PIP_IND bigint      Not Null,
PRE_ORDER_IND bigint      Not Null,
CRE_DT DATE      Not Null,
UPD_TS DATETIME      Not Null,
)
ALTER TABLE Dim_OFFR_SQL_IN1563 ADD [prod_key] INT

SELECT * FROM Dim_OFFR_SQL_IN1563

DIM_STS_LKP_SQL_IN1563

CREATE TABLE DIM_STS_LKP_SQL_IN1563(
STS_LKP_KEY INT  IDENTITY(1,1) Primary Key,
STS_ID INT      ,
STS_MASTER_ID INT      ,
TENANT_ORG_ID INT      ,
DATA_SRC_ID INT      ,
STS_CD VARCHAR (50)     ,
SRC_STS_ID INT      ,
STS_DESC VARCHAR (200)     ,
STS_LONG_DESC VARCHAR (500)     ,
CRE_TS VARCHAR  (50)     ,
UPD_TS VARCHAR   (50)    ,
)
SELECT * FROM DIM_STS_LKP_SQL_IN1563

dim_rpt_hrchy_SQL_IN1563

CREATE TABLE dim_rpt_hrchy_SQL_IN1563(
rpt_HRCHY_key INTEGER  IDENTITY(1,1) Primary Key   Not Null,
RPT_HRCHY_ID FLOAT      Not Null,
SRC_RPT_HRCHY_ID FLOAT      Not Null,
TENANT_ORG_ID VARCHAR (255)     Not Null,
RPT_HRCHY_PATH varchar (200)     Not Null,
DIV_ID FLOAT      Not Null,
DIV_NM varchar (200)     Not Null,
SUPER_DEPT_ID FLOAT      Not Null,
SUPER_DEPT_NM varchar (200)     Not Null,
DEPT_ID FLOAT      Not Null,
DEPT_NM varchar (250)     Not Null,
CATEG_NM varchar (200)     Not Null,
SUB_CATEG_ID FLOAT      Not Null,
SUB_CATEG_NM varchar (200)     Not Null,
ITEM_CATEG_GROUPING_ID varchar (200)     Not Null,
SRC_CRE_TS nvarchar(255)      ,
SRC_MODFD_TS nvarchar(255)      ,
SRC_HRCHY_MODFD_TS datetime      ,
CATEG_MGR_NM varchar (200)     Not Null,
BUYER_NM varchar (200)     Not Null,
EFF_BEGIN_DT date      ,
EFF_END_DT date      ,
RPT_HRCHY_ID_PATH varchar (200)     Not Null,
CATEG_ID FLOAT      Not Null,
CONSUMABLE_IND nvarchar(255)     Not Null,
CURR_IND FLOAT      Not Null,
CRE_DT date      Not Null,
CRE_USER nvarchar(255)      Not Null,
UPD_TS datetime      Not Null,
UPD_USER nvarchar(255)      Not Null,
)
SELECT * FROM dim_rpt_hrchy_SQL_IN1563


dim_prod_rpt_hrchy_SQL_IN1563
CREATE TABLE dim_prod_rpt_hrchy_SQL_IN1563(
prod_rpt_key integer  IDENTITY(1,1) Primary Key   Not Null,
PROD_RPT_HRCHY_ASSOC_ID integer      Not Null,
CATLG_ITEM_ID integer      Not Null,
RPT_HRCHY_ID integer      Not Null,
RH_SUB_CATEG_NM integer      Not Null,
CURR_IND INT      Not Null,
EFF_BEGIN_DT date      Not Null,
EFF_END_DT date      Not Null,
PRMRY_CATEG_PATH varchar (200)     Not Null,
CHAR_PRMRY_CATEG_PATH varchar (200)     Not Null,
RH_SUB_CATEG_ID integer      Not Null,
PRMRY_SHELF_ID integer      Not Null,
CRE_DT date      Not Null,
CRE_USER varchar(50)     Not Null,
UPD_TS datetime      Not Null,
UPD_USER varchar(50)      Not Null
)

alter table dim_prod_rpt_hrchy_SQL_IN1563  add [RPT_HRCHY_KEY] int


select * from dim_prod_rpt_hrchy_SQL_IN1563

DIM_CUST_ACCT_DETAILS_SQL_IN1563
CREATE TABLE DIM_CUST_ACCT_DETAILS_SQL_IN1563(
CUST_ACCT_DETAILS_KEY INT  IDENTITY(1,1) Primary Key   Not Null,
CUST_ID int      Not Null,
TENANT_ORG_ID int      Not Null,
CUST_TYPE_ID int      Not Null,
NICKNAME varchar(50)      Not Null,
SALUTE varchar(50)      Not Null,
MIDDLE_NM varchar(50)      Not Null,
CUST_TITLE varchar(50)      Not Null,
SUFFIX varchar(50)      Not Null,
WM_EMPLOYEE_ID int      Not Null,
CRE_DT date      Not Null,
CRE_USER varchar(50)      Not Null,
UPD_TS datetime      Not Null,
UPD_USER varchar(50)      Not Null,
SIGNUP_TS datetime      Not Null,
REALM_ID varchar(50)      Not Null,
VALID_CUST_IND varchar(50)      Not Null,
DELTD_YN varchar(50)      Not Null,
ACCT_ID bigint      Not Null,
CUST_ID_1 int      Not Null ,
TENANT_ORG_ID_1 int      Not Null,
ACCT_STS_ID int      Not Null,
ACCT_TYPE_ID int      Not Null,
EMAIL varchar(250)      Not Null,
VALID_CUST_IND_1 INT      Not Null,
CRE_DT_1 date      Not Null,
CRE_USER_1 varchar(250)      Not Null,
UPD_TS_1 datetime      Not Null,
UPD_USER_1 varchar(250)      Not Null,
StartDate datetime      ,
EndDate datetime      ,
DELTD_YN_1 char(1)    Not Null,
)
SELECT * FROM DIM_CUST_ACCT_DETAILS_SQL_IN1563


dim_cust_address_SQL_IN1563
CREATE TABLE dim_cust_address_SQL_IN1563 (
cust_addr_key int  IDENTITY(1,1) Primary Key   Not Null,
ADDR_ID float      Not Null,
TENANT_ORG_ID int      Not Null,
DATA_SRC_ID int      Not Null,
VALID_TS datetime      Not Null,
VALID_STS varchar(255)     Not Null,
CITY nvarchar(255)      Not Null,
MUNICIPALITY nvarchar(255)      Not Null,
TOWN nvarchar(255)      Not Null,
VILLAGE nvarchar(255)      Not Null,
COUNTY nvarchar(255)      Not Null,
DISTRICT nvarchar(255)      Not Null,
ZIP_CD int      Not Null,
POSTAL_CD int      Not Null,
ZIP_EXTN int      Not Null,
ADDR_TYPE nvarchar(255)      Not Null,
AREA nvarchar(255)      Not Null,
CNTRY_CD nvarchar(255)      Not Null,
STATE_PRVNCE_TYPE nvarchar(255)      Not Null,
OWNER_ID int      Not Null,
PARENT_ID int      Not Null,
DELTD_YN char(20)     Not Null,
StartDate datetime      ,
EndDate datetime      ,
CRE_DT date      Not Null,
CRE_USER nvarchar(255)      Not Null,
UPD_TS datetime      Not Null,
UPD_USER nvarchar(255)      Not Null
)
SELECT * FROM dim_cust_address_SQL_IN1563


dim_cust_addr1_SQL_IN1563
CREATE TABLE dim_cust_addr1_SQL_IN1563 (
cust_aadr1_key int  IDENTITY(1,1) Primary Key   Not Null,
ADDR_ID bigint      Not Null,
TENANT_ORG_ID int      Not Null,
DATA_SRC_ID int      Not Null,
VALID_TS nvarchar(255)      Not Null,
VALID_STS int      Not Null,
CITY nvarchar(255)      Not Null,
MUNICIPALITY nvarchar(255)      Not Null,
TOWN nvarchar(255)      Not Null,
VILLAGE nvarchar(255)      Not Null,
COUNTY nvarchar(255)      Not Null,
DISTRICT nvarchar(255)      Not Null,
ZIP_CD int      Not Null,
POSTAL_CD nvarchar(255)      Not Null,
ZIP_EXTN nvarchar(255)      Not Null,
ADDR_TYPE nvarchar(255)      Not Null,
AREA nvarchar(255)      Not Null,
CNTRY_CD nvarchar(255)      Not Null,
STATE_PRVNCE_TYPE nvarchar(255)      Not Null,
OWNER_ID int      Not Null,
PARENT_ID int      Not Null,
DELTD_YN nvarchar(255)      Not Null,
CRE_DT date      Not Null,
CRE_USER nvarchar(255)      Not Null
)

SELECT * FROM dim_cust_addr1_SQL_IN1563

DIM_CUST_CNTCT_SQL_IN1563

CREATE TABLE  DIM_CUST_CNTCT_SQL_IN1563(
CUST_CNTCT_KEY int  IDENTITY(1,1) Primary Key   Not Null,
CNTCT_ID int      Not Null,
TENANT_ORG_ID int      Not Null,
SRC_CNTCT_ID varchar(50)      Not Null,
DATA_SRC_ID int      Not Null,
ACCT_ID int      Not Null,
ADDR_ID int      Not Null,
PHONE_ID int      Not Null,
EMAIL_ID varchar(250)      Not Null,
ADDR_ZONE_ID int      Not Null,
DELTD_YN char      Not Null,
CRE_DT Date      Not Null,
UPD_TS nvarchar(255)      Not Null,
cust_addr_zone_key int      ,
cust_phone_key int      ,
Cust_email_key int      ,
ciust_accnt_key int      ,
)

ALTER TABLE DIM_CUST_CNTCT_SQL_IN1563 ADD [CUST_PHONE_KEY] INT
ALTER TABLE DIM_CUST_CNTCT_SQL_IN1563 ADD [CUST_ADDR_ZONE_KEY] INT
ALTER TABLE DIM_CUST_CNTCT_SQL_IN1563 ADD [Cust_email_key] INT
ALTER TABLE DIM_CUST_CNTCT_SQL_IN1563 ADD [Cust_acct_key] INT


SELECT * FROM DIM_CUST_CNTCT_SQL_IN1563

						 
