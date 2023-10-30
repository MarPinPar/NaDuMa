-- -----------------------------------------------------------------------
-- CREACION ROLES
-- -----------------------------------------------------------------------

-- ------------------- USUARIO(Comprador) ------------------------------------

DROP ROLE IF EXISTS 'usuario'@'localhost';
CREATE ROLE 'usuario'@'localhost';

GRANT SELECT, UPDATE ON miPerfil TO 'usuario'@'localhost';
GRANT SELECT ON perfiles TO 'usuario'@'localhost';
GRANT SELECT ON listasVisibles TO 'usuario'@'localhost';
GRANT SELECT ON contenidoListas TO 'usuario'@'localhost';
GRANT SELECT ON historialBusqueda TO 'usuario'@'localhost';
GRANT SELECT ON historialComparaciones TO 'usuario'@'localhost';
GRANT SELECT ON comentariosProducto TO 'usuario'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON misListas TO 'usuario'@'localhost';

GRANT CREATE ON lista_has_producto TO 'usuario'@'localhost';
GRANT CREATE ON sesion TO 'usuario'@'localhost';
GRANT CREATE ON sesion_has_accion TO 'usuario'@'localhost';
GRANT CREATE ON accion TO 'usuario'@'localhost';
GRANT CREATE ON comparacion TO 'usuario'@'localhost';
GRANT CREATE ON comparacion_has_producto TO 'usuario'@'localhost';
GRANT CREATE ON busqueda TO 'usuario'@'localhost';
GRANT CREATE ON busqueda_has_producto TO 'usuario'@'localhost';

GRANT SELECT ON categoria TO 'usuario'@'localhost';
GRANT SELECT ON producto_has_categoria TO 'usuario'@'localhost';
GRANT SELECT ON producto TO 'usuario'@'localhost';
GRANT SELECT ON precio TO 'usuario'@'localhost';
GRANT SELECT ON tienda TO 'usuario'@'localhost';


GRANT CREATE, UPDATE, DELETE ON reseña TO 'usuario'@'localhost';


-- ------------------- ADMIN ------------------------------------

DROP ROLE IF EXISTS 'admin'@'localhost';
CREATE ROLE 'admin'@'localhost';

GRANT SELECT ON AccionesDeUsuarios TO 'admin'@'localhost';
GRANT SELECT ON Vista_EstadisticasSistema TO 'admin'@'localhost';
GRANT SELECT, DELETE ON Vista_UsuariosRegistrados TO 'admin'@'localhost';

GRANT SELECT, UPDATE, DELETE, INSERT ON accion TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON busqueda TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON busqueda_has_producto TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON categoria TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON comparacion TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON comparacion_has_producto TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON lista TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON lista_has_producto TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON precio TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON producto TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON producto_has_categoria TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON reseña TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON sesion TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON sesion_has_accion TO 'admin'@'localhost';
GRANT SELECT, UPDATE, DELETE, INSERT ON tienda TO 'admin'@'localhost';


-- -----------------------------------------------------------------------
-- CREACION USUARIOS
-- -----------------------------------------------------------------------

DROP USER IF EXISTS 'juan_perez'@'localhost';
CREATE USER 'juan_perez'@'localhost' IDENTIFIED BY 'Cl4v3#123';
GRANT 'usuario'@'localhost' TO 'juan_perez'@'localhost';
SET DEFAULT ROLE ALL TO 'juan_perez'@'localhost';

-- -----------------------------------------------------------------------
-- CREACION ADMIN
-- -----------------------------------------------------------------------
-- Elimina el usuario 'admin1' si ya existe, sin generar errores si no existe
DROP USER IF EXISTS 'admin1'@'localhost';

-- Crea un nuevo usuario llamado 'admin1' con la contraseña 'Uno2tres**'
CREATE USER 'admin1'@'localhost' IDENTIFIED BY 'Uno2tres**';

-- Otorga al usuario 'admin1' el rol 'admin'
GRANT 'admin'@'localhost' TO 'admin1'@'localhost';

-- Establece 'admin' como el rol predeterminado para el usuasrio 'admin1'
SET DEFAULT ROLE ALL TO 'admin1'@'localhost';

