SELECT (f.primeiro_nome||' '|| f.nome_meio||' '|| f.ultimo_nome) AS nome_funcionario, f.numero_departamento, f.salario
FROM funcionarios AS f
WHERE f.cpf NOT IN (SELECT d.cpf_funcionario FROM dependente AS d);
