DROP TABLE IF EXISTS ED;
CREATE TABLE ED (
    ED_ID       SERIAL PRIMARY KEY,
    anime_ID    INT DEFAULT NULL,
    num_ED      INT DEFAULT NULL,
    nombre      TEXT DEFAULT NULL,
    artista     TEXT DEFAULT NULL,
    eps         TEXT DEFAULT NULL
);

DROP TABLE IF EXISTS OP;
CREATE TABLE OP (
    OP_ID       SERIAL PRIMARY KEY,
    anime_ID    INT DEFAULT NULL,
    num_OP      INT DEFAULT NULL,
    nombre      TEXT DEFAULT NULL,
    artista     TEXT DEFAULT NULL,
    eps         TEXT DEFAULT NULL
);


DROP TABLE IF EXISTS animes;
CREATE TABLE animes (
    anime_ID    SERIAL PRIMARY KEY,
    titulo      varchar(100) DEFAULT NULL,
    link        varchar(50) DEFAULT NULL,
    imgUrl      varchar(100) DEFAULT NULL,
    descripcion text,
    estudio     varchar(50) DEFAULT NULL,
    eps         INT DEFAULT NULL,
    alAire      varchar(100) DEFAULT NULL,
    temporada   varchar(25) DEFAULT NULL,
    anio        varchar(4) DEFAULT NULL,
    fuente      varchar(20) DEFAULT NULL,
    generos     varchar(100) DEFAULT NULL,
    color       varchar(20) DEFAULT '#23BF87'
);

DROP TABLE IF EXISTS enPagPrin;
CREATE TABLE enPagPrin (
    pagPrin_ID  SERIAL PRIMARY KEY,
    posicion    int DEFAULT NULL,
    anime_ID    int DEFAULT NULL
);


DROP TABLE IF EXISTS eps;
CREATE TABLE eps (
    ep_ID       SERIAL PRIMARY KEY ,
    opcion_ID   int DEFAULT NULL,
    num_ep      int DEFAULT NULL,
    visitas     int DEFAULT '0',
    link        text,
    peso        varchar(10) DEFAULT NULL
);


DROP TABLE IF EXISTS links;
CREATE TABLE links (
    links_ID    SERIAL PRIMARY KEY ,
    anime_ID    int DEFAULT NULL,
    aviso       TEXT,
    sigEp       varchar(5) DEFAULT NULL
);


DROP TABLE IF EXISTS links_opciones;
CREATE TABLE links_opciones (
    opcion_ID   SERIAL PRIMARY KEY,
    links_ID    int DEFAULT NULL,
    num_opcion  int DEFAULT NULL,
    formato     varchar(20) DEFAULT NULL,
    res         varchar(20) DEFAULT NULL,
    servidor    varchar(20) DEFAULT NULL,
    color       varchar(20) DEFAULT NULL
);


