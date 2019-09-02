USE [master]
GO
/****** Object:  Database [Event]    Script Date: 02/09/2019 16:48:26 ******/
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
USE [Event]
GO
/****** Object:  Table [dbo].[image]    Script Date: 02/09/2019 16:48:27 ******/
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

INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (12, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\BG_0119_22.JPG', 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (13, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\BG_0262_22.JPG', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 3, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (14, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\BG_0375_22.JPG', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 9, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (27, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\ללכת-אנשים-דמות-חנה-מטושטש-bokeh-רקע-שימוש-יום-צילום-סטוק_csp44017445~1.jpg', 1, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (28, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\9294.jpg_wh860~1.jpg', 1, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (29, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\388337_19~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (30, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\p-1-ppimg~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (31, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\IMG_2249~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (32, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\1 פ~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (33, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\__IMG_6113 - עותק~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (34, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\1~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (35, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A3638~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (36, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\2~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (37, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A1948~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (38, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\7תמר~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (39, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A3593~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (40, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\3~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (41, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A1963~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (42, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\2~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (43, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\3~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (44, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\1 פ~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (45, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\1~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (46, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\__IMG_6113 - עותק~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (47, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (48, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A3593~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (49, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\8~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (50, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\7תמר~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (51, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A1963~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (52, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A3638~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (53, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A1948~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (54, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\1~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (55, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\3~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (56, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A1948~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (57, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A3638~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (58, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\__IMG_6113 - עותק~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (59, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A3593~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (60, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\7תמר~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (61, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\2~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (62, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A1963~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (63, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\1 פ~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (64, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A3638~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (65, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\1~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (66, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\7תמר~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (67, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A1948~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (68, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\2~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 2, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (69, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\1 פ~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (70, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\__IMG_6113 - עותק~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (71, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A1963~1.jpg', 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (72, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\6D5A3593~1.jpg', 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 1, NULL)
INSERT [dbo].[image] ([id], [name], [url], [isBlur], [isClosedEye], [isDark], [isCutFace], [isGroom], [isLight], [isInside], [hasChildren], [hasYoung], [hasAdults], [numPerson], [isInRecycleBin]) VALUES (73, NULL, N'C:\Users\user1\Documents\יהודית\google\eventProject\Event-server\Server_Side\WebApi\UploadFile\3~1.jpg', 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 1, NULL)
SET IDENTITY_INSERT [dbo].[image] OFF
USE [master]
GO
ALTER DATABASE [Event] SET  READ_WRITE 
GO
