SELECT (F.primeiro_nome||''|| F.nome_meio||''||F.ultimo_nome) AS nome_funcionario, d.nome_departamento, p.nome_projeto
FROM funcionarios AS f
INNER JOIN trabalha_em AS t
ON f.cpf = t.cpf_funcionario
INNER JOIN projeto AS p
ON t.numero_projeto = p.numero_projeto
INNER JOIN departamento AS d
ON f.numero_departamento = d.numero_departamento
ORDER BY nome_funcionario;
