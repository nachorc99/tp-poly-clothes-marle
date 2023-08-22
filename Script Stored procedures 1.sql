CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CalcularSubtotalFactura`(
    IN id_factura INT
)
BEGIN
    DECLARE subtotal DECIMAL(10, 2);
    SELECT SUM(Subtotal) INTO subtotal
    FROM DetalleFactura
    WHERE Id_factura = id_factura;

    UPDATE Facturas
    SET Precio_compra = subtotal
    WHERE Id_factura = id_factura;
END