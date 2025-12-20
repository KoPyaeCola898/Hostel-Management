USE [master]
GO
/****** Object:  Database [Hostels]    Script Date: 11/25/2025 2:21:54 PM ******/
CREATE DATABASE [Hostels]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hostels', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Hostels.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hostels_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Hostels_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Hostels] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hostels].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hostels] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hostels] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hostels] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hostels] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hostels] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hostels] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hostels] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hostels] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hostels] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hostels] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hostels] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hostels] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hostels] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hostels] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hostels] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hostels] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hostels] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hostels] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hostels] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hostels] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hostels] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hostels] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hostels] SET RECOVERY FULL 
GO
ALTER DATABASE [Hostels] SET  MULTI_USER 
GO
ALTER DATABASE [Hostels] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hostels] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hostels] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hostels] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hostels] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hostels] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hostels', N'ON'
GO
ALTER DATABASE [Hostels] SET QUERY_STORE = ON
GO
ALTER DATABASE [Hostels] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Hostels]
GO
/****** Object:  Table [dbo].[tbCherryRm]    Script Date: 11/25/2025 2:21:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCherryRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbDagonRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDagonRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbDagonRm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbFee]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbFee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[hostel] [varchar](50) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[feeStatus] [varchar](20) NULL,
 CONSTRAINT [PK_tbFee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbForm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbForm](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[rollno] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[phno] [varchar](50) NOT NULL,
	[major] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[fphno] [varchar](50) NOT NULL,
	[faddress] [varchar](50) NOT NULL,
	[hostel] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[alhostel] [varchar](50) NULL,
	[acstatus] [varchar](50) NULL,
 CONSTRAINT [PK_tbForm] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbGankGawRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbGankGawRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHostel]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHostel](
	[hid] [int] NOT NULL,
	[hname] [varchar](50) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[type] [varchar](10) NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbHostel] PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNguwaRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNguwaRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbOakkalapaRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOakkalapaRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPadaukRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPadaukRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbRule]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRule](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[rdes] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tbRule] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShwePyiTharRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShwePyiTharRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSwalTawRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSwalTawRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUser]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbYankinRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbYankinRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbZeZaWarRm]    Script Date: 11/25/2025 2:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbZeZaWarRm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [varchar](10) NOT NULL,
	[capacity] [int] NOT NULL,
	[occupied] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbCherryRm] ON 

INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 2, N'Unavailable')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbCherryRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbCherryRm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbDagonRm] ON 

INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 1, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 1, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbDagonRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbDagonRm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbFee] ON 

INSERT [dbo].[tbFee] ([id], [sid], [hostel], [roomNo], [feeStatus]) VALUES (1, 3, N'Cherry', N'R001', N'Paid')
INSERT [dbo].[tbFee] ([id], [sid], [hostel], [roomNo], [feeStatus]) VALUES (2, 4, N'Cherry', N'R001', N'Pending')
INSERT [dbo].[tbFee] ([id], [sid], [hostel], [roomNo], [feeStatus]) VALUES (3, 8, N'Dagon', N'R001', N'Pending')
INSERT [dbo].[tbFee] ([id], [sid], [hostel], [roomNo], [feeStatus]) VALUES (4, 1, N'Dagon', N'R002', N'Pending')
SET IDENTITY_INSERT [dbo].[tbFee] OFF
GO
SET IDENTITY_INSERT [dbo].[tbForm] ON 

INSERT [dbo].[tbForm] ([aid], [sid], [rollno], [name], [phno], [major], [address], [fname], [fphno], [faddress], [hostel], [status], [alhostel], [acstatus]) VALUES (1, 2, N'3CS-5', N'Mg Ko Ko', N'09383783838', N'Computer Science', N'Yangon', N'U Ba', N'093783838', N'Yangon', N'Yankin', N'Approved', N'Yankin', N'Pending')
INSERT [dbo].[tbForm] ([aid], [sid], [rollno], [name], [phno], [major], [address], [fname], [fphno], [faddress], [hostel], [status], [alhostel], [acstatus]) VALUES (2, 1, N'3CS-1 ', N'Mg Aung Aung', N'098383838', N'Computer Science', N'Mandalay', N'U Htun', N'093738138', N'Mandalay', N'Dagon', N'Approved', N'Dagon', N'Approved')
INSERT [dbo].[tbForm] ([aid], [sid], [rollno], [name], [phno], [major], [address], [fname], [fphno], [faddress], [hostel], [status], [alhostel], [acstatus]) VALUES (3, 3, N'1CS-7', N'Ma May Lay', N'093732827', N'ComputerScience', N'Bago', N'U Tin', N'09829239', N'Bago', N'None', N'Approved', N'Cherry', N'Approved')
INSERT [dbo].[tbForm] ([aid], [sid], [rollno], [name], [phno], [major], [address], [fname], [fphno], [faddress], [hostel], [status], [alhostel], [acstatus]) VALUES (4, 4, N'2Chem-6', N'Ma Su Su', N'092382999', N'Chemistry', N'Mon', N'U Aung Lin', N'093728857', N'Mon', N'Cherry', N'Approved', N'Cherry', N'Approved')
INSERT [dbo].[tbForm] ([aid], [sid], [rollno], [name], [phno], [major], [address], [fname], [fphno], [faddress], [hostel], [status], [alhostel], [acstatus]) VALUES (5, 8, N'1CS-22', N'Mg Nada Kyaw', N'098372837238', N'Computer Science', N'Bago', N'U Ba', N'0943253232', N'Bago', N'None', N'Approved', N'Dagon', N'Approved')
INSERT [dbo].[tbForm] ([aid], [sid], [rollno], [name], [phno], [major], [address], [fname], [fphno], [faddress], [hostel], [status], [alhostel], [acstatus]) VALUES (6, 13, N'1Eng-4', N'Ma Yu Ya Lwin', N'09827328882', N'English', N'Bago', N'U Thiha', N'09389327892', N'Bago', N'None', N'Approved', N'Nguwa', N'Pending')
SET IDENTITY_INSERT [dbo].[tbForm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbGankGawRm] ON 

INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbGankGawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbGankGawRm] OFF
GO
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (1, N'Dagon', 90, 30, N'Male', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (2, N'Yankin', 90, 47, N'Male', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (3, N'Oakkalappa', 90, 20, N'Male', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (4, N'ShwePyiThar', 120, 39, N'Male', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (5, N'Cherry', 90, 80, N'Female', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (6, N'Nguwa', 90, 62, N'Female', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (7, N'SwalTaw', 90, 72, N'Female', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (8, N'ZeZaZwar', 90, 16, N'Female', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (9, N'Padauk', 90, 36, N'Female', N'Available')
INSERT [dbo].[tbHostel] ([hid], [hname], [capacity], [occupied], [type], [status]) VALUES (10, N'Kankaaw', 120, 56, N'Female', N'Available')
GO
SET IDENTITY_INSERT [dbo].[tbNguwaRm] ON 

INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbNguwaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbNguwaRm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbOakkalapaRm] ON 

INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbOakkalapaRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbOakkalapaRm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbPadaukRm] ON 

INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbPadaukRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbPadaukRm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbRule] ON 

INSERT [dbo].[tbRule] ([rid], [rdes]) VALUES (1, N'Alcohol not allowed')
INSERT [dbo].[tbRule] ([rid], [rdes]) VALUES (2, N'This is Testing')
SET IDENTITY_INSERT [dbo].[tbRule] OFF
GO
SET IDENTITY_INSERT [dbo].[tbShwePyiTharRm] ON 

INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbShwePyiTharRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbShwePyiTharRm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbSwalTawRm] ON 

INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbSwalTawRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbSwalTawRm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbUser] ON 

INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (0, N'admin', N'1111', N'Admin', N'Admin')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (1, N'aung123', N'1234', N'Mg Aung Aung', N'Student')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (2, N'ko123', N'1234', N'Mg Ko Ko', N'Student')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (3, N'may08', N'9309', N'Ma May Lay', N'Student')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (4, N'susu020', N'8182', N'Ma Su Su', N'Student')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (5, N'mg12345', N'12345', N'Mg Ko Aung ', N'Student')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (6, N'dagon', N'1111', N'Dagon', N'Warden')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (8, N'nada12', N'1234', N'Mg Nada', N'Student')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (9, N'oakkalappa', N'1111', N'Oakkalappa', N'Warden')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (10, N'shwepyithar', N'1111', N'ShwePyiThar', N'Warden')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (12, N'nguwa', N'1111', N'Nguwa', N'Warden')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (13, N'yuya11', N'1111', N'Yu Ya Lwin', N'Student')
INSERT [dbo].[tbUser] ([id], [username], [password], [name], [role]) VALUES (14, N'cherry', N'1111', N'Cherry', N'Warden')
SET IDENTITY_INSERT [dbo].[tbUser] OFF
GO
SET IDENTITY_INSERT [dbo].[tbYankinRm] ON 

INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbYankinRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbYankinRm] OFF
GO
SET IDENTITY_INSERT [dbo].[tbZeZaWarRm] ON 

INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (1, N'R001', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (2, N'R002', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (3, N'R003', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (4, N'R004', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (5, N'R005', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (6, N'R006', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (7, N'R007', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (8, N'R008', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (9, N'R009', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (10, N'R010', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (11, N'R011', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (12, N'R012', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (13, N'R013', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (14, N'R014', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (15, N'R015', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (16, N'R016', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (17, N'R017', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (18, N'R018', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (19, N'R019', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (20, N'R020', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (21, N'R021', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (22, N'R022', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (23, N'R023', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (24, N'R024', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (25, N'R025', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (26, N'R026', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (27, N'R027', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (28, N'R028', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (29, N'R029', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (30, N'R030', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (31, N'R031', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (32, N'R032', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (33, N'R033', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (34, N'R034', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (35, N'R035', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (36, N'R036', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (37, N'R037', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (38, N'R038', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (39, N'R039', 2, 0, N'Available')
INSERT [dbo].[tbZeZaWarRm] ([id], [roomNo], [capacity], [occupied], [status]) VALUES (40, N'R040', 2, 0, N'Available')
SET IDENTITY_INSERT [dbo].[tbZeZaWarRm] OFF
GO
ALTER TABLE [dbo].[tbForm] ADD  CONSTRAINT [DF_tbForm_status]  DEFAULT ('Pending') FOR [status]
GO
USE [master]
GO
ALTER DATABASE [Hostel] SET  READ_WRITE 
GO
