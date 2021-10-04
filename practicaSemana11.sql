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


ALTER VIEW listadoProductos
AS
SELECT p.ProductName AS 'Producto',
c.CategoryName AS 'Categoria',
o.OrderID AS 'Orden'
FROM Products p
INNER JOIN Categories c
ON p.CategoryID=c.CategoryID
LEFT JOIN Orders o
ON p.SupplierID=o.OrderID;

SELECT
Producto, Categoria, Orden FROM listadoProductos