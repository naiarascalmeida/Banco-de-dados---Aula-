#mostrar todos os bancos de dados dentro de um sistema gerenciador de um bacno de dados
show databases;
#cria um banco de dados com uma nomeação específica
create database if not exists proa;
#seleciona um banco de dados específico para fazer alterações
use proa;
#mostra todas as tabelas existentes dentro do banco de dados
show tables;
#cria uma tabela
create table Aluno(id integer primary key, nome varchar(100), sobrenome varchar(100));
create table Funcionario(id integer primary key, nome varchar(100), sobrenome varchar(100), funcao varchar(100));
create table Professor(id integer primary key, nome varchar(100), sobrenome varchar(100), materia varchar(100));
#insere informações dentro de uma tabela específica
insert into Aluno(id, nome,sobrenome) values(1, "Gabriel" , "Fratelli");
insert into Aluno(id, nome,sobrenome) values(2, "Gabriel" , "Prado");
insert into Aluno(id, nome,sobrenome) values(3, "Fernanda" , "Nalon");
#seleciona uma tabela específica
select * from Aluno;
#seleciona uma informação específica na tabela
select nome from aluno where id = 2;
insert into Funcionario(id, nome, sobrenome, funcao)values(1,"claudio","jailson", "segurança");
insert into Funcionario(id, nome, sobrenome, funcao)values(2,"josé","paulo", "faxineiro");
insert into Funcionario(id, nome, sobrenome, funcao)values(3,"juliane","santana", "gerente");
select * from Funcionario;
select funcao from funcionario where id = 3;
select nome, sobrenome from funcionario where id < 3;
select nome,funcao from funcionario where id >= 3;
select nome,funcao from funcionario where id <> 3;
#executar uma alteração no registro
update funcionario set funcao = "diretora" where id = 3;
update funcionario set funcao = "gerente" where id = 3;
select * from funcionario;
#deleta uma informação específica da tabela
delete from funcionario where id = 2;
#apagar coluna específica
alter table funcionario drop column sobrenome;
#alterar informação da coluna específica
alter table funcionario change column nome  nome_completo varchar(100)not null;
#adiciona nova coluna a tabela
alter table funcionario add column idade integer not null;
#altera a informação espeficicada
update funcionario set idade = 42 where id = 3;
update funcionario set idade = 37 where id = 1;
create database if not exists D; 
#fazer a busca de um banco de dados que termine com oque está definido entre aspas
Show databases like "%oa";
drop database if exists proa5;
Show databases like"pro%";

use proa1;
create table Empregado(
id integer not null auto_increment,
nome varchar(50) not null,
sobrenome varchar(100) not null,
funcao varchar(30) not null,
setor varchar(30) not null,
primary key(id)
);
show full tables;
#descibre consulta os detalhes da tabela.
describe Empregado;
select * from Empregado;
insert into Empregado(nome_empregado,sobrenome_empregado,funcao_empregado,setor_empregado,idade,RG)values("claudio","josé","carregador","estoque",43,"364017478");
insert into Empregado(nome_empregado,sobrenome_empregado,funcao_empregado,setor_empregado,idade,RG)values("joao","jota","estoquista","estoque",27,"175260382");
insert into Empregado(nome_empregado,sobrenome_empregado,funcao_empregado,setor_empregado,idade,RG)values("josé","antonio","segurança","vigilância",38,"384291697");

#limpa a tabela sem apagar a estrutura.
truncate table Empregado;
#apaga a tabela por completo.
drop table Empregado;
alter table empregado add column idade integer not null, add column RG integer not null;
select * from Empregado;
alter table empregado drop column RG;
alter table empregado add column RG varchar(12);
alter table Empregado modify idEmpregado int not null auto_increment;
alter table Empregado rename to Colaborador;
alter table colaborador change column idade numeros_de_primavera integer not null;
use proa;
show full tables;
create database PetShop;
use PetShop;
