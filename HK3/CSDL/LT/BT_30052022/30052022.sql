CREATE DATABASE QLDA
GO 
USE QLDA
GO
CREATE TABLE PHONGBAN
(
	MAPHG INT PRIMARY KEY,
	TENPHG CHAR(10) NOT NULL,
	TRPGH CHAR(3) NOT NULL,
	NG_NHANCHUC DATETIME,
)

CREATE TABLE NHANVIEN
(
	MANV CHAR(3) PRIMARY KEY,
	HONV CHAR(20) NOT NULL,
	TENLOT CHAR(20) NOT NULL,
	TENNV CHAR(20) NOT NULL,
	NGSINH DATETIME,
	DCHI CHAR(100),
	PHAI CHAR(3) NOT NULL,
	LUONG FLOAT,
	MA_NQL CHAR(3),
	PHG INT NOT NULL,
)

CREATE TABLE DEAN
(
	MADA INT PRIMARY KEY,
	TENDA CHAR(30),
	DDIEM_DA CHAR(100),
	PHONG INT,
)

CREATE TABLE PHANCONG
(
	MA_NVIEN CHAR(3) REFERENCES NHANVIEN(MANV),
	SODA INT REFERENCES DEAN(MADA),
	PRIMARY KEY(MA_NVIEN, SODA),
	THOIGIAN FLOAT,
)

CREATE TABLE DIADIEM_PHG
(
	MAPHG INT REFERENCES PHONGBAN(MAPHG),
	DIADIEM CHAR(30),
	PRIMARY KEY(MAPHG, DIADIEM)
)

CREATE TABLE THANNHAN
(
	MA_NVIEN CHAR(3),
	TENTN CHAR(50),
	CONSTRAINT PK_THANNHAN PRIMARY KEY(MA_NVIEN, TENTN),
	PHAI CHAR(5),
	NGSINH DATETIME,
	QUANHE CHAR(30),
	CONSTRAINT FK_THANNHAN FOREIGN KEY(MA_NVIEN) REFERENCES NHANVIEN(MANV)
)

INSERT INTO PHONGBAN
VALUES(1,'QUAN LY', '888', '06/19/1971')
INSERT INTO PHONGBAN
VALUES(4,'DIEU HANH', '777', '01/01/1985')
INSERT INTO PHONGBAN
VALUES(5,'NGHIEN CUU', '333', '05/22/1978')
SELECT *
FROM PHONGBAN


INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES
('DINH', 'BA', 'TIEN', 123, '01/09/1955', '731 TRAN HUNG DAO Q1', 'NAM', 30000, '333', 5)
INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES
('NGUYEN', 'THANH', 'TUNG', 333, '12/08/1945', '638 NGUYEN VAN CU Q5', 'NAM', 40000, '888', 5)
INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES
('TRAN', 'THANH', 'TAM', 453, '07/31/1962', '543 MAI THI LUU BA DINH HA', 'NAM', 25000, '333', 5)
INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES
('NGUYEN', 'MANH', 'HUNG', 666, '09/15/1952', '975 LE LAI P3 VUNG TAU', 'NAM', 38000, '333', 5)
INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES
('VUONG', 'NGOC', 'QUYEN', 888, '10/10/1927', '450 TRUNG VUONG MY THO TG', 'NU', 55000, '	', 1)
INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES
('LE', 'THI', 'NHAN', 987, '06/20/1931', '291 HO VAN HUE Q.PN', 'NU', 43000, '888', 4)
INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES
('TRAN', 'HONG', 'QUANG', 777, '29/03/1959', '980 LE HONG PHONG VUNG TAU', 'NAM', 25000, '987', 4)
INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES
('BUI', 'THUY', 'VU', 999, '07/19/1985', '332 NGUYEN THAI HOC QUY', 'NAM', 25000, '987', 4)



INSERT INTO DIADIEM_PHG(MAPHG, DIADIEM)
VALUES
(1, 'TP HCM')
INSERT INTO DIADIEM_PHG(MAPHG, DIADIEM)
VALUES
(2, 'HA NOI')
INSERT INTO DIADIEM_PHG(MAPHG, DIADIEM)
VALUES
(5, 'NHA TRANG')
INSERT INTO DIADIEM_PHG(MAPHG, DIADIEM)
VALUES
(5, 'TP HCM')
INSERT INTO DIADIEM_PHG(MAPHG, DIADIEM)
VALUES
(5, 'VUNG TAU')

SELECT *
FROM DIADIEM_PHG



INSERT INTO DEAN(TENDA, MADA, DDIEM_DA, PHONG)
VALUES
('SAN PHAM X', 1, 'VUNG TAU', 5)
INSERT INTO DEAN(TENDA, MADA, DDIEM_DA, PHONG)
VALUES
('SAN PHAM Y', 2, 'NHA TRANG', 5)
INSERT INTO DEAN(TENDA, MADA, DDIEM_DA, PHONG)
VALUES
('SAN PHAM Z', 3, 'TP HCM', 5)
INSERT INTO DEAN(TENDA, MADA, DDIEM_DA, PHONG)
VALUES
('TIN HOC HOA', 10, 'HA NOI', 4)
INSERT INTO DEAN(TENDA, MADA, DDIEM_DA, PHONG)
VALUES
('CAP QUANG', 20, 'TP HCM', 1)
INSERT INTO DEAN(TENDA, MADA, DDIEM_DA, PHONG)
VALUES
('DAO TAO', 30, 'HA NOI', 4)

SELECT *
FROM DEAN

INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(123, 1, 22.50)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(123, 2, 7.5)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(123, 3, 10)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(333, 10, 10)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(333, 20, 10)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(453, 1, 20)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(453, 2, 20)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(666, 3, 40)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(888, 20, 0)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(987, 20, 15)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(987, 30, 20)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(777, 10, 35)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(777, 30, 5)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(999, 10, 10)
INSERT INTO PHANCONG(MA_NVIEN, SODA, THOIGIAN)
VALUES
(999, 30, 30)


SELECT *
FROM PHANCONG


INSERT INTO THANNHAN(MA_NVIEN, TENTN, PHAI, NGSINH, QUANHE)
VALUES
(123, 'CHAU', 'NU', '12/31/1978', 'CON GAI')
INSERT INTO THANNHAN(MA_NVIEN, TENTN, PHAI, NGSINH, QUANHE)
VALUES
(123, 'DUY', 'NAM', '01/01/1978', 'CON TRAI')
INSERT INTO THANNHAN(MA_NVIEN, TENTN, PHAI, NGSINH, QUANHE)
VALUES
(123, 'PHUONG', 'NU', '05/05/1957', 'VO CHONG')
INSERT INTO THANNHAN(MA_NVIEN, TENTN, PHAI, NGSINH, QUANHE)
VALUES
(333, 'DUONG', 'NU', '05/03/1948', 'VO CHONG')
INSERT INTO THANNHAN(MA_NVIEN, TENTN, PHAI, NGSINH, QUANHE)
VALUES
(333, 'TUNG', 'NAM', '10/25/1973', 'CON TRAI')
INSERT INTO THANNHAN(MA_NVIEN, TENTN, PHAI, NGSINH, QUANHE)
VALUES
(333, 'QUANG', 'NU', '04/05/1976', 'CON GAI')
INSERT INTO THANNHAN(MA_NVIEN, TENTN, PHAI, NGSINH, QUANHE)
VALUES
(987, 'DANG', 'NAM', '02/29/1932', 'VO CHONG')


SELECT *
FROM THANNHAN


-- CAU2
SELECT HONV, TENLOT,TENNV, LUONG
FROM NHANVIEN
WHERE LUONG>30000

-- VD1
SELECT MADA, HONV,TENNV, MANV
FROM DEAN, PHANCONG, NHANVIEN
WHERE TENDA = 'SAN PHAM X' AND PHONG = 5

-- VD2
SELECT PHONG, MADA, TRPGH, HONV, TENLOT, TENNV, DCHI
FROM DEAN, PHONGBAN, NHANVIEN, DIADIEM_PHG
WHERE DIADIEM = 'HA NOI' AND DEAN.PHONG = PHONGBAN.MAPHG AND PHONGBAN.TRPGH = NHANVIEN.MANV 

-- CAU4
SELECT HONV, TENLOT, TENNV
FROM NHANVIEN, DIADIEM_PHG
WHERE DIADIEM = 'TP HCM'AND PHG = 5 AND MAPHG = 5