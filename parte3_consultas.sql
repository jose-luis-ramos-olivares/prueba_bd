#¿Qué cliente realizó la compra más cara?
SELECT cliente.nombre_cliente, factura.subtotal FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente ORDER BY factura.subtotal DESC LIMIT 1;

#¿Qué cliente pagó sobre 100 de monto?
SELECT cliente.nombre_cliente, factura.subtotal FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente WHERE factura.subtotal > 100;

#¿Cuantos clientes han comprado el producto 6?
SELECT COUNT(cliente.nombre_cliente) FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente INNER JOIN factura_producto ON factura.numero_factura = factura_producto.numero_factura WHERE factura_producto.id_producto = 6;

