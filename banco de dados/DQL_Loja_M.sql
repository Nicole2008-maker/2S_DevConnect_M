USE Loja_M;

SELECT * FROM Pedido;

--Traga ou exiba os registros dos pedidos
--Precisava ter o nome do cliente, o nome do produto e a data e hora do pedido
SELECT 
      FORMAT (Data_Horario, 'dd-mm-yyyy hh:mm:ss') AS Data_Horario
      C.Nome AS NomeCliente,
      PR.Nome AS NomeProduto
FROM Pedido
INNER JOIN Cliente C   ON Pedido.ID_Cliente = C.ID_Cliente
INNER JOIN Produto PR  ON Pedido.ID_Produto = PR.ID_Produto
WHERE DAY(Data_Horario) = '08';
WHERE MONTH(Data_Horario) = '10';


--Exiba todos os clientes que não fizeram nenhum pedido
--Nome cliente e data do pedido

SELECT 
    C.Nome,
    PE.Data_Horario
FROM Cliente --tabela esquerda
LEFT JOIN Pedido PE ON C.ID_Cliente =  PE.ID_Cliente
WHERE PE.ID_Cliente IS NULL;

--exiba somente clientes que não fizeram pedido - DICA: precisa verificar se e NULL


--EXIBA TODOS OS PRODUTOS QUE ESTÃO OU NAO ATRELADOS A PEDIDOS
--NOME DO PRODUTO E A DATA E HORA DO PEDIDO

SELECT *
    PE.Data_Horario,
    PR.Nome
FROM Pedido PE
RIGHT JOIN Produto PR ON PE.ID_Produto = PR.ID_Produto

--LISTE TODOS OS REGRISTROS DE PEDIDOS QUE SAO DO DIA OU DATA 07/08/2025 ATE 08/08/2025
--DICA: ENTRE AS DATAS

SELECT 
    PE.Data_Horario
    PR.Nome
FROM Pedido PE
INNER JOIN Produto PR ON PE.ID_Pedido = PR.ID_Produto
WHERE Data_Horario >= '2025-10-07' AND Data_Horario < '2025-10-08';



--mostre todos os clientes, produtos e pedidos mesmo que nao se correspondam
SELECT 
 C.Nome AS 'Nome do Cliente',
 PR.Nome AS 'Nome do Produto',
 PR.Preco,
 FORMAT (PE.Data_Horario,'dd-mmm-yyyy hh:mm:ss')
FROM Cliente C
FULL JOIN Pedido  PE ON PE.ID_Cliente = C.ID_Cliente
FULL JOIN Produto PR ON PR.ID_Produto =PE.ID_Produto
