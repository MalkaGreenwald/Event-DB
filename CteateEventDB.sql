USE [master]
GO
/****** Object:  Database [Event]    Script Date: 05/09/2019 15:41:49 ******/
CREATE DATABASE [Event]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Event', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Event.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Event_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Event_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Event] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Event].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Event] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Event] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Event] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Event] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Event] SET ARITHABORT OFF 
GO
ALTER DATABASE [Event] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Event] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Event] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Event] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Event] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Event] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Event] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Event] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Event] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Event] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Event] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Event] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Event] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Event] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Event] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Event] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Event] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Event] SET RECOVERY FULL 
GO
ALTER DATABASE [Event] SET  MULTI_USER 
GO
ALTER DATABASE [Event] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Event] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Event] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Event] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Event] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Event', N'ON'
GO
ALTER DATABASE [Event] SET QUERY_STORE = OFF
GO
USE [Event]
GO
/****** Object:  Table [dbo].[Groom]    Script Date: 05/09/2019 15:41:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](max) NULL,
	[token] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_groom] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 05/09/2019 15:41:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[url] [nvarchar](max) NOT NULL,
	[isBlur] [bit] NULL,
	[isClosedEye] [bit] NULL,
	[isDark] [bit] NULL,
	[isCutFace] [bit] NULL,
	[isGroom] [bit] NULL,
	[isLight] [bit] NULL,
	[isInside] [bit] NULL,
	[hasChildren] [bit] NULL,
	[hasYoung] [bit] NULL,
	[hasAdults] [bit] NULL,
	[numPerson] [int] NULL,
	[isInRecycleBin] [bit] NULL,
 CONSTRAINT [PK_image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (204, N'3~1.jpg', N'http://localhost:50637/UploadFile/3~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (205, N'5~1.jpg', N'http://localhost:50637/UploadFile/5~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (214, N'BG_0297_22.JPG', N'http://localhost:50637/UploadFile/BG_0297_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (215, N'BG_0356_22.JPG', N'http://localhost:50637/UploadFile/BG_0356_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (216, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (217, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (218, N'BG_0130_22.JPG', N'http://localhost:50637/UploadFile/BG_0130_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (219, N'BG_0133_22.JPG', N'http://localhost:50637/UploadFile/BG_0133_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (220, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (221, N'BG_0297_22.JPG', N'http://localhost:50637/UploadFile/BG_0297_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (222, N'BG_0356_22.JPG', N'http://localhost:50637/UploadFile/BG_0356_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (223, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (224, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (225, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (226, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (227, N'BG_0783_22.JPG', N'http://localhost:50637/UploadFile/BG_0783_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (228, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (229, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (230, N'BG_0783_22.JPG', N'http://localhost:50637/UploadFile/BG_0783_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (231, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (232, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (233, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (234, N'BG_0783_22.JPG', N'http://localhost:50637/UploadFile/BG_0783_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (235, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (236, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (237, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (238, N'BG_0783_22.JPG', N'http://localhost:50637/UploadFile/BG_0783_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (239, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (240, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (241, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (242, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (243, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (244, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (245, N'BG_0356_22.JPG', N'http://localhost:50637/UploadFile/BG_0356_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (246, N'BG_0356_22.JPG', N'http://localhost:50637/UploadFile/BG_0356_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (247, N'BG_0130_22.JPG', N'http://localhost:50637/UploadFile/BG_0130_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (248, N'BG_0133_22.JPG', N'http://localhost:50637/UploadFile/BG_0133_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (249, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (250, N'BG_0297_22.JPG', N'http://localhost:50637/UploadFile/BG_0297_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (251, N'BG_0356_22.JPG', N'http://localhost:50637/UploadFile/BG_0356_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (252, N'BG_0360_22.JPG', N'http://localhost:50637/UploadFile/BG_0360_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (253, N'BG_0748_22.JPG', N'http://localhost:50637/UploadFile/BG_0748_22.JPG', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (254, N'BG_0751_22.JPG', N'http://localhost:50637/UploadFile/BG_0751_22.JPG', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (255, N'BG_0783_22.JPG', N'http://localhost:50637/UploadFile/BG_0783_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (256, N'__IMG_6113 - עותק~1.jpg', N'http://localhost:50637/UploadFile/__IMG_6113 - עותק~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (257, N'1 פ~1.jpg', N'http://localhost:50637/UploadFile/1 פ~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (258, N'1~1.jpg', N'http://localhost:50637/UploadFile/1~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (259, N'2~1.jpg', N'http://localhost:50637/UploadFile/2~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (260, N'3~1.jpg', N'http://localhost:50637/UploadFile/3~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (261, N'6~1.jpg', N'http://localhost:50637/UploadFile/6~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (262, N'6D5A1879~1.jpg', N'http://localhost:50637/UploadFile/6D5A1879~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (263, N'6D5A1918~1.jpg', N'http://localhost:50637/UploadFile/6D5A1918~1.jpg', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (264, N'6D5A1948~1.jpg', N'http://localhost:50637/UploadFile/6D5A1948~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (265, N'6D5A1963~1.jpg', N'http://localhost:50637/UploadFile/6D5A1963~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (266, N'6D5A3593~1.jpg', N'http://localhost:50637/UploadFile/6D5A3593~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (267, N'6D5A3638~1.jpg', N'http://localhost:50637/UploadFile/6D5A3638~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (268, N'7תמר~1.jpg', N'http://localhost:50637/UploadFile/7תמר~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (269, N'8~1.jpg', N'http://localhost:50637/UploadFile/8~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (270, N'9~1.jpg', N'http://localhost:50637/UploadFile/9~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (271, N'10~1.jpg', N'http://localhost:50637/UploadFile/10~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (272, N'11elish~1.jpg', N'http://localhost:50637/UploadFile/11elish~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (273, N'16תמר~1.jpg', N'http://localhost:50637/UploadFile/16תמר~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (274, N'18תמר~1.jpg', N'http://localhost:50637/UploadFile/18תמר~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (275, N'23-IMG_7293~1.jpg', N'http://localhost:50637/UploadFile/23-IMG_7293~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (276, N'667A4368~1.jpg', N'http://localhost:50637/UploadFile/667A4368~1.jpg', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (277, N'667A4395~1.jpg', N'http://localhost:50637/UploadFile/667A4395~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (278, N'511170-5a671415e0c9ebaa9cef11ffeb1c06f4~1.jpg', N'http://localhost:50637/UploadFile/511170-5a671415e0c9ebaa9cef11ffeb1c06f4~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (279, N'521154-12e452e83cff5da412622923f2a4412a~1.jpg', N'http://localhost:50637/UploadFile/521154-12e452e83cff5da412622923f2a4412a~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (280, N'521155-adfc074e262f2909c08f17fcab175e84~1.jpg', N'http://localhost:50637/UploadFile/521155-adfc074e262f2909c08f17fcab175e84~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (281, N'522549-3f28533a4c16d577bce5d25a1e2bbf50~1.jpg', N'http://localhost:50637/UploadFile/522549-3f28533a4c16d577bce5d25a1e2bbf50~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (282, N'522557-0cee4fab5ff65f3f932d699da92e1707~1.jpg', N'http://localhost:50637/UploadFile/522557-0cee4fab5ff65f3f932d699da92e1707~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (283, N'522949-d54cc78ba00f94e1659f9a9e155b8aaf~1.jpg', N'http://localhost:50637/UploadFile/522949-d54cc78ba00f94e1659f9a9e155b8aaf~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (284, N'522950-b11d495790cf6c6d0329bbdcffcffa99~1.jpg', N'http://localhost:50637/UploadFile/522950-b11d495790cf6c6d0329bbdcffcffa99~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (285, N'522951-899fb11620da25a5f33b64f267b78ace~1.jpg', N'http://localhost:50637/UploadFile/522951-899fb11620da25a5f33b64f267b78ace~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (286, N'522954-5859bbdf17ab83dcfdfc08e981c00306~1.jpg', N'http://localhost:50637/UploadFile/522954-5859bbdf17ab83dcfdfc08e981c00306~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (287, N'522956-ee29e37012cadcc4bc6612d2b5cf930b~1.jpg', N'http://localhost:50637/UploadFile/522956-ee29e37012cadcc4bc6612d2b5cf930b~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (288, N'BG_0130_22.JPG', N'http://localhost:50637/UploadFile/BG_0130_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (289, N'6~1.jpg', N'http://localhost:50637/UploadFile/6~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (290, N'1~1.jpg', N'http://localhost:50637/UploadFile/1~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (291, N'0.jpg', N'http://localhost:50637/UploadFile/0.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (292, N'0.jpg', N'http://localhost:50637/UploadFile/0.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (293, N'0.jpg', N'http://localhost:50637/UploadFile/0.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (294, N'1 פ~1.jpg', N'http://localhost:50637/UploadFile/1 פ~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (295, N'2~1.jpg', N'http://localhost:50637/UploadFile/2~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (296, N'BG_0130_22.JPG', N'http://localhost:50637/UploadFile/BG_0130_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (297, N'BG_0133_22.JPG', N'http://localhost:50637/UploadFile/BG_0133_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (298, N'BG_0281_22.JPG', N'http://localhost:50637/UploadFile/BG_0281_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (299, N'BG_0356_22.JPG', N'http://localhost:50637/UploadFile/BG_0356_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[image] OFF
USE [master]
GO
ALTER DATABASE [Event] SET  READ_WRITE 
GO
