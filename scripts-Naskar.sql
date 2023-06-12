-- exclui o banco de dados: 
DROP DATABASE IF EXISTS naskar;
-- cria o database
CREATE DATABASE IF NOT EXISTS naskar;

-- seleciona o banco naskar
USE naskar;

CREATE TABLE IF NOT EXISTS `Vendas` (
  `Vendedor_name` VARCHAR(50) NOT NULL,
  `Num_vendas` INT NOT NULL,
  `Comissao` INT NOT NULL,
  `Funcionario_Cpf` BIGINT NOT NULL,
  PRIMARY KEY (`Vendedor_name`)
  CONSTRAINT `fk_Vendas_Funcionarios` FOREIGN KEY (`Funcionario_Cpf`) REFERENCES `Funcionarios` (`Cpf`)
);

CREATE TABLE IF NOT EXISTS `Veiculos` (
  `Veiculo_name` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Versão` VARCHAR(45) NOT NULL,
  `Ano` INT NOT NULL,
  `Cor` VARCHAR(45) NOT NULL,
  `Motor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Veiculo_name`)
);

CREATE TABLE IF NOT EXISTS `Funcionarios` (
  `Cpf` BIGINT NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `Salario` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Cpf`)
);

CREATE TABLE IF NOT EXISTS `Pecas` (
  `Pecas_id` INT NOT NULL AUTO_INCREMENT,
  `Material` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Veiculo_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Pecas_id`)
  CONSTRAINT `fk_Pecas_Veiculos` FOREIGN KEY (`Veiculo_name`) REFERENCES `Veiculos` (`Veiculo_name`)
);

CREATE TABLE IF NOT EXISTS `Filiais` (
  `CnpjFilial` VARCHAR(14) NOT NULL,
  `Pais` VARCHAR(45) NOT NULL,
  `EndereçoFilial` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CnpjFilial`)
);

--INSERTS
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('João', 10, 500, 123456789);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Maria', 8, 400, 987654321);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Pedro', 15, 750, 543216789);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Ana', 12, 600, 789657321);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Lucas', 5, 250, 234563891);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Carla', 7, 350, 912345678);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Rodrigo', 20, 1000, 854763219);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Julia', 9, 450, 3456778912);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Rafael', 6, 300, 678912345);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Mariana', 11, 550, 21987543);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Paulo', 14, 700, 789173456);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Fernanda', 3, 150, 456789123);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Gustavo', 18, 900, 321977654);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Amanda', 7, 350, 654321987);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Luiza', 10, 500, 987757321);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Carlos', 13, 650, 789654321);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Isabela', 5, 250, 234567891);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Tiago', 9, 450, 9123457678);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Mariano', 16, 800, 876543219);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Renata', 6, 300, 345678912);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Ricardo', 11, 550, 678972345);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Patricia', 8, 400, 219876543);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Fábio', 14, 700, 789123457);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Vanessa', 4, 200, 456789123);
INSERT INTO `Vendas` (`Vendedor_name`, `Num_vendas`, `Comissao`, `Funcionario_Cpf`)
VALUES ('Giovanni', 9, 450, 321987454);

--vendas

INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Gol', 'VW', 'Gol G6', 2021, 'Prata', '1.0');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Civic', 'Honda', 'Civic Touring', 2022, 'Branco', '2.0 Turbo');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Corolla', 'Toyota', 'Corolla XEi', 2021, 'Preto', '1.8 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('HB20', 'Hyundai', 'HB20X', 2020, 'Vermelho', '1.6 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Onix', 'Chevrolet', 'Onix Premier', 2022, 'Azul', '1.0 Turbo');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Fusion', 'Ford', 'Fusion Titanium', 2021, 'Prata', '2.0 Hybrid');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Golf', 'VW', 'Golf GTI', 2020, 'Branco', '2.0 Turbo');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Cruze', 'Chevrolet', 'Cruze LT', 2021, 'Preto', '1.4 Turbo');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Renegade', 'Jeep', 'Renegade Longitude', 2022, 'Vermelho', '1.8 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Siena', 'Fiat', 'Siena Attractive', 2020, 'Prata', '1.4 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Toro', 'Fiat', 'Toro Volcano', 2021, 'Preto', '2.0 Diesel');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('EcoSport', 'Ford', 'EcoSport Titanium', 2020, 'Vermelho', '1.5 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Creta', 'Hyundai', 'Creta Prestige', 2021, 'Prata', '2.0 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Voyage', 'VW', 'Voyage Comfortline', 2020, 'Branco', '1.6 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Compass', 'Jeep', 'Compass Limited', 2021, 'Preto', '2.0 Diesel');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('T-Cross', 'VW', 'T-Cross Comfortline', 2022, 'Azul', '1.0 Turbo');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Fiesta', 'Ford', 'Fiesta SE', 2020, 'Vermelho', '1.6 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('S10', 'Chevrolet', 'S10 LTZ', 2021, 'Prata', '2.8 Turbo Diesel');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('HR-V', 'Honda', 'HR-V EXL', 2022, 'Cinza', '1.8 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Uno', 'Fiat', 'Uno Sporting', 2021, 'Branco', '1.0 Flex');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Jaguar XJ', 'Jaguar', 'XJ L', 2022, 'Vermelho', '5.0 V8 Supercharged');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Lexus LS', 'Lexus', 'LS 500h', 2021, 'Azul', '3.5 V6 Hybrid');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('BMW 7 Series', 'BMW', '750i', 2022, 'Branco', '4.4 V8 Twin Turbo');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Mercedes-Benz S-Class', 'Mercedes-Benz', 'S 560', 2021, 'Prata', '4.0 V8 Turbo');
INSERT INTO `Veiculos` (`Veiculo_name`, `Modelo`, `Versão`, `Ano`, `Cor`, `Motor`)
VALUES ('Audi A8', 'Audi', 'A8 L', 2022, 'Preto', '4.0 V8 Turbo');
-- veiculos

INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (45678901200, 'Gerente de Vendas', 5000, 'rafael@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (01234567800, 'Vendedor', 3000, 'carolina@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (67890123400, 'Assistente de Vendas', 2500, 'mara@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (23456789000, 'Vendedor', 3000, 'roberto@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (78901234500, 'Vendedor', 3000, 'lucia@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (34567890100, 'Supervisor de Vendas', 4000, 'carlos@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (90123456700, 'Vendedor', 3000, 'ana@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (56789012300, 'Assistente de Vendas', 2500, 'pedro@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (98765432100, 'Gerente de Vendas', 5000, 'maria@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (12345678900, 'Vendedor', 3000, 'joao@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (78901234501, 'Vendedor', 3000, 'fernanda@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (23456789001, 'Assistente de Vendas', 2500, 'gustavo@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (67890123401, 'Vendedor', 3000, 'camila@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (01234567801, 'Vendedor', 3000, 'pedro@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (45678901201, 'Gerente de Vendas', 5000, 'lara@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (89012345601, 'Vendedor', 3000, 'thiago@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (34567890101, 'Assistente de Vendas', 2500, 'mariana@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (78901234502, 'Vendedor', 3000, 'andre@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (23456789002, 'Vendedor', 3000, 'luciana@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (67890123402, 'Gerente de Vendas', 5000, 'rodrigo@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (34567890102, 'Assistente de Vendas', 2500, 'isabela@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (78901234503, 'Vendedor', 3000, 'felipe@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (23456789003, 'Gerente de Vendas', 5000, 'vitoria@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (67890123403, 'Vendedor', 3000, 'marcos@example.com');
INSERT INTO `Funcionarios` (`Cpf`, `Cargo`, `Salario`, `Email`)
VALUES (01234567803, 'Assistente de Vendas', 2500, 'fernando@example.com');
--funcionarios

INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Aço', 'Volante', 'Volkswagen Golf');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Alumínio', 'Banco', 'Ford Mustang');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Plástico', 'Pistão', 'Chevrolet Camaro');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Couro', 'Tapete', 'Mercedes-Benz S-Class');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Borracha', 'Correia', 'BMW 3 Series');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Metal', 'Maçaneta', 'Audi A4');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Tecido', 'Forro de Porta', 'Lexus RX');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Ferro', 'Amortecedor', 'Porsche 911');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Plástico', 'Farol', 'Toyota Corolla');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Aço Inoxidável', 'Escapamento', 'Ferrari 458 Italia');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Alumínio', 'Rodas', 'Volkswagen Polo');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Fibra de Carbono', 'Spoiler', 'Chevrolet Corvette');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Couro', 'Bancos', 'Audi R8');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Metal', 'Maçaneta', 'BMW X5');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Plástico', 'Farol de Neblina', 'Mercedes-Benz GLE');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Aço', 'Escapamento', 'Lamborghini Huracan');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Fibra de Carbono', 'Capô', 'Ford F-150');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Borracha', 'Limpador de Para-brisa', 'Toyota Land Cruiser');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Alumínio', 'Pedaleiras', 'Nissan GT-R');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Couro', 'Forro de Teto', 'Porsche Cayenne');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Plástico', 'Grade Frontal', 'Volkswagen Tiguan');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Metal', 'Maçaneta', 'Chevrolet Silverado');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Borracha', 'Tapetes', 'Ford Explorer');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Fibra de Carbono', 'Spoiler Traseiro', 'Audi RS5');
INSERT INTO `Pecas` (`Material`, `Tipo`, `Veiculo_name`)
VALUES ('Couro', 'Volante', 'BMW M3');
--pecas

INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (90123456789012, 'Espanha', 'Calle Principal, Madrid');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (34567890123456, 'China', '123 Main Road, Beijing');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (67890123456789, 'Japão', 'toquio-ruawrt-1');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (87654321098765, 'Austrália', '123 Queen Street, Sydney');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (54321098765432, 'França', 'Rue Principale, Paris');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (23456789012345, 'Alemanha', 'Hauptstraße 1, Berlin');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (78901234567890, 'Reino Unido', '10 Downing Street, London');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (45678901234567, 'Canadá', '200 Queen Street, Toronto');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (98765432109876, 'Estados Unidos', '123 Main Street, New York');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (12345678901234, 'Brasil', 'Rua Principal, 123, São Paulo');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (56789012345678, 'Itália', 'Via Principale, Roma');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (90123456780912, 'Espanha', 'Calle Principal, Barcelona');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (34567890129012, 'China', '789 Main Street, Shanghai');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (87654321016789, 'Austrália', '987 King Street, Melbourne');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (54321098760987, 'França', 'Rue de la Principale, Paris');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (23456789014321, 'Alemanha', 'Schlossallee 1, Berlin');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (78901234567890, 'Reino Unido', '20 Baker Street, London');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (98765432101234, 'Estados Unidos', '456 Elm Street, Los Angeles');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (12345678902345, 'Brasil', 'Avenida Principal, 456, Rio de Janeiro');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (45678901234567, 'Brasil', 'Avenida Central, 123, Belo Horizonte');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (78901234562345, 'Brasil', 'Rua das Palmeiras, 789, Salvador');
INSERT INTO `Filiais` (`CnpjFilial`, `Pais`, `EnderecoFilial`)
VALUES (54321098767890, 'Brasil', 'Rua Principal, 321, Florianópolis');
--filiais
 

-- SELECTS
SELECT COUNT(*) FROM Vendas;
SELECT COUNT(*) FROM Veiculos;
SELECT COUNT(*) FROM Funcionarios;
SELECT COUNT(*) FROM Pecas;
SELECT COUNT(*) FROM Filiais;
--c
SELECT * FROM Vendas order by Vendedor_name;
SELECT * FROM Veiculos order by Veiculo_name;
SELECT * FROM Pecas order by Pecas_id;
SELECT * FROM Filiais order by CnpjFilial;
SELECT * FROM Funcionarios order by Cpf;
--f

SELECT Vendas.Num_vendas, Funcionarios.Nome, Funcionarios.Cargo
FROM Vendas
INNER JOIN Funcionarios ON Vendas.Vendedor_name = Funcionarios.Nome
WHERE Funcionarios.Cargo = 'Gerente';


--UPDATES
UPDATE Vendas
SET Num_vendas = 100
WHERE Vendedor_name = 'João';
UPDATE Vendas
SET Num_vendas = 50
WHERE Vendedor_name = 'Pedro';
UPDATE Vendas
SET Num_vendas = 80
WHERE Vendedor_name = 'Julia';
UPDATE Vendas
SET Num_vendas = 120
WHERE Vendedor_name = 'Paulo';
UPDATE Vendas
SET Num_vendas = 90
WHERE Vendedor_name = 'Amanda';
UPDATE Vendas
SET Num_vendas = 70
WHERE Vendedor_name = 'Tiago';
UPDATE Vendas
SET Num_vendas = 110
WHERE Vendedor_name = 'Carlos';
UPDATE Vendas
SET Num_vendas = 60
WHERE Vendedor_name = 'Renata';
UPDATE Vendas
SET Num_vendas = 75
WHERE Vendedor_name = 'Fabio';
UPDATE Vendas
SET Num_vendas = 95
WHERE Vendedor_name = 'Maria';
--v

UPDATE Veiculos
SET Ano = 2022
WHERE Veiculo_name = 'Gol';
UPDATE Veiculos
SET Ano = 2021
WHERE Veiculo_name = 'Civic';
UPDATE Veiculos
SET Ano = 2023
WHERE Veiculo_name = 'Fusion';
UPDATE Veiculos
SET Ano = 2022
WHERE Veiculo_name = 'Creta';
UPDATE Veiculos
SET Ano = 2023
WHERE Veiculo_name = 'S10';
UPDATE Veiculos
SET Ano = 2021
WHERE Veiculo_name = 'Uno';
UPDATE Veiculos
SET Ano = 2022
WHERE Veiculo_name = 'Onix';
UPDATE Veiculos
SET Ano = 2023
WHERE Veiculo_name = 'Corolla';
UPDATE Veiculos
SET Ano = 2022
WHERE Veiculo_name = 'Compass';
UPDATE Veiculos
SET Ano = 2021
WHERE Veiculo_name = 'Golf';
--c

UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '01234567800';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '23456789000';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '34567890100';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '90123456700';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '56789012300';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '98765432100';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '12345678900';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '23456789001';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '01234567801';
UPDATE Funcionarios
SET Salario = 7000
WHERE Cpf = '34567890101';
--f

UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 1;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 2;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 3;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 4;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 5;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 6;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 7;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 8;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 9;
UPDATE Pecas
SET Tipo = 'bomba'
WHERE Pecas_id = 10;
--p

UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 90123456789012;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 34567890123456;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 87654321098765;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 54321098765432;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 23456789012345;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 45678901234567;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 12345678901234;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 34567890129012;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 87654321016789;
UPDATE Filiais
SET Pais = 'Angola'
WHERE CnpjFilial = 78901234567890;


-- DELETS
DELETE FROM Vendas
WHERE Vendedor_name = 'João';
DELETE FROM Vendas
WHERE Vendedor_name = 'Pedro';
DELETE FROM Vendas
WHERE Vendedor_name = 'Julia';
DELETE FROM Vendas
WHERE Vendedor_name = 'Paulo';
DELETE FROM Vendas
WHERE Vendedor_name = 'Amanda';
--v

DELETE FROM Veiculos
WHERE Veiculo_name = 'Gol';
DELETE FROM Veiculos
WHERE Veiculo_name = 'Civic';
DELETE FROM Veiculos
WHERE Veiculo_name = 'Fusion';
DELETE FROM Veiculos
WHERE Veiculo_name = 'Creta';
DELETE FROM Veiculos
WHERE Veiculo_name = 'Uno';
--c

DELETE FROM Funcionarios
WHERE Cpf = '01234567800';
DELETE FROM Funcionarios
WHERE Cpf = '23456789000';
DELETE FROM Funcionarios
WHERE Cpf = '34567890100';
DELETE FROM Funcionarios
WHERE Cpf = '90123456700';
DELETE FROM Funcionarios
WHERE Cpf = '56789012300';
--f

DELETE FROM Pecas
WHERE Pecas_id = 1;
DELETE FROM Pecas
WHERE Pecas_id = 2;
DELETE FROM Pecas
WHERE Pecas_id = 3;
DELETE FROM Pecas
WHERE Pecas_id = 4;
DELETE FROM Pecas
WHERE Pecas_id = 5;
--p

DELETE FROM Filiais
WHERE CnpjFilial = 90123456789012;
DELETE FROM Filiais
WHERE CnpjFilial = 34567890123456;
DELETE FROM Filiais
WHERE CnpjFilial = 87654321098765;
DELETE FROM Filiais
WHERE CnpjFilial = 54321098765432;
DELETE FROM Filiais
WHERE CnpjFilial = 12345678901234;
