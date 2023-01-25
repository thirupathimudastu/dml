import pandas as pd
import json
import pyodbc
import pandas as pd
import newcon

server=newcon.newconnection['server']
database=newcon.newconnection['database']
databa=newcon.newconnection['database2']
userid=newcon.newconnection['userid']
password=newcon.newconnection['password']



with open('Ubereats_orderdetails.json','r') as f:
    data=json.load(f)
    

df = pd.DataFrame.from_dict(pd.json_normalize(data), orient='columns')




df=df.fillna("na")



cnxn = pyodbc.connect('Driver=SQL Server Native Client 11.0;'
                            f'Server={server};'
                            f'Database={databa};'
                            f'UID={userid};'
                            f'PWD={password};'
                            'Trusted_Connection=no')


cursor = cnxn.cursor()
cursor.execute("""
create table order_In1560_python_scrrening(
requestedAt varchar(200),
orderId varchar(200),
orderStateChanges varchar(200),
orderUUID varchar(200),
isEatsPassSubscriber varchar(200),
name varchar(200),
numOrders varchar(200), 
profileURL varchar(200),
uuid varchar(200), 
__typename varchar(200),
address varchar(200),
currencyCode varchar(200),
checkoutInfo varchar(200),
marketplaceFeeRate varchar(200), 
netPayout varchar(200),
adjustmentAmount varchar(200),
customerRefund varchar(200),
failureReason varchar(200),
issueType varchar(200),
orderJobState varchar(200),
numMissingItems varchar(200), 
items varchar(200),
fulfillmentType varchar(200))
""")






# commit the transaction
cnxn.commit()

#insert data into table
cursor.fast_executemany = True
for index,row in df.iterrows():
        insert_to_tmp_tbl_stmt='''insert into order_In1560_python_scrrening
    values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)'''

        collist=['orderDetails.requestedAt', 
                 'orderDetails.orderId',
       'orderDetails.orderStateChanges',
       'orderDetails.orderUUID',
       'orderDetails.eater.isEatsPassSubscriber',
       'orderDetails.eater.name',
       'orderDetails.eater.numOrders', 
       'orderDetails.eater.profileURL',
       'orderDetails.eater.uuid', 
       'orderDetails.eater.__typename'
     , 'orderDetails.restaurant.address',
       'orderDetails.restaurant.currencyCode',
       'orderDetails.restaurant.__typename', 
       'orderDetails.checkoutInfo',
       'orderDetails.marketplaceFeeRate',
       'orderDetails.issueSummary.adjustmentAmount',
       'orderDetails.issueSummary.customerRefund',
       'orderDetails.issueSummary.failureReason',
       'orderDetails.issueSummary.issueType',
       'orderDetails.issueSummary.orderJobState',
       'orderDetails.issueSummary.numMissingItems',
       'orderDetails.items',
       'orderDetails.fulfillmentType']
        
cursor.executemany(insert_to_tmp_tbl_stmt, df[collist].values.tolist())
         
cnxn.commit() 
cnxn.close()















