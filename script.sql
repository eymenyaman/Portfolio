USE [master]
GO
/****** Object:  Database [Portfolio]    Script Date: 6.07.2025 18:04:07 ******/
CREATE DATABASE [Portfolio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Portfolio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLDERS\MSSQL\DATA\Portfolio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Portfolio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLDERS\MSSQL\DATA\Portfolio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Portfolio] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Portfolio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Portfolio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Portfolio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Portfolio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Portfolio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Portfolio] SET ARITHABORT OFF 
GO
ALTER DATABASE [Portfolio] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Portfolio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Portfolio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Portfolio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Portfolio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Portfolio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Portfolio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Portfolio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Portfolio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Portfolio] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Portfolio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Portfolio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Portfolio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Portfolio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Portfolio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Portfolio] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Portfolio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Portfolio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Portfolio] SET  MULTI_USER 
GO
ALTER DATABASE [Portfolio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Portfolio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Portfolio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Portfolio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Portfolio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Portfolio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Portfolio] SET QUERY_STORE = OFF
GO
USE [Portfolio]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6.07.2025 18:04:08 ******/
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
/****** Object:  Table [dbo].[Abouts]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Coverletter] [nvarchar](max) NOT NULL,
	[BirthDate] [nvarchar](max) NOT NULL,
	[Website] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Degree] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Freelance] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Map] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Educations]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Educations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [nvarchar](30) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Degree] [nvarchar](200) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Educations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](30) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Experiences] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portfolios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
	[Category] [int] NOT NULL,
 CONSTRAINT [PK_Portfolios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[ProfileImage] [nvarchar](max) NOT NULL,
	[BackgroundImage] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceDetails]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[SubTitle] [nvarchar](max) NOT NULL,
	[SubText] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ServiceDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedia]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ProfileId] [int] NULL,
 CONSTRAINT [PK_SocialMedia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 6.07.2025 18:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonName] [nvarchar](max) NOT NULL,
	[PersonTitle] [nvarchar](max) NOT NULL,
	[PersonImg] [nvarchar](max) NOT NULL,
	[PersonTestimonial] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250615140930_CreateDatabase', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250621134335_AddingAbout', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250622132141_AddingSkills', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250622151231_AddingEducation', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250628132607_AddingExperince', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250628141808_updateExperinceEndDate', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250628143121_AddingPortfolio', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250629133832_Service_testimonaial', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250629142350_ServiceDetails', N'8.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250629145633_AddingContact', N'8.0.17')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([Id], [Text], [ImageUrl], [Title], [Coverletter], [BirthDate], [Website], [Phone], [City], [Age], [Degree], [Email], [Freelance]) VALUES (1, N'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.

', N'20250706180139220.png', N'UI/UX Designer & Web Developer.', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', N'04 Ara 1989', N'www.example.com', N'+123 456 7890', N'New York, USA', 30, N'Master', N'email@example.com', N'Available')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Address], [Phone], [Email], [Map]) VALUES (2, N'Eskiosmanlı Sokak No:40', N'05366295131', N'altanemre1989@gmail.com', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.737663600446!2d32.83450367648894!3d39.92488658542706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34f190a9cea8f%3A0xd3862ea8248d08a0!2sAn%C4%B1tkabir!5e0!3m2!1str!2str!4v1751809372409!5m2!1str!2str" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Educations] ON 

INSERT [dbo].[Educations] ([Id], [SchoolName], [StartDate], [EndDate], [Degree], [Text]) VALUES (1, N'Gazi Üniversitesi', CAST(N'2008-07-01T00:00:00.0000000' AS DateTime2), CAST(N'2012-07-01T00:00:00.0000000' AS DateTime2), N'Lisans', N'Bilgisayar Sistemleri Öğretmenliği')
INSERT [dbo].[Educations] ([Id], [SchoolName], [StartDate], [EndDate], [Degree], [Text]) VALUES (2, N'Hikmet Nazif Kurşunoğlu AML', CAST(N'2004-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2008-01-01T00:00:00.0000000' AS DateTime2), N'Lise', N'Bilgisayar')
SET IDENTITY_INSERT [dbo].[Educations] OFF
GO
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([Id], [CompanyName], [StartDate], [EndDate], [Title], [Text]) VALUES (1, N'Demirci Holding', CAST(N'2018-02-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-01T00:00:00.0000000' AS DateTime2), N'Full Stack', N'Farklı birimler de tecrü edindim.')
INSERT [dbo].[Experiences] ([Id], [CompanyName], [StartDate], [EndDate], [Title], [Text]) VALUES (4, N'UrsSoft Teknoloji A.Ş.', CAST(N'2020-06-01T00:00:00.0000000' AS DateTime2), NULL, N'Developer', N'Mimari Tasarımlar')
SET IDENTITY_INSERT [dbo].[Experiences] OFF
GO
SET IDENTITY_INSERT [dbo].[Portfolios] ON 

INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (1, N'Mobile App', N'React Native geliştirme ', N'app-1.jpg', N'www.google.com', 0)
INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (3, N'Akıllı Saat', N'Android tabanlı', N'product-1.jpg', N'www.google.com', 1)
INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (4, N'Make Up', N'Makyaj masası', N'branding-1.jpg', N'www.google.com', 2)
INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (5, N'Book App', N'Kitap uygulaması', N'books-1.jpg', N'www.google.com', 3)
INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (6, N'Mobile App2', N'Flutter geliştirme', N'app-2.jpg', N'www.google.com', 0)
INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (7, N'Photograph', N'Fotoğraf sanatı', N'product-2.jpg', N'www.google.com', 1)
INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (12, N'Make Up2', N'Makyaj masası2', N'branding-2.jpg', N'www.google.com', 2)
INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (13, N'Book App2', N'Kitap uygulaması', N'books-2.jpg', N'www.google.com', 3)
INSERT [dbo].[Portfolios] ([Id], [Title], [Description], [ImageUrl], [Link], [Category]) VALUES (14, N'Mobile App3', N'Flutter geliştirme', N'app-3.jpg', N'www.google.com', 0)
SET IDENTITY_INSERT [dbo].[Portfolios] OFF
GO
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([Id], [Name], [Surname], [ProfileImage], [BackgroundImage], [Title]) VALUES (2, N'Altan Emre', N'Demirci', N'20250706163001185.png', N'20250706164702147.png', N'FullStack, Designer, Developer')
SET IDENTITY_INSERT [dbo].[Profiles] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Name], [Description], [Icon]) VALUES (1, N'Web Tasarım', N'Html,Css,Js geliştirme ve tasarım ile kodlama yapılır.', N'bi bi-briefcase')
INSERT [dbo].[Services] ([Id], [Name], [Description], [Icon]) VALUES (2, N'Developer', N'Html,Css,Js geliştirme ve tasarım ile kodlama yapılır.', N'bi bi-briefcase')
INSERT [dbo].[Services] ([Id], [Name], [Description], [Icon]) VALUES (3, N'Full Stack', N'Html,Css,Js geliştirme ve tasarım ile kodlama yapılır.', N'bi bi-briefcase')
INSERT [dbo].[Services] ([Id], [Name], [Description], [Icon]) VALUES (4, N'Designer', N'Html,Css,Js geliştirme ve tasarım ile kodlama yapılır.', N'bi bi-briefcase')
INSERT [dbo].[Services] ([Id], [Name], [Description], [Icon]) VALUES (5, N'Mobile Developer', N'Html,Css,Js geliştirme ve tasarım ile kodlama yapılır.', N'bi bi-briefcase')
INSERT [dbo].[Services] ([Id], [Name], [Description], [Icon]) VALUES (6, N'Game Developer', N'Html,Css,Js geliştirme ve tasarım ile kodlama yapılır.', N'bi bi-briefcase')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([Id], [Name], [Rating]) VALUES (1, N'CSharp', 45)
INSERT [dbo].[Skills] ([Id], [Name], [Rating]) VALUES (2, N'MSSQL', 25)
INSERT [dbo].[Skills] ([Id], [Name], [Rating]) VALUES (3, N'HTML', 50)
INSERT [dbo].[Skills] ([Id], [Name], [Rating]) VALUES (4, N'CSS', 40)
INSERT [dbo].[Skills] ([Id], [Name], [Rating]) VALUES (5, N'ASP.NET', 40)
INSERT [dbo].[Skills] ([Id], [Name], [Rating]) VALUES (6, N'JAVASCRIPT', 30)
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedia] ON 

INSERT [dbo].[SocialMedia] ([Id], [Icon], [Url], [Name], [ProfileId]) VALUES (1, N'bi bi-facebook', N'https://www.facebook.com', N'Facebook', 2)
INSERT [dbo].[SocialMedia] ([Id], [Icon], [Url], [Name], [ProfileId]) VALUES (3, N'bi bi-twitter', N'https://www.twitter.com', N'Twitter', 2)
INSERT [dbo].[SocialMedia] ([Id], [Icon], [Url], [Name], [ProfileId]) VALUES (4, N'bi bi-instagram', N'https://www.instagram.com', N'Instagram', 2)
INSERT [dbo].[SocialMedia] ([Id], [Icon], [Url], [Name], [ProfileId]) VALUES (5, N'bi bi-linkedin', N'https://www.linkedin.com', N'LinkedIn', 2)
INSERT [dbo].[SocialMedia] ([Id], [Icon], [Url], [Name], [ProfileId]) VALUES (6, N'bi bi-skype', N'https://www.skype.com', N'Skype', 2)
SET IDENTITY_INSERT [dbo].[SocialMedia] OFF
GO
/****** Object:  Index [IX_SocialMedia_ProfileId]    Script Date: 6.07.2025 18:04:08 ******/
CREATE NONCLUSTERED INDEX [IX_SocialMedia_ProfileId] ON [dbo].[SocialMedia]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SocialMedia]  WITH CHECK ADD  CONSTRAINT [FK_SocialMedia_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[SocialMedia] CHECK CONSTRAINT [FK_SocialMedia_Profiles_ProfileId]
GO
USE [master]
GO
ALTER DATABASE [Portfolio] SET  READ_WRITE 
GO
