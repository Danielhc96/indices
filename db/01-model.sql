BEGIN TRANSACTION;

--
--Paises
--

DROP TABLE IF EXISTS paises CASCADE;
CREATE TABLE paises(
    iso_2 varchar(2) NOT NULL,--Codigo ISO2
    nombre varchar(100) NOT NULL,--Nombre pais
    id_pais varchar(3) NOT NULL,--Identificador pais
    idioma varchar(100) NOT NULL,--Idioma pais
    moneda_nombre varchar(20) NOT NULL,--Moneda
    PRIMARY KEY (id_pais)
);

--
--Indicadores
--
DROP TABLE IF EXISTS indicador CASCADE;
CREATE TABLE indicador(
    id_indicador integer NOT NULL,--pk indicador
    nombre_pais varchar(100) NOT NULL,--Nombre pais
    id_pais varchar(20) NOT NULL,--Identificador pais
    nombre_indicador varchar(20) NOT NULL,--Idicador
    cantidad real,--Valor indicador
    año integer NOT NULL,--Año indicador
    FOREIGN KEY (id_pais) REFERENCES paises(id_pais) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id_indicador)
);

COMMIT;