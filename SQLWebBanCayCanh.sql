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
	NoiDung nvarchar(1000) not null,
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
	LoaiSP nvarchar(20) NOT NULL,
	TenSP nvarchar(50) NOT NULL,
	SoLuongSP int NOT NULL,
	HinhAnh nvarchar(50) NOT NULL,
	NhaCC nvarchar(50) not null,
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


ALTER TABLE DANHGIA ADD  CONSTRAINT FK_DANHGIA_KHACHHANG FOREIGN KEY(MaKH)REFERENCES KHACHHANG (MaKH)
GO

--Insert table ADMIN
insert into AD values(N'admin',N'1234')

--Insert table KHACHHANG
insert into KHACHHANG values(N'01',N'Nguyễn Minh Hằng',N'0123456',N'nguyenmhang34@gmail.com',N'Phú Thọ')
insert into KHACHHANG values(N'02',N'Trần Trương Phi',N'098563',N'logragit34@gmail.com',N'Bình Dương')
insert into KHACHHANG values(N'03',N'Lê Lợi',N'082654',N'leloi34@gmail.com',N'Phú Quốc')

--Insert table SANPHAM
insert into SANPHAM values(N'01',N'A',N'Cây phong thủy',N'Bonsai',13,'kimngan.jpg','Trường An',123000)
insert into SANPHAM values(N'02',N'A',N'Cây phong thủy',N'Mộc Lan',52,'moclan.jpg','Đức Thịnh',59000)
insert into SANPHAM values(N'03',N'A',N'Cây phong thủy',N'Ngọc Ngân',67,'ngocngan.jpg','Đức Thịnh',90000)
insert into SANPHAM values(N'04',N'A',N'Cây phong thủy',N'Kim Tiền',42,'kimtien.jpg','Đức Thịnh',89000)
insert into SANPHAM values(N'05',N'A',N'Cây phong thủy',N'Tài Lộc',12,'tailoc.jpg','Đức Thịnh',67000)
insert into SANPHAM values(N'06',N'A',N'Cây trong nhà',N'Dây Nhện',32,'daynhen.jpg','Trường An',97000)
insert into SANPHAM values(N'07',N'A',N'Cây trong nhà',N'Hương Đào',32,'huongdao.jpg','Trường An',127000)
insert into SANPHAM values(N'08',N'A',N'Cây trong nhà',N'Lan Y',32,'lany.jpg','Trường An',127000)
insert into SANPHAM values(N'09',N'A',N'Cây trong nhà',N'Lưỡi Hổ',32,'luoiho.jpg','Trường An',27000)
insert into SANPHAM values(N'10',N'A',N'Cây trong nhà',N'Tài Lộc',32,'tailoc.jpg','Trường An',47000)
insert into SANPHAM values(N'11',N'A',N'Cây văn phòng',N'Bao Thanh Thiên',32,'baothanhthien.jpg','Trường An',97000)
insert into SANPHAM values(N'12',N'A',N'Cây văn phòng',N'Kim Tiền',32,'kimtien.jpg','Trường An',97000)
insert into SANPHAM values(N'13',N'A',N'Cây văn phòng',N'Ngọc Bích',32,'ngocbich.jpg','Trường An',147000)
insert into SANPHAM values(N'14',N'A',N'Cây văn phòng',N'Tiểu Hồng Môn',32,'tieuhongmon.jpg','Trường An',67000)
insert into SANPHAM values(N'15',N'A',N'Cây văn phòng',N'Thiết Mọc Lan',32,'thietmoclan.jpg','Đức Thịnh',77000)
insert into SANPHAM values(N'16',N'A',N'Cây dây leo',N'Hoa Hồng Leo',32,'hoahongleo.jpg','Đức Thịnh',77000)
insert into SANPHAM values(N'17',N'A',N'Cây dây leo',N'Hoa Tử Đằng',32,'hoatudang.jpg','Đức Thịnh',77000)
insert into SANPHAM values(N'18',N'A',N'Cây dây leo',N'Cúc Tần Ấn Độ',32,'cuctanando.jpg','Trường An',97000)
insert into SANPHAM values(N'19',N'A',N'Cây dây leo',N'Hoa Hậu Biếc',32,'hoahaubiec.jpg','Trường An',97000)
insert into SANPHAM values(N'20',N'A',N'Cây dây leo',N'Mống Cọp',32,'mongcop.jpg','Trường An',97000)
insert into SANPHAM values(N'21',N'A',N'Cây để bàn',N'Kim Ngân',32,'kimngan.jpg','Gia Phát',97000)
insert into SANPHAM values(N'22',N'A',N'Cây để bàn',N'Kim Tiền',32,'kimtien.jpg','Gia Phát',97000)
insert into SANPHAM values(N'23',N'A',N'Cây để bàn',N'May Mắn',32,'mayman.jpg','Gia Phát',97000)
insert into SANPHAM values(N'24',N'A',N'Cây để bàn',N'Ngọc Ngân',32,'ngocngan.jpg','Gia Phát',97000)
insert into SANPHAM values(N'25',N'A',N'Cây để bàn',N'Phú Quý',32,'phuquy.jpg','Gia Phát',97000)
insert into SANPHAM values(N'26',N'A',N'Cây sân vườn',N'Nho',32,'caynho.jpg','Gia Phát',97000)
insert into SANPHAM values(N'27',N'A',N'Cây sân vườn',N'Hắc Mây',32,'hacmay.jpg','Gia Phát',97000)
insert into SANPHAM values(N'28',N'A',N'Cây sân vườn',N'Thủy Lập',32,'thuylap.jpg','Gia Phát',97000)
insert into SANPHAM values(N'29',N'A',N'Cây sân vườn',N'Tre Cảnh',32,'trecanh.jpg','Gia Phát',97000)
insert into SANPHAM values(N'30',N'A',N'Cây sân vườn',N'Xương Rống',32,'xuongrong.jpg','Gia Phát',97000)
insert into SANPHAM values(N'31',N'A',N'Cây thủy sinh',N'Đế Vương Xanh',32,'devuongxanh.jpg','Gia Phát',97000)
insert into SANPHAM values(N'32',N'A',N'Cây thủy sinh',N'Ngũ Gia',32,'ngugia.jpg','Gia Phát',97000)
insert into SANPHAM values(N'33',N'A',N'Cây thủy sinh',N'Sen Đá Nâu',32,'sandanau.jpg','Gia Phát',97000)
insert into SANPHAM values(N'34',N'A',N'Cây thủy sinh',N'Trúc Nhật',32,'trucnhat.jpg','Gia Phát',97000)
insert into SANPHAM values(N'35',N'A',N'Cây thủy sinh',N'Van Thiên Thanh',32,'vanthienthanh.jpg','Gia Phát',97000)
insert into SANPHAM values(N'36',N'A',N'Cây xương rồng',N'Bánh Sinh Nhật',32,'banhsinhnhat.jpeg','Gia Phát',97000)
insert into SANPHAM values(N'37',N'A',N'Cây xương rồng',N'Bát Tiên',32,'battien.jpg','Lưu Thiện',54000)
insert into SANPHAM values(N'38',N'A',N'Cây xương rồng',N'Tai Thỏ',32,'taitho.jpg','Phú Thiên',24000)
insert into SANPHAM values(N'39',N'A',N'Cây xương rồng',N'Thanh Sơn',32,'thanhson.jpg','Lưu Thiện',54000)
insert into SANPHAM values(N'40',N'A',N'Cây xương rồng',N'Trứng Chim',32,'trungchim.jpg','Lưu Thiện',94000)

--Insert table DONHANG
insert into DONHANG values(N'1',N'01',12/5/2020,8/6/2020,N'trực tiếp')
insert into DONHANG values(N'2',N'01',12/5/2020,8/6/2020,N'trực tiếp')
insert into DONHANG values(N'3',N'03',12/5/2020,8/6/2020,N'trực tiếp')

--Insert table CTHD
insert into CTHD values(N'1',N'01',N'1',1)
insert into CTHD values(N'2',N'02',N'2',2)

--Insert table BLOG
insert into BLOG values(N'1',N'Thiết kế thi công cảnh quan cây xanh ban công nhà chung cư !',N'Việc thiết kế trang trí cảnh quan cây xanh ban công nhà chung cư đang trở nên rất phổ biến…','11/2/2020','Admin')
insert into BLOG values(N'2',N'Kỹ thuật trồng và chăm sóc cây mai vạn phúc luôn xanh tốt',N'Cây mai vạn phúc khá quen thuộc trong cuộc sống hàng ngày. Chúng thường được trồng thành bụi, khóm để…','11/2/2020','Admin')
insert into BLOG values(N'3',N'Trang trí ban công bằng cây hoa sam nhật thật đẹp',N'Nhiều người đang tìm hiểu về cây hoa sam Nhật có hình dáng, đặc thù như thế nào? Hãy tham…','12/2/2020','Admin')
insert into BLOG values(N'4',N'Vẽ đẹp của cây hoa sim tím như cái tên của bài hát',N'Cây hoa sim tím đã đi vào lòng người ngày thì thuở nao, các nhà thơ, nhạc sĩ đã lấy…','11/2/2020','Admin')
insert into BLOG values(N'5',N'Hoa hồng trứng đang rất được săn đón hợp với ban công ngôi nhà ',N'Khi nói đến loài hoa hồng trứng thì chúng ta có thấy xa lạ với cái tên gọi này không?…','11/2/2020','Admin')
insert into BLOG values(N'6',N'Cây hoa ngũ sắc làm cảnh quan, trang trí sân vườn thật nổi bật',N'Thế giới Cây và Hoa đang là nơi bán cây hoa ngũ sắc làm cảnh quan uy tín nhất tại…','11/2/2020','Admin')
insert into BLOG values(N'7',N'Cây mai hoàng yến nở vàng rực trong khu vườn nhà bạn',N'Bán cây mai hoàng yến đẹp sử dụng để trang trí cho mọi không gian, đang được thị trường ưa…','11/2/2020','Admin')
insert into BLOG values(N'8',N'Cây hoa tử đằng loài cây dây leo nở hoa đẹp, cho mùa hè thêm mát',N'Nhắc đến hoa tử đằng thì người ta nhớ đến đất nước Nhật Bản, thế nhưng cây hoa tử đằng…','11/2/2020','Admin')
insert into BLOG values(N'9',N'Hướng dẫn trồng và chăm sóc cây cà gai leo năng suất cao',N'Trên thực tế, chúng ta nghe đến cái tên cà gai leo rất nhiều. Cây cà gai leo là một…','11/2/2020','Admin')
insert into BLOG values(N'10',N'Ý nghĩa và tác dụng tuyệt vời của cây cần thăng là gì ?',N'Cây cần thăng, tên khoa học là Feoniella lucida, là một loài cây lấy gỗ lớn, nếu sống trong tự…','11/2/2020','Admin')
insert into BLOG values(N'11',N'Cây hạnh phúc – Làm xao xuyến trái tim bao người',N'Cuộc sống hiện đại khiến con người ta ngày càng bận rộn và luôn bị cuốn vào vòng xoay công…','11/2/2020','Admin')
insert into BLOG values(N'12',N'Cây thiên môn đông dùng trang trí nội thất gia đình !',N'Vừa nhắc đến cái tên cây thiên môn đông thì chúng ta đã nghĩ ngay ra đây là một cây…','11/2/2020','Admin')

--Insert table DANHGIA
insert into DANHGIA values(N'A1',N'01',11/2/2020,N'01',N'gdjkashd','kgdasdkjasgd dsabkjdgaks')

SELECT        HinhAnh, TenSP, TienSP
FROM          SANPHAM
WHERE        (LoaiSP = N'Cây để bàn')