SELECT d.numero_departamento, AVG(salario) AS media_salarial
FROM funcionarios AS f, departamento AS d
WHERE d.numero_departamento = f.numero_departamento
GROUP BY d.numero_departamento ;
