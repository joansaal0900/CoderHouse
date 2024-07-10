Create database ECOMMERCE;
USE ECOMMERCE;


CREATE TABLE `vendedor`
(`ID_vendedor` int not null,
`nombre` varchar(50),
`apellido` varchar(50),
`fecha_Creacion` date,
primary key(ID_Vendedor)
);

CREATE table `categoria_producto`
(`ID_categoria` int NOT NULL,
`categoria` varchar(50),
`fecha_Creacion` date,
primary key(ID_categoria)
);

CREATE TABLE `productos`
(`ID_producto` int NOT NULL,
`ID_vendedor` int NOT NULL,
`ID_categoria` int NOT NULL,
`producto` varchar(50),
`precio` decimal(10,2),
`fecha_creacion` date,
`fecha_publicacion` date,
primary key(ID_producto)
);

CREATE TABLE productos_carrito
(
`ID_carrito` int not null,
`ID_producto` int not null,
`cantidad` int,
`fecha_creacion`date
);

CREATE TABLE Opiniones
(
`ID_opinion` int not null,
`ID_producto` int not null,
`ID_cliente` int not null,
`calificacion` int,
`fecha_creacion` date,
primary key (ID_opinion)
);

CREATE TABLE carritos
(
`ID_carrito` int not null,
`ID_Cliente` int not null,
`fecha_creacion` date,
primary key (ID_carrito)
);

CREATE TABLE clientes
(`ID_cliente` int not null auto_increment,
`correo` varchar(50),
`nombre` varchar(50),
`apellido` varchar(50),
`pais` varchar(50),
`ciudad` varchar(50),
`fecha_creacion` date,
primary key(ID_cliente)
);

CREATE TABLE compras
(`ID_compra` int not null,
`ID_carrito` int not null,
`pais` varchar(50),
`ciudad` varchar(50),
`metodo_pago` varchar(50),
`fecha_creacion` date,
primary key (ID_compra)
);