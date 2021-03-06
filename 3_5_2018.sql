USE [WebCV]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 03/05/2018 21:03:08 ******/
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
/****** Object:  Table [dbo].[Experience]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  Table [dbo].[Follow]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  Table [dbo].[Language]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  Table [dbo].[Profile]    Script Date: 03/05/2018 21:03:09 ******/
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
	[Sex] [int] NOT NULL,
	[Hobbies] [nvarchar](250) NULL,
	[Descreption] [nvarchar](250) NOT NULL,
	[TargetJob] [nvarchar](250) NULL,
	[Status] [bit] NOT NULL,
	[Id_Project] [int] NULL,
	[Id_Follow] [int] NULL,
	[Id_Language] [int] NULL,
	[Id_Skill] [int] NULL,
	[Id_Experience] [int] NULL,
	[Id_Education] [int] NULL,
	[Id_Specialized] [int] NULL,
	[Is_View] [bit] NOT NULL,
 CONSTRAINT [PK_Userss] PRIMARY KEY CLUSTERED 
(
	[Id_Profile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  Table [dbo].[Specialized]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 03/05/2018 21:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id_User] [int] IDENTITY(1,1) NOT NULL,
	[Id_Profile] [int] NOT NULL,
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

INSERT [dbo].[Education] ([Id_Education], [EducationName], [Status]) VALUES (1, N'Tiến sĩ', 1)
SET IDENTITY_INSERT [dbo].[Education] OFF
SET IDENTITY_INSERT [dbo].[Experience] ON 

INSERT [dbo].[Experience] ([Id_Experience], [ExperienceName], [Status]) VALUES (1, N'nấu ăn', 1)
SET IDENTITY_INSERT [dbo].[Experience] OFF
SET IDENTITY_INSERT [dbo].[Follow] ON 

INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[Follow] OFF
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (1, N'English', 1)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (2, N'Việt Nam', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (3, N'Tiếng Pháp', 0)
SET IDENTITY_INSERT [dbo].[Language] OFF
SET IDENTITY_INSERT [dbo].[Profile] ON 

INSERT [dbo].[Profile] ([Id_Profile], [FullName], [Phone], [Adress], [DateofBirth], [Sex], [Hobbies], [Descreption], [TargetJob], [Status], [Id_Project], [Id_Follow], [Id_Language], [Id_Skill], [Id_Experience], [Id_Education], [Id_Specialized], [Is_View]) VALUES (5, N'D', N'1234', N'Ha Noi', CAST(N'1999-02-02' AS Date), 1, N'xem phim', N'nothing', N'leader', 1, 3, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Profile] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id_Project], [ProjectName], [Status]) VALUES (3, N'WebSite', 1)
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id_Role], [RoleName], [Status]) VALUES (1, N'admin', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([Id_Skill], [SkillName], [Status]) VALUES (1, N'Giao tiếp', 1)
SET IDENTITY_INSERT [dbo].[Skill] OFF
SET IDENTITY_INSERT [dbo].[Specialized] ON 

INSERT [dbo].[Specialized] ([id_Specialized], [SpecializedName], [Status]) VALUES (1, N'Đại học', 1)
SET IDENTITY_INSERT [dbo].[Specialized] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id_User], [Id_Profile], [Id_Role], [PassWord], [Email], [Status]) VALUES (2, 5, 1, N'e10adc3949ba59abbe56e057f20f883e', N'admin@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Userss_Education] FOREIGN KEY([Id_Education])
REFERENCES [dbo].[Education] ([Id_Education])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Userss_Education]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Userss_Experience] FOREIGN KEY([Id_Experience])
REFERENCES [dbo].[Experience] ([Id_Experience])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Userss_Experience]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Userss_Follow] FOREIGN KEY([Id_Follow])
REFERENCES [dbo].[Follow] ([Id_Follow])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Userss_Follow]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Userss_Language] FOREIGN KEY([Id_Language])
REFERENCES [dbo].[Language] ([Id_Language])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Userss_Language]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Userss_Project] FOREIGN KEY([Id_Project])
REFERENCES [dbo].[Project] ([Id_Project])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Userss_Project]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Userss_Skill] FOREIGN KEY([Id_Skill])
REFERENCES [dbo].[Skill] ([Id_Skill])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Userss_Skill]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Userss_Specialized] FOREIGN KEY([Id_Specialized])
REFERENCES [dbo].[Specialized] ([id_Specialized])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Userss_Specialized]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Role] FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Role] ([Id_Role])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Admin_Role]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Profile] FOREIGN KEY([Id_Profile])
REFERENCES [dbo].[Profile] ([Id_Profile])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Profile]
GO
/****** Object:  StoredProcedure [dbo].[Admin_Login]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  StoredProcedure [dbo].[Langauge_Insert]    Script Date: 03/05/2018 21:03:09 ******/
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
/****** Object:  StoredProcedure [dbo].[Language_ListAll]    Script Date: 03/05/2018 21:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Language_ListAll]
as
select * from Language


GO
