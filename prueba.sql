CREATE DATABASE prueba
OWNER=bruno
;
CREATE TABLE clientes(
id VARCHAR(10),
nombre VARCHAR(50),
rut VARCHAR (10),
direccion VARCHAR(100),
PRIMARY KEY (id)
);


INSERT INTO clientes(id, nombre, rut, direccion) VALUES('1', 'Jorge', '1234567-1', 'pasaje 4 895, villa la esmeralda, La florida');
INSERT INTO clientes(id, nombre, rut, direccion) VALUES('2', 'Miguel', '1234567-2', 'Vista hermosa 224, La pintana');
INSERT INTO clientes(id, nombre, rut, direccion) VALUES('3', 'Daniel', '1234567-3', 'Av. Providencia 332, Providencia');
INSERT INTO clientes(id, nombre, rut, direccion) VALUES('4', 'Matilde', '1234567-4', 'Bandera 21, Santiago centro');
INSERT INTO clientes(id, nombre, rut, direccion) VALUES('5', 'Laureano', '1234567-5', 'Alvaro Casanova 331, La reina');

CREATE TABLE facturas(
    n° VARCHAR(15),
    fecha DATE,
    cliente_id VARCHAR(15),
    subtotal INT,
    total INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
CREATE TABLE compras(
    n°_factura VARCHAR(15),
    detalle_compra VARCHAR(100),
    nombre_producto VARCHAR(50),
    cantidad INT,
    valor_total_por_producto VARCHAR(12)
);

CREATE TABLE productos(
    id_productos VARCHAR(10),
    nombre_producto VARCHAR(50),
    descripcion_producto VARCHAR(200),
    precio_unidad VARCHAR(12),
    categoria VARCHAR(20),
);
CREATE TABLE categorias(
    id_categoria VARCHAR(3),
    categoria VARCHAR(20),
    descripcion VARCHAR(200)
);



