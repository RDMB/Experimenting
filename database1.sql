CREATE TABLE `Company` (
  `comp_id` int,
  `contact_id` int,
  `comp_name` varchar(40),
  `client` boolean,
  `supplier` boolean,
  `provider` boolean,
  `producer` boolean,
  `industry` varchar(40),
  `address` varchar(60),
  `postal` varchar(60),
  `bank_detail` varchar(80),
  `comp_reg` varchar(40),
  `vat_no` varchar(40),
  `good_standing` boolean,
  PRIMARY KEY (`comp_id`)
);

CREATE TABLE `Purchase_Order` (
  `purchase_number` int,
  `mat_id` int,
  `supplier` int,
  `cost_price` decimal,
  `delivery_cost` decimal,
  `quantity` decimal,
  `size` varchar(40),
  `in-house` boolean,
  `client_use` boolean,
  `rnd` boolean,
  `purchase_date` datetime,
  `due_date` datetime,
  `received_date` datetime,
  PRIMARY KEY (`purchase_number`),
  KEY `PK, FK` (`mat_id`)
);

CREATE TABLE `Printer` (
  `printer_id` int,
  `printer_type` varchar(40),
  `printer_model` varchar(40),
  `avg_energy_consump` decimal,
  `build_volume` varchar(20),
  `fab_id` int,
  `initial_value` decimal,
  `lifetime` int,
  `supplier` int,
  `producer` int,
  `avg_maintenance` decimal,
  `low_material` boolean,
  `high_material` boolean,
  PRIMARY KEY (`printer_id`)
);

CREATE TABLE `Fabricated_Material` (
  `fab_id` int,
  `printer_id` int,
  `layer_height` int,
  `print_rate` decimal,
  PRIMARY KEY (`fab_id`)
);

CREATE TABLE `Address` (
  `add_id` int,
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
);

CREATE TABLE `Supplier` (
  `comp_id` int,
  `sup_type` varchar(40),
  KEY `PK, FK` (`comp_id`)
);

CREATE TABLE `Client_type` (
  `ct_id` int,
  `type` varchar(20),
  `percentage` int,
  PRIMARY KEY (`ct_id`)
);

CREATE TABLE `Sales_Order` (
  `invoice_no` int,
  `pro_id` int,
  `mat_id` int,
  `client` int,
  `quote_accepted` boolean,
  `cost_price` decimal,
  `quantity` decimal,
  `client_use` boolean,
  `in-house` boolean,
  `rnd` boolean,
  `assign_date` datetime,
  `use_date` datetime,
  `mat_usage` varchar(40),
  KEY `PK, FK` (`invoice_no`, `pro_id`)
);

CREATE TABLE `Company_Banking_Detail` (
  `comp_id` int,
  `bank_name` varchar(40),
  `account_type` varchar(40),
  `account_no` varchar(40),
  `branch_code` varchar(10),
  `swift_code` varchar(10),
  `account_name` varchar(20),
  `internal` boolean,
  KEY `PK, FK` (`comp_id`)
);

CREATE TABLE `Quote` (
  `quote_no` int,
  `pro_id` int,
  `ct_id` int,
  `part_id` varchar(20),
  `part_quantity` int,
  `mat_id` int,
  `quantity` decimal,
  `mat_usage` varchar(40),
  `pmat_id` int,
  `amount` decimal,
  `printer_id` int,
  `resolution` int,
  `time` decimal,
  `labour_id` int,
  `labour_amount` decimal,
  `packaging` decimal,
  `delivery` decimal,
  `urgency_factor` decimal,
  PRIMARY KEY (`quote_no`)
);

CREATE TABLE `Employee` (
  `employee_id` int,
  `type` varchar(40),
  `monthly_salary` decimal,
  `contact_id` int,
  `id` varchar(60),
  `address` int,
  `bank_detail` int,
  `comp_id` int,
  `active` boolean,
  PRIMARY KEY (`employee_id`)
);

CREATE TABLE `Overhead` (
  `over_id` int,
  `type` varchar(40),
  `avg_monthly_rate` decimal,
  PRIMARY KEY (`over_id`)
);

CREATE TABLE `Printing_Material` (
  `pmat_id` int,
  `mat_name` varchar(40),
  `type` varchar(40),
  `spec_type` varchar(40),
  `colour` varchar(20),
  `producer` int,
  `supplier` int,
  `size` varchar(40),
  `quantity` decimal,
  `q_left` decimal,
  `cost_price` decimal,
  `re-order_point` decimal,
  `re-sell` boolean,
  `mark_up` decimal,
  `retail_price` decimal,
  `barcode` varchar(80),
  PRIMARY KEY (`pmat_id`)
);

CREATE TABLE `Invoice` (
  `invoice_no` int,
  `quote_no` int,
  `pro_id` int,
  `ct_id` int,
  `part_id` varchar(20),
  `part_quantity` int,
  `mat_id` int,
  `quantity` decimal,
  `mat_usage` varchar(40),
  `pmat_id` int,
  `amount` decimal,
  `printer_id` int,
  `resolution` int,
  `time` decimal,
  `labour_id` int,
  `labour_amount` decimal,
  `packaging` decimal,
  `delivery` decimal,
  `urgency_factor` decimal,
  PRIMARY KEY (`invoice_no`)
);

CREATE TABLE `Labour_cost` (
  `labour_id` int,
  `type` varchar(40),
  `rate` decimal,
  PRIMARY KEY (`labour_id`)
);

CREATE TABLE `Raw_Material` (
  `mat_id` int,
  `mat_name` varchar(40),
  `material` varchar(40),
  `type` varchar(40),
  `sku_no` varchar(40),
  `barcode` varchar(80),
  `size_type` varchar(40),
  `size` varchar(40),
  `supplier` int,
  `cost_price` decimal,
  `quantity` decimal,
  `re-order_point` decimal,
  `in-house` boolean,
  `client_use` boolean,
  `rnd` boolean,
  PRIMARY KEY (`mat_id`)
);

CREATE TABLE `Project` (
  `pro_id` int,
  `client` int,
  `quote_id` int,
  `project_cost` decimal,
  `project_sold` decimal,
  `profit` decimal,
  `active_employees` varchar(80),
  `request_date` date,
  `completion_date` date,
  KEY `PK, FK` (`pro_id`)
);

CREATE TABLE `Contact` (
  `contact_id` int,
  `comp_id` int,
  `liason` varchar(40),
  `phone_no` varchar(20),
  `title` varchar(40),
  `email` varchar(40),
  `internal_contact` boolean,
  PRIMARY KEY (`contact_id`)
);

CREATE TABLE `Facility_Cost` (
  `fac_id` int,
  `type` varchar(40),
  `provider` int,
  `avg_monthly_rate` decimal,
  PRIMARY KEY (`fac_id`)
);

CREATE TABLE `Employee_Banking_Detail` (
  `employee_id` int,
  `bank_name` varchar(40),
  `account_type` varchar(40),
  `account_no` varchar(40),
  `branch_code` varchar(10),
  `swift_code` varchar(10),
  `account_name` varchar(20),
  `internal` boolean,
  KEY `PK, FK` (`employee_id`)
);

