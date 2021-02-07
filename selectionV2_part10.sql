CREATE TABLE `Sales_Order`(
  `invoice_no` int unsigned,
  foreign key(`invoice_no`)
  references invoice(invoice_no),
  `pro_id` int unsigned,
  foreign key(`pro_id`)
  references project(pro_id),
  `mat_id` int unsigned,
  foreign key(`mat_id`)
  references raw_material(mat_id),
  `pmat_id` int unsigned,
  foreign key(`pmat_id` )
  references printing_material(pmat_id),
  `client` int unsigned,
  foreign key(`client`)
  references company(comp_id),
  `quote_accepted` boolean,
  `cost_price` decimal,
  `quantity` decimal,
  `client_use` boolean,
  `in-house` boolean,
  `rnd` boolean,
  `assign_date` datetime,
  `use_date` datetime,
  `mat_usage` varchar(40),
   primary key(`invoice_no`, `pro_id`)
);