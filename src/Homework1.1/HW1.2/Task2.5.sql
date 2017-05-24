CREATE TEMPORARY TABLE companies_revenues_by_customers
  SELECT
    companies.company_name AS company,
    customers.first_name AS customer,
    sum(customers_bill)      AS customers_bill
  FROM projects
    JOIN companies ON projects.id = companies.id
    JOIN customers ON projects.id = customers.id
  GROUP BY company, customer;
