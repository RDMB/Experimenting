CREATE TABLE `Facility_Cost` (
  `fac_id` int unsigned auto_increment not null,
  `type` varchar(40),
  `provider` int unsigned not null,
  foreign key(`provider`)
  references company(comp_id),
  `avg_monthly_rate` decimal,
  PRIMARY KEY (`fac_id`)
);

CREATE TABLE `Overhead` (
  `over_id` int unsigned auto_increment not null,
  `type` varchar(40),
  `avg_monthly_rate` decimal,
  `fac_id` int unsigned,
  foreign key(`fac_id`)
  references `Facility_Cost`(`fac_id`),
  PRIMARY KEY (`over_id`)
);
