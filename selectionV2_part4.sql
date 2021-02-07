
/*CREATE TABLE `Employee_Banking_Detail` (
  `employee_id` int unsigned not null,
  `bank_name` varchar(40),
  `account_type` varchar(40),
  `account_no` varchar(40),
  `branch_code` varchar(10),
  `swift_code` varchar(10),
  `account_name` varchar(20),
  `internal` boolean,
   primary key(`employee_id`)
);

CREATE TABLE `Employee_Contact` (
  `contact_id` int unsigned auto_increment not null,
  `comp_id` int,
  `liason` varchar(40),
  `phone_no` varchar(20),
  `title` varchar(40),
  `email` varchar(40),
  `internal_contact` boolean,
  PRIMARY KEY (`contact_id`)
);

CREATE TABLE `Employee_Address` (
  `add_id` int unsigned auto_increment not null,
  `street_no` varchar(10),
  `street_name` varchar(20),
  `complex_name` varchar(40),
  `suburb` varchar(20),
  `city` varchar(20),
  `province` varchar(20),
  `postal` varchar(10),
  `country` varchar(20),
  `internal` boolean,
  PRIMARY KEY (`add_id`)
);*/
CREATE TABLE `Employee` (
  `employee_id` int unsigned auto_increment not null,
  `type` varchar(40),
  `monthly_salary` decimal,
  `contact_id` int unsigned,
  foreign key(`contact_id`)
  references `Employee_Contact`(`contact_id`),
  `id` varchar(60),
  `address` int unsigned,
  foreign key(`address`)
  references `Employee_Address`(`add_id`),
  `bank_detail` int unsigned,
  foreign key(`bank_detail`)
  references `Employee_Banking_Detail`(`employee_id`),
  `comp_id` int unsigned,
  foreign key(`comp_id`)
  references company(comp_id),
  `active` boolean,
  PRIMARY KEY (`employee_id`)
);