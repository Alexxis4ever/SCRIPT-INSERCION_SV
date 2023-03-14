use SISTEMA_VENTAS;

--Ingresar 5 categorias
INSERT INTO CATEGORIA (nombre) VALUES 
('Lacteos'),
('Harinas y Pan'),
('Bebidas'),
('Enlatados'),
('Frutas y Verduras');

--Ingresar 15 empleados
INSERT INTO EMPLEADO (idEmpleado,nombre,fecha_nacimiento,direccion,telefono) VALUES
('1','Jose','1977-02-08','123 Main St','555-1234'),
('2','Camila','1978-04-10','456 Elm St','555-5678'),
('3','Daniel','1988-01-05','789 Oak Ave','555-9012'),
('4','Juliana','1972-12-09','321 Pine St','555-3456'),
('5','Jorge','1974-05-03','654 Maple Ave','555-7890'),
('6','Giselle','2002-10-05','987 Cedar Rd','555-2345'),
('7','Juan','1998-11-18','246 Walnut St','555-6789'),
('8','Valeria','1976-01-02','135 Birch Ave','555-0123'),
('9','Pedro','1972-09-11','864 Spruce Ln','555-4567'),
('10','Valentina','2000-05-02','579 Ash St','555-8901'),
('11','Gabriel','1999-06-12','312 Oakwood Dr','555-4321'),
('12','Angie','2001-07-07','645 Cedarwood Ln','555-8765'),
('13','Gustavo','1997-03-05','978 Forest Ave','555-2109'),
('14','Luisa','2000-12-24','420 Hillside Dr','555-6543'),
('15','Felipe','1978-04-22','753 Sunset Blvd','555-0987');

--Ingresar 10 clientes
INSERT INTO CLIENTE(idCliente,nombre,fecha_nacimiento,direccion,telefono) VALUES
('1', 'John','1975-05-02','252 Broad St','555-1071'),
('2', 'Yeimy','1973-11-03','518 Market St','555-0452'),
('3', 'Pablo','2001-12-10','847 High St','555-3459'),
('4', 'Andrea','1997-08-22','310 Park Ave','555-1247'),
('5', 'Miguel','1974-04-07','679 Franklin St','555-5749'),
('6', 'Stefanny','1972-08-06','917 Washington Ave','555-6426'),
('7', 'Nicolas','2002-05-04','457 Lincoln St','555-7891'),
('8', 'Sofia','1994-01-05','210 State St','555-1458'),
('9', 'Julio','2003-05-12','191 Spring St','555-9589'),
('10', 'Sara','2002-04-18','450 Jefferson Ave','555-0554');

--Ingresar 10 proveedores
INSERT INTO PROVEEDOR(idProveedor,nombre) VALUES
('1', 'Juliana'),
('2', 'Edwin'),
('3', 'Carolina'),
('4', 'Faber'),
('5', 'Deisy'),
('6', 'Jeyson'),
('7', 'Angelica'),
('8', 'Hernesto'),
('9', 'Lucia'),
('10', 'Leonardo');

--Ingreso de registro telefono-proveedor
INSERT INTO TEL_PRO(idTelPro,idProveedor_fk,telefono) VALUES
('1','1','555-1234'),
('2','2','555-9876'),
('3','3','555-4585'),
('4','4','555-8510'),
('5','5','555-6543'),
('6','6','555-0987'),
('7','7','555-6557'),
('8','8','555-9000'),
('9','9','555-0504'),
('10','10','555-0107');

--Ingresar 5 productos por cada categoria
SET identity_insert PRODUCTO on;
INSERT INTO PRODUCTO(codP,nombre,valor_venta,existencia,idCategoria_fk) VALUES
('1','Cerveza-Poker-lata',2590,200,3),
('2','Coca-Cola-lata',2950,54,3),
('3','Club-Colombia-lata',3850,150,3),
('4','Gatorade',3190,440,3),
('5','H2O-Lima-limon',3760,525,3),
('6','Yogurt-alpina',2090,458,1),
('7','Leche-alqueria',5775,940,1),
('8','Mantequilla-rama',9800,280,1),
('9','Flan-Diety',3370,147,1),
('10','Queso-Crema-Colanta',8990,178,1),
('11', 'Galletas-chips-ahoy',1365,243,2),
('12', 'Galletas-saladas',900,250,2),
('13', 'Pan-tajado-bimbo',7030,58,2),
('14', 'Galletas-saltin-noel',6900,297,2),
('15', 'Tortillas-bimbo',9990,346,2),
('16', 'Aceitunas-alfresco-deshuesada',6130,555,4),
('17', 'Champiñones-en-lata-kari',8540,789,4),
('18', 'Sardinas-isabel',11850,218,4),
('19', 'Frijoles-en-lata-zenu',7160,800,4),
('20', 'Atun-en-lata-zenu',7040,522,4),
('21', 'Aguacate-hass',1540,263,5),
('22', 'Manzana-verde',2960,645,5),
('23', 'Platano-maduro',4240,271,5),
('24', 'Ajo-malla-frescampo',2140,146,5),
('25', 'Naranja-tangelo',3040,279,5);
SET identity_insert PRODUCTO off;

select * from PRODUCTO;

--Realizar 2 facturas de venta por cliente
SET identity_insert FACTURA_VENTA on;
INSERT INTO FACTURA_VENTA(nFacturaV,fecha,iva,subtotal,total,idEmpleado_fk,idCliente_fk)VALUES
--cliente1
(1,'2022-08-11',0.12,120140,1345568,5,1),
(2,'2023-03-11',0.12,91280,1022336,4,1),
--cliente2
(3,'2022-10-15',0.08,66730,720684,8,2),
(4,'2023-01-12',0.05,86580,90909,12,2),
--cliente3
(5,'2022-08-22',0.02,158830,1620066,13,3),
(6,'2023-01-02',0.03,136775,14087825,4,3),
--cliente4
(7,'2022-10-26',0.01,79140,799314,6,4),
(8,'2023-01-17',0.04,107370,1116648,7,4),
--cliente5
(9,'2023-01-11',0.07,98570,1054699,8,5),
(10,'2023-03-01',0.20,68590,82308,2,5),
--cliente6
(11,'2023-01-11',0.22,107560,1312232,4,6),
(12,'2023-03-04',0.18,121970,1439246,1,6),
--cliente7
(13,'2022-12-15',0.10,283650,312015,9,7),
(14,'2023-01-15',0.15,259.380,298287,14,7),
--cliente8
(15,'2023-11-11',0.12,151580,1697696,15,8),
(16,'2023-01-15',0.18,185440,2188192,12,8),
--cliente9
(17,'2023-01-22',0.24,112725,139779,11,9),
(18,'2023-02-28',0.04,97960,1018784,6,9),
--cliente10
(19,'2023-05-25',0.05,127660,134043,5,10),
(20,'2023-12-18',0.09,123160,1342444,8,10);
SET identity_insert FACTURA_VENTA off;

select * from FACTURA_VENTA;

--Por cada venta minimo 4 registros
SET identity_insert PROD_FAC_V on;
INSERT INTO PROD_FAC_V(nFacturaV_fk,codP_fk,vTotal,cant)VALUES
--cliente1
--1
(1,'2',29500,10),--Coca-Cola-lata
(1,'8',29400,3),--Mantequilla-rama
(1,'19',35800,5),--Frijoles-en-lata-zenu
(1,'23',25440,6),--Platano-maduro

--2
(2,'1',31080,12),--Cerveza-Poker-lata
(2,'13',14060,2),--Pan-tajado-bimbo
(2,'10',17980,2),--Queso-Crema-Colanta
(2,'20',28160,4),--Atun-en-lata-zenu

--cliente2
--1
(3,'22',23680,8),--Manzana-verde
(3,'11',8190,6),--Galletas-chips-ahoy
(3,'17',25620,3),--Champiñones-en-lata-kari
(3,'21',9240,6),--Aguacate-hass

--2
(4,'14',13800,2),--Galletas-saltin-noel
(4,'12',9000 ,12),--Galletas-saladas
(4,'5',30080,8),--H2O-Lima-limon
(4,'9',33700,10),--Flan-Diety

--cliente3
--1
(5,'18',59250,5),--Sardinas-isabel
(5,'16',24520,4),--Aceitunas-alfresco-deshuesada
(5,'19',42960,6),--Frijoles-en-lata-zenu
(5,'24',32100,15),--Ajo-malla-frescampo

--2
(6,'3',61600,16),--Club-Colombia-lata
(6,'7',17325,3),--Leche-alqueria
(6,'6',10450,5),--Yogurt-alpina
(6,'18',47400,4),--Sardinas-isabel

--cliente4
--1
(7,'24',25680,12),--Ajo-malla-frescampo
(7,'4',12760,4),--Gatorade
(7,'15',19980,2),--Tortillas-bimbo
(7,'1',20720,8),--Cerveza-Poker-lata

--2
(8,'6',10450,5),--Yogurt-alpina
(8,'15',39960,4),--Tortillas-bimbo
(8,'25',6080,2),--Naranja-tangelo
(8,'23',50880,12),--Platano-maduro

--cliente5
--1
(9,'18',47400,4),--Sardinas-isabel
(9,'7',11550,2),--Leche-alqueria
(9,'17',34160,4),--Champiñones-en-lata-kari
(9,'11',5460,4),--Galletas-chips-ahoy

--2
(10,'16',30650,5),--Aceitunas-alfresco-deshuesada
(10,'19',21480,3),--Frijoles-en-lata-zenu
(10,'21',4620,3),--Aguacate-hass
(10,'22',11840,4),--Manzana-verde

--cliente6
--1
(11,'17',25620,20),--Champiñones-en-lata-kari
(11,'1',51800,20),--Cerveza-Poker-lata
(11,'6',20900,10),--Yogurt-alpina
(11,'21',9240,6),--Aguacate-hass

--2
(12,'18',59250,5),--Sardinas-isabel
(12,'19',7160,1),--Frijoles-en-lata-zenu
(12,'10',35960,4),--Queso-Crema-Colanta
(12,'8',19600,2),--Mantequilla-rama

--cliente7
--1
(13,'17',102480,12),--Champiñones-en-lata-kari
(13,'15',69930,7),--Tortillas-bimbo
(13,'24',34240,16),--Ajo-malla-frescampo
(13,'3',77000,20),--Club-Colombia-lata

--2
(14,'12',12600,14),--Galletas-saladas
(14,'18',82950,7),--Sardinas-isabel
(14,'9',10110,3),--Flan-Diety
(14,'17',153720,18),--Champiñones-en-lata-kari

--cliente8
--1
(15,'21',16940,11),--Aguacate-hass
(15,'9',47180,14),--Flan-Diety
(15,'17',68320,8),--Champiñones-en-lata-kari
(15,'4',19140,6),--Gatorade

--2
(16,'19',100240,14),--Frijoles-en-lata-zenu
(16,'22',14800,5),--Manzana-verde
(16,'12',1800,2),--Galletas-saladas
(16,'8',68600,7),--Mantequilla-rama

--cliente9
--1
(17,'7',28875,5),--Leche-alqueria
(17,'4',22330,7),--Gatorade
(17,'15',39960,4),--Tortillas-bimbo
(17,'21',21560,14),--Aguacate-hass

--2
(18,'22',53280,18),--Manzana-verde
(18,'25',15200,5),--Naranja-tangelo
(18,'4',6380,2),--Gatorade
(18,'7',23100,4),--Leche-alqueria

--cliente10
--1
(19,'1',20720,8),--Cerveza-Poker-lata
(19,'22',20720,7),--Manzana-verde
(19,'18',59250,5),--Sardinas-isabel
(19,'10',26970,3),--Queso-Crema-Colanta

--2
(20,'5',18800,5),--H2O-Lima-limon
(20,'8',39200,4),--Mantequilla-rama
(20,'12',1800,2),--Galletas-saladas
(20,'20',63360,9);--Atun-en-lata-zenu
SET identity_insert PROD_FAC_V off;

select * from PROD_FAC_V;

--Realizar 1 factura de compra por proveedor
INSERT INTO FACTURA_COMPRA(nFacturaC,fecha,iva,subtotal,total,idEmpleado_fk,idProveedor_fk)VALUES
--Proveedor1
('1','2022-10-11',0.12,6710,75152,1,5),
--Proveedor2
('2','2022-12-22',0.08,14765,159462,5,2),
--Proveedor3
('3','2023-01-02',0.04,17030,177112,9,10),
--Proveedor4
('4','2023-01-10',0.14,12.390,141246,10,6),
--Proveedor5
('5','2023-02-11',0.01,9090,91809,15,8),
--Proveedor6
('6','2023-02-18',0.19,6675,794325,13,9),
--Proveedor7
('7','2023-02-25',0.24,6560,81344,10,1),
--Proveedor8
('8','2023-02-28',0.40,10200,14280,9,7),
--Proveedor9
('9','2023-03-10',0.03,9090,93627,7,5),
--Proveedor10
('10','2023-03-13',0.01,9300,9393,4,2);

select * from FACTURA_COMPRA;

--Por cada compra minimo 2 registros
INSERT INTO PROD_FAC_C(nFacturaC_fk,codP_fk,costo,cant,vTotal)VALUES
--proveedor1
(1,'2',2950,150,442500),--Coca-Cola-lata
(1,'5',3760,52,195520),--H2O-Lima-limon

--proveedor2
(2,'7',5775,69,398475),--Leche-alqueria
(2,'10',8990,75,674250),--Queso-Crema-Colanta

--proveedor3
(3,'15',9990,88,879120),--Tortillas-bimbo
(3,'20',7040,47,330880),--Atun-en-lata-zenu

--proveedor4
(4,'8',9800,74,725200),--Mantequilla-rama
(4,'1',2590,67,173530),--Cerveza-Poker-lata

--proveedor5
(5,'16',6130,77,472010),--Aceitunas-alfresco-deshuesada
(5,'22',2960,82,242720),--Manzana-verde

--proveedor6
(6,'7',5775,66,381150),--Leche-alqueria
(6,'12',900,95,85500),--Galletas-saladas

--proveedor7
(7,'9',3370,82,276340),--Flan-Diety
(7,'4',3190,59,188210),--Gatorade

--proveedor8
(8,'25',3040,102,310080),--Naranja-tangelo
(8,'19',7160,92,658720),--Frijoles-en-lata-zenu

--proveedor9
(9,'22',2960,105,310800),--Manzana-verde
(9,'16',6130,99,606870),--Aceitunas-alfresco-deshuesada

--proveedor10
(10,'24',2140,97,207580),--Ajo-malla-frescampo
(10,'19',7160,108,773280);--Frijoles-en-lata-zenu

select * from PROD_FAC_C;