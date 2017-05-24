
CREATE TABLE IF NOT EXISTS developers_skills  (
  developers_id INT NOT NULL ,
  skills_id INT NOT NULL ,

  FOREIGN KEY (developers_id) REFERENCES developers(id),
  FOREIGN KEY (skills_id) REFERENCES  skills(id),

  UNIQUE (developers_id,skills_id)
)
  ENGINE  = InnoDB;

SELECT first_name,skill,last_name,years_of_practis,developer_id
FROM developers
INNER JOIN skills
ON developers.ID = skills.developer_id ;

SELECT first_name,last_name,developer_id,company_name,city
FROM developers
  INNER JOIN companies
    ON developers.ID = companies.developer_id;

SELECT first_name,last_name,developer_id,projects_terminInDays,projects_name
FROM developers
  INNER JOIN projects
    ON developers.ID = projects.developer_id;




