CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `productosconstockbajo` AS
    SELECT 
        `s`.`Id_producto` AS `Id_producto`,
        `p`.`Color` AS `Color`,
        `p`.`Talle` AS `Talle`,
        `p`.`Modelo` AS `Modelo`,
        `p`.`Categoria` AS `Categoria`,
        `p`.`Id_proveedor` AS `Id_proveedor`,
        `s`.`cantidad` AS `Stock_Actual`
    FROM
        (`productos` `p`
        JOIN `stock` `s` ON ((`p`.`Id_producto` = `s`.`Id_producto`)))
    WHERE
        (`s`.`cantidad` < 10)