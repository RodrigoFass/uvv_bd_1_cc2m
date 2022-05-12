SELECT (f.primeiro_nome||' '||f.nome_meio||' '||f.ultimo_nome) AS nome, (case when (f.sexo='m') then 'Masculino' when (f.sexo='f') then 'Feminino'end) as sexo, DATE_PART('year', AGE(f.data_nascimento)) AS idade
FROM funcionarios AS f
UNION
SELECT (d.nome_dependente) AS nome, (case when (d.sexo='M') then 'Masculino' when (d.sexo='F') then 'Feminino'end) as sexo, DATE_PART('year', AGE(d.data_nascimento)) AS idade
FROM dependente AS d
ORDER BY idade DESC;
