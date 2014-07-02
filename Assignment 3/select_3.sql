connect manager/store;

select * from employee;

connect purchase_manager/store;

select productname,quantity,distributorname from purchaseorder,product,distributor
where purchaseorder.productid = product.productid
and product.distributorid = distributor.distributorid;

connect consumer_manager/store;

select * from consumer ;

connect order_manager/store;

select productname,employeename,consumername,companyname from purchase_manager.product,manager.employee,consumer_manager.consumer,shippingcompany,buyorder
where product.productid = buyorder.productid 
and employee.employeeid = buyorder.employeeid 
and consumer.consumerid = buyorder.consumerid 
and shippingcompany.companyid = buyorder.buyshipmentcompanyid;

