SELECT (f.primeiro_nome ||' '|| f.nome_meio ||' '|| f.ultimo_nome) AS nome_completo, f.data_nascimento, CAST(f.salario AS DECIMAL(10,2)), d.nome_departamento, AGE(f.data_nascimento) AS idade
FROM funcionarios AS f 
INNER JOIN
departamento AS d ON (f.numero_departamento = d.numero_departamento);
