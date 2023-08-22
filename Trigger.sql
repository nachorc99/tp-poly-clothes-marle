DELIMITER //
CREATE TRIGGER trg_ActualizarStockProducto
AFTER INSERT ON DetalleFactura
FOR EACH ROW
BEGIN
    DECLARE stock_actual INT;
    SELECT cantidad INTO stock_actual
    FROM Stock
    WHERE Id_producto = NEW.Id_producto;

    SET stock_actual = stock_actual - NEW.Cantidad;

    UPDATE Stock
    SET cantidad = stock_actual
    WHERE Id_producto = NEW.Id_producto;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_VerificarStock
BEFORE INSERT ON DetalleFactura
FOR EACH ROW
BEGIN
    DECLARE stock_actual INT;
    SELECT cantidad INTO stock_actual
    FROM Stock
    WHERE Id_producto = NEW.Id_producto;

    IF stock_actual < NEW.Cantidad THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No hay suficiente stock para este producto.';
    END IF;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_EliminarDetalleFactura
AFTER DELETE ON Facturas
FOR EACH ROW
BEGIN
    DELETE FROM DetalleFactura
    WHERE Id_factura = OLD.Id_factura;
END;
//
DELIMITER ;