--USE [master]

/****** Object:  Database [BookingHotel]    Script Date: 7/6/2023 2:11:24 AM ******/
--CREATE DATABASE [BookingHotel]

USE [BookingHotel]


/****** Object:  Table [dbo].[tblAccount]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblAccount](
	[userId] [varchar](50) NOT NULL,
	[Password] [varchar](100) NULL,
	[RoleId] [int] NULL,
	[Status] [nvarchar](20) NULL,
 CONSTRAINT [PK__tblAccou__CB9A1CFF9A95CA60] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblDiscount]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblDiscount](
	[discountCode] [varchar](50) NOT NULL,
	[discountValue] [int] NULL,
	[existDate] [date] NULL,
	[StartDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[discountCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblFeedBack]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblFeedBack](
	[roomNo] [int] NULL,
	[userId] [varchar](50) NULL,
	[value] [int] NULL,
	[description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

/****** Object:  Table [dbo].[tblHotel]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblHotel](
	[hotelId] [int] IDENTITY(0,1) NOT NULL,
	[hotelName] [nvarchar](50) NULL,
	[hotelAddress] [nvarchar](200) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[hotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblOrder]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblOrder](
	[orderId] [varchar](50) NOT NULL,
	[userId] [varchar](50) NULL,
	[orderDate] [date] NULL,
	[total] [float] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__tblOrder__0809335D96A41613] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblOrderDetails](
	[orderId] [varchar](50) NULL,
	[roomNo] [int] NULL,
	[hotelId] [int] NULL,
	[orderQuantity] [int] NULL,
	[night] [int] NULL,
	[checkIn] [nvarchar](50) NULL,
	[checkOut] [nvarchar](50) NULL
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblOrderService]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblOrderService](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [varchar](50) NULL,
	[serviceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblRole]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblRole](
	[RoleId] [int] NOT NULL,
	[RoleName] [varchar](50) NULL,
 CONSTRAINT [PK__tblRole__8AFACE1A279BF2DB] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblRoom]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblRoom](
	[hotelId] [int] NULL,
	[roomNo] [int] IDENTITY(0,1) NOT NULL,
	[roomName] [varchar](50) NULL,
	[availableDate] [date] NULL,
	[quantity] [int] NULL,
	[typeId] [int] NULL,
	[roomPrice] [float] NULL,
 CONSTRAINT [PK__tblRoom__6C3BFE6DEEE2719B] PRIMARY KEY CLUSTERED 
(
	[roomNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblService]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblService](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[price] [float] NULL,
	[image] [nvarchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[tblTypeRoom]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblTypeRoom](
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [varchar](50) NULL,
	[Description] [text] NULL,
	[MaxPeople] [int] NULL,
	[Image] [text] NULL,
	[Utilities] [varchar](255) NULL,
	[Bed] [varchar](255) NULL,
 CONSTRAINT [PK__tblTypeR__F04DF13AD997F433] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

/****** Object:  Table [dbo].[tblUser]    Script Date: 7/6/2023 2:11:24 AM ******/




CREATE TABLE [dbo].[tblUser](
	[userId] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](200) NULL,
	[PhoneNumber] [varchar](12) NULL
) ON [PRIMARY]

INSERT [dbo].[tblAccount] ([userId], [Password], [RoleId], [Status]) VALUES (N'admin', N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, N'Active')
INSERT [dbo].[tblAccount] ([userId], [Password], [RoleId], [Status]) VALUES (N'Anh Tuan', N'Ha Tinh', 1, N'1')
INSERT [dbo].[tblAccount] ([userId], [Password], [RoleId], [Status]) VALUES (N'anhtuan', N'3aa03ae2033a9672f1c29a06dbe91fab8fe62b604914e1ea2329809c690b206e', 2, N'Active')
INSERT [dbo].[tblAccount] ([userId], [Password], [RoleId], [Status]) VALUES (N'letan1', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 3, N'Active')
INSERT [dbo].[tblAccount] ([userId], [Password], [RoleId], [Status]) VALUES (N'longpc', N'dbbe8a876522e27c6e40dee5ed2093523067ca83743727ff6f3fecb3b5c4d4c4', 2, N'Active')
INSERT [dbo].[tblAccount] ([userId], [Password], [RoleId], [Status]) VALUES (N'nctuan', N'3aa03ae2033a9672f1c29a06dbe91fab8fe62b604914e1ea2329809c690b206e', 2, N'Active')
INSERT [dbo].[tblAccount] ([userId], [Password], [RoleId], [Status]) VALUES (N'user', N'04f8996da763b7a969b1028ee3007569eaf3a635486ddab211d512c85b9df8fb', 2, N'Active')

INSERT [dbo].[tblDiscount] ([discountCode], [discountValue], [existDate], [StartDate]) VALUES (N'giam100', 10, CAST(N'2023-06-10' AS Date), CAST(N'2023-06-07' AS Date))

INSERT [dbo].[tblFeedBack] ([roomNo], [userId], [value], [description]) VALUES (0, N'user', 5, N'Hay qua o day phong rat la tot')
INSERT [dbo].[tblFeedBack] ([roomNo], [userId], [value], [description]) VALUES (0, N'longpc', 4, N'Phong o day hoi ban, can khac phuc, nhieu khach se khong hai long o day')

SET IDENTITY_INSERT [dbo].[tblHotel] ON 

INSERT [dbo].[tblHotel] ([hotelId], [hotelName], [hotelAddress], [Status]) VALUES (0, N'Sona', N'Da Nang', 1)
INSERT [dbo].[tblHotel] ([hotelId], [hotelName], [hotelAddress], [Status]) VALUES (1, N'Anh Tuan', N'Ha Tinh', 1)
INSERT [dbo].[tblHotel] ([hotelId], [hotelName], [hotelAddress], [Status]) VALUES (2, N'Cao Khanh', N'Nghe An', 1)
INSERT [dbo].[tblHotel] ([hotelId], [hotelName], [hotelAddress], [Status]) VALUES (3, N'Nc Tuan', N'Ha Tinh', 1)
SET IDENTITY_INSERT [dbo].[tblHotel] OFF

INSERT [dbo].[tblOrder] ([orderId], [userId], [orderDate], [total], [status]) VALUES (N'0zmfCFDYSq', N'longpc', CAST(N'2023-07-05' AS Date), 100, 2)
INSERT [dbo].[tblOrder] ([orderId], [userId], [orderDate], [total], [status]) VALUES (N'fagFDhBNfy', N'user', CAST(N'2023-07-05' AS Date), 250, 2)

INSERT [dbo].[tblOrderDetails] ([orderId], [roomNo], [hotelId], [orderQuantity], [night], [checkIn], [checkOut]) VALUES (N'fagFDhBNfy', 0, 0, 2, 1, N'2023-07-06', N'2023-07-07')
INSERT [dbo].[tblOrderDetails] ([orderId], [roomNo], [hotelId], [orderQuantity], [night], [checkIn], [checkOut]) VALUES (N'0zmfCFDYSq', 0, 0, 1, 1, N'2023-07-06', N'2023-07-07')

SET IDENTITY_INSERT [dbo].[tblOrderService] ON 

INSERT [dbo].[tblOrderService] ([id], [orderId], [serviceId]) VALUES (56, N'fagFDhBNfy', 1)
INSERT [dbo].[tblOrderService] ([id], [orderId], [serviceId]) VALUES (57, N'fagFDhBNfy', 2)
SET IDENTITY_INSERT [dbo].[tblOrderService] OFF

INSERT [dbo].[tblRole] ([RoleId], [RoleName]) VALUES (1, N'admin')
INSERT [dbo].[tblRole] ([RoleId], [RoleName]) VALUES (2, N'customer')
INSERT [dbo].[tblRole] ([RoleId], [RoleName]) VALUES (3, N'receptionist')

SET IDENTITY_INSERT [dbo].[tblRoom] ON 

INSERT [dbo].[tblRoom] ([hotelId], [roomNo], [roomName], [availableDate], [quantity], [typeId], [roomPrice]) VALUES (0, 0, N'Delux', CAST(N'2022-03-19' AS Date), 5, 1, 500)
INSERT [dbo].[tblRoom] ([hotelId], [roomNo], [roomName], [availableDate], [quantity], [typeId], [roomPrice]) VALUES (0, 1, N'Standard', CAST(N'2022-03-19' AS Date), 10, 2, 200)
INSERT [dbo].[tblRoom] ([hotelId], [roomNo], [roomName], [availableDate], [quantity], [typeId], [roomPrice]) VALUES (0, 2, N'Superiord', CAST(N'2022-03-19' AS Date), 5, 3, 600)
SET IDENTITY_INSERT [dbo].[tblRoom] OFF

SET IDENTITY_INSERT [dbo].[tblService] ON 

INSERT [dbo].[tblService] ([id], [name], [price], [image], [status]) VALUES (1, N'dọn phòng nhanh', 25, N'rua1.PNG', NULL)
INSERT [dbo].[tblService] ([id], [name], [price], [image], [status]) VALUES (2, N'giặt ủi', 25, NULL, NULL)
INSERT [dbo].[tblService] ([id], [name], [price], [image], [status]) VALUES (3, N'đánh giày', 25, NULL, NULL)
INSERT [dbo].[tblService] ([id], [name], [price], [image], [status]) VALUES (4, N'massage', 25, NULL, NULL)
INSERT [dbo].[tblService] ([id], [name], [price], [image], [status]) VALUES (5, N'buffet sáng', 100, NULL, NULL)
INSERT [dbo].[tblService] ([id], [name], [price], [image], [status]) VALUES (6, N'PHUONG LONG', 200, N'meo2.PNG', NULL)
SET IDENTITY_INSERT [dbo].[tblService] OFF

SET IDENTITY_INSERT [dbo].[tblTypeRoom] ON 

INSERT [dbo].[tblTypeRoom] ([typeId], [typeName], [Description], [MaxPeople], [Image], [Utilities], [Bed]) VALUES (1, N'delux', N'Khong co', 3, N'room-1.jpg', N'khong', N'KING')
INSERT [dbo].[tblTypeRoom] ([typeId], [typeName], [Description], [MaxPeople], [Image], [Utilities], [Bed]) VALUES (2, N'standard', N'standard room', 2, N'room-2.jpg', N'standard cho moi nguoi', N'SINGLE')
INSERT [dbo].[tblTypeRoom] ([typeId], [typeName], [Description], [MaxPeople], [Image], [Utilities], [Bed]) VALUES (3, N'superiod', N'superiod cho moi nguoi', 1, N'room-3.jpg', N'superiord', N'SINGLE')
SET IDENTITY_INSERT [dbo].[tblTypeRoom] OFF

INSERT [dbo].[tblUser] ([userId], [Name], [Email], [PhoneNumber]) VALUES (N'user', N'Anh Tuấn', N'Silver.ak42@gmail.com', N'0982835899')
INSERT [dbo].[tblUser] ([userId], [Name], [Email], [PhoneNumber]) VALUES (N'admin', N'Anh Tuan', N'Silver.ak42@gmail.com', N'0982835899')
INSERT [dbo].[tblUser] ([userId], [Name], [Email], [PhoneNumber]) VALUES (N'anhtuan', N'Anh Tuấn', N'Silver.ak42@gmail.com', N'0982836899')
INSERT [dbo].[tblUser] ([userId], [Name], [Email], [PhoneNumber]) VALUES (N'nctuan', N'Ng?c Tu?n', N'a', N'12314')
INSERT [dbo].[tblUser] ([userId], [Name], [Email], [PhoneNumber]) VALUES (N'letan1', N'Lễ Tân', N'Silver.ak42@gmail.com', N'0982836899')
INSERT [dbo].[tblUser] ([userId], [Name], [Email], [PhoneNumber]) VALUES (N'longpc', N'PHUONG LONG', N'fang.longpc@gmail.com', N'0984065979')

ALTER TABLE [dbo].[tblAccount]  WITH CHECK ADD  CONSTRAINT [FK__tblAccoun__RoleI__25869641] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tblRole] ([RoleId])

ALTER TABLE [dbo].[tblAccount] CHECK CONSTRAINT [FK__tblAccoun__RoleI__25869641]

ALTER TABLE [dbo].[tblFeedBack]  WITH CHECK ADD  CONSTRAINT [FK__tblFeedBa__roomN__37A5467C] FOREIGN KEY([roomNo])
REFERENCES [dbo].[tblRoom] ([roomNo])

ALTER TABLE [dbo].[tblFeedBack] CHECK CONSTRAINT [FK__tblFeedBa__roomN__37A5467C]

ALTER TABLE [dbo].[tblFeedBack]  WITH CHECK ADD  CONSTRAINT [FK__tblFeedBa__userI__31EC6D26] FOREIGN KEY([userId])
REFERENCES [dbo].[tblAccount] ([userId])

ALTER TABLE [dbo].[tblFeedBack] CHECK CONSTRAINT [FK__tblFeedBa__userI__31EC6D26]

ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK__tblOrder__userId__34C8D9D1] FOREIGN KEY([userId])
REFERENCES [dbo].[tblAccount] ([userId])

ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK__tblOrder__userId__34C8D9D1]

ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD FOREIGN KEY([hotelId])
REFERENCES [dbo].[tblHotel] ([hotelId])

ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__tblOrderD__order__3B75D760] FOREIGN KEY([orderId])
REFERENCES [dbo].[tblOrder] ([orderId])

ALTER TABLE [dbo].[tblOrderDetails] CHECK CONSTRAINT [FK__tblOrderD__order__3B75D760]

ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__tblOrderD__roomN__3C69FB99] FOREIGN KEY([roomNo])
REFERENCES [dbo].[tblRoom] ([roomNo])

ALTER TABLE [dbo].[tblOrderDetails] CHECK CONSTRAINT [FK__tblOrderD__roomN__3C69FB99]

ALTER TABLE [dbo].[tblOrderService]  WITH CHECK ADD  CONSTRAINT [FK__tblOrderS__order__3D5E1FD2] FOREIGN KEY([orderId])
REFERENCES [dbo].[tblOrder] ([orderId])

ALTER TABLE [dbo].[tblOrderService] CHECK CONSTRAINT [FK__tblOrderS__order__3D5E1FD2]

ALTER TABLE [dbo].[tblOrderService]  WITH CHECK ADD FOREIGN KEY([serviceId])
REFERENCES [dbo].[tblService] ([id])

ALTER TABLE [dbo].[tblRoom]  WITH CHECK ADD  CONSTRAINT [FK__tblRoom__hotelId__3F466844] FOREIGN KEY([hotelId])
REFERENCES [dbo].[tblHotel] ([hotelId])

ALTER TABLE [dbo].[tblRoom] CHECK CONSTRAINT [FK__tblRoom__hotelId__3F466844]

ALTER TABLE [dbo].[tblRoom]  WITH CHECK ADD  CONSTRAINT [FK__tblRoom__typeId__403A8C7D] FOREIGN KEY([typeId])
REFERENCES [dbo].[tblTypeRoom] ([typeId])

ALTER TABLE [dbo].[tblRoom] CHECK CONSTRAINT [FK__tblRoom__typeId__403A8C7D]

ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK__tblUser__userId__276EDEB3] FOREIGN KEY([userId])
REFERENCES [dbo].[tblAccount] ([userId])

ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK__tblUser__userId__276EDEB3]

ALTER DATABASE [BookingHotel] SET  READ_WRITE 

