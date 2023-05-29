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

CREATE TABLE IF NOT EXISTS `Veiculos_has_Recurso` (
  `Veiculos_Veiculo_id` VARCHAR(45) NOT NULL,
  `Recurso_Peças_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Veiculos_Veiculo_id`, `Recurso_Peças_id`),
  CONSTRAINT `fk_Veiculos_has_Recurso_Veiculos` FOREIGN KEY (`Veiculos_Veiculo_id`) REFERENCES `Veiculos` (`Veiculo_id`),
  CONSTRAINT `fk_Veiculos_has_Recurso_Recurso1` FOREIGN KEY (`Recurso_Peças_id`) REFERENCES `Pecas` (`Pecas_id`)
);

CREATE TABLE IF NOT EXISTS `pecas_veiculo` (
  `Pecas_Pecas_id` INT NOT NULL,
  `Veiculos_Veiculo_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Pecas_Pecas_id`, `Veiculos_Veiculo_id`),
  CONSTRAINT `fk_Pecas_has_Veiculos_Pecas1` FOREIGN KEY (`Pecas_Pecas_id`) REFERENCES `Pecas` (`Pecas_id`),
  CONSTRAINT `fk_Pecas_has_Veiculos_Veiculos1` FOREIGN KEY (`Veiculos_Veiculo_id`) REFERENCES `Veiculos` (`Veiculo_id`)
);

CREATE TABLE IF NOT EXISTS `Funcionarios_Vendas` (
  `Funcionarios_Cpf` INT NOT NULL,
  `Vendas_Vendedor_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Funcionarios_Cpf`, `Vendas_Vendedor_name`),
  CONSTRAINT `fk_Funcionarios_has_Vendas_Funcionarios1` FOREIGN KEY (`Funcionarios_Cpf`) REFERENCES `Funcionarios` (`Cpf`),
  CONSTRAINT `fk_Funcionarios_has_Vendas_Vendas1` FOREIGN KEY (`Vendas_Vendedor_name`) REFERENCES `Vendas` (`Vendedor_name`)
);

CREATE TABLE IF NOT EXISTS `Filiais_Veiculos` (
  `Filiais_CnpjFilial` INT NOT NULL,
  `Veiculos_Veiculo_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Filiais_CnpjFilial`, `Veiculos_Veiculo_id`),
  CONSTRAINT `fk_Filiais_has_Veiculos_Filiais1` FOREIGN KEY (`Filiais_CnpjFilial`) REFERENCES `Filiais` (`CnpjFilial`),
  CONSTRAINT `fk_Filiais_has_Veiculos_Veiculos1` FOREIGN KEY (`Veiculos_Veiculo_id`) REFERENCES `Veiculos` (`Veiculo_id`)
);

CREATE TABLE IF NOT EXISTS `Filiais_Pecas` (
  `Filiais_CnpjFilial` INT NOT NULL,
  `Pecas_Pecas_id` INT NOT NULL,
  PRIMARY KEY (`Filiais_CnpjFilial`, `Pecas_Pecas_id`),
  CONSTRAINT `fk_Filiais_has_Pecas_Filiais1` FOREIGN KEY (`Filiais_CnpjFilial`) REFERENCES `Filiais` (`CnpjFilial`),
  CONSTRAINT `fk_Filiais_has_Pecas_Pecas1` FOREIGN KEY (`Pecas_Pecas_id`) REFERENCES `Pecas` (`Pecas_id`)
);

CREATE TABLE IF NOT EXISTS `Filiais_Funcionarios` (
  `Filiais_CnpjFilial` INT NOT NULL,
  `Funcionarios_Cpf` INT NOT NULL,
  PRIMARY KEY (`Filiais_CnpjFilial`, `Funcionarios_Cpf`),
  CONSTRAINT `fk_Filiais_has_Funcionarios_Filiais1` FOREIGN KEY (`Filiais_CnpjFilial`) REFERENCES `Filiais` (`CnpjFilial`),
  CONSTRAINT `fk_Filiais_has_Funcionarios_Funcionarios1` FOREIGN KEY (`Funcionarios_Cpf`) REFERENCES `Funcionarios` (`Cpf`)
);

CREATE TABLE IF NOT EXISTS `Veiculos_Vendas` (
  `Veiculos_Veiculo_id` VARCHAR(45) NOT NULL,
  `Vendas_Vendedor_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Veiculos_Veiculo_id`, `Vendas_Vendedor_name`),
  CONSTRAINT `fk_Veiculos_has_Vendas_Veiculos1` FOREIGN KEY (`Veiculos_Veiculo_id`) REFERENCES `Veiculos` (`Veiculo_id`),
  CONSTRAINT `fk_Veiculos_has_Vendas_Vendas1` FOREIGN KEY (`Vendas_Vendedor_name`) REFERENCES `Vendas` (`Vendedor_name`)
);