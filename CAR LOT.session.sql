CREATE TABLE `car` (
  `car_id` SERIAL,
  `sales_date` DATE,
  `car_condition` VARCHAR(4),
  `car_cost` NUMERIC(10,2),
  PRIMARY KEY (`car_id`)
);

CREATE TABLE `customer` (
  `customer_id` SERIAL,
  `customer_name` VARCHAR(50),
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE `invoice` (
  `invoice_id` SERIAL,
  `car_id` INTEGER,
  `salesperson_id` INTEGER,
  `customer_id` INTEGER,
  `total_cost` NUMERIC(10,2),
  PRIMARY KEY (`invoice_id`),
  FOREIGN KEY (`customer_id`) REFERENCES `customer`(`customer_id`),
  FOREIGN KEY (`car_id`) REFERENCES `car`(`car_id`)
);

CREATE TABLE `parts` (
  `parts_id` SERIAL,
  `parts_cost` NUMERIC(10,2),
  `part_description` VARCHAR(100),
  PRIMARY KEY (`parts_id`)
);

CREATE TABLE `service_ticket` (
  `service_id` SERIAL,
  `service_type` VARCHAR(100),
  `service_cost` NUMERIC(8,2),
  `car_id` INTEGER,
  `mechanic_id` INTEGER,
  `parts_id` INTEGER,
  `service_date` DATE,
  `customer_id` INTEGER,
  PRIMARY KEY (`service_id`)
);

CREATE TABLE `salesperson` (
  `salesperson_id` SERIAL,
  `salesperson_name` VARCHAR(50),
  `email` VARCHAR(50),
  PRIMARY KEY (`salesperson_id`)
);

CREATE TABLE `mechanic` (
  `mechanic_id` SERIAL,
  `mechanic_name` VARCHAR(50),
  PRIMARY KEY (`mechanic_id`)
);


SELECT * FROM ;
 
