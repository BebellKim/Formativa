Create database Formativa;
use Formativa;

create table Universidade (
id_uni int primary key  auto_increment not null,
nome_uni varchar (1000) not null,
cidade_uni varchar (1000) not null,
cep_uni varchar (1000) not null,
rua_uni varchar (1000) not null,
numero_uni int not null,
telefone_uni varchar (1000) not null
);

create table Estudante (
id_est int primary key  auto_increment not null,
nome_est varchar (1000) not null,
cidade_est varchar (1000) not null,
cep_est varchar (1000) not null,
rua_est varchar (1000) not null,
numero_est int not null,
telefone_est varchar (1000) not null,
id_uni int,
foreign key (id_uni) references Universidade(id_uni)
);

drop table Universidade;

insert into Universidade (nome_uni,cidade_uni,cep_uni,rua_uni,numero_uni,telefone_uni)
 values (" Harvard", "Cambridge", "123-233","Rua da sorte", 234,"1234-5674"),
		(" Stanford", "Stanford", "124-234","Rua da vitoria", 654,"1238-5678"),
        (" USP", "São Paulo", "126-236","Rua da água", 5674,"1239-5679"),
        (" UFSC", "Florianopoles", "121-231","Rua do fogo", 784,"1237-5677"),
        ("UFRJ", "Rio de Janeiro", "125-235","Rua da beleza", 567,"1233-5673");
        
        
insert into Estudante (nome_est,cidade_est,cep_est,rua_est,numero_est,telefone_est)
 values (" Isabella", "Itapetiniga", "1231-2331","Rua rosa", 11,"1234-5676"),
		(" Matarazzo", "Itapetiniga", "1242-2342","Rua roxa", 20,"1238-5677"),
        (" Gustavo", "Itapetiniga", "1263-2363","Rua verde", 10,"1239-5678"),
        (" Giovana", "Itapetiniga", "1214-23134","Rua azul", 07,"1237-5699"),
        ("Lucas", "Itapetiniga", "1255-2355","Rua amarela", 17,"1233-5671");
        

select * from Universidade;
select * from Estudante;


/* MODIFICAR */
update Estudante 
set nome_est = "Isabel"
where id_est = 1;

update Universidade 
set nome_uni = "Oxford"
where id_uni = 3;

/*Deletar*/
delete from Estudante
where id_est = 5;


/*Tranformar em view*/
create view  Estudante_Universidade as
select
Estudante.nome_est as nome_est,
Universidade.nome_uni as nome_uni,
Universidade.cidade_uni as cidade_uni
from 
Estudante 
inner join 
Universidade on Estudante.id_est = Universidade.id_uni;

select*from Estudante_Universidade;