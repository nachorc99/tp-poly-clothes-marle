CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_InsertarCliente`(
    IN nombre_cliente VARCHAR(100),
    IN celular_cliente VARCHAR(20),
    IN envio_cliente VARCHAR(100),
    IN direccion_cliente VARCHAR(100),
    IN cuit_cliente VARCHAR(20)
)
BEGIN
    INSERT INTO Clientes (Nombre, Celular, Envio, Direccion, Cuit)
    VALUES (nombre_cliente, celular_cliente, envio_cliente, direccion_cliente, cuit_cliente);
END