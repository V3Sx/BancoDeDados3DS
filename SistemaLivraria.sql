CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(255) NOT NULL,
    emailCliente VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(255) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);
SELECT * FROM Clientes;
SELECT Clientes.nomeCliente, Compras.NomeLivro
FROM Compras
INNER JOIN Clientes ON Compras.ClienteID = Clientes.ID;
