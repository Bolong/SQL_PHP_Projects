disconnect;
connect system/manager;
create user manager identified by store;
Grant resource,connect to manager identified by store;
create user consumer_manager identified by store;
Grant resource,connect to consumer_manager identified by store;
create user order_manager identified by store;
Grant resource,connect to order_manager identified by store;
create user purchase_manager identified by store;
Grant resource,connect to purchase_manager identified by store;

connect manager/store;

create table  employee 
   (
   employeename varchar2(30) not null,
   employeeid number(5,0) not null, 
   gender number(1,0) not null, 
   manager number(1,0) not null, 
   birthday date not null, 
   phone number(16,0) not null, 
   constraint employee_pk primary key (employeeid)
   );

grant select,references on employee to purchase_manager;
grant select,references on employee to consumer_manager;
grant select,references on employee to order_manager;

connect purchase_manager/store;

create table product (
  productid number(10,0) not null, 
  productname varchar2(30) default '',
  author varchar2(30) default '',
  rating number(1,0) not null,
  publicationdate date not null,  
  distributorid number(5,0) not null,
  constraint product_pk primary key (productid)
);

create table purchaseorder (
  purchaseorderid number(10,0) not null,
  employeeid number(5,0) not null,
  productid number(10,0) not null,
  quantity number(5,0) not null,
  purchaseorderdate date not null,
  constraint purchaseorder_pk primary key (purchaseorderid)
);

create table distributor (
  distributorid number(5,0) not null,  
  distributorname varchar2(30) default '',
  phone number(16,0) not null,
  fax number(16,0) not null,  
  address varchar2(30) default '',
  constraint distributor_pk primary key (distributorid)
);

grant select,references on product to manager;
grant select,references on product to consumer_manager;
grant select,references on product to order_manager;
grant select,references on purchaseorder to manager;
grant select,references on distributor to manager;

ALTER TABLE product ADD CONSTRAINT product_ibfk_1 FOREIGN KEY (distributorid) REFERENCES  distributor (distributorid);
ALTER TABLE purchaseorder ADD CONSTRAINT purchaseorder_ibfk_1 FOREIGN KEY (productid) REFERENCES product (productid);
ALTER TABLE purchaseorder ADD CONSTRAINT purchaseorder_ibfk_2 FOREIGN KEY (employeeid) REFERENCES manager.employee (employeeid);

connect consumer_manager/store;

create table  consumer 
   (
  consumerid number(5,0) not null, 
  consumername varchar2(30) not null,   
  gender number(1,0) not null, 
  birthday date not null, 
  address varchar2(30) default '',    
  creditcard number(19,0) not null,  
  phone number(16,0) not null, 
   constraint consumer_pk primary key (consumerid)
   );

grant select,references on consumer to manager;

grant select,references on consumer to order_manager;

connect order_manager/store;

create table buyorder (
  buyorderid number(10,0) not null,
  consumerid number(5,0) not null,
  employeeid number(5,0) not null,
  productid number(10,0)not null,
  quantity number(5,0) not null,
  buyshipment number(1,0) not null,
  buyshipmentcompanyid number(5,0) not null,
  buydate date not null,
  constraint buyorder_pk primary key (buyorderid)
);

create table destination (
  buyorderid number(10,0) not null,
  consumerid number(5,0) not null,
  companyid number(5,0) not null,
  address varchar2(30) default '', 
  constraint destination_pk primary key (buyorderid)
);

create table shippingcompany (
  companyid number(5,0) not null, 
  companyname varchar2(30) not null, 
  fax number(16,0) not null,
  phone number(16,0) not null,
  constraint shippingcompany_pk primary key (companyid)
);

create table reorder (
  buyorderid number(10,0) not null,
  reason varchar2(200) default '',
  consumerid number(5,0) not null,
  employeeid number(5,0) not null,
  reshipmentstatus number(1,0) not null,
  reshipment number(1,0) not null,
  redate date not null
);

grant select,references on buyorder to manager;
grant select,references,insert,update,delete on buyorder to consumer_manager;
grant select,references on buyorder to purchase_manager;
grant select,references on destination to manager;
grant select,references on shippingcompany to manager;
grant select,references on reorder to manager;
grant select,references,insert,update,delete on reorder to consumer_manager;
grant select,references on reorder to purchase_manager;

ALTER TABLE buyorder ADD CONSTRAINT buyorder_ibfk_1 FOREIGN KEY (consumerid) REFERENCES consumer_manager.consumer (consumerid);
ALTER TABLE buyorder ADD CONSTRAINT buyorder_ibfk_2 FOREIGN KEY (employeeid) REFERENCES manager.employee (employeeid);
ALTER TABLE buyorder ADD CONSTRAINT buyorder_ibfk_3 FOREIGN KEY (productid) REFERENCES purchase_manager.product (productid);
ALTER TABLE destination ADD CONSTRAINT destination_ibfk_1 FOREIGN KEY (buyorderid) REFERENCES buyorder (buyorderid);
ALTER TABLE destination ADD CONSTRAINT destination_ibfk_2 FOREIGN KEY (consumerid) REFERENCES consumer_manager.consumer (consumerid);
ALTER TABLE destination ADD CONSTRAINT destination_ibfk_3 FOREIGN KEY (companyid) REFERENCES shippingcompany (companyid);
ALTER TABLE reorder ADD CONSTRAINT reorder_ibfk_1 FOREIGN KEY (consumerid) REFERENCES consumer_manager.consumer (consumerid);
ALTER TABLE reorder ADD CONSTRAINT reorder_ibfk_2 FOREIGN KEY (employeeid) REFERENCES manager.employee (employeeid);
