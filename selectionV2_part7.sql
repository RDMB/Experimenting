CREATE TABLE `Project` (
  `pro_id` int unsigned auto_increment not null ,
  `client` int unsigned,
  foreign key(`client`)
  references company(comp_id),
  `quote_id` int,
  `project_cost` decimal,
  `project_sold` decimal,
  `profit` decimal,
  `active_employees` varchar(80),
  `request_date` date,
  `completion_date` date,
  primary key(`pro_id`)
);