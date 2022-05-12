SELECT d.nome_departamento, p.nome_projeto, (f.primeiro_nome||' '|| f.nome_meio||' '|| f.ultimo_nome) AS nome_funcionario
FROM funcionarios AS f
INNER JOIN departamento AS d
ON f.numero_departamento = d.numero_departamento
INNER JOIN trabalha_em AS t
ON f.cpf = t.cpf_funcionario
INNER JOIN projeto AS p
ON t.numero_projeto = p.numero_projeto
WHERE t.horas IS NULL;
