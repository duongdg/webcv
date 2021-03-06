USE [WebCV]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Experience]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Experience](
	[Id_Experience] [int] IDENTITY(1,1) NOT NULL,
	[ExperienceName] [nvarchar](100) NOT NULL,
	[Ex_Date] [varchar](50) NULL,
	[Ex_Descreptiom] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Experience] PRIMARY KEY CLUSTERED 
(
	[Id_Experience] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Follow]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Language]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Profile]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile](
	[Id_Profile] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Profile_Experience]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Profile_Language]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Profile_Project]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Profile_Skill]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Project]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id_Project] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](100) NOT NULL,
	[Pr_Descreption] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id_Project] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[Specialized]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id_User] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  View [dbo].[View_Profile]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Profile]
AS
SELECT        dbo.Profile.Id_Profile, dbo.Profile.FullName, dbo.Profile.Phone, dbo.Profile.Adress, dbo.Profile.DateofBirth, dbo.Profile.Image, dbo.Profile.Sex, dbo.Profile.Hobbies, dbo.Profile.Descreption, dbo.Profile.TargetJob, 
                         dbo.Profile.Status, dbo.Profile.Is_View, dbo.Experience.ExperienceName, dbo.Experience.Status AS Expr1, dbo.Language.LanguageName, dbo.Language.Status AS Expr2, dbo.Skill.SkillName, dbo.Skill.Status AS Expr3, 
                         dbo.Project.ProjectName, dbo.Project.Status AS Expr4, dbo.Specialized.SpecializedName, dbo.Specialized.Status AS Expr5, dbo.Education.EducationName, dbo.Education.Status AS Expr7, dbo.Experience.Ex_Descreptiom, 
                         dbo.Experience.Ex_Date, dbo.Project.Pr_Descreption, dbo.[User].Email, dbo.[User].Status AS Expr6
FROM            dbo.Education INNER JOIN
                         dbo.Profile ON dbo.Education.Id_Education = dbo.Profile.Id_Education INNER JOIN
                         dbo.Profile_Experience ON dbo.Profile.Id_Profile = dbo.Profile_Experience.Id_Profile INNER JOIN
                         dbo.Experience ON dbo.Profile_Experience.Id_Experience = dbo.Experience.Id_Experience INNER JOIN
                         dbo.Profile_Language ON dbo.Profile.Id_Profile = dbo.Profile_Language.Id_Profile INNER JOIN
                         dbo.Language ON dbo.Profile_Language.Id_Language = dbo.Language.Id_Language INNER JOIN
                         dbo.Profile_Project ON dbo.Profile.Id_Profile = dbo.Profile_Project.Id_Profile INNER JOIN
                         dbo.Profile_Skill ON dbo.Profile.Id_Profile = dbo.Profile_Skill.Id_Profile INNER JOIN
                         dbo.Project ON dbo.Profile_Project.Id_Project = dbo.Project.Id_Project INNER JOIN
                         dbo.Skill ON dbo.Profile_Skill.Id_Skill = dbo.Skill.Id_Skill INNER JOIN
                         dbo.Specialized ON dbo.Profile.Id_Specialized = dbo.Specialized.id_Specialized INNER JOIN
                         dbo.[User] ON dbo.Profile.Id_Profile = dbo.[User].Id_User

GO
/****** Object:  View [dbo].[View_Profile_Experience]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Profile_Experience]
AS
SELECT        dbo.Experience.ExperienceName, dbo.Experience.Ex_Date, dbo.Experience.Ex_Descreptiom, dbo.Profile.Id_Profile, dbo.Experience.Status, dbo.Profile_Experience.Id_Experience, dbo.Profile.Image
FROM            dbo.Experience INNER JOIN
                         dbo.Profile_Experience ON dbo.Experience.Id_Experience = dbo.Profile_Experience.Id_Experience INNER JOIN
                         dbo.Profile ON dbo.Profile_Experience.Id_Profile = dbo.Profile.Id_Profile

GO
/****** Object:  View [dbo].[View_Profile_Follow]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Profile_Follow]
AS
SELECT        dbo.Follow.Follower_id, dbo.Follow.Followed_id, dbo.Profile.Phone, dbo.Profile.FullName, dbo.Profile.Adress, dbo.Profile.Image, dbo.Profile.Descreption, dbo.Profile.TargetJob, dbo.Profile.Status, dbo.Profile.Is_View, 
                         dbo.Profile.Id_Profile
FROM            dbo.Follow INNER JOIN
                         dbo.Profile ON dbo.Follow.Follower_id = dbo.Profile.Id_Profile

GO
/****** Object:  View [dbo].[View_Profile_Language]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Profile_Language]
AS
SELECT        dbo.Profile.Id_Profile, dbo.Language.LanguageName, dbo.Language.Status, dbo.Profile.Image, dbo.Profile.Status AS Expr1, dbo.Profile.Is_View, dbo.Profile_Language.Id_Language
FROM            dbo.Language INNER JOIN
                         dbo.Profile_Language ON dbo.Language.Id_Language = dbo.Profile_Language.Id_Language INNER JOIN
                         dbo.Profile ON dbo.Profile_Language.Id_Profile = dbo.Profile.Id_Profile

GO
/****** Object:  View [dbo].[View_Profile_Project]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Profile_Project]
AS
SELECT        dbo.Profile.Id_Profile, dbo.Project.ProjectName, dbo.Project.Pr_Descreption, dbo.Project.Status
FROM            dbo.Profile INNER JOIN
                         dbo.Profile_Project ON dbo.Profile.Id_Profile = dbo.Profile_Project.Id_Profile INNER JOIN
                         dbo.Project ON dbo.Profile_Project.Id_Project = dbo.Project.Id_Project

GO
/****** Object:  View [dbo].[View_Profile_Skill]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Profile_Skill]
AS
SELECT        dbo.Profile.Id_Profile, dbo.Skill.SkillName, dbo.Skill.Status, dbo.Profile.Image, dbo.Profile_Skill.Id_Skill
FROM            dbo.Profile INNER JOIN
                         dbo.Profile_Skill ON dbo.Profile.Id_Profile = dbo.Profile_Skill.Id_Profile INNER JOIN
                         dbo.Skill ON dbo.Profile_Skill.Id_Skill = dbo.Skill.Id_Skill

GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([Id_Education], [EducationName], [Status]) VALUES (3, N'Đại học', 1)
INSERT [dbo].[Education] ([Id_Education], [EducationName], [Status]) VALUES (4, N'Cao đẳng', 0)
INSERT [dbo].[Education] ([Id_Education], [EducationName], [Status]) VALUES (7, N'Trung cấp', 1)
INSERT [dbo].[Education] ([Id_Education], [EducationName], [Status]) VALUES (8, N'Khác', 0)
SET IDENTITY_INSERT [dbo].[Education] OFF
SET IDENTITY_INSERT [dbo].[Experience] ON 

INSERT [dbo].[Experience] ([Id_Experience], [ExperienceName], [Ex_Date], [Ex_Descreptiom], [Status]) VALUES (2, N'Thực tập tại AAA', N'04/2015 - 08-2015', N'Thực tập tại công ty AAAAAA', 1)
INSERT [dbo].[Experience] ([Id_Experience], [ExperienceName], [Ex_Date], [Ex_Descreptiom], [Status]) VALUES (3, N'Thực tập tại BBBB', N'09/2017 - 12/2017', N'Thực tập về lĩnh vực bbbbb', 1)
INSERT [dbo].[Experience] ([Id_Experience], [ExperienceName], [Ex_Date], [Ex_Descreptiom], [Status]) VALUES (5, N'tt234567', N'aaaaa', N'aaaaaaaa', 1)
INSERT [dbo].[Experience] ([Id_Experience], [ExperienceName], [Ex_Date], [Ex_Descreptiom], [Status]) VALUES (6, N'tt234567', N'bbbbbb', N'bbbbbbb', 0)
INSERT [dbo].[Experience] ([Id_Experience], [ExperienceName], [Ex_Date], [Ex_Descreptiom], [Status]) VALUES (8, N'Làm Tester', N'02/2018 - 04/2018', N'Nhân viên tester', 1)
SET IDENTITY_INSERT [dbo].[Experience] OFF
SET IDENTITY_INSERT [dbo].[Follow] ON 

INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (2, 16, 21)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (3, 16, 2)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (4, 21, 2)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (5, 21, 3)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (6, 21, 8)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (7, 75, 2)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (8, 16, 75)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (9, 75, 22)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (10, 22, 21)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (15, 22, 76)
INSERT [dbo].[Follow] ([Id_Follow], [Follower_id], [Followed_id]) VALUES (16, 76, 16)
SET IDENTITY_INSERT [dbo].[Follow] OFF
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (4, N'English', 1)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (5, N'Việt Nam', 1)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (11, N'Tiếng Ấn', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (12, N'Tiếng Trung', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (13, N'Tiếng Nhật', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (14, N'Tiếng Hàn', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (15, N'Tiếng Thái', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (16, N'Tiếng Lào', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (17, N'Tiếng Bỉ', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (18, N'Tiếng Tây Ban Nha', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (19, N'Tiếng Ả Rập', 0)
INSERT [dbo].[Language] ([Id_Language], [LanguageName], [Status]) VALUES (20, N'Tiếng Phạn', 1)
SET IDENTITY_INSERT [dbo].[Language] OFF
INSERT [dbo].[Profile] ([Id_Profile], [FullName], [Phone], [Adress], [DateofBirth], [Image], [Sex], [Hobbies], [Descreption], [TargetJob], [Status], [Id_Education], [Id_Specialized], [Is_View]) VALUES (16, N'Dương', N'0142418928', N'Hải Dương', CAST(N'1996-02-02' AS Date), N'3.jpg', 1, N'Xem phim, nghe nahcj', N'AAAAAAAAAAAAAAAAAAAAAa', N'Trở thành tỷ phú', 1, 3, 2, 1)
INSERT [dbo].[Profile] ([Id_Profile], [FullName], [Phone], [Adress], [DateofBirth], [Image], [Sex], [Hobbies], [Descreption], [TargetJob], [Status], [Id_Education], [Id_Specialized], [Is_View]) VALUES (21, N'Nhung', N'325', N'Thanh hóa', CAST(N'1995-05-14' AS Date), N'3.jpg', 1, N'a', N'a', N'a', 1, 3, 2, 1)
INSERT [dbo].[Profile] ([Id_Profile], [FullName], [Phone], [Adress], [DateofBirth], [Image], [Sex], [Hobbies], [Descreption], [TargetJob], [Status], [Id_Education], [Id_Specialized], [Is_View]) VALUES (22, N'a', N'a', N'a', CAST(N'2018-02-02' AS Date), N'3.jpg', 1, N'a', N'a', N'a', 1, 3, 2, 1)
INSERT [dbo].[Profile] ([Id_Profile], [FullName], [Phone], [Adress], [DateofBirth], [Image], [Sex], [Hobbies], [Descreption], [TargetJob], [Status], [Id_Education], [Id_Specialized], [Is_View]) VALUES (75, N'b', N'b', N'b', CAST(N'2018-05-05' AS Date), N'3.jpg', 2, N'b', N'b', N'b', 1, 3, 2, 1)
INSERT [dbo].[Profile] ([Id_Profile], [FullName], [Phone], [Adress], [DateofBirth], [Image], [Sex], [Hobbies], [Descreption], [TargetJob], [Status], [Id_Education], [Id_Specialized], [Is_View]) VALUES (76, N'Phạm Thị Huệ', N'09789897958', N'Kiến Thụy - Hải Phòng', CAST(N'2018-05-24' AS Date), N'imgg3.jpg', 2, N'Nghe nhạc, xem phim, đi du lịch', N'Là một người năng động', N'Manager', 1, 3, 2, 1)
SET IDENTITY_INSERT [dbo].[Profile_Experience] ON 

INSERT [dbo].[Profile_Experience] ([Id_Profile_Experience], [Id_Profile], [Id_Experience]) VALUES (1, 16, 2)
INSERT [dbo].[Profile_Experience] ([Id_Profile_Experience], [Id_Profile], [Id_Experience]) VALUES (2, 16, 3)
INSERT [dbo].[Profile_Experience] ([Id_Profile_Experience], [Id_Profile], [Id_Experience]) VALUES (3, 21, 2)
INSERT [dbo].[Profile_Experience] ([Id_Profile_Experience], [Id_Profile], [Id_Experience]) VALUES (4, 76, 8)
SET IDENTITY_INSERT [dbo].[Profile_Experience] OFF
SET IDENTITY_INSERT [dbo].[Profile_Language] ON 

INSERT [dbo].[Profile_Language] ([Id_Profile_Language], [Id_Profile], [Id_Language]) VALUES (3, 16, 4)
INSERT [dbo].[Profile_Language] ([Id_Profile_Language], [Id_Profile], [Id_Language]) VALUES (4, 21, 4)
INSERT [dbo].[Profile_Language] ([Id_Profile_Language], [Id_Profile], [Id_Language]) VALUES (5, 76, 4)
SET IDENTITY_INSERT [dbo].[Profile_Language] OFF
SET IDENTITY_INSERT [dbo].[Profile_Project] ON 

INSERT [dbo].[Profile_Project] ([Id_Profile_Project], [Id_Profile], [Id_Project]) VALUES (1, 16, 2)
INSERT [dbo].[Profile_Project] ([Id_Profile_Project], [Id_Profile], [Id_Project]) VALUES (2, 21, 2)
INSERT [dbo].[Profile_Project] ([Id_Profile_Project], [Id_Profile], [Id_Project]) VALUES (19, 76, 21)
SET IDENTITY_INSERT [dbo].[Profile_Project] OFF
SET IDENTITY_INSERT [dbo].[Profile_Skill] ON 

INSERT [dbo].[Profile_Skill] ([Id_Profile_Skill], [Id_Profile], [Id_Skill]) VALUES (1, 16, 2)
INSERT [dbo].[Profile_Skill] ([Id_Profile_Skill], [Id_Profile], [Id_Skill]) VALUES (2, 16, 3)
INSERT [dbo].[Profile_Skill] ([Id_Profile_Skill], [Id_Profile], [Id_Skill]) VALUES (3, 21, 2)
INSERT [dbo].[Profile_Skill] ([Id_Profile_Skill], [Id_Profile], [Id_Skill]) VALUES (4, 76, 6)
SET IDENTITY_INSERT [dbo].[Profile_Skill] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id_Project], [ProjectName], [Pr_Descreption], [Status]) VALUES (2, N'Website đọc truyện online', N'ccc', 1)
INSERT [dbo].[Project] ([Id_Project], [ProjectName], [Pr_Descreption], [Status]) VALUES (3, N'Website bán giầy online', N'bbb', 1)
INSERT [dbo].[Project] ([Id_Project], [ProjectName], [Pr_Descreption], [Status]) VALUES (21, N'Website mỹ phẩm', N'Mỹ phẩm', 1)
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id_Role], [RoleName], [Status]) VALUES (1, N'admin', 1)
INSERT [dbo].[Role] ([Id_Role], [RoleName], [Status]) VALUES (2, N'user', 1)
INSERT [dbo].[Role] ([Id_Role], [RoleName], [Status]) VALUES (4, N'aaabbbbbbbbbb', 0)
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([Id_Skill], [SkillName], [Status]) VALUES (2, N'Giao tiếp', 1)
INSERT [dbo].[Skill] ([Id_Skill], [SkillName], [Status]) VALUES (3, N'Làm việc nhóm', 1)
INSERT [dbo].[Skill] ([Id_Skill], [SkillName], [Status]) VALUES (5, N'Tin học cơ bản', 0)
INSERT [dbo].[Skill] ([Id_Skill], [SkillName], [Status]) VALUES (6, N'Giao tiếp', 1)
SET IDENTITY_INSERT [dbo].[Skill] OFF
SET IDENTITY_INSERT [dbo].[Specialized] ON 

INSERT [dbo].[Specialized] ([id_Specialized], [SpecializedName], [Status]) VALUES (2, N'Công nghệ phần mềm', 1)
INSERT [dbo].[Specialized] ([id_Specialized], [SpecializedName], [Status]) VALUES (3, N'Thương mại điện tử', 1)
INSERT [dbo].[Specialized] ([id_Specialized], [SpecializedName], [Status]) VALUES (5, N'Thương mại điện tử 1', 0)
SET IDENTITY_INSERT [dbo].[Specialized] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id_User], [Id_Role], [PassWord], [Email], [Status]) VALUES (16, 2, N'b8dea90264137faba0876f0b51668f8e', N'duong@gmail.com', 1)
INSERT [dbo].[User] ([Id_User], [Id_Role], [PassWord], [Email], [Status]) VALUES (21, 2, N'b8dea90264137faba0876f0b51668f8e', N'nhung@gmail.com', 1)
INSERT [dbo].[User] ([Id_User], [Id_Role], [PassWord], [Email], [Status]) VALUES (22, 1, N'b8dea90264137faba0876f0b51668f8e', N'admin@gmail.com', 1)
INSERT [dbo].[User] ([Id_User], [Id_Role], [PassWord], [Email], [Status]) VALUES (75, 2, N'0cc175b9c0f1b6a831c399e269772661', N'a@gmail.com', 1)
INSERT [dbo].[User] ([Id_User], [Id_Role], [PassWord], [Email], [Status]) VALUES (76, 2, N'71a6b6f094346a8832df801c8428ea06', N'hue@gmail.com', 1)
INSERT [dbo].[User] ([Id_User], [Id_Role], [PassWord], [Email], [Status]) VALUES (79, 2, N'957d2fa52c19a5aff4ccf5d9a959adab', N'van@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Follow]  WITH CHECK ADD  CONSTRAINT [FK_Follow_Profile] FOREIGN KEY([Follower_id])
REFERENCES [dbo].[Profile] ([Id_Profile])
GO
ALTER TABLE [dbo].[Follow] CHECK CONSTRAINT [FK_Follow_Profile]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Education] FOREIGN KEY([Id_Education])
REFERENCES [dbo].[Education] ([Id_Education])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_Education]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Specialized] FOREIGN KEY([Id_Specialized])
REFERENCES [dbo].[Specialized] ([id_Specialized])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_Specialized]
GO
ALTER TABLE [dbo].[Profile]  WITH CHECK ADD  CONSTRAINT [FK_Profile_User] FOREIGN KEY([Id_Profile])
REFERENCES [dbo].[User] ([Id_User])
GO
ALTER TABLE [dbo].[Profile] CHECK CONSTRAINT [FK_Profile_User]
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
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Role] ([Id_Role])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[Admin_Login]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Count_Follow]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Count_Follow]
AS
BEGIN
	select Top 1 Follower_id, count(Followed_id) as count_follow, FullName, Descreption, Adress, Phone, TargetJob, Id_Profile
	from View_Profile_Follow
	where Status=1
	group by Follower_id, FullName, Descreption, Adress, Phone, TargetJob, Id_Profile
	order by count_follow desc
END

GO
/****** Object:  StoredProcedure [dbo].[Education_Insert]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Education_Insert]
	-- Add the parameters for the stored procedure here
	@EducationName nvarchar(100),
	@Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	insert into Education(EducationName,Status)
	values(@EducationName,@Status)
END

GO
/****** Object:  StoredProcedure [dbo].[Experience_Insert]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Experience_Insert]
	-- Add the parameters for the stored procedure here
	@ExperienceName nvarchar(100),
	@Ex_Date nvarchar(50),
	@Ex_Descreptiom nvarchar(MAX),
	@Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	insert into Experience(ExperienceName,Ex_Date, Ex_Descreptiom, Status)
	values(@ExperienceName,@Ex_Date,@Ex_Descreptiom,@Status)
END

GO
/****** Object:  StoredProcedure [dbo].[Langauge_Insert]    Script Date: 5/27/2018 9:48:40 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Language_ListAll]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Language_ListAll]
as
select * from Language

GO
/****** Object:  StoredProcedure [dbo].[Project_Insert]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Project_Insert]
	-- Add the parameters for the stored procedure here
	@ProjectName nvarchar(100),
	@Pr_Descreption nvarchar(MAX),
	@Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	insert into Project(ProjectName, Pr_Descreption, Status)
	values(@ProjectName,@Pr_Descreption,@Status)
END

GO
/****** Object:  StoredProcedure [dbo].[Role_Insert]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Role_Insert]
	-- Add the parameters for the stored procedure here
	@RoleName nvarchar(100),
	@Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	insert into Role(RoleName,Status)
	values(@RoleName,@Status)
END

GO
/****** Object:  StoredProcedure [dbo].[Skill_Insert]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Skill_Insert]
	-- Add the parameters for the stored procedure here
	@SkillName nvarchar(100),
	@Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	insert into Skill(SkillName,Status)
	values(@SkillName,@Status)
END

GO
/****** Object:  StoredProcedure [dbo].[Specialized_Insert]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Specialized_Insert]
	-- Add the parameters for the stored procedure here
	@SpecializedName nvarchar(100),
	@Status bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	insert into Specialized(SpecializedName,Status)
	values(@SpecializedName,@Status)
END

GO
/****** Object:  StoredProcedure [dbo].[Top3_Profile_Multil_Experience]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Top3_Profile_Multil_Experience]
AS
BEGIN
	select count(Id_Experience) as count_experience, Image, Id_Profile
	from View_Profile_Experience
	where Status=1
	group by Id_Profile, Image
	order by count_experience desc
END
GO
/****** Object:  StoredProcedure [dbo].[Top3_Profile_Multil_Language]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Top3_Profile_Multil_Language]
AS
BEGIN
	select Top 3 count(Id_Language) as count_language, Image, Id_Profile
	from View_Profile_Language
	where Status=1
	group by Id_Profile, Image
	order by count_language desc
END

GO
/****** Object:  StoredProcedure [dbo].[Top3_Profile_Multil_Skill]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Top3_Profile_Multil_Skill]
AS
BEGIN
	select Top 3 count(Id_Skill) as count_skill, Image, Id_Profile
	from View_Profile_Skill
	where Status=1
	group by Id_Profile, Image
	order by count_skill desc
END
GO
/****** Object:  StoredProcedure [dbo].[Top6_Profile_Popular]    Script Date: 5/27/2018 9:48:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Top6_Profile_Popular]
AS
BEGIN
	select Top 5 Follower_id, count(Followed_id) as count_follow, FullName, Descreption, Adress, Phone, TargetJob, Image, Id_Profile
	from View_Profile_Follow
	where Status=1
	group by Follower_id, FullName, Descreption, Adress, Phone, TargetJob, Image, Id_Profile
	order by count_follow desc
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[85] 4[8] 3[5] 2) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = -54
      End
      Begin Tables = 
         Begin Table = "Education"
            Begin Extent = 
               Top = 4
               Left = 87
               Bottom = 117
               Right = 261
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile"
            Begin Extent = 
               Top = 209
               Left = 388
               Bottom = 376
               Right = 558
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile_Experience"
            Begin Extent = 
               Top = 0
               Left = 581
               Bottom = 127
               Right = 780
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Experience"
            Begin Extent = 
               Top = 10
               Left = 922
               Bottom = 123
               Right = 1099
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Profile_Language"
            Begin Extent = 
               Top = 120
               Left = 779
               Bottom = 233
               Right = 974
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Language"
            Begin Extent = 
               Top = 148
               Left = 1025
               Bottom = 261
               Right = 1198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile_Project"
            Begin Extent = 
               Top = 350
               Left = 504
               Bottom = 476
               Right = 684
          ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile_Skill"
            Begin Extent = 
               Top = 235
               Left = 691
               Bottom = 348
               Right = 861
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Project"
            Begin Extent = 
               Top = 380
               Left = 789
               Bottom = 569
               Right = 959
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Skill"
            Begin Extent = 
               Top = 295
               Left = 1017
               Bottom = 408
               Right = 1187
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Specialized"
            Begin Extent = 
               Top = 368
               Left = 88
               Bottom = 481
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "User"
            Begin Extent = 
               Top = 6
               Left = 299
               Bottom = 136
               Right = 469
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[39] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Experience"
            Begin Extent = 
               Top = 45
               Left = 541
               Bottom = 220
               Right = 718
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile_Experience"
            Begin Extent = 
               Top = 19
               Left = 285
               Bottom = 177
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile"
            Begin Extent = 
               Top = 30
               Left = 23
               Bottom = 160
               Right = 193
            End
            DisplayFlags = 280
            TopColumn = 10
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Experience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Experience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[38] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Follow"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 211
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Follow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Follow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[75] 4[5] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Language"
            Begin Extent = 
               Top = 48
               Left = 20
               Bottom = 161
               Right = 193
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile_Language"
            Begin Extent = 
               Top = 15
               Left = 312
               Bottom = 249
               Right = 507
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile"
            Begin Extent = 
               Top = 32
               Left = 630
               Bottom = 162
               Right = 800
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Language'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Language'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Profile"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile_Project"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 181
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Project"
            Begin Extent = 
               Top = 6
               Left = 464
               Bottom = 190
               Right = 634
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[63] 4[14] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Profile"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 257
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Profile_Skill"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Skill"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 189
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Skill'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Profile_Skill'
GO
