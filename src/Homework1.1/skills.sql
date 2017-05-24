CREATE  TABLE IF NOT EXISTS `skills` (
 `id` int(50) NOT NULL AUTO_INCREMENT,
  `skill` varchar(50) DEFAULT NULL,
  `years_of_practis` varchar(50) NOT NULL,

 PRIMARY KEY (`id`)


)

 ENGINE=InnoDB ;

ALTER TABLE skills
 ADD developer_id INT   NOT NULL;
