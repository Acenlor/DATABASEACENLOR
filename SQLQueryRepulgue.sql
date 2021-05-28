INSERT INTO [Repulgue].[dbo].[CLIENTES](nombreCliente, direccionCliente, cpCliente, localidadCliente) VALUES ('Raúl López','Av Calanda N7 1A','50017','Zaragoza'),('Rosa Pardo','Calle Celanova N2','50017','Zaragoza');
SELECT * FROM CLIENTES;

INSERT INTO [Repulgue].[dbo].[EMPLEADOS](nombreEmpleado, direccionEmpleado, cpEmpleado, localidadEmpleado, sueldoEmpleado, idEmpleadoJefeFK) VALUES ('Ana Sierra','Calle Rioja N7 P1C','50017','Zaragoza','2000','1'),('Carlos Torres','Av Navarra N3','50017','Zaragoza','1800','2');
SELECT * FROM EMPLEADOS;

INSERT INTO [Repulgue].[dbo].[ORDENESCOMPRA](totalOrdenCompra, subtotalOrdenCompra, ivaOrdenCompra, fechaOrdenCompra, idEmpleadoFK, idClienteFK) VALUES ('12.10','10.00','21.00','2021/03/08','1','1'),('24.20','20.00','21.00','2021/03/09','1','2');
SELECT * FROM ORDENESCOMPRA;

INSERT INTO [Repulgue].[dbo].[PRODUCTOS](descripcionProducto, precioProducto, stockProducto) VALUES ('Empanada carne','2.00','400'),('Empanada atún','2.00','500');
SELECT * FROM PRODUCTOS;

INSERT INTO [Repulgue].[dbo].[VENDEDOR](primaVendedor, objetivosVendedor, idEmpleadoFK) VALUES ('100.00','400','1');
SELECT * FROM VENDEDOR;

INSERT INTO [Repulgue].[dbo].[COCINERO](recetaMesCocinero, idEmpleadoFK) VALUES ('Empanada carne marzo','2'),('Empanada atún marzo','2');
SELECT * FROM COCINERO;

INSERT INTO [Repulgue].[dbo].[LINEAORDENESCOMPRA](cantidad, idProductoFK, idOrdenCompraFK) VALUES ('5','1','1'),('10','2','2');
SELECT * FROM LINEAORDENESCOMPRA;
