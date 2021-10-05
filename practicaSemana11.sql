USE Northwind;

SELECT
	p.ProductName Producto,
	c.CategoryName Categoria
FROM
	Products p
	INNER JOIN Categories c
	ON p.CategoryID=c.CategoryID;


--crear una vista que muestre nombre de producto
--categoria y proveedor.
--ordenado por nombre de categoria

CREATE VIEW listadoProductos
AS
SELECT p.ProductName AS 'Producto',
c.CategoryName AS 'Categoria',
p.SupplierID AS 'Proveedores'
FROM Products p
INNER JOIN Categories c
ON p.CategoryID=c.CategoryID

SELECT Producto, Categoria, Proveedores FROM listadoProductos ORDER BY Categoria;


--consulta sobre actualizacion y listado de producto, nombre y orderId de datos null y no null

ALTER VIEW listadoProductos 
AS 
SELECT p.ProductName AS 'producto',

c.CategoryName AS 'categoria',

o.OrderID AS 'Orderid' 

FROM [Order Details] o 

LEFT JOIN Products p ON o.ProductID =  p.ProductID 

INNER JOIN Categories c ON p.CategoryID = c.CategoryID;

SELECT producto, categoria, Orderid FROM listadoProductos;


ALTER VIEW listadoProductos
AS
SELECT p.ProductName AS 'producto',

c.CategoryName AS 'categoria',

o.OrderID AS 'Orderid'

FROM [Order Details] O
FULL JOIN Products p ON o.ProductID =  p.ProductID 

FULL JOIN Categories c ON p.CategoryID = c.CategoryID;

SELECT producto, categoria, Orderid FROM listadoProductos ORDER BY categoria;













