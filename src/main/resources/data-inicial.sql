-- Datos iniciales para el uso real (sin ventas ni clientes de prueba).
-- Contraseña inicial de los tres usuarios: Canomar2026. CÁMBIELA en "Mi cuenta" apenas entre.
INSERT IGNORE INTO configuracion (id_configuracion, dias_alerta_saldo, tolerancia_consumo, tolerancia_cuadre) VALUES (1, 3, 5.00, 5.00);

INSERT IGNORE INTO usuario (id_usuario, nombre_completo, usuario, clave_hash, rol, estado, intentos_fallidos, fecha_registro) VALUES
 (1, 'Administrador del negocio', 'cuentas', '$2a$10$3VMwyr9UrKIeqGPm20TuVe7V7JXw6uaqebjzb/9AtCEL3F3C64d/q', 'ADMINISTRADOR', 'ACTIVO', 0, NOW()),
 (2, 'Vendedor del puesto', 'vendedor', '$2a$10$3VMwyr9UrKIeqGPm20TuVe7V7JXw6uaqebjzb/9AtCEL3F3C64d/q', 'VENDEDOR', 'ACTIVO', 0, NOW()),
 (3, 'Contador', 'contador', '$2a$10$3VMwyr9UrKIeqGPm20TuVe7V7JXw6uaqebjzb/9AtCEL3F3C64d/q', 'CONTADOR', 'ACTIVO', 0, NOW());

INSERT IGNORE INTO producto (id_producto, nombre, nombre_corto, categoria, estado) VALUES
 (1, 'Bonito', 'Bonito', 'PESCADO', 'ACTIVO'),
 (2, 'Corvina', 'Corvina', 'PESCADO', 'ACTIVO'),
 (3, 'Pota', 'Pota', 'MOLUSCO', 'ACTIVO'),
 (4, 'Langostino', 'Langost.', 'MARISCO', 'ACTIVO'),
 (5, 'Jurel', 'Jurel', 'PESCADO', 'ACTIVO'),
 (6, 'Lenguado', 'Lenguado', 'PESCADO', 'INACTIVO'),
 (7, 'Perico', 'Perico', 'PESCADO', 'ACTIVO');

