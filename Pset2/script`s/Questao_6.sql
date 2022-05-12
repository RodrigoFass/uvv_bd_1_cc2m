SELECT f.numero_departamento, (f.primeiro_nome ||' '|| f.nome_meio ||' '|| f.ultimo_nome) AS nome_funcionario, d.nome_dependente, AGE(d.data_nascimento) AS idade_dependente, (case when(d.sexo = 'M')then 'Masculino' when(d.sexo = 'F')then 'Feminino'end) as sexo
FROM funcionarios AS f, dependente AS d
WHERE f.cpf = d.cpf_funcionario;
