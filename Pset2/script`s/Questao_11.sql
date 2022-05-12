SELECT (f.primeiro_nome||' '||f.nome_meio||' '|| f.ultimo_nome) AS nome_funcionario, p.nome_projeto, CAST (t.horas * 50 AS DECIMAL(10,2)) AS valor_total
FROM funcionarios AS f
INNER JOIN trabalha_em AS t
ON f.cpf = t.cpf_funcionario
INNER JOIN projeto AS p
ON t.numero_projeto = p.numero_projeto
ORDER BY f.salario DESC;
