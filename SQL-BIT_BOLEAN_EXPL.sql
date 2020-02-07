CREATE DATABASE Aposentadoria 

CREATE TABLE StatusAP (
--COD = ID
 Cod INT PRIMARY KEY IDENTITY,
 Nome VARCHAR(40),
 Aposentado BIT NOT NULL
);

--Ele se comporta como um tipo inteiro, por�m com o intervalo de valores
--poss�veis restrito a 0 e 1 (e NULL, se n�o for usada uma restri��o NOT
--NULL ao criar o campo). 

--qualquer valor diferente de zero ser� interpretado como um.

INSERT INTO StatusAP VALUES
('Jo�o', 1),
('Marta', 0),
('Renan', 0),
('F�bio', 0),
('Ana', 0),
('Am�lia', 1);

--fazemos nossa primeira consulta para saber quais usu�rios est�o aposentados:

SELECT Nome
FROM StatusAP
WHERE Aposentado = 1;

--palavras-chave TRUE e FALSE s�o interpretados respectivamente como os bits 1 e 0

INSERT INTO StatusAP VALUES
('Renata', 'TRUE'),
('Monica', 'FALSE');

SELECT*FROM StatusAP;