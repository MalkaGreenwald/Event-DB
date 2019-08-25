USE [master]
GO
/****** Object:  Database [PhotoWedding]    Script Date: 18/08/2019 12:26:56 ******/
CREATE DATABASE [PhotoWedding]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhotoWedding', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PhotoWedding.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PhotoWedding_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PhotoWedding_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PhotoWedding] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhotoWedding].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhotoWedding] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhotoWedding] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhotoWedding] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhotoWedding] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhotoWedding] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhotoWedding] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PhotoWedding] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhotoWedding] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhotoWedding] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhotoWedding] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhotoWedding] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhotoWedding] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhotoWedding] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhotoWedding] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhotoWedding] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PhotoWedding] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhotoWedding] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhotoWedding] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhotoWedding] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhotoWedding] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhotoWedding] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhotoWedding] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhotoWedding] SET RECOVERY FULL 
GO
ALTER DATABASE [PhotoWedding] SET  MULTI_USER 
GO
ALTER DATABASE [PhotoWedding] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhotoWedding] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhotoWedding] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhotoWedding] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhotoWedding] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PhotoWedding', N'ON'
GO
ALTER DATABASE [PhotoWedding] SET QUERY_STORE = OFF
GO
USE [PhotoWedding]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PhotoWedding]
GO
/****** Object:  Table [dbo].[images]    Script Date: 18/08/2019 12:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](max) NOT NULL,
	[isBride] [bit] NULL,
	[isGroom] [bit] NULL,
	[isCouple] [bit] NULL,
	[isOutside] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PhotoWedding] SET  READ_WRITE 
GO
