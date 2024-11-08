INSERT INTO CLIENTE (ID, CPF, EMAIL, NOME, TELEFONE) VALUES (1, '12345678901', 'mariadasilva@email.com', 'Maria da Silva', '(11) 91234-5678');
INSERT INTO CLIENTE (ID, CPF, EMAIL, NOME, TELEFONE) VALUES (2, '23456789012', 'joaooliveira@email.com', 'João Oliveira', '(21) 98765-4321');
INSERT INTO CLIENTE (ID, CPF, EMAIL, NOME, TELEFONE) VALUES (3, '34567890123', 'anasouza@email.com', 'Ana Souza', '(31) 99876-5432');
INSERT INTO CLIENTE (ID, CPF, EMAIL, NOME, TELEFONE) VALUES (4, '45678901234', 'carlossantos@email.com', 'Carlos Santos', '(41) 97654-3210');
INSERT INTO CLIENTE (ID, CPF, EMAIL, NOME, TELEFONE) VALUES (5, '56789012345', 'fernandapereira@email.com', 'Fernanda Pereira', '(51) 96543-2109');

INSERT INTO FORNECEDOR (ID, RAZAO_SOCIAL, NOME_FANTASIA, CNPJ, EMAIL, TELEFONE) VALUES (1, 'Tech Solutions LTDA', 'TechSol', '01.234.567/0001-99', 'contato@techsolutions.com.br', '(11) 98765-4321');
INSERT INTO FORNECEDOR (ID, RAZAO_SOCIAL, NOME_FANTASIA, CNPJ, EMAIL, TELEFONE) VALUES (2, 'Mega Moda Indústria e Comércio', 'Mega Moda', '23456789000188', 'vendas@megamoda.com.br', '(21) 97890-1234');
INSERT INTO FORNECEDOR (ID, RAZAO_SOCIAL, NOME_FANTASIA, CNPJ, EMAIL, TELEFONE) VALUES (3, 'Cia Distribuidora C', 'Distribuidora C', '33333333000103', 'vendas@distribuidorac.com', '(31) 93333-3333');
INSERT INTO FORNECEDOR (ID, RAZAO_SOCIAL, NOME_FANTASIA, CNPJ, EMAIL, TELEFONE) VALUES (4, 'Alimentos Saboroso LTDA', 'Saboroso', '34567890/000177', 'sac@saboroso.com.br', '(31) 96543-2109');
INSERT INTO FORNECEDOR (ID, RAZAO_SOCIAL, NOME_FANTASIA, CNPJ, EMAIL, TELEFONE) VALUES (5, 'Nova Era Eletrônicos', 'Nova Era', '56789012000155', 'contato@novaera.com.br', '(51) 94210-8765');

INSERT INTO PRODUTO (ID, NOME, PRECO, FORNECEDOR_ID) VALUES (1, 'Produto A', 25.50, 1);
INSERT INTO PRODUTO (ID, NOME, PRECO, FORNECEDOR_ID) VALUES (2, 'Produto B', 49.99, 3);
INSERT INTO PRODUTO (ID, NOME, PRECO, FORNECEDOR_ID) VALUES (3, 'Produto C', 15.75, 2);
INSERT INTO PRODUTO (ID, NOME, PRECO, FORNECEDOR_ID) VALUES (4, 'Produto D', 30.00, 1);
INSERT INTO PRODUTO (ID, NOME, PRECO, FORNECEDOR_ID) VALUES (5, 'Produto E', 60.25, 2);

INSERT INTO PEDIDO (ID, NOME, CLIENTE_ID, DATA_INCLUSAO, DATA_ALTERACAO) VALUES (1, 'Pedido A', 1, '2024-11-01 10:00:00', '2024-11-01 10:00:00');
INSERT INTO PEDIDO (ID, NOME, CLIENTE_ID, DATA_INCLUSAO, DATA_ALTERACAO) VALUES (2, 'Pedido B', 2, '2024-11-02 14:30:00', '2024-11-02 14:30:00');
INSERT INTO PEDIDO (ID, NOME, CLIENTE_ID, DATA_INCLUSAO, DATA_ALTERACAO) VALUES (3, 'Pedido DELETADO', null, '2024-11-03 12:20:00', '2024-11-03 12:20:00')
INSERT INTO PEDIDO (ID, NOME, CLIENTE_ID, DATA_INCLUSAO, DATA_ALTERACAO) VALUES (4, 'Pedido DELETADO', null, '2024-11-04 13:20:00', '2024-11-04 13:20:00')
INSERT INTO PEDIDO (ID, NOME, CLIENTE_ID, DATA_INCLUSAO, DATA_ALTERACAO) VALUES (5, 'Pedido E', 2, '2024-11-05 11:20:00', '2024-11-05 11:20:00');
INSERT INTO PEDIDO (ID, NOME, CLIENTE_ID, DATA_INCLUSAO, DATA_ALTERACAO) VALUES (6, 'Pedido DELETADO', null, '2024-11-06 16:20:00', '2024-11-06 16:20:00');

INSERT INTO ITEM_PEDIDO (ID, PEDIDO_ID, PRODUTO_ID, QUANTIDADE, PRECO) VALUES (1, 1, 1, 2, 19.99);  -- Pedido 1, Produto 1, 2 unidades, preço 19.99
INSERT INTO ITEM_PEDIDO (ID, PEDIDO_ID, PRODUTO_ID, QUANTIDADE, PRECO) VALUES (2, 1, 2, 1, 29.99);  
INSERT INTO ITEM_PEDIDO (ID, PEDIDO_ID, PRODUTO_ID, QUANTIDADE, PRECO) VALUES (3, 2, 3, 5, 39.99);  
INSERT INTO ITEM_PEDIDO (ID, PEDIDO_ID, PRODUTO_ID, QUANTIDADE, PRECO) VALUES (4, 2, 4, 3, 49.99);  
INSERT INTO ITEM_PEDIDO (ID, PEDIDO_ID, PRODUTO_ID, QUANTIDADE, PRECO) VALUES (5, 3, 5, 1, 59.99);  