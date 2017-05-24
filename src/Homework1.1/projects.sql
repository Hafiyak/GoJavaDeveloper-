CREATE  TABLE IF NOT EXISTS `projects` (
 `id` int(50) NOT NULL  AUTO_INCREMENT,
  `projects_name` NVARCHAR (50) DEFAULT NULL,
 `projects_terminInDays` INT (50) DEFAULT NULL,

 PRIMARY KEY (`id`)

)

 ENGINE=InnoDB ;




ALTER TABLE projects
  ADD developer_id INT UNSIGNED NOT NULL;
ALTER TABLE projects
  ADD project_cost INT UNSIGNED NOT NULL;
UPDATE projects
SET project_cost = cast(rand() *  1000 * id  AS UNSIGNED  );

