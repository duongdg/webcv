USE [master]
GO
/****** Object:  Database [WebCV]    Script Date: 5/9/2018 4:49:57 PM ******/
CREATE DATABASE [WebCV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebCV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebCV.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebCV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebCV_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebCV] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebCV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebCV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebCV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebCV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebCV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebCV] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebCV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebCV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebCV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebCV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebCV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebCV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebCV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebCV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebCV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebCV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebCV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebCV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebCV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebCV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebCV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebCV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebCV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebCV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebCV] SET  MULTI_USER 
GO
ALTER DATABASE [WebCV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebCV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebCV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebCV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebCV] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WebCV]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Id_Education] [int] IDENTITY(1,1) NOT NULL,
	[EducationName] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[Id_Education] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Experience]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experience](
	[Id_Experience] [int] IDENTITY(1,1) NOT NULL,
	[ExperienceName] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Experience] PRIMARY KEY CLUSTERED 
(
	[Id_Experience] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Follow]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Follow](
	[Id_Follow] [int] IDENTITY(1,1) NOT NULL,
	[Follower_id] [int] NULL,
	[Followed_id] [int] NOT NULL,
 CONSTRAINT [PK_Follow] PRIMARY KEY CLUSTERED 
(
	[Id_Follow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id_Language] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id_Language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profile]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile](
	[Id_Profile] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[Adress] [nvarchar](250) NOT NULL,
	[DateofBirth] [date] NOT NULL,
	[Image] [varchar](max) NULL,
	[Sex] [int] NOT NULL,
	[Hobbies] [nvarchar](250) NULL,
	[Descreption] [nvarchar](250) NOT NULL,
	[TargetJob] [nvarchar](250) NULL,
	[Status] [bit] NOT NULL,
	[Id_Follow] [int] NULL,
	[Id_Education] [int] NULL,
	[Id_Specialized] [int] NULL,
	[Is_View] [bit] NOT NULL,
 CONSTRAINT [PK_Userss] PRIMARY KEY CLUSTERED 
(
	[Id_Profile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profile_Experience]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile_Experience](
	[Id_Profile_Experience] [int] IDENTITY(1,1) NOT NULL,
	[Id_Profile] [int] NOT NULL,
	[Id_Experience] [int] NOT NULL,
 CONSTRAINT [PK_Profile_Experience] PRIMARY KEY CLUSTERED 
(
	[Id_Profile_Experience] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profile_Language]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile_Language](
	[Id_Profile_Language] [int] IDENTITY(1,1) NOT NULL,
	[Id_Profile] [int] NOT NULL,
	[Id_Language] [int] NOT NULL,
 CONSTRAINT [PK_Profile_Language] PRIMARY KEY CLUSTERED 
(
	[Id_Profile_Language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profile_Project]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile_Project](
	[Id_Profile_Project] [int] IDENTITY(1,1) NOT NULL,
	[Id_Profile] [int] NOT NULL,
	[Id_Project] [int] NOT NULL,
 CONSTRAINT [PK_Profile_Project] PRIMARY KEY CLUSTERED 
(
	[Id_Profile_Project] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profile_Skill]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile_Skill](
	[Id_Profile_Skill] [int] IDENTITY(1,1) NOT NULL,
	[Id_Profile] [int] NOT NULL,
	[Id_Skill] [int] NOT NULL,
 CONSTRAINT [PK_Profile_Skill] PRIMARY KEY CLUSTERED 
(
	[Id_Profile_Skill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id_Project] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id_Project] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id_Role] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[Id_Skill] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[Id_Skill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specialized]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialized](
	[id_Specialized] [int] IDENTITY(1,1) NOT NULL,
	[SpecializedName] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Specialized] PRIMARY KEY CLUSTERED 
(
	[id_Specialized] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id_User] [int] IDENTITY(1,1) NOT NULL,
	[Id_Profile] [int] NULL,
	[Id_Role] [int] NOT NULL,
	[PassWord] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([Id_Education], [EducationName], [Status]) VALUES (3, N'Đại học', 1)
SET IDENTITY_INSERT [dbo].[Education] OFF
SET IDENTITY_INSERT [dbo].[Experience] ON 

INSERT [dbo].[Experience] ([Id_Experience], [ExperienceName], [Status]) VALUES (2, N'Thực tập', 1)
SET IDENTITY_INSERT [dbo].[Experience] OFF
SET IDENTITY_INSERT [dbo].[Follow] ON 

INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (2, 1, 1)
SET IDENTITY_INSERT [dbo].[Follow] OFF
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (4, N'English', 1)
SET IDENTITY_INSERT [dbo].[Language] OFF
SET IDENTITY_INSERT [dbo].[Profile] ON 

INSERT [dbo].[Profile] ([Id_Profile], [FullName], [Phone], [Adress], [DateofBirth], [Image], [Sex], [Hobbies], [Descreption], [TargetJob], [Status], [Id_Follow], [Id_Education], [Id_Specialized], [Is_View]) VALUES (16, N'Dương', N'0142418928', N'Hải Dương', CAST(N'1996-02-02' AS Date), NULL, 1, N'Xem phim, nghe nahcj', N'AAAAAAAAAAAAAAAAAAAAAa', N'Trở thành tỷ phú', 1, 2, 3, 2, 1)
SET IDENTITY_INSERT [dbo].[Profile] OFF
SET IDENTITY_INSERT [dbo].[Profile_Experience] ON 

INSERT [dbo].[Profile_Experience] ([Id_Profile_Experience], [Id_Profile], [Id_Experience]) VALUES (1, 16, 2)
SET IDENTITY_INSERT [dbo].[Profile_Experience] OFF
SET IDENTITY_INSERT [dbo].[Profile_Language] ON 

INSERT [dbo].[Profile_Language] ([Id_Profile_Language], [Id_Profile], [Id_Language]) VALUES (3, 16, 4)
SET IDENTITY_INSERT [dbo].[Profile_Language] OFF
SET IDENTITY_INSERT [dbo].[Profile_Project] ON 

INSERT [dbo].[Profile_Project] ([Id_Profile_Project], [Id_Profile], [Id_Project]) VALUES (1, 16, 2)
SET IDENTITY_INSERT [dbo].[Profile_Project] OFF
SET IDENTITY_INSERT [dbo].[Profile_Skill] ON 

INSERT [dbo].[Profile_Skill] ([Id_Profile_Skill], [Id_Profile], [Id_Skill]) VALUES (1, 16, 2)
SET IDENTITY_INSERT [dbo].[Profile_Skill] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id_Project], [ProjectName], [Status]) VALUES (2, N'Website đọc truyện online', 1)
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id_Role], [RoleName], [Status]) VALUES (1, N'admin', 1)
INSERT [dbo].[Role] ([Id_Role], [RoleName], [Status]) VALUES (2, N'user', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([Id_Skill], [SkillName], [Status]) VALUES (2, N'Giao tiếp', 1)
SET IDENTITY_INSERT [dbo].[Skill] OFF
SET IDENTITY_INSERT [dbo].[Specialized] ON 

INSERT [dbo].[Specialized] ([id_Specialized], [SpecializedName], [Status]) VALUES (2, N'Công nghệ phần mềm', 1)
SET IDENTITY_INSERT [dbo].[Specialized] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id_User], [Id_Profile], [Id_Role], [PassWord], [Email], [Status]) VALUES (9, 16, 1, N'fagdkskal', N'nguyenduong96@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Education] FOREIGN KEY([Id_Education])
REFERENCES [dbo].[Education] ([Id_Education])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_Education]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Follow] FOREIGN KEY([Id_Follow])
REFERENCES [dbo].[Follow] ([Id_Follow])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_Follow]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Specialized] FOREIGN KEY([Id_Specialized])
REFERENCES [dbo].[Specialized] ([id_Specialized])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_Specialized]
GO
ALTER TABLE [dbo].[Profile_Experience]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Experience_Experience] FOREIGN KEY([Id_Experience])
REFERENCES [dbo].[Experience] ([Id_Experience])
GO
ALTER TABLE [dbo].[Profile_Experience] CHECK CONSTRAINT [FK_Profile_Experience_Experience]
GO
ALTER TABLE [dbo].[Profile_Experience]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Experience_Profile] FOREIGN KEY([Id_Profile])
REFERENCES [dbo].[Profile] ([Id_Profile])
GO
ALTER TABLE [dbo].[Profile_Experience] CHECK CONSTRAINT [FK_Profile_Experience_Profile]
GO
ALTER TABLE [dbo].[Profile_Language]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Language_Language] FOREIGN KEY([Id_Language])
REFERENCES [dbo].[Language] ([Id_Language])
GO
ALTER TABLE [dbo].[Profile_Language] CHECK CONSTRAINT [FK_Profile_Language_Language]
GO
ALTER TABLE [dbo].[Profile_Language]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Language_Profile] FOREIGN KEY([Id_Profile])
REFERENCES [dbo].[Profile] ([Id_Profile])
GO
ALTER TABLE [dbo].[Profile_Language] CHECK CONSTRAINT [FK_Profile_Language_Profile]
GO
ALTER TABLE [dbo].[Profile_Project]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Project_Profile] FOREIGN KEY([Id_Profile])
REFERENCES [dbo].[Profile] ([Id_Profile])
GO
ALTER TABLE [dbo].[Profile_Project] CHECK CONSTRAINT [FK_Profile_Project_Profile]
GO
ALTER TABLE [dbo].[Profile_Project]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Project_Project] FOREIGN KEY([Id_Project])
REFERENCES [dbo].[Project] ([Id_Project])
GO
ALTER TABLE [dbo].[Profile_Project] CHECK CONSTRAINT [FK_Profile_Project_Project]
GO
ALTER TABLE [dbo].[Profile_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Skill_Profile] FOREIGN KEY([Id_Profile])
REFERENCES [dbo].[Profile] ([Id_Profile])
GO
ALTER TABLE [dbo].[Profile_Skill] CHECK CONSTRAINT [FK_Profile_Skill_Profile]
GO
ALTER TABLE [dbo].[Profile_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Skill_Skill] FOREIGN KEY([Id_Skill])
REFERENCES [dbo].[Skill] ([Id_Skill])
GO
ALTER TABLE [dbo].[Profile_Skill] CHECK CONSTRAINT [FK_Profile_Skill_Skill]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Profile] FOREIGN KEY([Id_Profile])
REFERENCES [dbo].[Profile] ([Id_Profile])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Profile]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Role] ([Id_Role])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[Admin_Login]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Admin_Login] 
	-- Add the parameters for the stored procedure here
	@Email varchar(100),
	@PassWord varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @count int
	declare @res bit
	select @count = count(*) from Admin where Email=@Email and PassWord=@PassWord and Status=1

    if @count>0
		set @res=1
	else
		set @res=0
	select @res
END

GO
/****** Object:  StoredProcedure [dbo].[Langauge_Insert]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Langauge_Insert]
	-- Add the parameters for the stored procedure here
	@LanguageName nvarchar(100),
	@Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	insert into Language(LanguageName,Status)
	values(@LanguageName,@Status)
END

GO
/****** Object:  StoredProcedure [dbo].[Language_ListAll]    Script Date: 5/9/2018 4:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Language_ListAll]
as
select * from Language

GO
USE [master]
GO
ALTER DATABASE [WebCV] SET  READ_WRITE 
GO
