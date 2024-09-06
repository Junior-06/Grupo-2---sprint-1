/*Criação de tabelas SPRINT1 Gustavo Oliveira*/

CREATE DATABASE airsense;
USE airsense;

CREATE TABLE cadastro(
id int primary key auto_increment,
Nome varchar(50) not null,
email varchar(80) not null,
senha varchar(15) not null,
confirmarsenha varchar(15) not null,
empresa varchar(40) not null
);

ALTER TABLE cadastro ADD CONSTRAINT chkConfirmar CHECK(confirmarsenha = senha);

DESC cadastro;

INSERT INTO cadastro VALUES
(default, 'Gustavo', 'GustavoLindo@gmail.com', 'EuSouOBatman', 'EuSouOBatman', 'SPTECH');

SELECT * FROM cadastro;

INSERT INTO cadastro VALUES
(default, 'Luigi', 'luigi@sptech.school', 'senha', 'senha', 'SPTECH'),
(default, 'Thiago', 'thiago@sptech.school', 'senha', 'senha', 'SPTECH'),
(default, 'Jusley Junior', 'jusley@sptech.school', 'senha', 'senha', 'SPTECH'),
(default, 'Ali Omar', 'ali@sptech.school', 'senha', 'senha', 'SPTECH');

-- Segunda tabela dados dos sensores
CREATE TABLE DadosSensores (
idRegistro int primary key auto_increment,
DadosUmidade float,
DadosTemperatura float,
Setor varchar(15),
DtHorario datetime default current_timestamp
);

INSERT INTO DadosSensores values
(default, 59.4,28.3, 'Setor 4', now());

INSERT INTO DadosSensores values
(default, 98.2, 22.7 , 'Setor 6', now()),
(default, 98.2, 30 , 'Setor 3', now()),
(default, 98.2, 26.9, 'Setor 1', now()),
(default, 68, 29.1 , 'Setor 2', now()); 

SELECT * FROM DadosSensores;

DROP TABLE DadosSensores;

-- Terceira tabela, mostrar os sensores que o usuário possui
CREATE TABLE SensoresUser(
idUser int primary key auto_increment,
Email varchar (40), 
Instituição varchar (40), 
qtdSensores int,
SensorUmidade int,
SensorTemp int
);

DESC sensoresuser;

INSERT INTO SensoresUSER VALUES
(default, 'Gustavo@sptech.school', 'SPTECH', 4,2,2),
(default, 'luigi@sptech.school', 'SPTECH', 1,0,1),
(default, 'thiago@sptech.school', 'SPTECH', 0,0,0),
(default, 'junior@sptech.school', 'SPTECH', 4,2,2),
(default, 'alir@sptech.school', 'SPTECH', 12,8,4);

SELECT * FROM SensoresUSER;