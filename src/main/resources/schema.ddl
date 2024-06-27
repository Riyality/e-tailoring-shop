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


  
  CREATE TABLE `tailoring`.`shirt_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer` int NOT NULL,
  `shirt_chest` varchar(255) DEFAULT NULL,
  `shirt_collar` varchar(255) DEFAULT NULL,
  `shirt_hand_loose` varchar(255) DEFAULT NULL,
  `shirt_height` varchar(255) DEFAULT NULL,
  `shirt_loose` varchar(255) DEFAULT NULL,
  `shirt_other` varchar(255) DEFAULT NULL,
  `shirt_press` varchar(255) DEFAULT NULL,
  `shirt_quantity` varchar(255) DEFAULT NULL,
  `shirt_rate` float NOT NULL,
  `shirt_shape` varchar(255) DEFAULT NULL,
  `shirt_shoulder` varchar(255) DEFAULT NULL,
  `shirt_sleeve` varchar(255) DEFAULT NULL,
  `shirt_sleeve_cup` varchar(255) DEFAULT NULL,
  `shirt_stomach` varchar(255) DEFAULT NULL,
  `shirt_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (customer) REFERENCES customer(id)
);

CREATE TABLE `tailoring`.`pant_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer` int NOT NULL,
  `pant_height` varchar(255) DEFAULT NULL,
  `pant_knee` varchar(255) DEFAULT NULL,
  `pant_legs_bottom` varchar(255) DEFAULT NULL,
  `pant_other` varchar(255) DEFAULT NULL,
  `pant_pocket` varchar(255) DEFAULT NULL,
  `pant_press` varchar(255) DEFAULT NULL,
  `pant_quantity` varchar(255) DEFAULT NULL,
  `pant_rate` float NOT NULL,
  `pant_seat` varchar(255) DEFAULT NULL,
  `pant_shape` varchar(255) DEFAULT NULL,
  `pant_thigh` varchar(255) DEFAULT NULL,
  `pant_tip` varchar(255) DEFAULT NULL,
  `pant_type` varchar(255) DEFAULT NULL,
  `pant_waist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (customer) REFERENCES customer(id)
) ;


CREATE TABLE `tailoring`.`receipt` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `curr_date` DATE NULL,
  `delivery_date` DATE NULL,
  `customer` INT NULL,
  `status` VARCHAR(45) NULL,
  shirt int NOT NULL,
  pant int NOT NULL,
  FOREIGN KEY (shirt) REFERENCES shirt_details(id),
  FOREIGN KEY (pant) REFERENCES pant_details(id),
  PRIMARY KEY (`id`));
  