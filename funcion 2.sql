CREATE DEFINER=`root`@`localhost` FUNCTION `ObtenerProveedorProducto`(IdProducto INT) RETURNS varchar(100) CHARSET utf8mb4
    NO SQL
BEGIN
  DECLARE proveedor VARCHAR(100);
  SELECT Proveedores.Nombre INTO proveedor
  FROM Proveedores
  JOIN Productos ON Proveedores.Id_proveedor = Productos.Id_proveedor
  WHERE Productos.Id_producto = IdProducto;
  RETURN proveedor;
END