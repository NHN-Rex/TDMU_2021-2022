﻿--Tìm số lương trung bình của từng phòng.
--SELECT PHG, PB.TENPHG, COUNT(*) AS 'SL NHANVIEN', AVG(LUONG) AS 'LUONG TB'
--FROM NHANVIEN NV, PHONGBAN PB
--WHERE NV.PHG = PB.MAPHG
--GROUP BY PHG, PB.TENPHG

--Tìm phòng có số lương trung bình cao nhất.
--SELECT PHG, PB.TENPHG, COUNT(*) AS 'SL NHANVIEN', AVG(LUONG) AS 'LUONG TB'
--FROM NHANVIEN NV, PHONGBAN PB
--WHERE NV.PHG = PB.MAPHG
--GROUP BY PHG, PB.TENPHG
--HAVING AVG(LUONG) >= ALL(SELECT AVG(LUONG) AS 'LUONG TB'
						--FROM NHANVIEN NV
						--GROUP BY PHG)

--Tìm tên các nhân viên được phân công làm TẤT CẢ các đề án.
--Số đề án của công ty.
--SELECT COUNT(*) AS 'SODEAN'
--FROM DEAN
--Số đề án mà nhân viên được phân công làm.
--SELECT MANV, COUNT(*) AS 'SO DE AN NV DC PC'
--FROM NHANVIEN NV, PHANCONG PC
--WHERE NV.MANV = PC.MA_NVIEN
--GROUP BY MANV
--Nhân viên làm tất cả đề án.
--SELECT MANV, COUNT(*)
--FROM NHANVIEN NV
--GROUP BY MANV
--HAVING COUNT(*) = ALL(SELECT COUNT(*) AS 'SODEAN' FROM DEAN)

--Tìm nhân viên làm việc ở phòng Nghiên Cứu.(Cách thông thường).
--SELECT HONV, TENLOT, TENNV
--FROM NHANVIEN NV, PHONGBAN PB
--WHERE NV.PHG = PB.MAPHG AND TENPHG = 'Nghien cuu'
--Tìm nhân viên làm việc ở phòng Nghiên Cứu.(Cách hạn chế phát sinh dữ liệu dư).
--SELECT HONV, TENLOT, TENNV
--FROM NHANVIEN NV JOIN PHONGBAN PB ON NV.PHG = PB.MAPHG
--WHERE TENPHG = 'Nghien cuu'

--Cách tạo VIEW
-- CREATE VIEW PHONG_NGHIEN_CUU AS 
-- SELECT HONV, TENLOT, TENNV
-- FROM NHANVIEN NV JOIN PHONGBAN PB ON NV.PHG = PB.MAPHG
-- WHERE TENPHG = 'Nghien cuu'
--DROP VIEW
-- DROP VIEW PHONG_NGHIEN_CUU