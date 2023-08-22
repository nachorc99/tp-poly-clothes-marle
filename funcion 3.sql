CREATE DEFINER=`root`@`localhost` FUNCTION `valor_stock_categoria_iva`(cantidad int, valor int) RETURNS float
    NO SQL
BEGIN
	declare resultado float;
	declare iva float;
    set iva = 1.21;
    set resultado = ((cantidad * valor) * iva);
RETURN resultado;
END