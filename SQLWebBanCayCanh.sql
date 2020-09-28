USE master
GO
--Tao CSDL
CREATE DATABASE WebBanCayCanh

Go
USE WebBanCayCanh
Go 

--Tao Bang NHANVIEN
CREATE TABLE ADMIN(
	UserName nvarchar(30) NULL,
	Password nvarchar(30) NULL,
)

/****** Object:  Table KHACHHANG   ******/
CREATE TABLE KHACHHANG(
	MaKH varchar(10) NOT NULL,
	TenKH nvarchar(50) NOT NULL,
	SoDT VARCHAR(12) NOT NULL,
	Email varchar(50) NULL,
	DiaChi NVARCHAR(50) NULL,
	CONSTRAINT PK_KhachHang PRIMARY KEY(MAKH)

);
GO

CREATE TABLE BLOG(
	MaBlog int not null,
	BaiDang nvarchar(1000) not null,
	MaKH DateTime not null,
	TenKH varchar(10) not null,
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
	MaHD varchar(10) NOT NULL,
	SoLuong int NOT NULL,
	SoTien int NOT NULL,
	CONSTRAINT PK_CTHD PRIMARY KEY (MaHD)
);
GO 
/****** Object:  Table CTHD ******/
CREATE TABLE SANPHAM(
	MaSP varchar(10) NOT NULL,
	MaNCC varchar(10) NOT NULL,
	
	LoaiSP varchar(20) NOT NULL,
	TenSP varchar(50) NOT NULL,
	SoLuongSP int NOT NULL,
	HinhAnh text not null,
	TienSP int not null,
	CONSTRAINT PK_CTHD PRIMARY KEY (MaSP)
);
GO 
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
/****** Object:  Table CHAMCONG ******/
CREATE TABLE NHACUNGCAP(
	MaSP varchar(10) NOT NULL,
	MaNCC varchar(10) NOT NULL,
 CONSTRAINT PK_CHAMCONG PRIMARY KEY (MASP)
);
GO 
/****** Object:  Table CHAMCONG ******/

