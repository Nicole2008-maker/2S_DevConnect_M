--DDL
CREATE DATABASE  db_devconnect;

GO

USE db_devconnect;

CREATE TABLE tb_usuario(
      id        INT        IDENTITY  (1,1) PRIMARY KEY
      ,nome_completo       NVARCHAR(255)         NOT NULL
      ,nome_usuario        NVARCHAR(50)        UNIQUE NOT NULL
      ,email               NVARCHAR(255)      UNIQUE NOT NULL
      ,senha               NVARCHAR(50)          NOT NULL
      ,foto_perfil_url     NVARCHAR(150)         NOT NULL
  );
  GO

  SELECT * FROM tb_usuario;

  CREATE TABLE tb_publicacao(
      id          INT         IDENTITY(1,1)        PRIMARY KEY
      ,descrição  INT         NVARCHAR(255)        NOT NULL
      ,imagem_UM              NVARCHAR(50)         UNIQUE NOT NULL
      ,data_publicação        NVARCHAR(255)        UNIQUE NOT NULL

      FOREIGN KEY (id_usuario)    REFERENCES     tb_usuario(id)

  );

  SELECT * FROM tb_publicacao(

  CREATE TABLE tb_curtida(
     id         INT         IDENTITY(1,1)         PRIMARY KEY
     ,usuario_dd   INT      NVARCHAR(255)         NOT NULL
     ,publicacao_dd         NVARCHAR(50)          UNIQUE NOT NULL

      FOREIGN KEY (id_publicacao)    REFERENCES     tb_publicacao(id)
);

 SELECT * FROM tb_curtida

 CREATE TABLE tb_comentario(
    id        INT         IDENTITY(1,1)           PRIMARY KEY
    ,publicacao_dd        NVARCHAR(255)           NOT NULL
    ,texto                NVARCHAR(50)            UNIQUE NOT NULL
    ,data_comentario      NVARCHAR(255)           UNIQUE NOT NULL

    FOREIGN KEY (id_curtida)    REFERENCES     tb_curtida(id)
);

    SELECT * FROM tb_comentario

    CREATE TABLE tb_seguidor(
    id       INT         IDENTITY(1,1)           PRIMARY KEY
    ,usuario_seguidor    NVARCHAR(255)           NOT NULL

    FOREIGN KEY (id_coemntario)    REFERENCES     tb_comentario(id)
);