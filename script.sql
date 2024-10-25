USE [master]
GO
/****** Object:  Database [Pet|Shop]    Script Date: 25.10.2024 14:39:53 ******/
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
/****** Object:  Table [dbo].[category]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manufacture]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manufacture](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 25.10.2024 14:39:54 ******/
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
	[PickUpCode] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pickUpPoint]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pickUpPoint](
	[id] [int] NOT NULL,
	[indexCity] [int] NOT NULL,
	[idCity] [int] NOT NULL,
	[street] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 25.10.2024 14:39:54 ******/
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
	[image] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productName]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productName](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roleId]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roleId](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[saler]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saler](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statusId]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusId](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unit]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 25.10.2024 14:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] NOT NULL,
	[roleId] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Pet|Shop] SET  READ_WRITE 
GO
