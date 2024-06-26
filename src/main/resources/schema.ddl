CREATE TABLE `tailoring`.`customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `payment` int DEFAULT NULL,
  `payment_paid` int DEFAULT NULL,
  `payment_pending` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `tailoring`.`receipt` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `current_date` DATE NULL,
  `delivery_date` DATE NULL,
  `customer` INT NULL,
  `status` VARCHAR(45) NULL,
  FOREIGN KEY (customer) REFERENCES customer(id),
  PRIMARY KEY (`id`));
  