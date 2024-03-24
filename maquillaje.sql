
/*Creación de tablas*/

CREATE TABLE  Productos (ID_Producto int, Nom_producto varchar (100), Marca varchar (50), Categoria_prod varchar (50), Precio int);

CREATE TABLE  Clientes (ID_cliente int, Nombre varchar (50), Apellido varchar (50), Fecha_nacimiento DATE, Dirección varchar (100), Ciudad varchar (50), País varchar (50));

CREATE TABLE Datos_venta (ID_Venta int,	ID_Cliente int, Fecha_venta date, Hora_venta time);

CREATE TABLE Detalles_venta (ID_Venta int, ID_producto int, Cantidad_vendida int);

/*Alter tables*/

ALTER TABLE `ventas_maquillaje`.`clientes` 
CHANGE COLUMN `ID_cliente` `ID_cliente` INT(11) NOT NULL ,
ADD PRIMARY KEY (`ID_cliente`);

ALTER TABLE `ventas_maquillaje`.`datos_venta`
CHANGE COLUMN `ID_Venta`  `ID_Venta` INT (11) NOT NULL,
ADD PRIMARY KEY (`ID_Venta`);

ALTER TABLE `ventas_maquillaje`.`productos`
CHANGE COLUMN `ID_Producto`  `ID_Producto` int (11) not null,
ADD PRIMARY KEY (`ID_Producto`);

/*Datos*/

INSERT INTO clientes (ID_cliente, Nombre, Apellido, Fecha_nacimiento, Dirección, Ciudad, País)
VALUES (1,"Ana","García",'1996-07-27',"Calle 123","Ciudad de México","México"),
(2,"Juana","López",'1982-03-25',"Av. Libertad 456","Barcelona","España"),
(3,"Sofía","Martínez",'1990-11-10',"Carrera 7 # 12-34","Bogotá","Colombia"),
(4,"Brandon","Rodríguez",'1978-05-20',"123 Elm Street","Nueva York","Estados Unidos"),
(5,"Mary","Grenger",'1985-09-08',"456 Oak Avenue","Los Angeles","Estados Unidos"),
(6,"Carla","Gómez",'1973-12-01',"Rua das Flores 789","Sao Paulo","Brasil"),
(7,"Laura","Díaz",'1987-07-18',"Rua dos Girassóis 101","Rio de Janeiro","Brasil"),
(8,"Daniela","Martins",'1980-02-28',"Baker Street 221B","London","Inglaterra"),
(9,"Elena","Djon",'1995-04-12',"Rue de la Paix 17","Paris","Francia"),
(10,"Pauline","Pugh",'1983-10-30',"Kurfürstendamm 123","Berlín","Alemania"),
(11,"Alejandra","Sánchez",'1977-06-05',"Gran Vía 890","Madrid","España"),
(12,"Renata","Gutiérrez",'1992-08-22',"Calle Salvador 221B","Ciudad de México","México"),
(13,"Fernanda","Lima",'1988-11-15',"Rua das Margaridas 55","Sao Paulo","Brasil"),
(14,"Dua","Silva",'1976-03-29',"Baker Street 221B","Ciudad de México","México"),
(15,"Carolina","Santos",'1984-09-03',"Avenida de Mayo 543","Buenos Aires","Argentina"),
(16,"Gabriela","Almeida",'1981-07-14',"Rua da Praia 987","Rio de Janeiro","Brasil"),
(17,"Andrea","Vargas",'1993-02-10',"Carrera 15 # 30-20","Medellín","Colombia"),
(18,"Jaylin","Castro",'1979-12-27',"123 Maple Avenue","California","Estados Unidos"),
(19,"Isabel","Andrade",'1986-05-08',"Rua das Palmeiras 222","Sao Paulo","Brasil"),
(20,"Luciana","Ferreira",'1974-08-19',"Av. Paulista 1234","Sao Paulo","Brasil"),
(21,"Nataly","González",'1990-04-03',"Calle 78 # 56-12","Bogotá","Colombia"),
(22,"Santiago","Moreno",'1987-11-28',"Calle de las Rosas 34","Ciudad de México","México"),
(23,"Valentina","Gómez",'1982-06-17',"Carrera 20 # 40-30","Medellín","Colombia"),
(24,"Mariano","Martínez",'1977-09-09',"Av. de Mayo 543","Buenos Aires","Argentina"),
(25,"Juliana","Pereira",'1985-02-24',"Rua das Orquídeas 987","Ciudad de México","México"),
(26,"Mathew","Dominguez",'1991-07-07',"123 Main Street","Nueva York","Estados Unidos"),
(27,"Paula","Duarte",'1976-10-01',"Rua das Margaridas 55","Sao Paulo","Brasil"),
(28,"Greici","Dust",'1988-04-20',"Gran Vía 890","Ciudad de México","México"),
(29,"Camila","Alvarez",'1993-12-18',"Carrera 15 # 30-20","Cali","Colombia"),
(30,"Lucía","González",'1979-05-13',"Baker Street 221B","Londres","Inglaterra"),
(31,"Fabiola","Lopez",'1984-08-06',"Av. Paulista 1234","Sao Paulo","Brasil"),
(32,"Agustina","Fernández",'1990-02-09',"Rua da Praia 987","Rio de Janeiro","Brasil"),
(33,"Marisol","Sosa",'1973-11-25',"Rua dos Girassóis 101","Rio de Janeiro","Brasil"),
(34,"Constanza","Rodríguez",'1986-06-16',"Avenida de Mayo 543","Buenos Aires","Argentina"),
(35,"Krista","Mendoza",'1981-03-19',"Av. Libertad 456","Barcelona","España"),
(36,"Marcela","Morales",'1995-09-05',"Carrera 7 # 12-34","Bogotá","Colombia"),
(37,"Mildred","Hernández",'1978-04-28',"Rua das Flores 789","Sao Paulo","Brasil"),
(38,"Ginebra","Pérez",'1983-01-11',"Calle de las Rosas 34","Madrid","España"),
(39,"Martína","Suárez",'1975-10-24',"Rua das Orquídeas 987","Rio de Janeiro","Brasil"),
(40,"Mallory","Sprouse",'1992-07-08',"123 Elm Street","Nueva York","Estados Unidos"),
(41,"Benjamín","Gómez",'1990-04-18',"Laguna del Sol","Ciudad de México","México"),
(42,"Victoria","Velez",'1989-12-13',"Calle 123","Madrid","España"),
(43,"Felipe","Alonso",'1989-09-13',"Calle de las Rosas 34","Madrid","España"),
(44,"Bianca","Castro",'1994-02-06',"Rua da Praia 987","Rio de Janeiro","Brasil"),
(45,"Simón","Vega",'1976-07-31',"Carrera 15 # 30-20","Bogotá","Colombia"),
(46,"Carmen","Rojas",'1981-11-14',"Rua das Margaridas 55","Sao Paulo","Brasil"),
(47,"Leonardo","Ortega",'1990-06-27',"Gran Vía 890","Madrid","España"),
(48,"Marilyn","Navy",'1978-03-10',"123 Maple Avenue","California","Estados Unidos"),
(49,"Sofia","García",'1990-05-15',"Calle 123","Madrid","España"),
(50,"Valentina","Martínez",'1982-09-20',"Av. Libertad 456","Barcelona","España"),
(51,"Camila","Rodríguez",'1995-03-10',"Carrera 7 # 12-34","Bogotá","Colombia"),
(52,"Annie","Dayz",'1988-11-25',"123 Elm Street","Nueva York","Estados Unidos"),
(53,"Isabella","Fleur",'1983-07-18',"456 Oak Avenue","Los Angeles","Estados Unidos"),
(54,"Lucía","Hernández",'1977-12-30',"Rua das Flores 789","São Paulo","Brasil"),
(55,"Sofía","Sánchez",'1989-02-05',"Rua dos Girassóis 101","Rio de Janeiro","Brasil"),
(56,"Valerie","Spencer",'1992-06-08',"Baker Street 221B","London","Inglaterra"),
(57,"Gabriela","Fernández",'1985-10-12',"Rue de la Paix 17","Paris","Francia"),
(58,"Emilia","Pérez",'1980-04-24',"Kurfürstendamm 123","Berlín","Alemania"),
(59,"Carolina","Gómez",'1993-08-27',"Gran Vía 890","Madrid","España"),
(60,"Lauren","Brook",'1978-02-11',"Baker Street 221B","Londres","Inglaterra"),
(61,"Martina","Sosa",'1984-07-19',"Rua das Margaridas 55","São Paulo","Brasil"),
(62,"Juliete","Maind",'1990-01-02',"Baker Street 221B","Londres","Inglaterra"),
(63,"Valentina","Lima",'1987-06-21',"Rua das Orquídeas 987","Río de Janeiro","Brasil"),
(64,"Renata","Díaz",'1980-10-14',"Avenida de Mayo 543","Buenos Aires","Argentina"),
(65,"Clara","Silva",'1994-12-17',"Rua da Praia 987","Río de Janeiro","Brasil"),
(66,"Catherine","Milles",'1976-07-28',"123 Maple Avenue","Los Angeles","Estados Unidos"),
(67,"Martina","Sánchez",'1981-11-07',"Rua das Palmeiras 222","São Paulo","Brasil"),
(68,"Camila","González",'1984-06-02',"Av. Paulista 1234","São Paulo","Brasil");

INSERT INTO clientes (ID_cliente, Nombre, Apellido, Fecha_nacimiento, Dirección, Ciudad, País)
VALUES (69,"Natalia","Torres",'1992-03-17',"Calle 78 # 56-12","Bogotá","Colombia"),
(70,"Isabella","Méndez",'1977-08-09',"Calle de las Rosas 34","Ciudad de México","México"),
(71,"Bianca","Martínez",'1983-02-13',"Carrera 20 # 40-30","Bogotá","Colombia"),
(72,"Valentina","Guerrero",'1974-10-26',"Av. de Mayo 543","Buenos Aires","Argentina"),
(73,"Emma","Sosa",'1988-07-01',"Rua das Orquídeas 987","Río de Janeiro","Brasil"),
(74,"Sophie","Smith",'1995-09-03',"123 Main Street","Nueva York","Estados Unidos"),
(75,"Victoria","García",'1979-01-16',"Rua das Margaridas 55","São Paulo","Brasil"),
(76,"Carolina","Muñoz",'1982-04-19',"Gran Vía 890","Madrid","España"),
(77,"Ana","Rodríguez",'1987-11-22',"Carrera 15 # 30-20","Bogotá","Colombia"),
(78,"Valentina","Castillo",'1975-05-28',"Baker Street 221B","Londres","Inglaterra"),
(79,"Martina","Flores",'1990-08-03',"Av. Paulista 1234","São Paulo","Brasil"),
(80,"María","Torres",'1976-03-06',"Rua dos Girassóis 101","Río de Janeiro","Brasil"),
(81,"Julieta","Ramírez",'1984-11-09',"Avenida de Mayo 543","Buenos Aires","Argentina"),
(82,"Sofía","Martínez",'1981-06-14',"Av. Libertad 456","Barcelona","España"),
(83,"Martina","López",'1993-05-07',"Carrera 7 # 12-34","Ciudad de México","México"),
(84,"Camila","Díaz",'1978-02-20',"Rua das Flores 789","São Paulo","Brasil"),
(85,"Renata","Sánchez",'1985-07-25',"Calle de las Rosas 34","Madrid","España"),
(86,"Natalia","González",'1973-09-18',"Rua da Praia 987","Río de Janeiro","Brasil"),
(87,"Valentina","Castro",'1990-04-05',"Carrera 15 # 30-20","Bogotá","Colombia"),
(88,"Isabella","Méndez",'1977-01-08',"Av. Paulista 1234","São Paulo","Brasil"),
(89,"Julieta","Flores",'1982-08-12',"Rua das Orquídeas 987","Río de Janeiro","Brasil"),
(90,"Renata","Hayat",'1979-06-15',"123 Elm Street","Nueva York","Estados Unidos"),
(91,"Clara","Duoa",'1994-03-28',"Rua dos Girassóis 101","Río de Janeiro","Brasil"),
(92,"Sofia","Valencia",'1990-05-15',"Calle 123","Madrid","España"),
(93,"Mara","Robles",'1982-09-20',"Av. Libertad 456","Barcelona","España"),
(94,"Camila","Rodríguez",'1995-03-10',"Carrera 7 # 12-34","Bogotá","Colombia"),
(95,"Ana","Brown",'1988-11-25',"123 Elm Street","New York","Estados Unidos"),
(96,"Lucas","Bass",'1983-07-18',"456 Oak Avenue","Los Angeles","Estados Unidos"),
(97,"Lucía","Hernández",'1977-12-30',"Rua das Flores 789","São Paulo","Brasil"),
(98,"Renata","Sánchez",'1989-02-05',"Rua dos Girassóis 101","Rio de Janeiro","Brasil"),
(99,"Charles","Martins",'1992-06-08',"Baker Street 221B","Londres","Reino Unido"),
(100,"Gabrielle","Durand",'1985-10-12',"Rue de la Paix 17","París","Francia"),
(101,"Heidi","Weber",'1980-04-24',"Kurfürstendamm 123","Berlín","Alemania"),
(102,"Sofia","García",'1990-05-15',"Calle 123","Madrid","España"),
(103,"Valentina","Parra",'1982-09-20',"Av. Libertad 456","Barcelona","España"),
(104,"Camila","Rodríguez",'1995-03-10',"Carrera 7 # 12-34","Bogotá","Colombia"),
(105,"Anabelle","Stone",'1988-11-25',"123 Elm Street","New York","Estados Unidos"),
(106,"Lorelei","Hook",'1983-07-18',"456 Oak Avenue","Los Angeles","Estados Unidos"),
(107,"Lucía","Hernández",'1977-12-30',"Rua das Flores 789","São Paulo","Brasil"),
(108,"Sophia","Sánchez",'1989-02-05',"Rua dos Girassóis 101","Rio de Janeiro","Brasil"),
(109,"Martha","Jones",'1992-06-08',"Baker Street 221B","Londres","Reino Unido"),
(110,"Jo","Pure",'1985-10-12',"Rue de la Paix 17","París","Francia"),
(111,"Emilie","Meyer",'1980-04-24',"Kurfürstendamm 123","Berlín","Alemania"),
(112,"Carolina","Gómez",'1993-08-27',"Gran Vía 890","Madrid","España"),
(113,"Loona","James",'1978-02-11',"Baker Street 221B","Londres","Reino Unido"),
(114,"Martina","Sosa",'1984-07-19',"Rua das Margaridas 55","São Paulo","Brasil"),
(115,"Julliete","Abrahams",'1990-01-02',"Baker Street 221B","Londres","Reino Unido"),
(116,"Nur","Lima",'1987-06-21',"Rua das Orquídeas 987","Río de Janeiro","Brasil"),
(117,"Renata","Díaz",'1980-10-14',"Avenida de Mayo 543","Buenos Aires","Argentina"),
(118,"Clara","Silva",'1994-12-17',"2Rua da Praia 987","Río de Janeiro","Brasil"),
(119,"Luisa","Jaime",'1990-11-11',"Santander 97 ","Ciudad de México","México"),
(120,"Marco","Ibañez",'1988-08-16',"Mixcoac 167","Ciudad de México","México");

INSERT INTO productos (ID_Producto, Nom_producto, Marca, Categoría_prod, Precio)
VALUES (101,"Boft eaze drop´lit  all over glow enhancer travel size","Fenty Beauty","Base de Maquillaje",490),
(202,"studio radiance serum-powered","Mac Cosmetics","Base de Maquillaje",799),
(303,"backstage face & body foundation (base para el rostro y cuerpo)","Dior Backstage","Base de Maquillaje",990),
(404,"anti-blemish solutions™ liquid makeup","Clinique","Base de Maquillaje",799),
(505,"teint idole ultra wear foundation","Lancome","Base de Maquillaje",1020),
(606,"porefessional primer cny edition","Benefit Cosmetics","Primer de rostro",780),
(707,"essential pieces full-size","Smashbox","Primer de rostro",775),
(808,"all about the blur primer","Stila","Primer de rostro",830),
(909,"dior forever glow veil","Dior","Primer de rostro",1250),
(1010,"nu dewy mist","Yves Saint Laurent","Primer de rostro",780),
(1111,"positive light silky touch highlighter","Rare Beauty ","Iluminador",610),
(1212,"positive light liquid luminizer","Rare Beauty ","Iluminador",640),
(1313,"twinkle beach","Benefit Cosmetics","Iluminador",595),
(1414,"stay naked threesome","Urban Decay","Iluminador",890),
(1515,"killawatt freestyle highlighter","Fenty Beauty","Iluminador",825),
(1616,"prisme libre blush","Givenchy","Blush",910),
(1717,"mini box o´powder blush","Benefit Cosmetics","Blush",395),
(1818,"soft pinch liquid blush","Rare Beauty","Blush",615),
(1919,"floratint","Benefit Cosmetics","Blush",520),
(2020,"stay vulnerable melting blush","Rare Beauty","Blush",565),
(2121,"perfect strokes universal volumizing mascara","Rare Beauty","Mascara de pestañas",285),
(2222,"better than sex waterproof mascara","Too Faced","Mascara de pestañas",650),
(2323,"badgal bang! waterproof","Benefit Cosmetics","Mascara de pestañas",650),
(2424,"lash idôle mascara","Lancôme","Mascara de pestañas",380),
(2525,"mac stack waterproof","Mac Cosmetics","Mascara de pestañas",589),
(2626,"colorful eyeshadow","Sephora Collection","Sombra de ojos",190),
(2727,"nude obsessions eyeshadow palette","Huda Beauty","Sombra de ojos",790),
(2828,"18w natural wonder artistry palette","Morphe","Sombra de ojos",620),
(2929,"24/7 moondust eyeshadow","Urban Decay","Sombra de ojos",383),
(3030,"nudies matte blush & bronze","Nudestix","Sombra de ojos",850),
(3131,"icon liquid lipstick","Fenty Beauty","Labial",665),
(3232,"lip soufflé matte lip cream","Rare Beauty","Labial",535),
(3333,"macximal silky matte lipstick","Mac Cosmetics","Labial",499),
(3434,"almost lipstick","Clinique","Labial",499),
(3535,"stunna lip paint longwear fluid lip color","Fenty Beauty","Labial",640),
(3636,"soft pinch tinted lip oil","Rare Beauty","Gloss",535),
(3737,"gloss bomb heat lipgloss","Fenty Beauty","Gloss",575),
(3838,"dior addict lip maximizer","Dior","Gloss",880),
(3939,"outrageous plump lip gloss","Sephora Collection","Gloss",320),
(4040,"squirt balm plumping gloss stick","Mac Cosmetics","Gloss",479),
(4141,"precisely my brow detailer","Benefit Cosmetics","Cejas",620),
(4242,"multi-peptide lash and brow serum ","The Ordinary","Cejas",415),
(4343,"precisely my brow wax","Benefit Cosmetics","Cejas",680),
(4444,"gimme brow + mini","Benefit Cosmetics","Cejas",360),
(4545,"24-hr brow setter shaping & setting gel","Benefit Cosmetics","Cejas",360),
(4646,"warm wishes effortless bronzer stick","Rare Beauty","Bronceador",665),
(4747,"mini box o´ powder hoola ","Benefit Cosmetics","Bronceador",450),
(4848,"m2 sun & done smooth-gliding bronzer stick ","Morphe","Bronceador",330),
(4949,"box o´ powder bronceador","Benefit Cosmetics","Bronceador",880),
(5050,"cheeks out freestyle cream bronzer ","Fenty Beauty","Bronceador",795);

INSERT INTO datos_venta(ID_Venta, ID_Cliente, Fecha_venta, Hora_venta)
VALUES(112,1,'2024-07-20','10:30:00'),
(76,2,'2023-01-20','16:20:00'),
(1,3,'2023-01-05','10:30:00'),
(40,4,'2023-07-20','10:55:00'),
(100,5,'2024-05-20','09:40:00'),
(11,6,'2023-02-25','11:05:00'),
(44,7,'2023-08-10','14:25:00'),
(88,8,'2024-03-20','15:00:00'),
(52,9,'2023-09-20','14:55:00'),
(104,10,'2024-06-10','15:15:00'),
(7,11,'2023-02-05','08:40:00'),
(64,12,'2023-11-20','08:55:00'),
(92,13,'2024-04-10','13:20:00'),
(35,14,'2023-06-25','08:45:00'),
(20,15,'2023-04-10','11:50:00'),
(84,16,'2024-03-01','12:45:00'),
(68,17,'2023-12-10','17:20:00'),
(60,18,'2023-11-01','15:40:00'),
(31,19,'2023-06-05','17:10:00'),
(96,20,'2024-05-01','14:40:00'),
(72,21,'2023-12-30','08:40:00'),
(16,22,'2023-03-20','16:30:00'),
(56,23,'2023-10-10','13:20:00'),
(108,24,'2024-07-01','11:35:00'),
(27,25,'2023-05-15','10:15:00'),
(48,26,'2023-09-01','13:50:00'),
(80,27,'2024-02-10','08:25:00'),
(4,28,'2023-01-20','14:20:00'),
(34,29,'2023-06-20','16:20:00'),
(19,30,'2023-04-05','15:10:00'),
(22,31,'2023-04-20','09:35:00'),
(12,32,'2023-03-01','17:15:00'),
(45,33,'2023-08-15','11:00:00'),
(23,34,'2023-04-25','17:05:00'),
(116,35,'2024-08-10','15:10:00'),
(117,36,'2024-08-15','09:25:00'),
(118,37,'2024-08-20','12:40:00'),
(119,38,'2024-08-25','16:30:00'),
(24,39,'2023-05-01','12:20:00'),
(120,40,'2024-09-01','08:00:00'),
(77,42,'2024-01-25','10:50:00'),
(113,43,'2024-07-25','13:50:00'),
(8,45,'2023-02-10','15:25:00'),
(105,46,'2024-06-15','10:45:00'),
(53,47,'2023-09-25','09:10:00'),
(89,48,'2024-03-25','11:20:00'),
(17,49,'2023-03-25','08:55:00'),
(41,50,'2023-07-25','16:10:00'),
(101,51,'2024-05-25','12:00:00'),
(65,52,'2023-11-25','16:00:00'),
(28,53,'2023-05-20','15:55:00'),
(85,54,'2024-03-05','14:55:00'),
(73,55,'2024-01-05','12:10:00'),
(2,56,'2023-01-10','11:15:00'),
(57,57,'2023-10-15','17:25:00'),
(36,58,'2023-07-01','11:20:00'),
(93,59,'2024-04-15','17:05:00'),
(49,60,'2023-09-05','16:15:00'),
(21,61,'2023-04-15','14:00:00'),
(97,62,'2024-05-05','09:10:00'),
(61,63,'2023-11-05','09:05:00'),
(69,64,'2023-12-15','09:15:00'),
(32,65,'2023-06-10','09:30:00'),
(81,66,'2024-02-15','11:55:00'),
(94,67,'2024-04-20','08:30:00'),
(90,68,'2024-04-01','16:10:00'),
(13,69,'2023-03-05','09:20:00');

INSERT INTO datos_venta(ID_Venta, ID_Cliente, Fecha_venta, Hora_venta)
VALUES (25,70,'2023-05-05','16:45:00'),
(74,71,'2024-01-10','14:30:00'),
(5,72,'2023-01-25','16:55:00'),
(54,73,'2023-10-01','16:40:00'),
(46,74,'2023-08-20','17:00:00'),
(37,75,'2023-07-05','14:35:00'),
(78,76,'2024-02-01','13:15:00'),
(58,77,'2023-10-20','08:50:00'),
(109,78,'2024-07-05','14:45:00'),
(66,79,'2023-12-01','10:45:00'),
(42,80,'2023-08-01','12:40:00'),
(50,81,'2023-09-10','08:20:00'),
(82,82,'2024-02-20','15:10:00'),
(14,83,'2023-03-10','14:45:00'),
(33,84,'2023-06-15','12:50:00'),
(62,85,'2023-11-10','11:30:00'),
(86,86,'2024-03-10','08:00:00'),
(70,87,'2023-12-20','11:45:00'),
(26,88,'2023-05-10','08:30:00'),
(6,89,'2023-02-01','12:10:00'),
(91,90,'2024-04-05','09:45:00'),
(75,91,'2024-01-15','09:35:00'),
(18,92,'2023-04-01','10:40:00'),
(38,93,'2023-07-10','09:00:00'),
(9,94,'2023-02-15','10:50:00'),
(83,95,'2024-02-25','09:30:00'),
(51,96,'2023-09-15','11:35:00'),
(114,97,'2024-08-01','08:15:00'),
(59,98,'2023-10-25','12:15:00'),
(106,99,'2024-06-20','12:55:00'),
(63,100,'2023-11-15','14:50:00'),
(3,101,'2023-01-15','09:45:00'),
(43,102,'2023-08-05','08:15:00'),
(15,104,'2023-03-15','12:00:00'),
(67,105,'2023-12-05','13:05:00'),
(29,106,'2023-05-25','11:40:00'),
(110,107,'2024-07-10','09:20:00'),
(55,108,'2023-10-05','10:05:00'),
(39,109,'2023-07-15','15:30:00'),
(102,109,'2024-06-01','14:20:00'),
(98,110,'2024-05-10','11:50:00'),
(87,111,'2024-03-15','10:30:00'),
(47,112,'2023-08-25','10:25:00'),
(79,113,'2024-02-05','17:00:00'),
(95,114,'2024-04-25','10:55:00'),
(71,115,'2023-12-25','15:20:00'),
(99,116,'202305-15','16:25:00'),
(10,117,'2023-02-20','13:30:00'),
(107,118,'2023-06-25','08:10:00'),
(111,119,'2024-07-15','16:00:00'),
(103,120,'2024-06-05','09:30:00'),
(30,121,'2023-06-01','13:00:00'),
(115,122,'2024-08-05','10:50:00');

INSERT INTO detalles_venta (ID_Venta, ID_producto, Cantidad_vendida)
VALUES (112,101,1),
(76,202,1),
(1,303,1),
(40,404,2),
(100,505,1),
(11,606,1),
(44,1616,1),
(88,1717,1),
(52,1818,1),
(104,1919,1),
(7,2020,2),
(64,2121,1),
(92,2222,1),
(35,2323,1),
(20,2424,1),
(84,707,2),
(68,808,1),
(60,909,1),
(31,1010,3),
(96,1111,1),
(72,1212,2),
(16,1313,1),
(56,1414,1),
(108,1515,1),
(27,2525,1),
(48,2626,2),
(80,2727,3),
(4,2828,1),
(34,4040,1),
(19,4141,1),
(22,4242,1),
(12,4343,1),
(45,4444,1),
(23,4545,1),
(116,4646,2),
(117,4747,1),
(118,4848,1),
(119,4949,1),
(24,5050,1),
(120,2929,1),
(77,3030,1),
(113,3131,2),
(8,3232,1),
(105,3333,1),
(53,3434,3),
(89,3535,2),
(17,3636,1),
(41,3737,1),
(101,3838,1),
(65,3939,1),
(28,505,1),
(85,606,1),
(73,1616,1),
(2,1717,1),
(57,1818,1),
(36,707,1),
(93,808,1),
(49,909,1),
(21,1010,1),
(97,1111,1),
(61,1212,1),
(69,1313,1),
(32,4242,1),
(81,4343,1),
(94,4444,2),
(90,4545,1),
(13,4646,1),
(25,4747,1),
(74,4848,1),
(5,5050,1),
(54,2929,1),
(46,3030,1),
(37,3131,1),
(78,3232,1),
(58,3333,1),
(109,3434,1),
(66,3535,1),
(42,1717,1),
(50,1818,1),
(82,1919,1),
(14,2020,1),
(33,2121,1),
(62,2222,1),
(86,2323,1),
(70,2424,1),
(26,707,1),
(6,808,2),
(91,909,1),
(75,4949,1),
(18,5050,1),
(38,2929,1),
(9,3030,1),
(83,3131,1),
(51,3232,1),
(114,3333,1),
(59,3434,1),
(106,3535,1),
(63,3636,1),
(3,3737,1),
(43,3838,1),
(15,2222,1),
(67,2323,3),
(29,2424,1),
(110,707,1),
(55,808,1),
(39,909,1),
(102,1010,1),
(98,1111,1),
(87,1212,1),
(47,1313,1),
(79,1414,1),
(95,1515,2),
(71,2525,1),
(99,2626,1),
(10,2727,1),
(107,2828,1),
(111,4040,1),
(103,4141,1),
(30,4242,3),
(115,4343,1),
(52,707,1),
(104,808,1),
(7,909,1),
(64,3333,1),
(92,3434,1),
(35,3535,1),
(80,3636,1),
(4,1717,1),
(34,1818,1),
(19,707,1),
(22,808,1),
(12,1515,1),
(45,2525,1),
(23,2626,1),
(116,2727,1),
(117,4949,1),
(118,5050,1),
(119,2929,1),
(8,3030,2),
(105,3131,1),
(53,1313,1),
(89,1414,1),
(17,101,1),
(41,202,1),
(101,303,1),
(65,4040,1),
(28,4141,1),
(85,3131,1),
(73,2020,1),
(2,2828,1),
(57,4040,1);

/*Creación de uniones*/

SELECT distinct clientes.ID_cliente, Clientes.Nombre, clientes.Apellido, Clientes.Fecha_nacimiento, Clientes.Dirección, Clientes.Ciudad, Clientes.País, datos_venta.ID_Venta, datos_venta.Fecha_venta, datos_venta.Hora_venta
FROM ventas_maquillaje.clientes 
INNER JOIN ventas_maquillaje.datos_venta 
ON clientes.ID_cliente=datos_venta.ID_Cliente;

SELECT DISTINCT datos_venta.ID_Venta, datos_venta.ID_Cliente, datos_venta.Fecha_venta, datos_venta.Hora_venta, detalles_venta.ID_producto, detalles_venta.Cantidad_vendida
FROM ventas_maquillaje.datos_venta
INNER JOIN ventas_maquillaje.detalles_venta 
ON datos_venta.ID_Venta = detalles_venta.ID_Venta;

SELECT DISTINCT productos.ID_Producto, productos.Nom_producto, productos.Marca, productos.Categoría_prod, productos.Precio, detalles_venta.ID_Venta, detalles_venta.Cantidad_vendida
FROM ventas_maquillaje.productos
INNER JOIN ventas_maquillaje.detalles_venta
ON productos.ID_Producto=detalles_venta.ID_producto;

/*Analisis*/

/* PRODUCTOS*/

/*Producto más vendido en general*/

SELECT DISTINCT productos.ID_Producto, productos.Nom_producto, productos.Marca, productos.Categoría_prod, SUM(detalles_venta.Cantidad_vendida) AS Total_Producto
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY productos.ID_Producto
ORDER BY Total_Producto DESC;

/*producto menos vendido en general*/
SELECT DISTINCT productos.ID_Producto, productos.Nom_producto, productos.Marca, productos.Categoría_prod, SUM(detalles_venta.Cantidad_vendida) AS Total_Producto
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY productos.ID_Producto
ORDER BY Total_Producto;

/*Producto más vendido en 2023 y 2024*/ 
SELECT year(Fecha_venta) AS AÑO, productos.ID_Producto, productos.Nom_producto, productos.Marca, productos.Categoría_prod, SUM(detalles_venta.Cantidad_vendida) AS Total_Producto
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY YEAR(Fecha_venta)
ORDER BY Total_Producto;

/*VENTAS*/

/*Ventas totales*/
SELECT DISTINCT  SUM(productos.Precio) AS Ventas_Totales
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta;

/*Ventas totales en 2023 y 2024 ordenado por fecha*/

SELECT DISTINCT  datos_Venta.Fecha_Venta, SUM(productos.Precio) AS Ventas_Totales
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY fecha_venta
ORDER BY Fecha_venta;

/*Ventas totales por año*/

SELECT YEAR(Fecha_venta) AS AÑO, SUM(detalles_venta.cantidad_vendida * productos.precio) AS Ventas_pormesaño
FROM ventas_maquillaje.detalles_venta
INNER JOIN  datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
INNER JOIN productos ON detalles_venta.ID_producto=productos.ID_Producto
GROUP BY YEAR(Fecha_venta)
ORDER BY año ASC;

/*Ventas por mes por año*/

SELECT MONTH(Fecha_venta) AS MES, YEAR(Fecha_venta) AS AÑO, COUNT(*) AS Ventas_pormesaño
FROM ventas_maquillaje.datos_venta
GROUP BY MONTH(Fecha_venta), YEAR(Fecha_venta)
ORDER BY año ASC, mes ASC;

/*Fecha en la que más se vendió*/
SELECT DISTINCT  datos_Venta.Fecha_Venta, SUM(productos.Precio) AS Ventas_Totales
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY fecha_venta
ORDER BY Ventas_Totales DESC
LIMIT 1 ;

/*Fecha en la que menos se vendió*/
SELECT DISTINCT  datos_Venta.Fecha_Venta, SUM(productos.Precio) AS Ventas_Totales
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY fecha_venta
ORDER BY Ventas_Totales ASC;

/*MARCA*/
/*de que marca hay más productos */

SELECT DISTINCT Marca, COUNT(Nom_producto) as Total_marca
FROM ventas_maquillaje.productos
group by  Marca
ORDER BY Total_Marca DESC;

/*de que marca hay menos productos */

SELECT DISTINCT Marca, COUNT(Nom_producto) as Total_marca
FROM ventas_maquillaje.productos
group by  Marca
ORDER BY Total_Marca ;

/*marca más vendida*/

SELECT productos.Marca, SUM(detalles_venta.Cantidad_vendida) AS Total_Vendido
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
GROUP BY productos.Marca
ORDER BY Total_Vendido DESC;

/*marca menos vendida*/

SELECT productos.Marca, SUM(detalles_venta.Cantidad_vendida) AS Total_Vendido
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
GROUP BY productos.Marca
ORDER BY Total_Vendido ASC

/*Marca más vendida en cada año*/

SELECT YEAR(Fecha_Venta)  AS AÑO, productos.Marca, SUM(detalles_venta.Cantidad_vendida) AS Total_Vendido
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY YEAR(Fecha_Venta), productos.Marca
having AÑO ="2023" 
ORDER BY Total_Vendido DESC;

SELECT YEAR(Fecha_Venta)  AS AÑO, productos.Marca, SUM(detalles_venta.Cantidad_vendida) AS Total_Vendido
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY YEAR(Fecha_Venta), productos.Marca
having AÑO ="2024"
ORDER BY Total_Vendido DESC;

/*Marca menos vendida en cada año*/

SELECT YEAR(Fecha_Venta)  AS AÑO, productos.Marca, SUM(detalles_venta.Cantidad_vendida) AS Total_Vendido
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY YEAR(Fecha_Venta), productos.Marca
having AÑO ="2023"
ORDER BY Total_Vendido ASC;

SELECT YEAR(Fecha_Venta)  AS AÑO, productos.Marca, SUM(detalles_venta.Cantidad_vendida) AS Total_Vendido
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
GROUP BY YEAR(Fecha_Venta), productos.Marca
having AÑO ="2024"
ORDER BY Total_Vendido ASC;

/*Ticket más alto y detalles*/

SELECT DISTINCT  detalles_venta.ID_Venta, SUM(productos.precio) as Total_ventas
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
GROUP BY ID_Venta
ORDER BY Total_ventas DESC;

SELECT DISTINCT  detalles_venta.ID_Venta, detalles_venta.ID_Producto, productos.Nom_producto, productos.Marca, productos.Categoría_prod, productos.precio
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
WHERE ID_Venta=101;

/*Ticket más bajo y detalles*/

SELECT DISTINCT  detalles_venta.ID_Venta, SUM(productos.precio) as Total_ventas
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
GROUP BY ID_Venta
ORDER BY Total_ventas ASC;

SELECT DISTINCT  detalles_venta.ID_Venta, detalles_venta.ID_Producto, productos.Nom_producto, productos.Marca, productos.Categoría_prod, productos.precio
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
WHERE ID_Venta=48;

/*Categoría de maquillaje más vendida*/

SELECT DISTINCT  productos. Categoría_prod, SUM(productos.precio) as Total_ventas
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
GROUP BY Categoría_prod
ORDER BY Total_ventas DESC;

/*Categoría de maquillaje menos vendida*/

SELECT DISTINCT  productos. Categoría_prod, SUM(productos.precio) as Total_ventas
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto = detalles_venta.ID_producto
GROUP BY Categoría_prod
ORDER BY Total_ventas ASC;

/*Producto más caro*/

SELECT *
FROM productos
ORDER BY precio DESC
LIMIT 1;

/*Producto menos caro*/

SELECT *
FROM productos
ORDER BY precio ASC
LIMIT 1;



/*Promedio de ticket*/

SELECT AVG(subquery.Total_ventas) AS Promedio_ticket
FROM (
    SELECT detalles_venta.ID_Venta, AVG(detalles_venta.Cantidad_vendida * productos.precio) AS Total_ventas
    FROM ventas_maquillaje.detalles_venta
    INNER JOIN ventas_maquillaje.productos ON productos.ID_producto = detalles_venta.ID_producto
    GROUP BY detalles_venta.ID_Venta
) AS subquery;

/*CLIENTES*/

/*Cuantos clientes hay*/

SELECT COUNT(ID_Cliente)
FROM ventas_maquillaje.clientes;

/* Cuantos clientes nacieron en cada año de fecha de nacimiento */

SELECT YEAR(Fecha_nacimiento) AS Año, COUNT(*) AS Cantidad_Clientes
FROM ventas_maquillaje.clientes
GROUP BY YEAR(Fecha_nacimiento)
ORDER BY Año DESC;

/*Promedio de edad de clientes*/
SELECT AVG (YEAR(current_date)- Year(Fecha_nacimiento))
FROM ventas_maquillaje.clientes;

/*Cliente que compró más*/

SELECT DISTINCT detalles_venta.ID_Venta,  clientes.Nombre, clientes.Apellido, sum(detalles_venta.Cantidad_vendida*productos.precio) AS Total_ventas
FROM ventas_maquillaje.datos_venta
INNER JOIN ventas_maquillaje.detalles_venta ON datos_venta.ID_Venta= detalles_venta.ID_Venta
INNER JOIN ventas_maquillaje.clientes ON  datos_venta.ID_Cliente=clientes.ID_Cliente
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto=detalles_venta.ID_producto
GROUP BY clientes.ID_cliente
ORDER BY Total_Ventas DESC
LIMIT 1;

/*Cliente que compró menos*/

SELECT DISTINCT detalles_venta.ID_Venta,  clientes.Nombre, clientes.Apellido, sum(detalles_venta.Cantidad_vendida*productos.precio) AS Total_ventas
FROM ventas_maquillaje.datos_venta
INNER JOIN ventas_maquillaje.detalles_venta ON datos_venta.ID_Venta= detalles_venta.ID_Venta
INNER JOIN ventas_maquillaje.clientes ON  datos_venta.ID_Cliente=clientes.ID_Cliente
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto=detalles_venta.ID_producto
GROUP BY clientes.ID_cliente
ORDER BY Total_Ventas ASC
LIMIT 1;

/*Clientes que gastaron más o igual de 2000 pesos*/

SELECT DISTINCT detalles_venta.ID_Venta,  clientes.Nombre, clientes.Apellido, sum(detalles_venta.Cantidad_vendida*productos.precio) AS Total_ventas
FROM ventas_maquillaje.datos_venta
INNER JOIN ventas_maquillaje.detalles_venta ON datos_venta.ID_Venta= detalles_venta.ID_Venta
INNER JOIN ventas_maquillaje.clientes ON  datos_venta.ID_Cliente=clientes.ID_Cliente
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto=detalles_venta.ID_producto
GROUP BY detalles_venta.ID_Venta, clientes.Nombre, clientes.Apellido
HAVING Total_ventas >=2000
order by Total_ventas ;

/*Clientes que gastaron menos de 1500 pesos*/
SELECT DISTINCT detalles_venta.ID_Venta,  clientes.Nombre, clientes.Apellido, sum(detalles_venta.Cantidad_vendida*productos.precio) AS Total_ventas
FROM ventas_maquillaje.datos_venta
INNER JOIN ventas_maquillaje.detalles_venta ON datos_venta.ID_Venta= detalles_venta.ID_Venta
INNER JOIN ventas_maquillaje.clientes ON  datos_venta.ID_Cliente=clientes.ID_Cliente
INNER JOIN ventas_maquillaje.productos ON productos.ID_Producto=detalles_venta.ID_producto
GROUP BY detalles_venta.ID_Venta, clientes.Nombre, clientes.Apellido
HAVING Total_ventas <=1500 
ORDER BY Total_ventas; 

/*PAÍS*/

/*Que país compró más maquillaje*/

SELECT  clientes.país, SUM(detalles_venta.Cantidad_vendida*productos.precio) AS Ventas_totales
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
INNER JOIN ventas_maquillaje.productos ON detalles_venta.ID_producto=productos.ID_Producto
INNER JOIN ventas_maquillaje.clientes ON datos_venta.ID_cliente=clientes.ID_cliente
GROUP BY País
ORDER BY Ventas_totales DESC;

/*Que país compró menos maquillaje*/

SELECT  clientes.país, SUM(detalles_venta.Cantidad_vendida*productos.precio) AS Ventas_totales
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
INNER JOIN ventas_maquillaje.productos ON detalles_venta.ID_producto=productos.ID_Producto
INNER JOIN ventas_maquillaje.clientes ON datos_venta.ID_cliente=clientes.ID_cliente
GROUP BY País
ORDER BY Ventas_totales ASC;

/*Cuanta mascara de pestañas compró México en 2023*/

SELECT  clientes.país, YEAR(Fecha_Venta) as AÑO, productos.Categoría_prod, sum(detalles_venta.Cantidad_vendida*productos.precio) AS Ventas_totales
FROM ventas_maquillaje.detalles_venta
INNER JOIN ventas_maquillaje.datos_venta ON detalles_venta.ID_Venta=datos_venta.ID_Venta
INNER JOIN ventas_maquillaje.productos ON detalles_venta.ID_producto=productos.ID_Producto
INNER JOIN ventas_maquillaje.clientes ON datos_venta.ID_cliente=clientes.ID_cliente
GROUP BY clientes.país, productos.Categoría_prod
HAVING clientes.país="Mexico" AND productos.Categoría_prod= "Mascara de pestañas" AND AÑO=2023
ORDER BY Ventas_totales;




