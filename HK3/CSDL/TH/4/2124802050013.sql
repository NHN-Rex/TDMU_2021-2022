CREATE DATABASE QLKH
GO
USE QLKH
GO

CREATE TABLE KHACHHANG
(
MAKH CHAR(4) NOT NULL,
HOTEN VARCHAR (40),
DCHI VARCHAR (50),
SODT VARCHAR (20),
NGSINH SMALLDATETIME,
NGDK SMALLDATETIME,
DOANHSO MONEY,
PRIMARY KEY (MAKH)
)

CREATE TABLE NHANVIEN
(
MANV CHAR(4) NOT NULL,
HOTEN VARCHAR (40),
DTHOAI VARCHAR (20),
NGVL SMALLDATETIME,
PRIMARY KEY (MANV)
)

CREATE TABLE SANPHAM
(
MASP CHAR (4) NOT NULL,
TENSP VARCHAR (40),
DVT VARCHAR (20),
NUOCSX VARCHAR (40),
GIA MONEY,
PRIMARY KEY (MASP)
)

CREATE TABLE HOADON
(
SOHD INT NOT NULL,
NGHD SMALLDATETIME,
MAKH CHAR(4),
MANV CHAR (4),
TRIGIA MONEY,
PRIMARY KEY (SOHD)
)

CREATE TABLE CTHD
(
SOHD INT,
MASP CHAR(4),
SL INT,
PRIMARY KEY (SOHD, MASP)
)

ALTER TABLE HOADON ADD
	CONSTRAINT FK_MAKH FOREIGN KEY (MAKH) REFERENCES KHACHHANG (MAKH)

ALTER TABLE HOADON ADD
	CONSTRAINT FK_MANV FOREIGN KEY (MANV) REFERENCES NHANVIEN (MANV)

ALTER TABLE CTHD ADD
	CONSTRAINT FK_MASP FOREIGN KEY (MASP) REFERENCES SANPHAM (MASP) 

ALTER TABLE CTHD ADD
	CONSTRAINT FK_SOHD FOREIGN KEY (SOHD) REFERENCES HOADON (SOHD)

INSERT INTO NHANVIEN(MANV, HOTEN, DTHOAI, NGVL)
VALUES 
('NV01', 'Nguyen Nhu Nhut', 0927345678,'04/13/2010'),
('NV02', 'Le Thi Phi Yen', 0987567390, '04/21/2010'),
('NV03', 'Nguyen Van B', 0997047382, '04/27/2010'),
('NV04', 'Ngo Thanh Tuan', 0913758498, '06/24/2010'),
('NV05', 'Nguyen Thi Truc Thanh ', 0918590387, '07/20/2010')


INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO) 
VALUES 
('KH01', 'Nguyen Van A', '731 Tran Hung Dao, Q5, TpHCM', '08823451', '10/22/1960', '07/22/2010','13060000'),
('KH02', 'Tran Ngoc Han', '23/5 Nguyen Trai, Q5, TpHCM', '0908256478', '4/3/1974', '07/30/2010', '280000'), 
('KH03', 'Tran Ngoc Linh', '45 Nguyen Canh Tran, Q1, TpHCM', '0938776266', '6/12/1980', '08/05/2010', '3860000'),
('KH04', 'Tran Minh Long', '50/34 Le Dai Hanh, Q10, TpHCM', '0917325476', '3/9/1965', '10/02/2010', '250000'),
('KH05', 'Le Nhat Minh', '34 Truong Dinh, Q3, TpHCM', '08246108', '3/10/1950', '10/28/2010', '21000'),
('KH06', 'Le Hoai THuong', '227 Nguyen Van Cu, Q5, TpHCM', '08631738', '12/31/1981', '11/24/2010', '915000'),
('KH07', 'Nguyen Van Tam', '32/3 Tran Binh Trong, Q5, TpHCM', '0916783565', '4/6/1971','12/13/2010', '12500'),
('KH08', 'Phan Thi Thanh', '45/2 An Duong Vuong, Q5, TpHCM', '0938435756', '1/10/1971', '12/13/2010', '365000'),
('KH09', 'Le Ha Vinh', '873 Le Hong Phong, Q5, TpHCM', '08654763', '9/3/1979', '01/14/2011', '70000'),
('KH10', 'Ha Duy Lap', '34/34B Nguyen Trai, Q5, TpHCM', '08768904', '5/2/1983', '01/16/2011', '67500')

INSERT INTO SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) 
VALUES
('BC01', 'Bui chi', 'cay', 'Singapore', '3000'),
('BC02', 'Bui chi', 'cay', 'Singapore', '5000'),
('BC03', 'Bui chi', 'cay', 'Viet Nam', '3500'),
('BC04', 'Bui chi', 'hop', 'Viet Nam', '30000'),
('BB01', 'Bui bi', 'cay', 'Viet Nam', '5000'),
('BB02', 'Bui bi', 'cay', 'Trung Quoc', '7000'),
('BB03', 'Bui bi', 'hop', 'Thai Lan', '100000'),
('TV01', 'Tap 100 giay mong', 'quyen', 'Trung Quoc', '2500'),
('TV02', 'Tap 200 giay mong', 'quyen', 'Trung Quoc', '4500'),
('TV03', 'Tap 100 giay tot', 'quyen', 'Viet Nam', '3000'),
('TV04', 'Tap 200 giay tot', 'quyen', 'Viet Nam', '5500'),
('TV05', 'Tap 100 trang', 'chuc', 'Viet Nam', '23000'),
('TV06', 'Tap 200 trang', 'chuc', 'Viet Nam', '53000'),
('TV07', 'Tap 100 trang', 'chuc', 'Trung Quoc', '34000'),
('ST01', 'So tay 500 trang', 'quyen', 'Trung Quoc', '40000'),
('ST02', 'So tay loai 1', 'quyen', 'Viet Nam', '55000'),
('ST03', 'So tay loai 2', 'quyen', 'Viet Nam', '51000'),
('ST04', 'So tay', 'quyen', 'Thai Lan', '55000'),
('ST05', 'So tay mong', 'quyen', 'Thai Lan', '20000'),
('ST06', 'Phan viet bang', 'hop', 'Viet Nam', '5000'),
('ST07', 'Phan khong bui', 'hop', 'Viet Nam', '7000'),
('ST08', 'Bong bang', 'cai', 'Viet Nam', '1000'),
('ST09', 'But long', 'cay', 'Viet Nam', '5000'),
('ST10', 'But long', 'cay', 'Trung Quoc', '7000')

INSERT INTO HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) 
VALUES 
(1001, '07/23/2010', 'KH01', 'NV01', '320000'),
(1002, '08/12/2010', 'KH01', 'NV02', '840000'),
(1003, '08/23/2010', 'KH02', 'NV01', '100000'),
(1004, '09/01/2010', 'KH02', 'NV01', '180000'),
(1005, '10/20/2010', 'KH01', 'NV02', '3800000'),
(1006, '10/16/2010', 'KH01', 'NV03', '2430000'),
(1007, '10/28/2010', 'KH03', 'NV03', '510000'),
(1008, '10/28/2010', 'KH01', 'NV03', '440000'),
(1009, '10/28/2010', 'KH03', 'NV04', '200000'),
(1010, '11/01/2010', 'KH01', 'NV01', '5200000'),
(1011, '11/04/2010', 'KH04', 'NV03', '5200000'),
(1012, '11/30/2010', 'KH05', 'NV03', '21000'),
(1013, '12/12/2010', 'KH06', 'NV01', '5000'),
(1014, '12/31/2010', 'KH03', 'NV02', '3150000'),
(1015, '01/01/2011', 'KH06', 'NV01', '910000'),
(1016, '01/01/2011', 'KH07', 'NV02', '12500'),
(1017, '01/02/2011', 'KH08', 'NV03', '35000'),
(1018, '01/13/2011', 'KH08', 'NV03', '330000'),
(1019, '01/13/2011', 'KH01', 'NV03', '30000'),
(1020, '01/14/2011', 'KH09', 'NV04', '70000'),
(1021, '01/16/2011', 'KH10', 'NV03', '67500'),
(1022, '01/16/2011', Null, 'NV03', '7000'),
(1023, '01/17/2011', Null, 'NV01', '330000')

INSERT INTO CTHD(SOHD, MASP, SL) 
VALUES
(1001, 'TV02', 10),
(1001, 'ST01', 5),
(1001, 'BC01', 5),
(1001, 'BC02', 10),
(1001, 'ST08', 10),
(1002, 'BC04', 20),
(1002, 'BB01', 20),
(1002, 'BB02', 20),
(1003, 'BB03', 10),
(1004, 'TV01', 20),
(1004, 'TV02', 10),
(1004, 'TV03', 10),
(1004, 'TV04', 10),
(1005, 'TV05', 50),
(1005, 'TV06', 50),
(1006, 'TV07', 20),
(1006, 'ST01', 30),
(1006, 'ST02', 10),
(1007, 'ST03', 10),
(1008, 'ST04', 8),
(1009, 'ST05', 10),
(1010, 'TV07', 50),
(1010, 'ST07', 50),
(1010, 'TV02', 10),
(1010, 'ST08', 100),
(1010, 'ST04', 50),
(1010, 'TV03', 100),
(1011, 'ST06', 50),
(1012, 'ST07', 3),
(1013, 'ST08', 5),
(1014, 'BC02', 80),
(1014, 'BB02', 100),
(1014, 'BC04', 60),
(1014, 'BB01', 50),
(1015, 'BB02', 30),
(1015, 'BB03', 7),
(1016, 'TV01', 5),
(1017, 'TV02', 1),
(1017, 'TV03', 1),
(1017, 'TV04', 5),
(1018, 'ST04', 6),
(1019, 'ST05', 1),
(1019, 'ST06', 2),
(1020, 'ST07', 10),
(1021, 'ST08', 5),
(1021, 'TV01', 7),
(1021, 'TV02', 10),
(1022, 'ST07', 1),
(1023, 'ST04', 6)


--1
SELECT MASP,TENSP
FROM  SANPHAM
WHERE NUOCSX='TRUNG QUOC'

--2
SELECT MASP,TENSP
FROM  SANPHAM
WHERE DVT='CAY' OR DVT='QUYEN'

-- 3
SELECT MASP,TENSP
FROM  SANPHAM
WHERE MASP LIKE 'B%01'


-- 4
SELECT MASP,TENSP
FROM  SANPHAM
WHERE NUOCSX='TRUNG QUOC' AND GIA BETWEEN 30000 AND 40000

-- 5
SELECT MASP,TENSP
FROM  SANPHAM
WHERE (NUOCSX='TRUNG QUOC' OR NUOCSX='THAI LAN') AND GIA BETWEEN 30000 AND 40000

-- 6: ***
SELECT SOHD,TRIGIA
FROM  HOADON
WHERE NGHD='1/1/2007' OR NGHD='2/1/2007'


-- 7: ***
SELECT SOHD,TRIGIA
FROM  HOADON
WHERE MONTH(NGHD)=1 AND YEAR(NGHD)=2007
ORDER BY  NGHD ASC,TRIGIA DESC

-- 8: ***
SELECT A.MAKH,HOTEN
FROM  HOADON A, KHACHHANG B
WHERE A.MAKH=B.MAKH AND NGHD='1/1/2007'

-- 9:***
SELECT SOHD,TRIGIA
FROM  HOADON A, NHANVIEN B
WHERE A.MANV=B.MANV AND NGHD='28/10/2006' AND HOTEN='NGUYEN VAN B' 

-- 10:***
SELECT C.MASP, TENSP
FROM  HOADON A, KHACHHANG B, CTHD C, SANPHAM D
WHERE A.MAKH=B.MAKH AND A.SOHD=C.SOHD AND C.MASP=D.MASP AND MONTH(NGHD)=10 AND YEAR(NGHD)=2006 AND HOTEN='NGUYEN VAN A' 


-- 11:***
SELECT SOHD
FROM  CTHD
WHERE MASP='BB01'OR MASP='BB02'


-- 12:***
SELECT SOHD
FROM  CTHD
WHERE MASP='BB01'OR MASP='BB02'


-- 13:***
SELECT SOHD
FROM  CTHD
WHERE SL BETWEEN 10 AND 20 AND MASP='BB01'AND SOHD IN (  SELECT SOHD FROM  CTHD WHERE MASP='BB02')


--14:***
SELECT DISTINCT A.MASP,TENSP
FROM  SANPHAM A, HOADON B, CTHD C
WHERE NUOCSX='TRUNG QUOC' OR (B.SOHD=C.SOHD AND C.MASP=A.MASP AND NGHD='1/1/2007') 


--15
SELECT MASP, TENSP
FROM  SANPHAM
WHERE MASP NOT IN ( SELECT MASP FROM  CTHD)



-- 16
SELECT MASP, TENSP
FROM  SANPHAM
WHERE MASP NOT IN ( SELECT A.MASP FROM  CTHD A, HOADON B WHERE A.SOHD=B.SOHD AND YEAR(NGHD)=2006)


--17
SELECT MASP, TENSP
FROM  SANPHAM
WHERE NUOCSX='TRUNG QUOC' AND MASP NOT IN ( SELECT A.MASP FROM  CTHD A, HOADON B WHERE A.SOHD=B.SOHD AND YEAR(NGHD)=2006)

--18
SELECT COUNT(*)
FROM HOADON H
WHERE MAKH NOT IN(SELECT MAKH
FROM KHACHHANG K 
WHERE K.MAKH = H.MAKH)

--19
SELECT COUNT(DISTINCT MASP)
FROM CTHD C INNER JOIN HOADON H
ON C.SOHD = H.SOHD
WHERE YEAR(NGHD) = 2010

--20
SELECT MAX(TRIGIA) AS MAX, MIN(TRIGIA) AS MIN
FROM HOADON

--21
SELECT AVG(TRIGIA) TB
FROM HOADON

--22
SELECT SUM(TRIGIA) AS DOANHTHU
FROM HOADON
WHERE YEAR(NGHD) = 2010

--23
SELECT SOHD
FROM HOADON
WHERE TRIGIA = (SELECT MAX(TRIGIA)
FROM HOADON)

--24
SELECT HOTEN
FROM KHACHHANG K INNER JOIN HOADON H
ON K.MAKH = H.MAKH 
AND SOHD = (SELECT SOHD
			FROM HOADON
			WHERE TRIGIA = (SELECT MAX(TRIGIA)
							FROM HOADON))

--25
SELECT TOP 3 MAKH, HOTEN
FROM KHACHHANG
ORDER BY DOANHSO DESC

--26
SELECT MASP, TENSP
FROM SANPHAM
WHERE GIA IN (SELECT DISTINCT TOP 3 GIA
			  FROM SANPHAM
			  ORDER BY GIA DESC)
--27
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX = 'THAI LAN' AND GIA IN (SELECT DISTINCT TOP 3 GIA
FROM SANPHAM
ORDER BY GIA DESC)

--28
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX = 'TRUNG QUOC' AND GIA IN (SELECT DISTINCT TOP 3 GIA
FROM SANPHAM
ORDER BY GIA DESC)

--29
SELECT TOP 3 MAKH, HOTEN
FROM KHACHHANG
ORDER BY DOANHSO DESC

--30
FROM SANPHAM
WHERE NUOCSX = 'TRUNG QUOC'

--31
SELECT NUOCSX, COUNT(DISTINCT MASP) AS TONGSOSANPHAM
FROM SANPHAM
GROUP BY NUOCSX

--32
SELECT NUOCSX, MAX(GIA) AS MAX, MIN(GIA) AS MIN, AVG(GIA) AS AVG
FROM SANPHAM
GROUP BY NUOCSX

--33
SELECT NGHD, SUM(TRIGIA) AS DOANHTHU
FROM HOADON
GROUP BY NGHD

--34
SELECT MASP, COUNT(DISTINCT MASP) AS TONGSO
FROM SANPHAM
WHERE MASP IN(SELECT MASP
FROM CTHD C INNER JOIN HOADON H
ON C.SOHD = H.SOHD
WHERE MONTH(NGHD) = 10 AND YEAR(NGHD) = 2006)
GROUP BY MASP

--35
SELECT MONTH(NGHD) AS THANG, SUM(TRIGIA) AS DOANHTHU
FROM HOADON
WHERE YEAR(NGHD) = 2006
GROUP BY MONTH(NGHD)

--36
SELECT *
FROM HOADON
WHERE SOHD IN(SELECT SOHD
FROM CTHD
WHERE SL >= 4)

--37
SELECT *
FROM HOADON
WHERE SOHD IN(SELECT SOHD
FROM CTHD C INNER JOIN SANPHAM S
ON C.MASP = S.MASP
WHERE NUOCSX = 'VIET NAM' AND SL >= 3)

--38
SELECT MAKH, HOTEN
FROM KHACHHANG
WHERE MAKH = (SELECT TOP 1 MAKH
FROM HOADON
GROUP BY MAKH
ORDER BY COUNT(DISTINCT SOHD) DESC)

--39
SELECT TOP 1 MONTH(NGHD) AS THANG_DOANHSO_MAX
FROM HOADON
WHERE YEAR(NGHD) = 2006
GROUP BY MONTH(NGHD)
ORDER BY SUM(TRIGIA) DESC

--40
SELECT MASP, TENSP
FROM SANPHAM
WHERE MASP = (SELECT TOP 1 MASP
FROM CTHD
GROUP BY MASP
ORDER BY SUM(SL) DESC)