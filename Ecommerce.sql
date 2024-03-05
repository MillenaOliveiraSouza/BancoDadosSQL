CREATE DATABASE db_Ecommerce;

USE db_Ecommerce;

 CREATE TABLE tb_produtos(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR (255) NOT NULL,
 descricao VARCHAR (255),
 preco DECIMAL (6,2),
 data_inicio DATE,
 data_termino DATE,
 PRIMARY KEY (id)
 );
 
 INSERT INTO tb_produtos (nome, descricao, preco, data_inicio, data_termino)
 VALUES ("Publico Alvo", "O curso irá te mostrar como selecionar o seu publico alvo da melhor forma", 200.00, "2024-01-29", "2024-04-29"),
 ("Plano de Negócios", "Curso perfeito para criar um plano de negocios para a sua empresa aumentar o faturamento", 300.00, "2024-01-29", "2024-04-29"),
 ("Estrátegias de Marketing Digital", "O curso irá te ensinar passo a passo sobre as melhores estrátegias de Merketing", 400.00, "2024-01-29", "2024-04-29"),
 ("Gerenciamento de Estoques", "O curso vai te ensinar como gerenciar da melhor forma o estoque de produtos do seu E-commerce", 300.00, "2024-01-29", "2024-04-29"),
 ("E-commerce nas Redes Sociais", "Curso perfeito para ganhar os corações dos clientes nas redes sociais", 400.00, "2024-01-29", "2024-04-29"),
 ("Gestão de frete e logística", "Com esse curso, você vai aprenser a otimizar a entrega dos seus produtos, garantindo uma experiencia positiva para os clientes", 500.00, "2024-01-29", "2024-04-29"),
 ("Criação de SITE", "O curso irá de mostrar como criar o seu primeiro site para o seu e-commerce", 600.00, "2024-01-29", "2024-04-29"),
 ("Análise de dados e métricas", "Esse curso vai te mostrar como utilizar dados para tomar decisões estratégicas e melhorar o desempenho do seu e-commerce", 600.00, "2024-01-29", "2024-04-29");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 100 WHERE id = 1;
