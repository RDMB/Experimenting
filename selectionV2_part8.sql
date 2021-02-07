CREATE TABLE `Client_type` (
  `ct_id` int unsigned auto_increment not null,
  `type` varchar(20),
  `percentage` int,
  PRIMARY KEY (`ct_id`)
);
CREATE TABLE `Labour_cost` (
  `labour_id` int unsigned auto_increment not null,
  `type` varchar(40),
  `rate` decimal,
  PRIMARY KEY (`labour_id`)
);

CREATE TABLE `Quote` (
  `quote_no` int unsigned auto_increment not null,
  `pro_id` int unsigned,
  foreign key(`pro_id`)
  references project(pro_id),
  `ct_id` int unsigned,
  foreign key(`ct_id`)
  references `Client_type`(`ct_id`),
  `part_id` varchar(20),
  `part_quantity` int,
  `mat_id` int unsigned,
  foreign key(`mat_id`)
  references raw_material(mat_id),
  `quantity` decimal,
  `mat_usage` varchar(40),
  `pmat_id` int unsigned,
  foreign key(`pmat_id`)
  references printing_material(pmat_id),
  `amount` decimal,
  `printer_id` int unsigned,
  foreign key(`printer_id`)
  references printer(printer_id),
  `resolution` int,
  `time` decimal,
  `labour_id` int unsigned,
  foreign key(`labour_id`)
  references `Labour_cost`(`labour_id`),
  `labour_amount` decimal,
  `packaging` decimal,
  `delivery` decimal,
  `urgency_factor` decimal,
  PRIMARY KEY (`quote_no`)
);