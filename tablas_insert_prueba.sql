CREATE DATABASE prueba;
CREATE TABLE cliente(id_cliente SERIAL PRIMARY KEY, nombre_cliente VARCHAR(50) NOT NULL, rut_cliente VARCHAR(20) NOT NULL, direccion_cliente VARCHAR NOT NULL);
CREATE TABLE categoria(id_categoria SERIAL PRIMARY KEY, nombre_categoria VARCHAR(30) NOT NULL, descripcion_categoria VARCHAR NOT NULL);
CREATE TABLE factura(numero_factura SERIAL PRIMARY KEY, fecha_factura DATE NOT NULL, subtotal INT NOT NULL, id_cliente INT NOT NULL REFERENCES cliente (id_cliente));
CREATE TABLE producto(id_producto SERIAL PRIMARY KEY, nombre_producto VARCHAR(30) NOT NULL, descripcion_producto VARCHAR NOT NULL, valor_unitario INT NOT NULL, id_categoria INT NOT NULL REFERENCES categoria (id_categoria));
CREATE TABLE factura_producto(numero_factura INT NOT NULL REFERENCES factura (numero_factura), id_producto INT NOT NULL REFERENCES producto (id_producto), cantidad_producto INT NOT NULL, precio_unitario INT NOT NULL, valor_total INT NOT NULL);

