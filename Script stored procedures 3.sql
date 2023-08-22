CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertarProducto`(
    IN color_producto VARCHAR(50),
    IN talle_producto VARCHAR(20),
    IN modelo_producto VARCHAR(100),
    IN categoria_producto VARCHAR(50),
    IN id_proveedor INT,
    IN precio_compra DECIMAL(10, 2)
)
BEGIN
    INSERT INTO Productos (Color, Talle, Modelo, Categoria, Id_proveedor, Precio_compra)
    VALUES (color_producto, talle_producto, modelo_producto, categoria_producto, id_proveedor, precio_compra);
END