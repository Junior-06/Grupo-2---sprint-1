CREATE DATABASE ProjetoPI;
use ProjetoPI;

Create table Cadastro(
idUser int primary key auto_increment,
Nome varchar (40) NOT NULL,
Email varchar(50) NOT NULL, 
Senha varchar(15) NOT NULL, 
ConfirmarSenha varchar(15) NOT NULL,
Instituição varchar(40) NOT NULL
);
alter table cadastro add constraint chkConfirmar CHECK (ConfirmarSenha = Senha);

desc cadastro;

INSERT INTO cadastro VALUES
(default, 'Gustavo', 'GustavoLindo@gmail.com', 'EuSouOBatman', 'EuSouOBatman', 'SPTECH');

SELECT * FROM cadastro;

INSERT INTO cadastro VALUES
(default, 'Gustavo Oliveira', 'GustavoBarbosa@gmail.com', 'Boladecanhao', 'Boladecanhao', 'SPTECH');

INSERT INTO cadastro VALUES
(default, 'Luigi bros', 'ItsAMeLuigi@gmail.com', 'MarioBros', 'MarioBros', 'SPTECH'),
(default, 'Thiago Italia', 'Thiagueira@gmail.com', 'Melhore', 'Melhore', 'SPTECH'),
(default, 'Jusley Junior', 'JuninJusley@gmail.com', 'UMApratada', 'UMApratada', 'SPTECH'),
(default, 'Ali Omar', 'Aliosmar@gmail.com', 'Alahu Akbar', 'Alahu Akbar', 'SPTECH');


-- Segunda tabela para mostrar os sensores que o usuário tem
Create Table SensoresUser(
idUser int primary key auto_increment,
Email varchar (40), 
Instituição varchar (40), 
qtdSensores int,
SensorUmidade int,
SensorTemp int
);

desc sensoresuser;

Insert into SensoresUSER VALUES 
(default,'GustavoLindo@gmail.com', 'SPTECH', 3, 2 ,1);



INSERT INTO SensoresUSER values
(default, 'GustavoBarbosa@gmail.com', 'SPTECH', 4,2,2),
(default, 'ItsAMeLuigi@gmail.com', 'SPTECH', 1,0,1),
(default, 'Thiagueira@gmail.com', 'SPTECH', 0,0,0),
(default, 'JuninJusley@gmail.com', 'SPTECH', 4,2,2),
(default, 'Aliosmar@gmail.com', 'SPTECH', 12,8,4);

select * from SensoresUSER;
-- Ao invés de email, podemos puxar pelo nome ou algum outro dado.


-- Tabela para captação dos dados dos sensores EM TEMPO REAL.
CREATE TABLE DadosSensores (
idRegistro int primary key auto_increment,
DadosUmidade float,
DadosTemperatura float,
Setor varchar(15),
DtHorario datetime default current_timestamp -- Este comando pega a data em tempo real, incluindo dia e também horário.
); 

INSERT INTO DadosSensores values
(default, 59.4,28.3, 'Setor 4', now()); -- é necessário colocar o now() para identificar no DtHorario.

INSERT INTO DadosSensores values
(default, 98.2, 22.7 , 'Setor 6', now()),
(default, 98.2, 30 , 'Setor 3', now()),
(default, 98.2, 26.9, 'Setor 1', now()),
(default, 68, 29.1 , 'Setor 2', now()); 

SELECT * FROM DadosSensores;

DROP TABLE DadosSensores;