CREATE TABLE Fabricated_Material (
  fab_id int unsigned auto_increment,
  printer_id int unsigned,
  layer_height int,
  print_rate decimal,
  PRIMARY KEY (fab_id)
);

CREATE TABLE Printer (
  printer_id int unsigned not null auto_increment,
  printer_type varchar(40),
  printer_model varchar(40),
  avg_energy_consump decimal,
  build_volume varchar(20),
  fab_id int unsigned,
  foreign key(fab_id)
  references Fabricated_Material(fab_id),
  initial_value decimal,
  lifetime int,
  supplier_comp_id int unsigned,
  foreign key(supplier_comp_id)
  references company(comp_id),
  producer_comp_id int unsigned,
  foreign key(producer_comp_id)
  references company(comp_id),
  avg_maintenance decimal,
  low_material boolean,
  high_material boolean,
  PRIMARY KEY (printer_id)
);

