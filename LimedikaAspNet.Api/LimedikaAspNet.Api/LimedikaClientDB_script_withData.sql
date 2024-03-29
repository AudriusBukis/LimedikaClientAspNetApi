USE [master]
GO
/****** Object:  Database [LimedikaClientDb]    Script Date: 7/18/2022 8:39:13 PM ******/
CREATE DATABASE [LimedikaClientDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LimedikaClientDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LimedikaClientDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LimedikaClientDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LimedikaClientDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LimedikaClientDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LimedikaClientDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LimedikaClientDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LimedikaClientDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LimedikaClientDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LimedikaClientDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LimedikaClientDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [LimedikaClientDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET RECOVERY FULL 
GO
ALTER DATABASE [LimedikaClientDb] SET  MULTI_USER 
GO
ALTER DATABASE [LimedikaClientDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LimedikaClientDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LimedikaClientDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LimedikaClientDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LimedikaClientDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LimedikaClientDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LimedikaClientDb', N'ON'
GO
ALTER DATABASE [LimedikaClientDb] SET QUERY_STORE = OFF
GO
USE [LimedikaClientDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/18/2022 8:39:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 7/18/2022 8:39:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[PostCode] [nvarchar](8) NULL,
	[LogId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 7/18/2022 8:39:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [uniqueidentifier] NOT NULL,
	[ClientCreationTime] [datetime2](7) NOT NULL,
	[PostCodeUpdateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220718153729_CreateDB', N'6.0.7')
GO
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'e573ce8f-b2b0-4ed9-8f73-0f6258354c64', N'UAB "Gintarinė vaistinė" fil. nr.
11', N'Livonijos g. 5, Joniškis', N'84123', N'acd7fb89-1592-4b96-ae5c-e1b75a8fab10')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'd8bbf0fc-801d-403d-897c-233eb56783ba', N'UAB "Gintarinė vaistinė" fil. nr.
10', N'Baltų pr. 7A-1, Kaunas', N'48259', N'4ebaea76-791b-48ae-aab9-f95edd700d6d')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'512da134-66cc-471f-a2c5-47d1e8ae65e6', N'UAB "Gintarinė vaistinė" fil. nr.
7', N'Vilniaus g. 220, Šiauliai', N'76302', N'6ac6a29a-d3cb-495c-a514-cabe904d01f7')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'2b5abc55-749c-470a-a495-48e7614f5e92', N'UAB "Gintarinė vaistinė" fil. nr.
9', N'Vytenio g. 16, Prienai', N'59140', N'02e76569-236c-479c-b654-f00c70036750')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'f8f04ccc-cd46-4d25-92dc-977dcda501ab', N'UAB "Gintarinė vaistinė" fil. nr.
20', N'Nemuno g. 70, Panevėžys', N'35190', N'8f3be899-5ff9-4d89-b99d-8d7c23b6e1bb')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'bea91ff9-5ef9-4056-a464-a2b099a46c83', N'UAB "Gintarinė vaistinė" fil. nr. 2', N'Liepų al. 3-1B,
Panevėžys', N'35139', N'ea93b96b-efa9-4e60-9cad-d644342817b0')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'd65a6e3e-1b57-4ff6-a8d5-b714d6ef22d2', N'UAB "Gintarinė vaistinė" fil. nr. 5', N'Švenčionių g. 36-2,
Nemenčinė, Vilniaus r. sav.', N'15168', N'b1d2abca-a95a-44f8-9a26-53a08c777e42')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'84a8d246-7c5d-43f5-8cc0-b94926a236f0', N'UAB "Gintarinė vaistinė" fil. nr.
16', N'Šiltnamių g. 29, Vilnius', N'04130', N'88f8a01f-60e9-428a-8692-3cffbc52ebe3')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'9f17fe0a-a702-4c98-95dc-d07a76e29783', N'UAB "Gintarinė vaistinė" fil. nr. 3', N'Varnių g. 39-9,
Kaunas', N'48415', N'b02acf9f-808c-40b6-b30f-7b0965f24e4c')
INSERT [dbo].[Clients] ([Id], [Name], [Address], [PostCode], [LogId]) VALUES (N'a2a14255-d89e-428b-b096-e4c3cbcf1902', N'UAB "Gintarinė vaistinė" fil. nr.
18', N'Kniaudiškių g. 6, Panevėžys', N'37106', N'3fea1ed4-e945-42d3-917f-39cd2beaa1fb')
GO
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'3fea1ed4-e945-42d3-917f-39cd2beaa1fb', CAST(N'2022-07-18T19:10:29.2584328' AS DateTime2), CAST(N'2022-07-18T19:15:52.9461888' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'88f8a01f-60e9-428a-8692-3cffbc52ebe3', CAST(N'2022-07-18T19:10:29.2417953' AS DateTime2), CAST(N'2022-07-18T19:15:52.3437775' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'b1d2abca-a95a-44f8-9a26-53a08c777e42', CAST(N'2022-07-18T19:10:29.1638620' AS DateTime2), CAST(N'2022-07-18T19:15:52.1395148' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'b02acf9f-808c-40b6-b30f-7b0965f24e4c', CAST(N'2022-07-18T19:10:29.1457571' AS DateTime2), CAST(N'2022-07-18T19:15:52.6525915' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'8f3be899-5ff9-4d89-b99d-8d7c23b6e1bb', CAST(N'2022-07-18T19:10:29.2704261' AS DateTime2), CAST(N'2022-07-18T19:15:51.7365215' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'6ac6a29a-d3cb-495c-a514-cabe904d01f7', CAST(N'2022-07-18T19:10:29.1783228' AS DateTime2), CAST(N'2022-07-18T19:15:51.3229174' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'ea93b96b-efa9-4e60-9cad-d644342817b0', CAST(N'2022-07-18T19:10:28.7443690' AS DateTime2), CAST(N'2022-07-18T19:15:51.9307396' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'acd7fb89-1592-4b96-ae5c-e1b75a8fab10', CAST(N'2022-07-18T19:10:29.2242476' AS DateTime2), CAST(N'2022-07-18T19:15:50.5496503' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'02e76569-236c-479c-b654-f00c70036750', CAST(N'2022-07-18T19:10:29.2088912' AS DateTime2), CAST(N'2022-07-18T19:15:51.5216693' AS DateTime2))
INSERT [dbo].[Log] ([Id], [ClientCreationTime], [PostCodeUpdateTime]) VALUES (N'4ebaea76-791b-48ae-aab9-f95edd700d6d', CAST(N'2022-07-18T19:10:29.1931627' AS DateTime2), CAST(N'2022-07-18T19:15:51.1134695' AS DateTime2))
GO
/****** Object:  Index [IX_Clients_LogId]    Script Date: 7/18/2022 8:39:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Clients_LogId] ON [dbo].[Clients]
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Log_LogId] FOREIGN KEY([LogId])
REFERENCES [dbo].[Log] ([Id])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Log_LogId]
GO
USE [master]
GO
ALTER DATABASE [LimedikaClientDb] SET  READ_WRITE 
GO
