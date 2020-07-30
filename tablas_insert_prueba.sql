#CREACION BASE DE DATOS
CREATE DATABASE prueba;

#CREACION TABLAS
CREATE TABLE cliente(id_cliente SERIAL PRIMARY KEY, nombre_cliente VARCHAR(50) NOT NULL, rut_cliente VARCHAR(20) NOT NULL, direccion_cliente VARCHAR NOT NULL);
CREATE TABLE categoria(id_categoria SERIAL PRIMARY KEY, nombre_categoria VARCHAR(30) NOT NULL, descripcion_categoria VARCHAR NOT NULL);
CREATE TABLE factura(numero_factura SERIAL PRIMARY KEY, fecha_factura DATE NOT NULL, subtotal INT NOT NULL, id_cliente INT NOT NULL REFERENCES cliente (id_cliente));
CREATE TABLE producto(id_producto SERIAL PRIMARY KEY, nombre_producto VARCHAR(30) NOT NULL, descripcion_producto VARCHAR NOT NULL, valor_unitario INT NOT NULL, id_categoria INT NOT NULL REFERENCES categoria (id_categoria));
CREATE TABLE factura_producto(numero_factura INT NOT NULL REFERENCES factura (numero_factura), id_producto INT NOT NULL REFERENCES producto (id_producto), cantidad_producto INT NOT NULL, precio_unitario INT NOT NULL, valor_total INT NOT NULL);

#INSERTAR 5 CLIENTES
INSERT INTO cliente (nombre_cliente, rut_cliente, direccion_cliente) VALUES ('Jose', '16978452-3', 'Baltazar 8774');
INSERT INTO cliente (nombre_cliente, rut_cliente, direccion_cliente) VALUES ('Javiera', '17740453-2', 'Gaspar 2312');
INSERT INTO cliente (nombre_cliente, rut_cliente, direccion_cliente) VALUES ('Julio', '7427654-9', 'Santa Rosa 0543');
INSERT INTO cliente (nombre_cliente, rut_cliente, direccion_cliente) VALUES ('Antonia', '18765234-2', 'Las gardenias 123');
INSERT INTO cliente (nombre_cliente, rut_cliente, direccion_cliente) VALUES ('Luis', '13234567-8', 'Macul 443');

#INSERTAR 8 PRODUCTOS
INSERT INTO producto (nombre_producto, descripcion_producto, valor_unitario, id_categoria) VALUES ('yogurt', 'sabor chirimoya', 100, 1);
INSERT INTO producto (nombre_producto, descripcion_producto, valor_unitario, id_categoria) VALUES ('leche', 'blanca 1 litro', 500, 1);
INSERT INTO producto (nombre_producto, descripcion_producto, valor_unitario, id_categoria) VALUES ('queso', '250g', 700, 1);
INSERT INTO producto (nombre_producto, descripcion_producto, valor_unitario, id_categoria) VALUES ('papas fritas', '400g', 400, 2);
INSERT INTO producto (nombre_producto, descripcion_producto, valor_unitario, id_categoria) VALUES ('chocolate', 'barra 120g', 600, 2);
INSERT INTO producto (nombre_producto, descripcion_producto, valor_unitario, id_categoria) VALUES ('galletas', 'personal 70g', 100, 2);
INSERT INTO producto (nombre_producto, descripcion_producto, valor_unitario, id_categoria) VALUES ('shampoo', 'manzanilla 1l', 900, 3);
INSERT INTO producto (nombre_producto, descripcion_producto, valor_unitario, id_categoria) VALUES ('jabon', 'barra glicerina', 200, 3);

#INSERTAR 3 CATEGORIAS
INSERT INTO categoria (nombre_categoria, descripcion_categoria) VALUES ('Lacteos', 'Productos lacteos');
INSERT INTO categoria (nombre_categoria, descripcion_categoria) VALUES ('Golosinas', 'Todo tipo de golosinas, dulces y saladas');
INSERT INTO categoria (nombre_categoria, descripcion_categoria) VALUES ('Higiene', 'Todo tipo de productos de higiene');

#INSERTAR 10 FACTURAS
#2 FACTURAS PARA EL CLIENTE 1, CON 2 Y 3 PRODUCTOS
INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('02-04-20', 600, 1);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (1, 1, 1, 100, 100);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (1, 2, 1, 500, 500);

INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('07-05-20', 1300, 1);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (2, 1, 1, 100, 100);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (2, 2, 1, 500, 500);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (2, 3, 1, 700, 700);


#3 FACTURAS PARA EL CLIENTE 2, CON 3, 2 Y 3 PRODUCTOS
INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('12-05-20', 1300, 2);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (3, 1, 1, 100, 100);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (3, 2, 1, 500, 500);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (3, 3, 1, 700, 700);

INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('15-05-20', 1100, 2);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (4, 7, 1, 900, 900);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (4, 8, 1, 200, 200);

INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('19-05-20', 1100, 2);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (5, 4, 1, 400, 400);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (5, 5, 1, 600, 600);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (5, 6, 1, 100, 100);


#1 FACTURA PARA EL CLIENTE 3, CON 1 PRODUCTO
INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('24-05-20', 900, 3);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (6, 7, 1, 900, 900);


#4 FACTURAS PARA EL CLIENTE 4, CON 2, 3, 4 Y 1 PRODUCTO
INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('02-06-20', 1100, 4);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (7, 3, 1, 700, 700);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (7, 4, 1, 400, 400);

INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('05-06-20', 1200, 4);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (8, 1, 1, 100, 100);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (8, 7, 1, 900, 900);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (8, 8, 1, 200, 200);

INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('10-06-20', 1200, 4);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (9, 2, 1, 500, 500);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (9, 4, 1, 400, 400);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (9, 6, 1, 100, 100);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (9, 8, 1, 200, 200);

INSERT INTO factura (fecha_factura, subtotal, id_cliente) VALUES ('15-06-20', 700, 4);
INSERT INTO factura_producto (numero_factura, id_producto, cantidad_producto, precio_unitario, valor_total) VALUES (10, 3, 1, 700, 700);


