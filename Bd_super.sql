CREATE database db_super;

CREATE TABLE `db_super`.`puestos` (
  `idPuesto` SMALLINT NOT NULL AUTO_INCREMENT,
  `puesto` VARCHAR(50) NULL,
  PRIMARY KEY (`idPuesto`));

CREATE TABLE `db_super`.`empleados` (
  `idEmpleado` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(60) NULL,
  `apellidos` VARCHAR(60) NULL,
  `direccion` VARCHAR(80) NULL,
  `telefono` VARCHAR(25) NULL,
  `DPI` VARCHAR(15) NULL,
  `genero` BIT NULL,
  `fecha_nacimiento` DATE NULL,
  `idPuesto` SMALLINT NULL,
  `fecha_inicio_labores` DATE NULL,
  `fechaingreso` DATETIME NULL,
  PRIMARY KEY (`idEmpleado`));
  
CREATE TABLE `db_super`.`ventas` (
  `idVenta` INT NOT NULL AUTO_INCREMENT,
  `nofactura` INT NULL,
  `serie` CHAR NULL,
  `fechafactura` DATE NULL,
  `idcliente` INT NULL,
  `idempleado` INT NULL,
  `fechaingreso` DATETIME NULL,
  PRIMARY KEY (`idVenta`));

CREATE TABLE `db_super`.`clientes` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(60) NULL,
  `apellidos` VARCHAR(60) NULL,
  `NIT` VARCHAR(12) NULL,
  `genero` BIT NULL,
  `telefono` VARCHAR(25) NULL,
  `correo_electronico` VARCHAR(45) NULL,
  `fechaingreso` DATETIME NULL,
  PRIMARY KEY (`idCliente`));

CREATE TABLE `db_super`.`ventas_detalle` (
  `idVenta_detalle` BIGINT NOT NULL AUTO_INCREMENT,
  `idVenta` INT NULL,
  `idProducto` INT NULL,
  `cantidad` VARCHAR(45) NULL,
  `precio_unitario` DECIMAL(8,2) NULL,
  PRIMARY KEY (`idVenta_detalle`));

CREATE TABLE `db_super`.`productos` (
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `producto` VARCHAR(50) NULL,
  `idMarca` SMALLINT NULL,
  `Descripcion` VARCHAR(100) NULL,
  `Imagen` VARCHAR(30) NULL,
  `precio_costo` DECIMAL(8,2) NULL,
  `precio_venta` DECIMAL(8,2) NULL,
  `existencia` INT NULL,
  `fecha_ingreso` DATETIME NULL,
  PRIMARY KEY (`idProducto`));

CREATE TABLE `db_super`.`marcas` (
  `idmarca` SMALLINT NOT NULL AUTO_INCREMENT,
  `marca` VARCHAR(50) NULL,
  PRIMARY KEY (`idmarca`));
  
  CREATE TABLE `db_super`.`compras_detalle` (
  `idcompra_detalle` BIGINT NOT NULL AUTO_INCREMENT,
  `idcompra` INT NULL,
  `idproducto` INT NULL,
  `cantidad` INT NULL,
  `precio_costo_unitario` DECIMAL(8,2) NULL,
  PRIMARY KEY (`idcompra_detalle`));

CREATE TABLE `db_super`.`compras` (
  `idcompra` INT NOT NULL AUTO_INCREMENT,
  `no_orden_compra` INT NULL,
  `idproveedor` INT NULL,
  `fecha_orden` DATE NULL,
  `fechaingreso` DATETIME NULL,
  PRIMARY KEY (`idcompra`));
  
  CREATE TABLE `db_super`.`proveedores` (
  `idProveedore` INT NOT NULL AUTO_INCREMENT,
  `proveedor` VARCHAR(60) NULL,
  `nit` VARCHAR(12) NULL,
  `direccion` VARCHAR(80) NULL,
  `telefono` VARCHAR(25) NULL,
  PRIMARY KEY (`idProveedore`));


