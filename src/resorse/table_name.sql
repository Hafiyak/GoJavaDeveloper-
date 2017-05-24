CREATE TABLE `users` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)

)
  ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `roles` (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(50),

  INDEX (name)
)
  ENGINE =InnoDB ;

CREATE TABLE IF NOT EXISTS user_roles  (
  user_id INT NOT NULL ,
  role_id INT NOT NULL ,

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (role_id) REFERENCES  roles(id),

  UNIQUE (user_id,role_id)
)
  ENGINE  = InnoDB;



