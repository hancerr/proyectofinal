USE [master]
GO
/****** Object:  Database [hancerAutoImport]    Script Date: 16/12/2022 12:44:37 a. m. ******/
CREATE DATABASE [hancerAutoImport]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hancerAutoImport', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\hancerAutoImport.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'hancerAutoImport_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\hancerAutoImport_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [hancerAutoImport] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hancerAutoImport].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hancerAutoImport] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hancerAutoImport] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hancerAutoImport] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hancerAutoImport] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hancerAutoImport] SET ARITHABORT OFF 
GO
ALTER DATABASE [hancerAutoImport] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hancerAutoImport] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hancerAutoImport] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hancerAutoImport] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hancerAutoImport] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hancerAutoImport] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hancerAutoImport] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hancerAutoImport] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hancerAutoImport] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hancerAutoImport] SET  ENABLE_BROKER 
GO
ALTER DATABASE [hancerAutoImport] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hancerAutoImport] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hancerAutoImport] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hancerAutoImport] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hancerAutoImport] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hancerAutoImport] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hancerAutoImport] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hancerAutoImport] SET RECOVERY FULL 
GO
ALTER DATABASE [hancerAutoImport] SET  MULTI_USER 
GO
ALTER DATABASE [hancerAutoImport] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hancerAutoImport] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hancerAutoImport] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hancerAutoImport] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [hancerAutoImport] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [hancerAutoImport] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'hancerAutoImport', N'ON'
GO
ALTER DATABASE [hancerAutoImport] SET QUERY_STORE = OFF
GO
USE [hancerAutoImport]
GO
/****** Object:  Table [dbo].[Auto]    Script Date: 16/12/2022 12:44:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auto](
	[ID Auto] [int] NOT NULL,
	[Marca] [varchar](100) NULL,
	[Precio] [int] NULL,
	[ID pais del que es esportado] [int] NOT NULL,
	[Modelo] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autos]    Script Date: 16/12/2022 12:44:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autos](
	[ID empleado] [int] NOT NULL,
	[Nombre empleado] [varchar](100) NULL,
	[Cantidad de autos bendidos] [int] NULL,
	[ID del auto que vendio] [int] NULL,
	[Comiciones acumuladas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/12/2022 12:44:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID cliente] [int] NOT NULL,
	[Nombre del cliente] [varchar](100) NULL,
	[ID auto que conpro] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deuda]    Script Date: 16/12/2022 12:44:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deuda](
	[No.de deuda] [int] NOT NULL,
	[Monto de deuda] [int] NULL,
	[Porque motivo debe] [varchar](100) NULL,
	[ID del cliente que debe] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 16/12/2022 12:44:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID empleado] [int] NOT NULL,
	[Nombre empleado] [varchar](100) NULL,
	[Cantidad de autos bendidos] [int] NULL,
	[ID del auto que vendio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais de exporta]    Script Date: 16/12/2022 12:44:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais de exporta](
	[ID Pais del que esportamos] [int] NOT NULL,
	[Nombre de autos que exportamos comunmente] [varchar](100) NULL,
	[ID de Auto exportado] [int] NOT NULL,
	[ID de Conpardores de estos autos] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [hancerAutoImport] SET  READ_WRITE 
GO
