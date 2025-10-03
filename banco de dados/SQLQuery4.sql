USE db_escola_M;

--consulta que irá exibir somente as colunas personalizadas(diferente do *)
SELECT id, nome FROM tb_escola;

--SELECT TOP limita a quantidade de registros
SELECT TOP 3 nome FROM tb_aluno;

--exibir somente 3 registros do mais recente para o menor
SELECT TOP 3 nome
FROM tb_aluno
ORDER BY id DESC

--EXIBE SOMENTE O NOME DA TURMA DO PERIODO DA MANHÃ

SELECT * FROM tb_turma

SELECT nome_turma
FROM tb_turma
WHERE periodo = 'Manhã';

--EXIBE A PROVA DO DOCENTE Marcos
SELECT * FROM tb_prova
WHERE nome_professor = 'Marcos Mungo';


--EXIBE QUANTOS ALUNOS TEM
SELECT COUNT(cpf) AS qtd_total_alunos FROM tb_aluno;

--EXIBE QUANTOS ALUNOS ESTÃO ATRELADOS A UMA PROVA QUE PERTENCE A UMA MATERIA
SELECT COUNT(id_aluno) AS qtd_alunos
FROM tb_prova
WHERE materia = 'História';

--EXIBE A DATA DE NASCIMENTO MAIS VELHA
SELECT MIN(data_nasc) FROM tb_aluno;

SELECT MAX(data_nasc) FROM tb_aluno;

SELECT nome, data_nasc
FROM tb_aluno
WHERE data_nasc = (SELECT MIN(data_nasc) FROM tb_aluno);

SELECT SUM(id) AS toltal FROM tb_turma;

--MEDIA DE NOTAS DE PROVA
SELECT AVG(nota) AS media FROM tb_prova

--EXIBE O NOME DOS MAIS NOVOS
SELECT MAX(data_nasc) AS mais_novo, id
FROM tb_aluno
GROUP BY id
ORDER BY mais_novo DESC;
