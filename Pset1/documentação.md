# Pset-1
### Rodrigo Fassarella Leite - CC2M // Abrantes Araujo Silva Filho
---
- Comecei meu trabalho pelas questões discursivas sobre Git e GitHub (2.5)

Q1: Controle de versão é um sistema que registra alterações em um arquivo ou conjunto de arquivos ao longo do tempo para que 
você possa lembrar versões específicas mais tarde. É importante pois ele permite que você reverta para estado anterior determinados 
arquivos ou um projeto inteiro, compare as mudanças ao longo do tempo, veja quem modificou pela última vez algo que pode estar causando um problema.

Q2: git é um software VCS local que permite aos desenvolvedores salvar snapshots de seus projetos ao longo do tempo. 
Geralmente é melhor para uso individual. GitHub é uma plataforma baseada na web que incorpora os recursos de controle
de versões do gitHub para que possam ser usados colaborativamente. O GitHub só suporta o Git, então para você subir seus
projetos deve utilizá-lo, mas a integração entre eles é bem fácil. Agora caso queira utilizar somente o Git, não tem problema.
Ao contrário do GitHub, o Git não depende do GitHub para ser utilizado.

Q3: São vários repositórios autônomos e independentes, um para cada desenvolvedor.
Cada repositório possui uma área de trabalho acoplada e as operações commit e update acontecem localmente entre os dois

---

- Em seguida fiz o Modelo do Elmasri (3.2)

![Screenshot_1111](https://user-images.githubusercontent.com/103529923/165406369-ae162e28-82a2-4913-a559-f15bde3f338d.png)

---

- Depois fiz as questões discursivas sobre o projeto lógico (3.3)

Q4: Um dos erros está no relacionamento entre as tabelas, no qual seria na saída de funcionaro, que é "1 funcionário", porém deveria ser "1 ou varios". 
A segunda parte do erro está em Departamento, na qual a saída é "0 ou varios", porém deveria ser "1 ou vários", tendo em vista que a saída de funcionário é "1 ou vários"

Q5: Nenhuma tabela N:N, pois possui apenas relacionamentos N:1

Q6: Alterar ou criar o numero de relacionamento entre as tabelas de 1 para 0 ou 1 

Q7: Pois a tabela de origem o tipo de campo não é uma chave primária. Represente que nao é uma chave primaria

Q8: O unico relacionamento que pode guardar dados e de muitos para muitos pois nele é preciso da tabela associada para acomodar diretamente o relacionamento,
no modelo nao existe nenhum relacionamento  de muitos para muitos

Q9: Para confirmar que é um para muitos, esta correto

---

- Apos isso fiz o banco de dados no PostgreSQL(3.4) e no MySQL

---

- Por final fiz as questoes Q10,Q11,Q12,Q13,Q14,Q15

Q10:  Usuários e esquemas são essencialmente a mesma coisa. 
Você pode considerar que um usuário é a conta que você usa para se conectar a um banco de dados,
e um esquema é o conjunto de objetos (tabelas, visualizações, etc.) que pertencem a essa conta e banco de dados é uma coleção organizada de dados estruturadas.

Q11: Usuários e esquemas são essencialmente a mesma coisa. Você pode considerar que um usuário é a conta que você usa para se conectar a um banco de dados, e um esquema é o conjunto de objetos (tabelas, visualizações, etc.) 
que pertencem a essa conta e banco de dados é uma coleção organizada de dados estruturadas.usuário (USER) e esquema (SCHEMA) são sinônimos. Assim, 
ao criar um usuário estamos criando, na verdade, um novo esquema no banco de dados, e vice-versa.

Q12: Em nenhum lugar, ruim pois nao vai exitir

## Observações
- Este trabalho foi feito com Joao Vitor Valadares da rocha
