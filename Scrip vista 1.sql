CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `clientesconenvioestandar` AS
    SELECT 
        `clientes`.`Id_cliente` AS `Id_cliente`,
        `clientes`.`Nombre` AS `Nombre`,
        `clientes`.`Celular` AS `Celular`,
        `clientes`.`Envio` AS `Envio`,
        `clientes`.`Direccion` AS `Direccion`,
        `clientes`.`Cuit` AS `Cuit`
    FROM
        `clientes`
    WHERE
        (`clientes`.`Envio` = 'Estándar')