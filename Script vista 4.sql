CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `productossinstock` AS
    SELECT 
        `p`.`Id_producto` AS `Id_producto`,
        `p`.`Color` AS `Color`,
        `p`.`Talle` AS `Talle`,
        `p`.`Modelo` AS `Modelo`,
        `p`.`Categoria` AS `Categoria`,
        `p`.`Id_proveedor` AS `Id_proveedor`
    FROM
        (`productos` `p`
        LEFT JOIN `stock` `s` ON ((`p`.`Id_producto` = `s`.`Id_producto`)))
    WHERE
        (`s`.`Id_producto` IS NULL)