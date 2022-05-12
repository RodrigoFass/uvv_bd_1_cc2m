set client_encoding to 'UTF8';

/*
Criei a tabela 'public.departamento'
*/

DROP TABLE IF EXISTS "public"."departamento" CASCADE;
CREATE TABLE "public"."departamento" ("numero_departamento" INTEGER NOT NULL, "nome_departamento" VARCHAR(15)  NOT NULL, "cpf_gerente" VARCHAR(33)  NOT NULL, "data_inicio_gerente" DATE);
DROP INDEX IF EXISTS "PRIMARY";
ALTER TABLE "public"."departamento" ADD CONSTRAINT "PRIMARY" PRIMARY KEY ("numero_departamento");
DROP INDEX IF EXISTS "nome_departamento_UNIQUE";
CREATE UNIQUE INDEX "nome_departamento_UNIQUE" ON "public"."departamento" ("nome_departamento");
DROP INDEX IF EXISTS "cpf_gerente_idx";
CREATE INDEX "cpf_gerente_idx" ON "public"."departamento" ("cpf_gerente");

/*
Criei a tabela 'public.dependente'
*/

DROP TABLE IF EXISTS "public"."dependente" CASCADE;
CREATE TABLE "public"."dependente" ("cpf_funcionario" VARCHAR(33)  NOT NULL, "nome_dependente" VARCHAR(15)  NOT NULL, "sexo" VARCHAR(3) , "data_nascimento" DATE, "parentesco" VARCHAR(15) );
DROP INDEX IF EXISTS "PRIMARY00000";
ALTER TABLE "public"."dependente" ADD CONSTRAINT "PRIMARY00000" PRIMARY KEY ("cpf_funcionario", "nome_dependente");

/*
Criei a tabela 'public.funcionario'
*/

DROP TABLE IF EXISTS "public"."funcionario" CASCADE;
CREATE TABLE "public"."funcionario" ("cpf" VARCHAR(33)  NOT NULL, "primeiro_nome" VARCHAR(15) , "nome_meio" VARCHAR(3) , "ultimo_nome" VARCHAR(15)  NOT NULL, "data_nascimento" DATE, "endereco" VARCHAR(30) , "sexo" VARCHAR(3) , "salario" DECIMAL(10,2), "cpf_supervisor" VARCHAR(33)  NOT NULL, "numero_departamento" INTEGER NOT NULL);
DROP INDEX IF EXISTS "PRIMARY00001";
ALTER TABLE "public"."funcionario" ADD CONSTRAINT "PRIMARY00001" PRIMARY KEY ("cpf");
DROP INDEX IF EXISTS "cpf_supervisor_idx";
CREATE INDEX "cpf_supervisor_idx" ON "public"."funcionario" ("cpf_supervisor");

/*
Criei a tabela 'public.localizacoes_departamento'
*/

DROP TABLE IF EXISTS "public"."localizacoes_departamento" CASCADE;
CREATE TABLE "public"."localizacoes_departamento" ("numero_departamento" INTEGER NOT NULL, "local" VARCHAR(15)  NOT NULL);
DROP INDEX IF EXISTS "PRIMARY00002";
ALTER TABLE "public"."localizacoes_departamento" ADD CONSTRAINT "PRIMARY00002" PRIMARY KEY ("numero_departamento", "local");

/*
Criei a tabela 'public.projeto'
*/

DROP TABLE IF EXISTS "public"."projeto" CASCADE;
CREATE TABLE "public"."projeto" ("numero_projeto" INTEGER NOT NULL, "nome_projeto" VARCHAR(15)  NOT NULL, "local_projeto" VARCHAR(15) , "numero_departamen" INTEGER NOT NULL);
DROP INDEX IF EXISTS "PRIMARY00003";
ALTER TABLE "public"."projeto" ADD CONSTRAINT "PRIMARY00003" PRIMARY KEY ("numero_projeto");
DROP INDEX IF EXISTS "nome_projeto_UNIQUE";
CREATE UNIQUE INDEX "nome_projeto_UNIQUE" ON "public"."projeto" ("nome_projeto");
DROP INDEX IF EXISTS "numero_departamento_idx";
CREATE INDEX "numero_departamento_idx" ON "public"."projeto" ("numero_departamen");

/*
Criei a tabela 'public.trabalha_em'
*/

DROP TABLE IF EXISTS "public"."trabalha_em" CASCADE;
CREATE TABLE "public"."trabalha_em" ("cpf_funcionario" VARCHAR(33)  NOT NULL, "numero_projeto" INTEGER NOT NULL, "horas" DECIMAL(3,1) NOT NULL);
DROP INDEX IF EXISTS "PRIMARY00004";
ALTER TABLE "public"."trabalha_em" ADD CONSTRAINT "PRIMARY00004" PRIMARY KEY ("cpf_funcionario", "numero_projeto");
DROP INDEX IF EXISTS "numero_projeto_idx";
CREATE INDEX "numero_projeto_idx" ON "public"."trabalha_em" ("numero_projeto");
