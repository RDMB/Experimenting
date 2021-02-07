CREATE TABLE `Purchase_Order` (
  `purchase_number` int unsigned auto_increment not null,
  `mat_id` int unsigned,
  foreign key(`mat_id`)
  references raw_material(mat_id),
  pmat_id int unsigned,
  foreign key(pmat_id)
  references printing_material(pmat_id),
  `supplier` int unsigned,
  foreign key(`supplier`)
  references company(comp_id),
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
  PRIMARY KEY (`purchase_number`, `mat_id`, pmat_id )
);