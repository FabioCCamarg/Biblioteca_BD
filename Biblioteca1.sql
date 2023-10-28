-- create database biblioteca1;
-- Tabelas:
## TABELAS:
-- Livros: Armazene informações sobre cada livro, incluindo título, ISBN, ano de publicação e um identificador exclusivo.

		create table livros(
		id int auto_increment primary key,
		titulo varchar(50),
		isbn varchar(50),
		ano_publicacao int,
		editoras_id int,
		foreign key (editoras_id) references editoras(id)
		);

-- Autores: Registre informações sobre os autores, como nome, data de nascimento e nacionalidade.

		create table autores(
		id int auto_increment primary key,
		nome varchar(50),
		data_nascimento date,
		nacionalidade varchar(50)
		);

-- Editoras: Mantenha detalhes sobre as editoras, como nome e endereço.

		create table editoras(
		id int auto_increment primary key,
		nome varchar(50),
		endereco varchar(50)
		);
        
-- Empréstimos: Controle os empréstimos de livros, incluindo a data de empréstimo e de devolução,
-- bem como o status do empréstimo (pendente, devolvido, atrasado).

		create table emprestimos(
		id int auto_increment primary key,
		data_emprestimo date,
		data_devolucao date,
		situacao varchar(50),
		livros_id int,
		foreign key (livros_id) references livros(id),
		clientes_id int,
		foreign key (clientes_id) references clientes(id)
		);
		
## RELACIONAMENTOS:

-- Crie relacionamentos entre "Livros" e "Autores" para associar cada livro a um ou mais autores.

-- Estabeleça um relacionamento entre "Empréstimos" e "Clientes" para rastrear quem pegou emprestado um livro.
        
		create table clientes(
		id int auto_increment primary key,
		nome varchar(50),
		endereco varchar(100),
		email varchar(100),
		telefone varchar(50)
		);
        
-- Insira no mínimo 20 dados em cada tabela criada para o exercício;
-- Tabela LIVROS:

		insert into livros (titulo, isbn, ano_publicacao, editoras_id) values
		('Arca', 'ISBN001', 2020, 1),
		('Velharia', 'ISBN002', 2019, 2),
		('Elias e Sabina', 'ISBN003', 2018, 3),
		('A Cabana', 'ISBN004', 2021, 4),
		('Floral', 'ISBN005', 2022, 5),
		('Eletronica', 'ISBN006', 2017, 6),
		('Fisica', 'ISBN007', 2016, 7),
		('Eletrica', 'ISBN008', 2020, 8),
		('Software', 'ISBN009', 2019, 9),
		('Desing', 'ISBN010', 2022, 10),
		('Fisca Quantica', 'ISBN001', 2020, 11),
		('Geometria', 'ISBN002', 2019, 12),
		('Matematica', 'ISBN003', 2018, 13),
		('Educacao infantil', 'ISBN004', 2021, 14),
		('Geografia', 'ISBN005', 2022, 15),
		('Variaveis', 'ISBN006', 2017, 16),
		('Protugues', 'ISBN007', 2016, 17),
		('Ingles', 'ISBN008', 2020, 18),
		('Artes', 'ISBN009', 2019, 19),
		('Desenvolvimento', 'ISBN010', 2022, 20);
        
-- Tabela AUTORES: 

		insert into autores(nome, data_nascimento, nacionalidade) values
		('Cleiton', '1980-03-15', 'Brasileiro'),
		('Jessica', '1975-06-22', 'Canadense'),
		('Denis', '1990-11-10', 'Japones'),
		('Julia', '1985-04-30', 'Brasileiro'),
		('Frank', '1970-09-07', 'Africano'),
		('Jonas', '1982-01-25', 'Americano'),
		('Tiago', '1978-08-19', 'Brasileiro'),
		('Sandra', '1995-12-03', 'Frances'),
		('Elton', '1973-02-14', 'Russo'),
		('Cassio', '1988-07-12', 'Russo'),
		('Fernando', '1980-03-22', 'Brasileiro'),
		('Gabriel', '1975-06-12', 'Canadense'),
		('Lais', '1990-11-11', 'Japones'),
		('Dalva', '1985-04-31', 'Brasileiro'),
		('Alexandre', '1970-09-08', 'Africano'),
		('Alex', '1982-01-23', 'Americano'),
		('Renan', '1978-08-09', 'Brasileiro'),
		('Edson', '1995-12-01', 'Frances'),
		('Mariana', '1973-02-24', 'Russo'),
		('Fabio', '1988-07-23', 'Russo');

-- Tabela EDITORAS:

		insert into editoras(nome, endereco) values
		('Renascer', 'Rua Amelias 12'),
		('Sandis', 'Av São Paulo 2112'),
		('Paulus', 'Rua Santa Ines 22'),
		('Grenda', 'Rua Marina 1'),
		('Rocco', 'Rua Estanciana 64'),
		('Editas', 'Praça Sacramento 84'),
		('Variafis', 'Av Santo Antonio 15'),
		('Edivals', 'Av Paulista 54'),
		('Valsoneta', 'Rua das Couves 12'),
		('Valentina', 'Rua Cananeia 45'),
		('Tomki', 'Rua Dom Pedro 21'),
		('Navesa', 'Rua Dos Decolados 2'),
		('Globo', 'Rua Francisco 77'),
		('Estacao', 'Rua Elias 76'),
		('Dracula', 'Rua Gabriel de Nobrega 53'),
		('Entusiasta', 'Av Brasil 11'),
		('Federal', 'Rua Campo Grande 6'),
		('Campo', 'Av Sorocaba 1'),
		('Gomes', 'Rua Santa Fina 2'),
		('Westi', 'Rua Dos que Não Foram 88');

-- Tabela CLIENTES:

		insert into clientes (nome, endereco,telefone, email) values
		('Cris', 'Endereço Cliente 1', '123-456-7890', 'cris@example.com'),
		('Janaina', 'Endereço Cliente 2', '234-567-8901', 'janaina@example.com'),
		('Francisco', 'Endereço Cliente 3', '345-678-9012', 'francisco3@example.com'),
		('Maicon', 'Endereço Cliente 4', '456-789-0123', 'maicon@example.com'),
		('Gabriel', 'Endereço Cliente 5', '567-890-1234', 'gabriel@example.com'),
		('Joao', 'Endereço Cliente 6', '678-901-2345', 'joao6@example.com'),
		('Daniel', 'Endereço Cliente 7', '789-012-3456', 'daniel@example.com'),
		('Cido', 'Endereço Cliente 8', '890-123-4567', 'cido@example.com'),
		('Mariana', 'Endereço Cliente 9', '901-234-5678', 'mariana02@example.com'),
		('Denis', 'Endereço Cliente 10', '012-345-6789', 'denis10@example.com'),
		('Saulo', 'Endereço Cliente 1', '123-456-7890', 'saulo1@example.com'),
		('Edson', 'Endereço Cliente 2', '234-567-8901', 'edson2@example.com'),
		('Carlos', 'Endereço Cliente 3', '345-678-9012', 'carlos@example.com'),
		('Roberto', 'Endereço Cliente 4', '456-789-0123', 'roberto@example.com'),
		('Roger', 'Endereço Cliente 5', '567-890-1234', 'roger5@example.com'),
		('Gabriele', 'Endereço Cliente 6', '678-901-2345', 'gabriele@example.com'),
		('Paulo', 'Endereço Cliente 7', '789-012-3456', 'paulo@example.com'),
		('Sidney', 'Endereço Cliente 8', '890-123-4567', 'sidney@example.com'),
		('Cleusa', 'Endereço Cliente 9', '901-234-5678', 'cleusa@example.com'),
		('Dirce', 'Endereço Cliente 10', '012-345-6789', 'dirce@example.com');

-- Tabela EMPRESTIMOS:

		insert into emprestimos (data_emprestimo,data_devolucao, livros_id, clientes_id, situacao) values
		('2023-10-28', '2023-11-04', 1, 1, 'emprestado'),
		('2023-12-26', '2023-12-27', 2, 2,'pendente'),
		('2023-10-30', '2023-11-12', 3, 3,'disponivel'),
		('2023-09-07', '2023-10-02', 4, 4,'pendente'),
		('2023-09-26', '2023-10-09', 5, 5,'pendente'),
		('2023-10-26', '2023-11-02', 6, 6,'emprestado'),
		('2023-10-22', '2023-11-08', 7, 7,'disponivel'),
		('2023-10-21', '2023-11-05', 8, 8,'pendente'),
		('2023-10-23', '2023-11-04', 9, 9,'disponivel'),
		('2023-10-25', '2023-11-01', 10, 10,'pendente'),
		('2023-10-26', '2023-11-11',11, 11,'disponivel'),
		('2023-10-15', '2023-11-12', 12, 12,'disponivel'),
		('2023-10-16', '2023-11-15', 13, 13,'pendente'),
		('2023-10-25', '2023-11-19', 14, 14,'emprestado'),
		('2023-10-11', '2023-11-21', 15, 15,'disponivel'),
		('2023-10-12', '2023-11-22', 16, 16,'emprestado'),
		('2023-10-15', '2023-11-30', 17, 17,'disponivel'),
		('2023-10-19', '2023-11-31', 18, 18,'pendente'),
		('2023-10-20', '2023-11-22', 19, 19,'pendente'),
		('2022-10-22', '2022-11-21', 20, 20,'emprestado');

## STORE PROCEDURE:
-- Crie uma stored procedure para registrar um novo empréstimo, verificando a disponibilidade do livro e atualizando o estoque.

		DELIMITER $

		create procedure RegistroEmprestimo(
		in IDlivro int,
		in IDcliente int,
		in data_emp date,
		in data_devol date
		)
		begin
			declare estoque_atual int;
    
			select count(*) into estoque_atual
			from emprestimos 
			where livros_id = IDlivro and situacao = 'pendente';
    
			if estoque_atual = 0 then
				insert into emprestimos (data_emprestimo, data_devolucao, livros_id, clientes_id, situacao) values
				(data_emp, data_devol, IDlivro, IDcliente, 'emprestado');
				select 'Emprestimo registrado com sucesso' as Resultado;
        
				-- Atualizar o estoque do livro
				UPDATE Livros
				SET estoque = estoque - 1
				WHERE id = IDlivro;
			else
				select 'Este livro não está disponivel para emprestimo no momento' as Resultado;
			end if;
		end$

		DELIMITER ;

		call RegistroEmprestimo(1,19,'2023-10-25', '2023-11-01');
		call RegistroEmprestimo(5,12,'2023-10-21','2023-11-02');

-- Crie outra stored procedure para recuperar a lista de livros emprestados por um cliente específico.

		DELIMITER $

		create procedure ListaLivrosEmprestadosCliente (
		in IDcliente int
		)
		begin
			select livros.titulo as Titulo_livro, clientes.nome as Cliente
			from emprestimos
			join livros on emprestimos.livros_id = livros.id
			join clientes on emprestimos.clientes_id = clientes.id
			where emprestimos.clientes_id = IDcliente and emprestimos.situacao = 'pendente';
     
		end$
		DELIMITER ;    

		call ListaLivrosEmprestadosCliente(4);
		call ListaLivrosEmprestadosCliente(2);

-- Implemente uma stored procedure que calcule multas para empréstimos atrasados.
      
      -- criando coluna multa_dia:
      
		alter table emprestimos
		add column multa_dia  decimal (9,2) default 0.50;

		select* from emprestimos;

		DELIMITER $$

		CREATE PROCEDURE CalculoMultasPorCliente(
		IN IDcliente INT
		)
		BEGIN
			DECLARE total_multa DECIMAL(10,2);
			DECLARE nome_cliente VARCHAR(50);

			-- Obtém o nome do cliente
			SELECT nome INTO nome_cliente
			FROM clientes
			WHERE id = IDcliente;

			-- Inicializa a multa total
			SET total_multa = 0.0;

			-- Calcula a multa total com base nos empréstimos atrasados do cliente
			SELECT SUM((CURRENT_DATE - data_devolucao) * multa_dia) INTO total_multa
			FROM emprestimos
			WHERE clientes_id = IDcliente AND situacao = 'pendente' AND data_devolucao < CURRENT_DATE;

			-- Retorna o nome do cliente e a multa total
			SELECT nome_cliente AS NomeCliente, total_multa AS TotalMulta;
		END$$

		DELIMITER ;

		call CAlculoMultasPorCliente(1);
		call CAlculoMultasPorCliente(2);
		call CAlculoMultasPorCliente(5);

## Views:

-- Crie uma view que mostre os livros disponíveis para empréstimo, excluindo aqueles que já foram emprestados.
		create view LivrosDisponiveis as
		select livros.titulo, emprestimos.situacao from livros 
		inner join emprestimos
		on livros.id = livros_id
		where situacao = 'disponivel';

		select * from LivrosDisponiveis;

-- Implemente uma view que forneça uma lista de todos os empréstimos atuais, incluindo os detalhes dos livros emprestados e dos clientes.

		create view LivrosEmprestadosAtuaisClientes as
		select 
			livros.titulo,
			livros.isbn,
			clientes.nome,
			clientes.telefone,
			clientes.email,
			clientes.endereco,
            emprestimos.situacao
        from livros
		inner join emprestimos on livros.id = emprestimos.livros_id
		inner join clientes on clientes.id = emprestimos.clientes_id
		where emprestimos.situacao = 'emprestado';

		select * from LivrosEmprestadosAtuaisClientes;


