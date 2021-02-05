
/*CREATE TABLE Contact (
  contact_id int unsigned auto_increment not null,
  comp_id int unsigned not null ,
  liason varchar(40),
  phone_no varchar(20),
  title varchar(40),
  email varchar(40),
  internal_contact boolean,
  PRIMARY KEY (contact_id)
);

CREATE TABLE Company_Address (
  add_id int unsigned auto_increment not null,
  street_no varchar(10),
  street_name varchar(20),
  complex_name varchar(40),
  suburb varchar(20),
  city varchar(20),
  province varchar(20),
  postal varchar(10),
  country varchar(20),
  internal boolean,
  PRIMARY KEY (add_id)
);

CREATE TABLE Company_Banking_Detail (
  comp_id int unsigned not null,
  bank_name varchar(40),
  account_type varchar(40),
  account_no varchar(40),
  branch_code varchar(10),
  swift_code varchar(10),
  account_name varchar(20),
  internal boolean,
  primary key(comp_id)
); */

CREATE TABLE Company (
  comp_id int unsigned auto_increment not null,
  contact_id int unsigned not null,
  FOREIGN KEY(contact_id)
  references Contact(contact_id),
  comp_name varchar(40),
  client boolean,
  supplier boolean,
  provider boolean,
  producer boolean,
  industry varchar(40),
  C_address int unsigned not null,
  FOREIGN KEY(C_address)
  references company_address(add_id),
  postal varchar(60),
  bank_detail int unsigned not null,
  FOREIGN KEY(bank_detail)
  references Company_Banking_Detail(comp_id),
  comp_reg varchar(40),
  vat_no varchar(40),
  good_standing boolean,
  PRIMARY KEY (comp_id)
);
