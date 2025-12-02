
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Fornecedor;
DROP TABLE IF EXISTS Produto;
DROP TABLE IF EXISTS Venda;
DROP TABLE IF EXISTS Item_Venda;
DROP TABLE IF EXISTS Nota_Fiscal;


CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    CPF TEXT,
    telefone TEXT,
    email TEXT
);

CREATE TABLE Fornecedor (
    id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    CNPJ TEXT,
    contato TEXT
);

CREATE TABLE Produto (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    categoria TEXT,
    preco REAL,
    quantidade_estoque INTEGER,
    id_fornecedor INTEGER,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Venda (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    data_venda TEXT,
    valor_total REAL,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Item_Venda (
    id_item INTEGER PRIMARY KEY AUTOINCREMENT,
    id_venda INTEGER,
    id_produto INTEGER,
    quantidade INTEGER,
    preco_unitario REAL,
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Nota_Fiscal (
    id_nota INTEGER PRIMARY KEY AUTOINCREMENT,
    numero_nota TEXT,
    data_emissao TEXT,
    valor_total REAL,
    id_venda INTEGER UNIQUE,
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda)
);

INSERT INTO Cliente (nome, CPF, telefone, email) VALUES
('Ana Silva', '12345678901', '98999990001', 'ana@email.com'),
('Carlos Souza', '98765432100', '98999990002', 'carlos@email.com');

INSERT INTO Fornecedor (nome, CNPJ, contato) VALUES
('TechDistribuidora', '11222333000199', 'contato@tech.com'),
('InfoGlobal', '99887766000188', 'vendas@infoglobal.com');

INSERT INTO Produto (nome, categoria, preco, quantidade_estoque, id_fornecedor) VALUES
('Mouse Gamer', 'Periférico', 150.00, 50, 1),
('Notebook Dell', 'Computador', 3500.00, 20, 2);

INSERT INTO Venda (data_venda, valor_total, id_cliente) VALUES
('2025-11-30', 3650.00, 1),
('2025-12-01', 150.00, 2);

INSERT INTO Item_Venda (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 2, 1, 3500.00),
(1, 1, 1, 150.00),
(2, 1, 1, 150.00);

INSERT INTO Nota_Fiscal (numero_nota, data_emissao, valor_total, id_venda) VALUES
('NF001', '2025-11-30', 3650.00, 1),
('NF002', '2025-12-01', 150.00, 2);


SELECT * FROM Cliente ORDER BY nome;


SELECT nome, quantidade_estoque FROM Produto WHERE quantidade_estoque < 30;


SELECT * FROM Venda WHERE valor_total > 1000;


SELECT P.nome, IV.quantidade
FROM Item_Venda IV
JOIN Produto P ON IV.id_produto = P.id_produto;


SELECT * FROM Nota_Fiscal ORDER BY data_emissao DESC LIMIT 1;


UPDATE Produto SET preco = 145.00 WHERE nome = 'Mouse Gamer';
UPDATE Cliente SET telefone = '98999990003' WHERE nome = 'Ana Silva';
UPDATE Venda SET valor_total = 3600.00 WHERE id_venda = 1;


DELETE FROM Item_Venda WHERE id_venda = 2 AND id_produto = 1;
DELETE FROM Nota_Fiscal WHERE numero_nota = 'NF002';
DELETE FROM Cliente WHERE nome = 'Carlos Souza';
