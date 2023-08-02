use 43AirApparel

show collections

db.Accounts_Department.drop()

db.Customers.drop()

db.Employee.drop()

db.Orders.drop()

db.Payment_Channel_Ctt.drop()

db.Warehouse.drop()

db.Warranty.drop()

db.dropDatabase()

use 43AirApparel
db.Customers.insertMany([
{_ID:1,Name:'Kamogelo',Age:70,Customer_type:'Retail',Nationality:'Motswana',Address:'Po Box 897 Gabane',Contact:76458790},
{_ID:2,Name:'Kamo',Age:39,Customer_type:'Retail',Nationality:'Motswana',Address:'Po Box 990 Serowe',Contact:76467457},
{_ID:3,Name:'Pako',Age:30,Customer_type:'Wholesale',Nationality:'South African',Address:'Private Bag 454 Zeerust',Contact:2772458790},
{_ID:4,Name:'Joanna',Age:43,Customer_type:'Retail',Nationality:'Namibian',Address:'Po Box 1121 Harare',Contact:945667854},
{_ID:5,Name:'Maungo',Age:35,Customer_type:'Retail',Nationality:'Motswana',Address:'Po Box 763 Gaborone',Contact:75291571}])

db.Employee.insertMany([{_ID:1,Employee_Names:'Quinton Movati',Age:41,Position:'Business Analyst',Nationality:'Motswana',Department:'Office Administration',Gender:'Male',email:'movati@gmail.com'},
{_ID:2,Employee_Names:'Morena August',Age:39,Position:'Accountant',Nationality:'Motswana',Department:'Accounts Department',Gender:'Male',email:'august@gmail.com'},
{_ID:3,Employee_Names:'Pearl Moraeng',Age:42,Position:'Factory Worker',Nationality:'South African',Department:'Factory',Gender:'Female',email:'moraeng@gmail.com'},
{_ID:4,Employee_Names:'Nandi Mosarwe',Age:30,Position:'Sales Person',Nationality:'Zimbabwe',Department:'Sales',Gender:'Female',email:'mosarwe@gmail.com'},
{_ID:5,Employee_Names:'Morati Ellah',Age:22,Position:'Sales Person',Nationality:'Motswana',Department:'Sales',Gender:'Male',email:'ellah@gmail.com'}])


db.Accounts_Department.insertMany([{_ID:1,Account_Name:'Sales',Account_Number:39876546,Invoice_ID:12,salesDate: new ISODate("2021-01-03"),Profit_Margin:'60%'},
{_ID:2,Account_Name:'Sales',Account_Number:39856757,Invoice_ID:13,salesDate: new ISODate("2021-01-04"),Profit_Margin:'50%'},
{_ID:3,Account_Name:'Orders',Account_Number:32347609,Invoice_ID:14,salesDate: new ISODate("2021-01-04"),Profit_Margin:'70%'},
{_ID:4,Account_Name:'Working Capital',Account_Number:35687789,Invoice_ID:20,salesDate: new ISODate("2021-01-09"),Profit_Margin:'90%'},
{_ID:5,Account_Name:'Savings',Account_Number:31125678,Invoice_ID:25,salesDate: new ISODate("2021-01-15"),Profit_Margin:'70%'}])

db.Warehouse.insertMany([{_ID:511,Warehouse_Name:'Mofenyi A',Location:'Main Mall',Type:'Sewing'},
{_ID:512,Warehouse_Name:'Mofenyi B',Location:'African Mall',Type:'Leather Processing'},
{_ID:514,Warehouse_Name:'Moatli A',Location:'Gamecity Mall',Type:'Design'},
{_ID:515,Warehouse_Name:'Moatli B',Location:'Block 6',Type:'Polishing'},
{_ID:516,Warehouse_Name:'Central',Location:'Gnorth',Type:'Joinings'}])

db.Orders.insertMany([{_ID:1101,Customer_ID:{$ref:"Customers",$_ID: (1)},
    Employee_ID:{$ref:"Employee",$_ID: (1)},Order_Date: new ISODate("2021-01-03"),Material_Purchased:'Pilot Shirt & Pilot Bag',Quantity:12},
{_ID:1102,Customer_ID:{$ref:"Customers",$_ID: (2)},
    Employee_ID:{$ref:"Employee",$_ID: (2)},Order_Date: new ISODate("2021-01-04"),Material_Purchased:'Pilot Trouser & Pilot Bag',Quantity:20},
{_ID:1103,Customer_ID:{$ref:"Customers",$_ID: (3)},
    Employee_ID:{$ref:"Employee",$_ID: (3)},Order_Date: new ISODate("2021-01-04"),Material_Purchased:'Pilot Bag',Quantity:12},
{_ID:1104,Customer_ID:{$ref:"Customers",$_ID: (4)},
    Employee_ID:{$ref:"Employee",$_ID: (4)},Order_Date: new ISODate("2021-01-09"),Material_Purchased:'Pilot Gold Strips & Air Wing',Quantity:5},
{_ID:1105,Customer_ID:{$ref:"Customers",$_ID: (5)},
    Employee_ID:{$ref:"Employee",$_ID: (5)},Order_Date: new ISODate("2021-01-15"),Material_Purchased:'Formal Shoes & Pilot Blazer & Tshirt',Quantity:10}])
    
    
db.Payment_Channel_Ctt.insertMany([{Payment_ID:1401,Payment_Channel:"skrill",Amount:5000,
Payment_Date:new ISODate("2022-03-19"),Debit_card:{Cc_Number:[28346578],
            Cc_Type:"CURRENT",
            Name_on_card:"KELETSO MOITOI"}},
{Payment_ID:1402,Payment_Channel:"skrill",Amount:9000,
Payment_Date:new ISODate("2022-10-10"),
Debit_card:{Cc_Number:[17345687],
            Cc_Type:"CURRENT",
            Name_on_Card:"PRECIOUS GOLEKANYE"}},
{Payment_ID:1403,Payment_Channel:"Paypal",Amount:16000,
Payment_Date:new ISODate("2022-09-06"),
Debit_card:{Cc_Number:[27733412],
            Cc_Type:"SAVINGS",
            Name_on_Card:"KGORI MOTASE"}},
{Payment_ID:1404,Payment_Channel:"E-CHECK",Amount:900,
Payment_Date:new ISODate("2022-12-05"),
Eft:{Account_Number:[34576578],
            Username:"TAU MADALA"}},
{Payment_ID:1405,Payment_Channel:"BANK CHEQUE",Amount:7000,
Payment_Date:new ISODate("2022-01-11"),
Cheque:{Cheque_id:[0345],
            Account_Number_id:11234512,
            Receiver:"KELETSO MOITOI"}}])
            
db.Orders.aggregate({
$lookup:
    {
        from: "Customers",
        localField: "Material_Purchased",
        foreignField : "_id",
        as: "Orders & Client"
    }
}) 

db.Payment_Channel_Ctt.find( { "Debit_card.Cc_Type": "CURRENT" } )

db.Warranty.insertMany([{_ID:101,Purchase_Date: new ISODate("2021-05-19") ,Valid_To: new ISODate("2022-04-19") ,Warranty_Value: 30000,
    Client_Nationality:"MOTSWANA",Customer_ID:{$ref:"Customers",$_ID: (1)},
    Payment_ID:{$ref:"Payment_Channel_Ctt",$_ID:(1401)}},

{_ID:102,Purchase_Date: new ISODate("2021-06-19") ,Valid_To: new ISODate("2022-04-19") ,Warranty_Value: 22900,
    Client_Nationality:"ZIMBABWE",Customer_ID:{$ref:"Customers",$_ID: (2)},
    Payment_ID:{$ref:"Payment_Channel_Ctt",$_ID:(1402)}},

{_ID:103,Purchase_Date: new ISODate("2022-07-19"),Valid_To: new ISODate("2022-09-19") ,Warranty_Value: 100,
    Client_Nationality:"MOTSWANA",Customer_ID:{$ref:"Customers",$_ID: (3)},
    Payment_ID:{$ref:"Payment_Channel_Ctt",$_ID:(1403)}},

{_ID:104,Purchase_Date: new ISODate("2021-01-19") ,Valid_To: new ISODate("2023-04-19") ,Warranty_Value: 10400,
    Client_Nationality:"SOUTH AFRICAN",Customer_ID:{$ref:"Customers",$_ID: (4)},
    Payment_ID:{$ref:"Payment_Channel_Ctt",$_ID:(1404)}},
{_ID:105,Purchase_Date: new ISODate("2021-04-19") ,Valid_To: new ISODate("2022-09-19"),Warranty_Value: 19400,
    Client_Nationality:"LESOTHO",Customer_ID:{$ref:"Customers",$_ID: (5)},
    Payment_ID:{$ref:"Payment_Channel_Ctt",$_ID:(1405)}}])
     db.Warranty.find( {
   Valid_To: { $lt: new Date('2022-05-21') }
   
} )

db.Warranty.aggregate([{
       
       $match : {"Valid_To": {$gte: new Date()} }
       
       },
       
       {$group : {_id:"$Customer_ID",sum:{$sum:"$Warranty_Value"}}}
           ]) 


    






