-- add values from Scrapping --

INSERT INTO CATEGORIA (cat_nombre) VALUES
('Celulares'),
('Computadores'),
('Televisores'),
('Electrodomésticos'),
('Audio'),
('Videojuegos'),
('Tablets'),
('Impresoras'),
('Cámaras'),
('Netflix y Pines'),
('Dispositivos Inteligentes'),
('Deportes'),
('Impresoras y Escáneres'),
('Accesorios'),
('Casa Inteligente'),
('SmarthWatch'),
('Instalaciones'),
('Seguros');




INSERT INTO USUARIO (us_username, us_alias, us_correo, us_contraseña, us_fechaReg) VALUES
('luis_gomez', 'Luis', 'luis@example.com', 'luispass123', '2023-10-25 15:50:00'),
('ana_perez', 'Ana', 'ana@example.com', 'anapass', '2023-10-25 15:51:00'),
('carlos_rodriguez', 'Carlos', 'carlos@example.com', 'mipassword', '2023-10-25 15:52:00'),
('maria_lopez', 'Maria', 'maria@example.com', 'mariapass123', '2023-10-25 15:53:00'),
('juan_hernandez', 'Juan', 'juan@example.com', 'juanpass', '2023-10-25 15:54:00');

SELECT * FROM USUARIO;


ALTER TABLE PRODUCTO MODIFY COLUMN pro_nombre VARCHAR(100);
INSERT INTO PRODUCTO (pro_nombre, pro_marca) VALUES

('Apple iPhone 14 Pro (128 GB) - Morado oscuro', 'iPhone'),
('Apple iPhone 14 Pro Max (256 GB) - Morado oscuro', 'iPhone'),
('Apple iPhone 14 (512 GB) - Morado', 'iPhone'),
('Apple iPhone 14 Plus (512 GB) - Azul', 'iPhone'),
('Apple iPhone 14 (128 GB) - Medianoche', 'iPhone'),
('Iphone 14 Pro Max 128Gb 5G Negro', 'iPhone'),
('iPhone 14 128 GB Medianoche', 'iPhone'),
('iPhone 14 128 GB Azul', 'iPhone'),
('iPhone 14 Pro Max 128 GB Morado', 'iPhone'),
('Apple Iphone 14 Pro Max 128Gb Space Black (Nuevo)', 'iPhone'),
('iPhone 14 128 GB Azul Medianoche', 'iPhone'),
('iPhone 14 128 GB Morado', 'iPhone'),
('iPhone 14 Pro Max 128 GB Morado Oscuro', 'iPhone'),
('iPhone 14 Pro 128 GB Negro Espacial', 'iPhone'),
('iPhone 14 128 GB Azul', 'iPhone');

SELECT * FROM PRODUCTO;

INSERT INTO TIENDA (tie_nombre, tie_URL) VALUES

('Ktronix', 'https://www.ktronix.com/'),
('Mercadolibre', 'https://www.mercadolibre.com.co/'),
('Éxito', 'https://www.exito.com/');

SELECT * FROM TIENDA;

INSERT INTO PRECIO (PRODUCTO_pro_ID, TIENDA_tie_ID, pre_fechaHora, pre_valor, pre_URL,pre_imagen) VALUES
(1, 2, '2023-10-25 15:46:57.848482', 4960000, 'https://www.mercadolibre.com.co/apple-iphone-14-pro-128-gb-morado-oscuro/p/MCO19615353?pdp_filters=category:MCO1055#searchVariation=MCO19615353&position=1&search_layout=stack&type=product&tracking_id=6ef7b206-05b1-4608-a826-bd0db409f598', 'https://http2.mlstatic.com/D_NQ_NP_726811-MLM51559388195_092022-V.webp'),
(2, 2, '2023-10-25 15:46:57.848482', 5780000, 'https://www.mercadolibre.com.co/apple-iphone-14-pro-max-256-gb-morado-oscuro/p/MCO19615354?pdp_filters=category:MCO1055#searchVariation=MCO19615354&position=2&search_layout=stack&type=product&tracking_id=6ef7b206-05b1-4608-a826-bd0db409f598', 'https://http2.mlstatic.com/D_NQ_NP_726811-MLM51559388195_092022-V.webp'),
(3, 2, '2023-10-25 15:46:57.848482', 4479000, 'https://www.mercadolibre.com.co/apple-iphone-14-512-gb-morado/p/MCO19615374?pdp_filters=category:MCO1055#searchVariation=MCO19615374&position=3&search_layout=stack&type=product&tracking_id=6ef7b206-05b1-4608-a826-bd0db409f598','https://http2.mlstatic.com/D_NQ_NP_726811-MLM51559388195_092022-V.webp'),
(4, 2, '2023-10-25 15:46:57.848482', 4499900, 'https://www.mercadolibre.com.co/apple-iphone-14-plus-512-gb-azul/p/MCO19615368?pdp_filters=category:MCO1055#searchVariation=MCO19615368&position=4&search_layout=stack&type=product&tracking_id=6ef7b206-05b1-4608-a826-bd0db409f598', 'https://http2.mlstatic.com/D_NQ_NP_726811-MLM51559388195_092022-V.webp'),
(5, 2, '2023-10-25 15:46:57.848482', 3490000, 'https://www.mercadolibre.com.co/apple-iphone-14-128-gb-medianoche/p/MCO19615360?pdp_filters=category:MCO1055#searchVariation=MCO19615360&position=5&search_layout=stack&type=product&tracking_id=6ef7b206-05b1-4608-a826-bd0db409f598','https://http2.mlstatic.com/D_NQ_NP_726811-MLM51559388195_092022-V.webp'),
(6, 3, '2023-10-25 15:47:46.173929', 5869600, 'https://tienda.exito.com/iphone-14-pro-max-128gb-5g-negro-102378158-mp/p', 'https://exitocol.vtexassets.com/arquivos/ids/15562745-500-auto?v=638043813455730000&width=500&height=auto&aspect=true'),
(7, 3, '2023-10-25 15:47:46.173929', 4889900, 'https://tienda.exito.com/celular-apple-mpuf3bea-128-gb-medianoche-3103350/p', 'https://exitocol.vtexassets.com/arquivos/ids/19708177-500-auto?v=638304163880600000&width=500&height=auto&aspect=true'),
(8, 3, '2023-10-25 15:47:46.173929', 4889900, 'https://tienda.exito.com/celular-apple-mpvn3bea-128-gb-azul-3103354/p', 'https://exitocol.vtexassets.com/arquivos/ids/19707953-500-auto?v=638304159981700000&width=500&height=auto&aspect=true'),
(9, 3, '2023-10-25 15:47:46.173929', 6859900, 'https://tienda.exito.com/celular-apple-mq9t3bea-128-gb-morado-3103338/p', 'https://exitocol.vtexassets.com/arquivos/ids/19715930-500-auto?v=638306373877570000&width=500&height=auto&aspect=true'),
(10, 3, '2023-10-25 15:47:46.173929', 6099900, 'https://tienda.exito.com/apple-iphone-14-pro-max-128gb-space-black-nuevo-102440347-mp/p', 'https://exitocol.vtexassets.com/arquivos/ids/16304461-500-auto?v=638098326936600000&width=500&height=auto&aspect=true'),
(11, 1, '2023-10-25 15:48:07.566115', 4029000, 'https://www.ktronix.com/iphone14-128gb-azul-medianoche/p/194253488224', 'https://www.ktronix.com/_ui/responsive/theme-ktronix/images/missing_product_EN_300x300.jpg'),
(12, 1, '2023-10-25 15:48:07.566115', 4029000, 'https://www.ktronix.com/iphone14-128gb-morado/p/194253488248', 'https://www.ktronix.com/_ui/responsive/theme-ktronix/images/missing_product_EN_300x300.jpg'),
(13, 1, '2023-10-25 15:48:07.566115', 6099000, 'https://www.ktronix.com/iphone-14-pro-max-128gb-morado-oscuro/p/194253486770', 'https://www.ktronix.com/_ui/responsive/theme-ktronix/images/missing_product_EN_300x300.jpg'),
(14, 1, '2023-10-25 15:48:07.566115', 5579000, 'https://www.ktronix.com/iphone-14-pro-128gb-negro-espacial/p/194253488378', 'https://www.ktronix.com/_ui/responsive/theme-ktronix/images/missing_product_EN_300x300.jpg'),
(15, 1, '2023-10-25 15:48:07.566115', 4029000, 'https://www.ktronix.com/iphone14-128gb-azul/p/194253488262', 'https://www.ktronix.com/_ui/responsive/theme-ktronix/images/missing_product_EN_300x300.jpg');

SELECT * FROM PRECIO;