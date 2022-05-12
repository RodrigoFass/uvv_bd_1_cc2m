SELECT d.nome_departamento, COUNT(f.cpf) AS quantidade_funcionarios
FROM funcionarios AS f
INNER JOIN departamento AS d
ON f.numero_departamento = d.numero_departamento
GROUP BY d.nome_departamento;
