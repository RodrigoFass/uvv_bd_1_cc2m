SELECT f.sexo, CAST(AVG(salario) AS DECIMAL (10, 2)) AS média 
FROM funcionarios AS f
WHERE (sexo = 'M')
GROUP BY f.sexo
UNION 
SELECT f.sexo, CAST(AVG(salario) AS DECIMAL (10, 2)) 
FROM funcionarios AS f
WHERE (sexo = 'F')
GROUP BY f.sexo;
