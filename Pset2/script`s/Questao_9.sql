SELECT d.nome_departamento, p.nome_projeto, SUM(T.horas) AS total_horas
FROM funcionarios AS f
INNER JOIN trabalha_em AS t
ON f.cpf = t.cpf_funcionario
INNER JOIN projeto AS p
ON t.numero_projeto = p.numero_projeto
INNER JOIN departamento AS d
ON p.numero_departamento = d.numero_departamento
GROUP BY d.nome_departamento, p.nome_projeto;
