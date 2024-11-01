USE [master]
GO
/****** Object:  Database [Pet|Shop]    Script Date: 29.10.2024 11:06:23 ******/
CREATE DATABASE [Pet|Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pet_Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pet_Shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pet_Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pet_Shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pet|Shop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pet|Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pet|Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pet|Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pet|Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pet|Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pet|Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pet|Shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pet|Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pet|Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pet|Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pet|Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pet|Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pet|Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pet|Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pet|Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pet|Shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pet|Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pet|Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pet|Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pet|Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pet|Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pet|Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pet|Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pet|Shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pet|Shop] SET  MULTI_USER 
GO
ALTER DATABASE [Pet|Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pet|Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pet|Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pet|Shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pet|Shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pet|Shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Pet|Shop] SET QUERY_STORE = OFF
GO
USE [Pet|Shop]
GO
/****** Object:  Table [dbo].[category]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manufacture]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manufacture](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_manufacture] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] NOT NULL,
	[statusId] [int] NOT NULL,
	[article] [nvarchar](50) NOT NULL,
	[orderNumber] [int] NOT NULL,
	[quentity] [int] NOT NULL,
	[dateOfOrder] [date] NOT NULL,
	[pickUpDate] [date] NOT NULL,
	[pickUpPoint] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[PickUpCode] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pickUpPoint]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pickUpPoint](
	[id] [int] NOT NULL,
	[indexCity] [int] NOT NULL,
	[idCity] [int] NOT NULL,
	[street] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_pickUpPoint] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[idUnit] [int] NOT NULL,
	[orderId] [int] NULL,
	[idProduct] [int] NOT NULL,
	[idManufacture] [int] NOT NULL,
	[idSaler] [int] NOT NULL,
	[idCategory] [int] NOT NULL,
	[article] [nvarchar](50) NOT NULL,
	[cost] [int] NOT NULL,
	[maxSale] [int] NOT NULL,
	[saleNow] [int] NOT NULL,
	[quentityInStock] [int] NOT NULL,
	[description] [nvarchar](100) NOT NULL,
	[imageName] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productName]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productName](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_productName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roleId]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roleId](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_roleId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[saler]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saler](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_saler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statusId]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusId](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_statusId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unit]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 29.10.2024 11:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] NOT NULL,
	[roleId] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[category] ([id], [name]) VALUES (1, N'Для животных')
INSERT [dbo].[category] ([id], [name]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[category] ([id], [name]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[city] ([id], [name]) VALUES (1, N'Нефтеюганск')
GO
INSERT [dbo].[manufacture] ([id], [name]) VALUES (1, N'Cat Chow')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (2, N'Chappy')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (3, N'Dog Chow')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (4, N'Dreames')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (6, N'LIKER')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (7, N'Nobby')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (8, N'Pro Plan')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (9, N'TitBit')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (10, N'Triol')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (11, N'trixie')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (12, N'True Touch')
INSERT [dbo].[manufacture] ([id], [name]) VALUES (13, N'ZooM')
GO
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (1, 1, N'D643B5', 6, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов Роберт Васильевич', 606)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (2, 1, N'E345R4', 4, 2, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, N'null', 604)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (3, 1, N'E431R5', 5, 10, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, N'null', 605)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (4, 1, N'E532Q5', 3, 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова Майя Артемьевна', 603)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (5, 2, N'F432F4', 2, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, N'null', 602)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (6, 1, N'G345E4', 4, 1, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, N'null', 604)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (7, 2, N'G453T5', 1, 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, N'null', 601)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (8, 2, N'H342F5', 7, 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, N'null', 607)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (9, 1, N'H436R4', 6, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов Роберт Васильевич', 606)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (10, 2, N'K436T5', 8, 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, N'null', 608)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (11, 2, N'K452T5', 9, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова Эмилия Артёмовна', 609)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (12, 1, N'M356R4', 10, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова Виктория Степановна', 610)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (13, 2, N'Q245F5', 7, 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, N'null', 607)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (14, 1, N'R356F4', 5, 1, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, N'null', 605)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (15, 1, N'T432F4', 3, 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова Майя Артемьевна', 603)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (16, 2, N'V527T5', 8, 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, N'null', 608)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (17, 2, N'V527T5', 9, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова Эмилия Артёмовна', 609)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (18, 1, N'W548O7', 10, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова Виктория Степановна', 610)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (19, 2, N'Y324F4', 2, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, N'null', 602)
INSERT [dbo].[Order] ([id], [statusId], [article], [orderNumber], [quentity], [dateOfOrder], [pickUpDate], [pickUpPoint], [FIO], [PickUpCode]) VALUES (20, 2, N'А112Т4', 1, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, N'null', 601)
GO
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (1, 344288, 1, N'ул. Чехова 1')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (2, 614164, 1, N'ул. Степная 30')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (3, 394242, 1, N'ул. Коммунистическая 43')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (4, 660540, 1, N'ул. Солнечная 25')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (5, 125837, 1, N'ул. Шоссейная 40')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (6, 125703, 1, N'ул. Партизанская 49')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (7, 625283, 1, N'ул. Победы 46')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (8, 614611, 1, N'ул. Молодежная 50')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (9, 454311, 1, N'ул. Новая 19')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (10, 660007, 1, N'ул. Октябрьская 19')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (11, 603036, 1, N'ул. Садовая 4')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (12, 450983, 1, N'ул. Комсомольская 26')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (13, 394782, 1, N'ул. Чехова 3')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (14, 603002, 1, N'ул. Дзержинского 28')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (15, 450558, 1, N'ул. Набережная 30')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (16, 394060, 1, N'ул. Фрунзе 43')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (17, 410661, 1, N'ул. Школьная 50')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (18, 625590, 1, N'ул. Коммунистическая 20')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (19, 625683, 1, N'ул. 8 Марта')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (20, 400562, 1, N'ул. Зеленая 32')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (21, 614510, 1, N'ул. Маяковского 47')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (22, 410542, 1, N'ул. Светлая 46')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (23, 620839, 1, N'ул. Цветочная 8')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (24, 443890, 1, N'ул. Коммунистическая 1')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (25, 603379, 1, N'ул. Спортивная 46')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (26, 603721, 1, N'ул. Гоголя 41')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (27, 410172, 1, N'ул. Северная 13')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (28, 420151, 1, N'ул. Вишневая 32')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (29, 125061, 1, N'ул. Подгорная 8')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (30, 630370, 1, N'ул. Шоссейная 24')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (31, 614753, 1, N'ул. Полевая 35')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (32, 426030, 1, N'ул. Маяковского 44')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (33, 450375, 1, N'ул. Клубная 44')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (34, 625560, 1, N'ул. Некрасова 12')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (35, 630201, 1, N'ул. Комсомольская 17')
INSERT [dbo].[pickUpPoint] ([id], [indexCity], [idCity], [street]) VALUES (36, 190949, 1, N'ул. Мичурина 26')
GO
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (1, 1, 20, 3, 4, 1, 2, N'А112Т4', 123, 30, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (2, 1, 7, 8, 12, 2, 1, N'G453T5', 149, 15, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (3, 1, 5, 7, 8, 2, 2, N'F432F4', 1200, 10, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (4, 1, 19, 3, 9, 1, 3, N'Y324F4', 86, 5, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (5, 1, 4, 3, 9, 1, 3, N'E532Q5', 166, 15, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (6, 1, 15, 7, 2, 2, 3, N'T432F4', 1700, 25, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (7, 1, 6, 6, 6, 2, 3, N'G345E4', 300, 5, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (8, 1, 2, 1, 5, 2, 2, N'E345R4', 199, 5, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (9, 1, 14, 5, 7, 1, 3, N'R356F4', 234, 10, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (10, 1, 3, 3, 10, 2, 3, N'E431R5', 170, 5, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (11, 1, NULL, 1, 10, 1, 3, N'D563F4', 600, 10, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (12, 1, 9, 1, 10, 1, 3, N'H436R4', 300, 15, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (13, 1, 1, 7, 1, 1, 2, N'D643B5', 4100, 30, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (14, 1, 8, 5, 10, 2, 1, N'H432F4', 385, 10, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (15, 1, 14, 7, 1, 2, 2, N'S245R4', 280, 15, 3, 8, N'Сухой корм для кошек CAT CHOW', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (16, 1, 15, 7, 2, 1, 3, N'V352R4', 1700, 25, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (17, 1, 8, 1, 10, 2, 3, N'H342F5', 510, 5, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (18, 1, 13, 1, 10, 2, 3, N'Q245F5', 510, 5, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (19, 1, 7, 7, 8, 1, 3, N'G542F5', 2190, 30, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (20, 1, 9, 3, 10, 2, 3, N'H542R6', 177, 15, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (21, 1, 10, 6, 10, 2, 3, N'K436T5', 100, 5, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (22, 1, 17, 1, 10, 1, 3, N'V527T5', 640, 5, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (23, 1, 11, 4, 13, 2, 3, N'K452T5', 800, 25, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (24, 1, 3, 2, 10, 2, 3, N'E466T6', 3500, 30, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (25, 1, NULL, 5, 10, 2, 1, N'B427R5', 400, 15, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (26, 1, 9, 5, 10, 1, 1, N'H643W2', 292, 25, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (27, 1, NULL, 6, 11, 1, 3, N'D356R4', 600, 15, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (28, 1, 3, 3, 9, 2, 3, N'E434U6', 140, 20, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (29, 1, 12, 3, 9, 2, 3, N'M356R4', 50, 5, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', N'null', N'null')
INSERT [dbo].[Product] ([id], [idUnit], [orderId], [idProduct], [idManufacture], [idSaler], [idCategory], [article], [cost], [maxSale], [saleNow], [quentityInStock], [description], [imageName], [image]) VALUES (30, 1, 18, 7, 3, 1, 3, N'W548O7', 600, 15, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', N'null', N'null')
GO
INSERT [dbo].[productName] ([id], [name]) VALUES (1, N'Игрушка')
INSERT [dbo].[productName] ([id], [name]) VALUES (2, N'Клетка')
INSERT [dbo].[productName] ([id], [name]) VALUES (3, N'Лакомство')
INSERT [dbo].[productName] ([id], [name]) VALUES (4, N'Лежак')
INSERT [dbo].[productName] ([id], [name]) VALUES (5, N'Миска')
INSERT [dbo].[productName] ([id], [name]) VALUES (6, N'Мячик')
INSERT [dbo].[productName] ([id], [name]) VALUES (7, N'Сухой корм')
INSERT [dbo].[productName] ([id], [name]) VALUES (8, N'Щетка-варежка')
GO
INSERT [dbo].[roleId] ([id], [name]) VALUES (1, N'Администратор')
INSERT [dbo].[roleId] ([id], [name]) VALUES (2, N'Клиент')
INSERT [dbo].[roleId] ([id], [name]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[saler] ([id], [name]) VALUES (1, N'PetShop')
INSERT [dbo].[saler] ([id], [name]) VALUES (2, N'ZooMir')
GO
INSERT [dbo].[statusId] ([id], [name]) VALUES (1, N'Завершен')
INSERT [dbo].[statusId] ([id], [name]) VALUES (2, N'Новый ')
GO
INSERT [dbo].[unit] ([id], [name]) VALUES (1, N'шт.')
GO
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (1, 1, N'pixil59@gmail.com', N'2L6KZG', N'2L6KZG')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (2, 1, N'deummecillummu-4992@mail.ru', N'uzWC67', N'uzWC67')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (3, 1, N'vilagajaunne-5170@yandex.ru', N'8ntwUp', N'8ntwUp')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (4, 3, N'frusubroppotou656@yandex.ru', N'YOyhfR', N'YOyhfR')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (5, 3, N'leuttevitrafo1998@mail.ru', N'RSbvHv', N'RSbvHv')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (6, 3, N'frapreubrulloba1141@yandex.ru', N'rwVDh9', N'rwVDh9')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (7, 2, N'loudittoimmolau1900@gmail.com', N'LdNyos', N'LdNyos')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (8, 2, N'hittuprofassa4984@mail.com', N'gynQMT', N'gynQMT')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (9, 2, N'freineiciweijau888@yandex.ru', N'AtnDjr', N'AtnDjr')
INSERT [dbo].[user] ([id], [roleId], [FIO], [login], [password]) VALUES (10, 2, N'nokupekidda2001@gmail.com', N'JlFRCZ', N'JlFRCZ')
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_pickUpPoint] FOREIGN KEY([pickUpPoint])
REFERENCES [dbo].[pickUpPoint] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_pickUpPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_statusId] FOREIGN KEY([statusId])
REFERENCES [dbo].[statusId] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_statusId]
GO
ALTER TABLE [dbo].[pickUpPoint]  WITH CHECK ADD  CONSTRAINT [FK_pickUpPoint_city] FOREIGN KEY([idCity])
REFERENCES [dbo].[city] ([id])
GO
ALTER TABLE [dbo].[pickUpPoint] CHECK CONSTRAINT [FK_pickUpPoint_city]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_category] FOREIGN KEY([idCategory])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_manufacture] FOREIGN KEY([idManufacture])
REFERENCES [dbo].[manufacture] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_manufacture]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_productName] FOREIGN KEY([idProduct])
REFERENCES [dbo].[productName] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_productName]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_saler] FOREIGN KEY([idSaler])
REFERENCES [dbo].[saler] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_saler]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_unit] FOREIGN KEY([idUnit])
REFERENCES [dbo].[unit] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_unit]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_roleId] FOREIGN KEY([roleId])
REFERENCES [dbo].[roleId] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_roleId]
GO
USE [master]
GO
ALTER DATABASE [Pet|Shop] SET  READ_WRITE 
GO
