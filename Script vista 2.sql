CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `facturasdetalladas` AS
    SELECT 
        `f`.`Id_factura` AS `Id_factura`,
        `f`.`Nombre` AS `Nombre_Factura`,
        `f`.`Precio_compra` AS `Total_Factura`,
        `c`.`Nombre` AS `Nombre_Cliente`,
        `c`.`Celular` AS `Celular`,
        `c`.`Envio` AS `Envio`,
        `c`.`Direccion` AS `Direccion`
    FROM
        (`facturas` `f`
        JOIN `clientes` `c` ON ((`f`.`Id_cliente` = `c`.`Id_cliente`)))