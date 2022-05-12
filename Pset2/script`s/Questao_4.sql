SELECT (f.primeiro_nome ||' '|| f.nome_meio ||' '|| f.ultimo_nome) AS nome_completo, CAST(f.salario AS DECIMAL (10,2)) AS salario, CAST (f.salario*1.2 AS DECIMAL (10,2)) AS salario_reajustado, d.nome_departamento
FROM funcionarios AS f, departamento AS d
WHERE salario < 35000 AND f.numero_departamento = d.numero_departamento
UNION
SELECT (f.primeiro_nome ||' '|| f.nome_meio ||' '|| f.ultimo_nome) AS nome_completo, CAST(f.salario AS DECIMAL (10,2)) AS salario, CAST (f.salario*1.15 AS DECIMAL (10,2)) AS salario_reajustado, d.nome_departamento
FROM funcionarios AS f, departamento AS d
WHERE salario >= 35000 AND f.numero_departamento = d.numero_departamento;
