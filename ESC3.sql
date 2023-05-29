
-- exclui o banco de dados: DROP DATABASE naskar IF EXISTS
-- cria o database
CREATE DATABASE IF NOT EXISTS naskar;

-- seleciona o banco naskar
USE naskar;

CREATE TABLE IF NOT EXISTS `Vendas` (
  `Vendedor_name` VARCHAR(50) NOT NULL,
  `Num_vendas` INT NULL,
  `Comissao` INT NULL,
  PRIMARY KEY (`Vendedor_name`)
);

CREATE TABLE IF NOT EXISTS `Veiculos` (
  `Veiculo_id` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NULL,
  `Versão` VARCHAR(45) NULL,
  `Ano` INT NULL,
  `Cor` VARCHAR(45) NULL,
  `Motor` VARCHAR(45) NULL,
  PRIMARY KEY (`Veiculo_id`)
);

CREATE TABLE IF NOT EXISTS `Funcionarios` (
  `Cpf` INT NOT NULL,
  `Cargo` VARCHAR(45) NULL,
  `Salario` INT NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`Cpf`)
);

CREATE TABLE IF NOT EXISTS `Pecas` (
  `Pecas_id` INT NOT NULL AUTO_INCREMENT,
  `Material` VARCHAR(45) NULL,
  `Tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`Pecas_id`)
);

CREATE TABLE IF NOT EXISTS `Filiais` (
  `CnpjFilial` INT NOT NULL,
  `Pais` VARCHAR(45) NULL,
  `EndereçoFilial` VARCHAR(45) NULL,
  PRIMARY KEY (`CnpjFilial`)
);