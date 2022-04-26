-- Feito com MySQL Workbenc

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- Esquema projeto 1

-- Esquema projeto 1

CREATE SCHEMA IF NOT EXISTS `projeto1` DEFAULT CHARACTER SET utf8 ;
USE `projeto1` ;


-- Tabela projeto 1 : funcionario

CREATE TABLE IF NOT EXISTS `projeto1`.`funcionario` (
  `cpf` CHAR(11) NOT NULL,
  `primeiro_nome` VARCHAR(15) NULL,
  `nome_meio` CHAR(1) NULL,
  `ultimo_nome` VARCHAR(15) NOT NULL,
  `data_nascimento` DATE NULL,
  `endereco` VARCHAR(30) NULL,
  `sexo` CHAR(1) NULL,
  `salario` DECIMAL(10,2) NULL,
  `cpf_supervisor` CHAR(11) NOT NULL,
  `numero_departamento` INT NOT NULL,
  PRIMARY KEY (`cpf`),
  INDEX `cpf_supervisor_idx` (`cpf_supervisor` ASC) VISIBLE,
  CONSTRAINT `cpf_supervisor`
    FOREIGN KEY (`cpf_supervisor`)
    REFERENCES `projeto1`.`funcionario` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- Tabela projeto 1 : departamento

CREATE TABLE IF NOT EXISTS `projeto1`.`departamento` (
  `numero_departamento` INT NOT NULL,
  `nome_departamento` VARCHAR(15) NOT NULL,
  `cpf_gerente` CHAR(11) NOT NULL,
  `data_inicio_gerente` DATE NULL,
  PRIMARY KEY (`numero_departamento`),
  UNIQUE INDEX `nome_departamento_UNIQUE` (`nome_departamento` ASC) VISIBLE,
  INDEX `cpf_gerente_idx` (`cpf_gerente` ASC) VISIBLE,
  CONSTRAINT `cpf_gerente`
    FOREIGN KEY (`cpf_gerente`)
    REFERENCES `projeto1`.`funcionario` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- Tabela projeto 1 : localizacoes_departamento

CREATE TABLE IF NOT EXISTS `projeto1`.`localizacoes_departamento` (
  `numero_departamento` INT NOT NULL,
  `local` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`local`, `numero_departamento`),
  CONSTRAINT `numero_departamento1`
    FOREIGN KEY (`numero_departamento`)
    REFERENCES `projeto1`.`departamento` (`numero_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- Tabela projeto 1 : dependente

CREATE TABLE IF NOT EXISTS `projeto1`.`dependente` (
  `cpf_funcionario` CHAR(11) NOT NULL,
  `nome_dependente` VARCHAR(15) NOT NULL,
  `sexo` CHAR(1) NULL,
  `data_nascimento` DATE NULL,
  `parentesco` VARCHAR(15) NULL,
  PRIMARY KEY (`cpf_funcionario`, `nome_dependente`),
  CONSTRAINT `cpf_funcionario2`
    FOREIGN KEY (`cpf_funcionario`)
    REFERENCES `projeto1`.`funcionario` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- Tabela projeto 1 : projeto

CREATE TABLE IF NOT EXISTS `projeto1`.`projeto` (
  `numero_projeto` INT NOT NULL,
  `nome_projeto` VARCHAR(15) NOT NULL,
  `local_projeto` VARCHAR(15) NULL,
  `numero_departamento` INT NOT NULL,
  PRIMARY KEY (`numero_projeto`),
  UNIQUE INDEX `nome_projeto_UNIQUE` (`nome_projeto` ASC) VISIBLE,
  INDEX `numero_departamento_idx` (`numero_departamento` ASC) VISIBLE,
  CONSTRAINT `numero_departamento2`
    FOREIGN KEY (`numero_departamento`)
    REFERENCES `projeto1`.`departamento` (`numero_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- Tabela projeto 1 : trabalha_em

CREATE TABLE IF NOT EXISTS `projeto1`.`trabalha_em` (
  `cpf_funcionario` CHAR(11) NOT NULL,
  `numero_projeto` INT NOT NULL,
  `horas` DECIMAL(3,1) NOT NULL,
  PRIMARY KEY (`cpf_funcionario`, `numero_projeto`),
  INDEX `numero_projeto_idx` (`numero_projeto` ASC) VISIBLE,
  CONSTRAINT `cpf_funcionario1`
    FOREIGN KEY (`cpf_funcionario`)
    REFERENCES `projeto1`.`funcionario` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `numero_projeto`
    FOREIGN KEY (`numero_projeto`)
    REFERENCES `projeto1`.`projeto` (`numero_projeto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
