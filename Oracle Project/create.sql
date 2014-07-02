disconnect;
connect system/manager;
create user comic identified by store;
Grant all privileges to comic identified by store;
connect comic/store;



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

create table product (
  productid number(10,0) not null, 
  productname varchar2(30) default '',
  author varchar2(30) default '',
  rating number(1,0) not null,
  publicationdate date not null,  
  distributorid number(5,0) not null,
  constraint product_pk primary key (productid)
);

create table buyorder (
  buyorderid number(10,0) not null,
  consumerid number(5,0) not null,
  employeeid number(5,0) not null,
  productid number(10,0)not null,
  quantity number(5,0) not null,
  buyshipment number(1,0) not null,
  buyshipmentcompanyid number(5,0) not null,
  buydate date not null,
  constraint buyorder_pk primary key (buyorderid,consumerid),
  constraint buyorderid_unique unique(buyorderid)
);


create table destination (
  buyorderid number(10,0) not null,
  consumerid number(5,0) not null,
  companyid number(5,0) not null,
  address varchar2(30) default '', 
  constraint destination_pk primary key (buyorderid)
);

create table purchaseorder (
  purchaseorderid number(10,0) not null,
  employeeid number(5,0) not null,
  productid number(10,0) not null,
  quantity number(5,0) not null,
  purchaseorderdate date not null,
  constraint purchaseorder_pk primary key (purchaseorderid)
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

create table distributor (
  distributorid number(5,0) not null,  
  distributorname varchar2(30) default '',
  phone number(16,0) not null,
  fax number(16,0) not null,  
  address varchar2(30) default '',
  constraint distributor_pk primary key (distributorid)
);

