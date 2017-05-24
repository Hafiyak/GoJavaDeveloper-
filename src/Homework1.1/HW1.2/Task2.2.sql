SELECT
  a.projects_name,
  sum(a.project_cost) AS cost
FROM projects a, developers b
WHERE a.id = b.id
GROUP BY b.id
ORDER BY cost DESC
LIMIT 2;