SELECT d.nome_departamento, (f.primeiro_nome ||' '|| f.nome_meio ||' '|| f.ultimo_nome) AS nome_completo, f.salario
FROM departamento AS d, funcionarios AS f
WHERE d.numero_departamento = f.numero_departamento
ORDER BY d.nome_departamento ASC, f.salario DESC;
