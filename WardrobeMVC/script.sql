USE [master]
GO
/****** Object:  Database [WardrobeDB]    Script Date: 11/4/2017 4:14:43 PM ******/
CREATE DATABASE [WardrobeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 11/4/2017 4:14:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [varchar](200) NULL,
	[Type] [varchar](20) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 11/4/2017 4:14:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [varchar](200) NULL,
	[Type] [varchar](20) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 11/4/2017 4:14:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 11/4/2017 4:14:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [varchar](200) NULL,
	[Type] [varchar](20) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 11/4/2017 4:14:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [varchar](200) NULL,
	[Type] [varchar](20) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Boffer Sword', N'/Content/A1.jpg', N'Accessory', N'Blackish', N'All Seasons', N'Beer and Boffers')
INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Vampire Necklace', N'/Content/A2.jpg', N'Accessory', N'Silver and Blue', N'Cold Wind of the Night', N'Wine and Cheese')
INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Diadem of Tiamat', N'/Content/A3.jpg', N'Accessory', N'Gold and White', N'Winter is Coming', N'Ambivalent!')
INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Cool 90''s Sunglasses', N'/Content/A4.jpg', N'Accessory', N'Black', N'All Seasons', N'Wear ''em at night to look real cool!')
INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (6, N'Classic Trenchcoat', N'/Content/A5.jpg', N'Accessory', N'Brown', N'Cold ones', N'Wine and Cheese')
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Striped Pants', N'/Content/B1.jpg', N'Bottom', N'Orange and Black', N'Summer-ry', N'Beer and Boffers')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Flower-y Skirt', N'/Content/B2.jpg', N'Bottom', N'Patterned', N'Spring', N'Toreador coming to town')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Overalls', N'/Content/B3.jpg', N'Bottom', N'Blue', N'Summer', N'Getting Dirty')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Cargo Pants', N'/Content/B4.jpg', N'Bottom', N'Khaki', N'All Seasons', N'Lazy')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Leather Pants', N'/Content/B5.jpg', N'Bottom', N'Black', N'Great Flavor', N'Any time you want to make an impression')
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Vans', N'/Content/S1.jpg', N'Shoe', N'Black, white accent', N'All Seasons', N'Lazy')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Doc Martens', N'/Content/S2.jpg', N'Shoe', N'Black', N'All Seasons', N'Ambivalent!')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Ballet Flat', N'/Content/S3.jpg', N'Shoe', N'Black and Gold', N'Not a cold one', N'Wine and Cheese')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Lacey Flat', N'/Content/S4.jpg', N'Shoe', N'Blue', N'Not a cold one', N'Wine and Cheese')
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Barefeet', N'/Content/S5.jpg', N'Shoe', N'Skintone', N'Not a cold one', N'Ambivalent!')
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Lacey Vampire Shirt', N'/Content/T1.jpg', N'Top', N'Black', N'Summer', N'Wine and Cheese')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Breastplate', N'/Content/T2.jpg', N'Metallic', N'Silver', N'All Seasons', N'Beer and Boffers')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Waistcoat', N'/Content/T3.jpg', N'Top', N'Gold Filigree', N'Not after Labor Day', N'Ambivalent!')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Leotard', N'/Content/T4.jpg', N'Top', N'Checkered', N'A warm one', N'Ambivalent!')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Black Band T-Shirt', N'/Content/T5.jpg', N'Top', N'Black, inevitably', N'All Seasons', N'Ambivalent!')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessory] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessory] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessory]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottom] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottom]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoe] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoe] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoe]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB] SET  READ_WRITE 
GO
