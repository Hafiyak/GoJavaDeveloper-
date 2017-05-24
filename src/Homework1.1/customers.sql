CREATE  TABLE IF NOT EXISTS `customers` (
 `id` int(50) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
 PRIMARY KEY (`id`)

)

 ENGINE=InnoDB ;

ALTER TABLE customers
  ADD customers_bill INT UNSIGNED NOT NULL;
UPDATE customers
SET customers_bill = cast(rand() *  250 * id  AS UNSIGNED  );