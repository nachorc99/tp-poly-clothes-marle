CREATE DEFINER=`root`@`localhost` FUNCTION `valor_stock_categoria_sin_iva`(cantidad int, valor int) RETURNS float
    NO SQL
BEGIN
    declare resultado float;
    set resultado = (cantidad * valor);
    RETURN resultado;
END
