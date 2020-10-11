USE master
GO
--Tao CSDL
CREATE DATABASE WebBanCayCanh

Go
USE WebBanCayCanh
Go 

/****** Object:  Table ADMIN   ******/
CREATE TABLE AD(
	UserName nvarchar(30) NULL,
	Password nvarchar(30) NULL,
);
GO
/****** Object:  Table KHACHHANG   ******/
CREATE TABLE KHACHHANG(
	MaKH varchar(10) NOT NULL,
	TenKH nvarchar(50) NOT NULL,
	SoDT varchar(12) NOT NULL,
	Email varchar(50) NULL,
	DiaChi nvarchar(50) NULL,
	CONSTRAINT PK_KhachHang PRIMARY KEY(MAKH)

);
GO
/****** Object:  Table BLOG  ******/
CREATE TABLE BLOG(
	MaBlog int not null,
	BaiDang nvarchar(1000) not null,
	MaKH varchar(10) not null,
	NgayDang datetime NOT NULL,
	NguoiDang nvarchar(50) NOT NULL,
	Constraint PK_BLOG primary key(MaBlog),
);
GO

/****** Object:  Table DONHANG   ******/
CREATE TABLE DONHANG(
	MaHD varchar(10) NOT NULL,
	MaKH varchar(10) NOT NULL,
	NgayLap datetime NOT NULL,
	NgayGiao datetime NOT NULL,
	PTTT varchar(10) NOT NULL,
 CONSTRAINT PK_DonHang PRIMARY KEY (MaHD)
);
GO
/****** Object:  Table CTHD ******/
CREATE TABLE CTHD(
	MaCTHD varchar(10) NOT NULL,
	MaSP varchar (10) NOT NULL,
	MaHD varchar(10) NOT NULL,
	SoLuong int NOT NULL,
	CONSTRAINT PK_CTHD PRIMARY KEY (MaCTHD)
);
GO 
/****** Object:  Table SANPHAM ******/
CREATE TABLE SANPHAM(
	MaSP varchar(10) NOT NULL,
	MaNCC varchar(10) NOT NULL,
	LoaiSP varchar(20) NOT NULL,
	TenSP varchar(50) NOT NULL,
	SoLuongSP int NOT NULL,
	HinhAnh image ,
	NhaCC varchar(50) not null,
	TienSP int not null,
	CONSTRAINT PK_SANPHAM PRIMARY KEY (MaSP)
);
GO 
/****** Object:  Table DANHGIA ******/
Create table DANHGIA
(
	MaDanhGia varchar(10) not null,
	MaKH varchar(10) not null,
	NgayDG datetime not null,
	MaSP varchar(10) not null,
	TenKH nvarchar(50) not null,
	BinhLuan nvarchar(500) not null,
	Constraint PK_DANHGIA PRIMARY KEY (MaDanhGia)
);


ALTER TABLE DONHANG ADD  CONSTRAINT FK_DONHANG_KHACHHANG FOREIGN KEY(MaKH)REFERENCES KHACHHANG (MaKH)
GO

ALTER TABLE CTHD ADD  CONSTRAINT FK_CTHD_DONHANG FOREIGN KEY(MaHD)REFERENCES DONHANG (MaHD)
GO

ALTER TABLE CTHD ADD  CONSTRAINT FK_CTHD_SANPHAM FOREIGN KEY(MaSP)REFERENCES SANPHAM (MaSP)
GO

ALTER TABLE BLOG ADD  CONSTRAINT FK_BLOG_KHACHHANG FOREIGN KEY(MaKH)REFERENCES KHACHHANG (MaKH)
GO

ALTER TABLE DANHGIA ADD  CONSTRAINT FK_DANHGIA_KHACHHANG FOREIGN KEY(MaKH)REFERENCES KHACHHANG (MaKH)
GO

--Insert table ADMIN
insert into AD values(N'admin',N'1234')

--Insert table KHACHHANG
insert into KHACHHANG values(N'01',N'Nguyễn Minh Hằng',N'0123456',N'nguyenmhang34@gmail.com',N'Phú Thọ')
insert into KHACHHANG values(N'02',N'Trần Trương Phi',N'098563',N'logragit34@gmail.com',N'Bình Dương')
insert into KHACHHANG values(N'03',N'Lê Lợi',N'082654',N'leloi34@gmail.com',N'Phú Quốc')

--Insert table BLOG
insert into BLOG values(N'1',N'Ôi sao đẹp quá',N'01',11/2/2020,'Fulton')
insert into BLOG values(N'2',N'Very Good',N'01',11/2/2020,'Fulton')
insert into BLOG values(N'3',N'Chào mừng',N'02',11/2/2020,'Chelse')

--Insert table DONHANG
insert into DONHANG values(N'1',N'01',12/5/2020,8/6/2020,N'trực tiếp')
insert into DONHANG values(N'2',N'01',12/5/2020,8/6/2020,N'trực tiếp')
insert into DONHANG values(N'3',N'03',12/5/2020,8/6/2020,N'trực tiếp')

--Insert table CTHD
insert into CTHD values(N'1',N'01',N'1',1)
insert into CTHD values(N'2',N'02',N'2',2)

--Insert table SANPHAM
insert into SANPHAM values(N'01',N'A',N'Cây kiểng',N'Bonsai',13,'','Trường An',123000)
insert into SANPHAM values(N'02',N'A',N'Cây hoa',N'Hoa Hồng',52,'','Đức Thịnh',59000)

--Insert table DANHGIA
insert into DANHGIA values(N'A1',N'01',11/2/2020,N'01',N'gdjkashd','kgdasdkjasgd dsabkjdgaks')
