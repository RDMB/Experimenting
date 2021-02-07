CREATE TABLE `Printing_Material` (
  `pmat_id` int unsigned auto_increment not null,
  `mat_name` varchar(40),
  `type` varchar(40),
  `spec_type` varchar(40),
  `colour` varchar(20),
  `producer` int unsigned,
  foreign key (`producer`)
  references company(comp_id),
  `supplier` int unsigned,
  foreign key (`supplier`)
  references company(comp_id),
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

CREATE TABLE `Raw_Material` (
  `mat_id` int unsigned auto_increment not null,
  `mat_name` varchar(40),
  `material` varchar(40),
  `type` varchar(40),
  `sku_no` varchar(40),
  `barcode` varchar(80),
  `size_type` varchar(40),
  `size` varchar(40),
  `supplier` int unsigned,
  foreign key (`supplier`)
  references company(comp_id),
  `cost_price` decimal,
  `quantity` decimal,
  `re-order_point` decimal,
  `in-house` boolean,
  `client_use` boolean,
  `rnd` boolean,
  PRIMARY KEY (`mat_id`)
);