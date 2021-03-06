USE [APIDiemThi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/11/2021 8:22:34 pm ******/
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
/****** Object:  Table [dbo].[Classes]    Script Date: 02/11/2021 8:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[MajorId] [int] NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 02/11/2021 8:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[FinishDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 02/11/2021 8:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[StudentId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[MidScore] [float] NULL,
	[FinalScore] [float] NULL,
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 02/11/2021 8:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] NOT NULL,
	[TypeStudent] [int] NOT NULL,
	[ClassesId] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 02/11/2021 8:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Credit] [int] NOT NULL,
	[MidScoreRatio] [float] NOT NULL,
	[FinalScoreRatio] [float] NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 02/11/2021 8:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] NOT NULL,
	[Salary] [float] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/11/2021 8:22:34 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Gender] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211019100845_addDBStudent', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211019151320_updatedb1', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211101035444_addRequiredStudent', N'5.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211101035658_addRequiredClass', N'5.0.11')
GO
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([Id], [Name], [Quantity], [MajorId]) VALUES (1, N'DH18IT82', 89, 1)
INSERT [dbo].[Classes] ([Id], [Name], [Quantity], [MajorId]) VALUES (3, N'DH19TK92', 54, 3)
SET IDENTITY_INSERT [dbo].[Classes] OFF
GO
SET IDENTITY_INSERT [dbo].[Major] ON 

INSERT [dbo].[Major] ([Id], [Name], [StartDate], [FinishDate]) VALUES (1, N'Công Nghệ Thông Tin K18', CAST(N'2018-09-19T16:21:08.5550000' AS DateTime2), CAST(N'2022-10-19T16:21:08.5550000' AS DateTime2))
INSERT [dbo].[Major] ([Id], [Name], [StartDate], [FinishDate]) VALUES (2, N'Khoa Học Máy Tính K18', CAST(N'2018-09-19T16:21:08.5550000' AS DateTime2), CAST(N'2022-10-19T16:21:08.5550000' AS DateTime2))
INSERT [dbo].[Major] ([Id], [Name], [StartDate], [FinishDate]) VALUES (3, N'Quản Trị Kinh Doanh K18', CAST(N'2021-10-29T11:08:08.4820000' AS DateTime2), CAST(N'2018-10-29T11:08:08.4820000' AS DateTime2))
INSERT [dbo].[Major] ([Id], [Name], [StartDate], [FinishDate]) VALUES (4, N'Xây Dựng K20', CAST(N'2021-11-02T10:41:54.1830000' AS DateTime2), CAST(N'2021-11-02T10:41:54.1830000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Major] OFF
GO
INSERT [dbo].[Score] ([StudentId], [SubjectId], [MidScore], [FinalScore]) VALUES (1, 1, 10, 10)
INSERT [dbo].[Score] ([StudentId], [SubjectId], [MidScore], [FinalScore]) VALUES (1, 2, 0, 0)
GO
INSERT [dbo].[Student] ([StudentId], [TypeStudent], [ClassesId]) VALUES (1, 2, 3)
INSERT [dbo].[Student] ([StudentId], [TypeStudent], [ClassesId]) VALUES (5, 1, NULL)
INSERT [dbo].[Student] ([StudentId], [TypeStudent], [ClassesId]) VALUES (6, 0, NULL)
INSERT [dbo].[Student] ([StudentId], [TypeStudent], [ClassesId]) VALUES (7, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([Id], [Name], [Credit], [MidScoreRatio], [FinalScoreRatio], [TeacherId]) VALUES (1, N'Lập Trình C++', 4, 30, 70, 3)
INSERT [dbo].[Subject] ([Id], [Name], [Credit], [MidScoreRatio], [FinalScoreRatio], [TeacherId]) VALUES (2, N'Lập Trình Giao Diện', 4, 30, 70, 3)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
INSERT [dbo].[Teacher] ([TeacherId], [Salary]) VALUES (3, 12000000)
INSERT [dbo].[Teacher] ([TeacherId], [Salary]) VALUES (4, 15000000)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password], [Role], [FullName], [DateOfBirth], [Gender], [Address]) VALUES (1, N'mymy123', N'dq+YNuNesVRYSlGsF8xMfQ==', N'student', N'Trà My', CAST(N'2021-10-20T03:03:19.5880000' AS DateTime2), N'Nữ', N'Bạc Liêu')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Role], [FullName], [DateOfBirth], [Gender], [Address]) VALUES (2, N'admin', N'gypwSo7j4jZVgTcx/ABo7w==', N'admin', N'Huỳnh Linh Khôi', CAST(N'2021-10-20T03:08:39.0350000' AS DateTime2), N'Nam', N'Bạc Liêu')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Role], [FullName], [DateOfBirth], [Gender], [Address]) VALUES (3, N'thao12', N'gypwSo7j4jZVgTcx/ABo7w==', N'teacher', N'Nguyễn Linh Thảo', CAST(N'2021-10-20T03:08:39.0350000' AS DateTime2), N'Nữ', N'Bạc Liêu')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Role], [FullName], [DateOfBirth], [Gender], [Address]) VALUES (4, N'khoi123', N'gypwSo7j4jZVgTcx/ABo7w==', N'teacher', N'Huỳnh Linh Khoa', CAST(N'2021-10-29T04:07:50.4180000' AS DateTime2), N'Nam', N'Bạc Liêu')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Role], [FullName], [DateOfBirth], [Gender], [Address]) VALUES (5, N'an123', N'gypwSo7j4jZVgTcx/ABo7w==', N'student', N'Nguyễn Văn An', CAST(N'2021-10-31T10:55:27.6010000' AS DateTime2), N'Nam', N'Nam Định')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Role], [FullName], [DateOfBirth], [Gender], [Address]) VALUES (6, N'binh12', N'gypwSo7j4jZVgTcx/ABo7w==', N'student', N'Trần Gia Bình', CAST(N'2021-11-01T04:19:49.6930000' AS DateTime2), N'Nam', N'Quảng Trị')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Role], [FullName], [DateOfBirth], [Gender], [Address]) VALUES (7, N'linh123', N'gypwSo7j4jZVgTcx/ABo7w==', N'student', N'Nguyễn Ngọc Linh', CAST(N'2021-11-01T14:03:02.0260000' AS DateTime2), N'Nữ', N'Cà Mau')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Classes] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Major] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Subject] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Username]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Password]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Role]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [FullName]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Gender]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Major_MajorId] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Major] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Major_MajorId]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Student_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Student_StudentId]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Subject_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Subject_SubjectId]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Classes_ClassesId] FOREIGN KEY([ClassesId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Classes_ClassesId]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Users_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Users_StudentId]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Teacher_TeacherId] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Teacher_TeacherId]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Users_TeacherId] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Users_TeacherId]
GO
