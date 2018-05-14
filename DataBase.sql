SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AddressType](
	[AddressType_Id] [int] IDENTITY(1,1) NOT NULL,
	[AddressType_Text] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Candidate_AddressDetails]    Script Date: 5/14/2018 11:21:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Candidate_AddressDetails](
	[Candidate_AddressDetails_Id] [int] IDENTITY(1,1) NOT NULL,
	[Candidate_Id] [int] NOT NULL,
	[AddressType_Id] [int] NULL,
	[Candidate_AddressDetails_StateId] [int] NULL,
	[Candidate_AddressDetails_DistrictId] [int] NULL,
	[Candidate_PinCode] [varchar](50) NULL,
	[Candidate_AddressDetails_TeshilName] [varchar](100) NULL,
	[Candidate_AddressDetails_VillageName] [varchar](100) NULL,
	[Candidate_AddressDetails_PoliceStation] [varchar](100) NULL,
	[Candidate_AddressDetails_Address] [varchar](max) NULL,
 CONSTRAINT [PK__Candidat__AE94A871C37ADC61] PRIMARY KEY CLUSTERED 
(
	[Candidate_AddressDetails_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Candidate_Info]    Script Date: 5/14/2018 11:22:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Candidate_Info](
	[Candidate_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[FatherName] [varchar](80) NULL,
	[MothersName] [varchar](max) NULL,
	[DOB] [datetime] NULL,
	[UID_No] [varchar](500) NULL,
	[school_Name_HSS] [varchar](max) NULL,
	[Board_Name_HSS] [varchar](max) NULL,
	[Roll_No_HSS] [varchar](max) NULL,
	[YOP_HSS] [varchar](max) NULL,
	[Total_Marks_HSS] [varchar](max) NULL,
	[Marks_HSS] [varchar](50) NULL,
	[Marks_Per_HSS] [varchar](max) NULL,
	[school_Name_SSC] [varchar](max) NULL,
	[Board_Name_SSC] [varchar](max) NULL,
	[Roll_No_SSC] [varchar](max) NULL,
	[YOP_SSC] [varchar](max) NULL,
	[Total_Marks_SSC] [varchar](max) NULL,
	[Marks_SSC] [varchar](50) NULL,
	[Marks_Per_SSC] [varchar](max) NULL,
	[Picture] [varchar](max) NULL,
	[Signature] [varchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK__Candidat__67F75EFD8C0A4D2F] PRIMARY KEY CLUSTERED 
(
	[Candidate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



/****** Object:  Table [dbo].[District]    Script Date: 5/14/2018 11:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[District_Id] [int] IDENTITY(1,1) NOT NULL,
	[District_Name] [varchar](50) NULL,
	[District_SateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[District_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[District] ON 
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (1, N'Agra', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (2, N'Firozabad', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (3, N'Mainpuri', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (4, N'Mathura', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (5, N'Aligarh', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (6, N'Etah', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (7, N'Hathras', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (8, N'Kasganj', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (9, N'Allahabad', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (10, N'Fatehpur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (11, N'Kaushambi', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (12, N'Pratapgarh', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (13, N'Azamgarh', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (14, N'Baliya', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (15, N'Mau', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (16, N'Bareilly', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (17, N'Badayun', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (18, N'Pilibheet', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (19, N'Shahjahanpur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (20, N'Basti', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (21, N'Santkabir Nagar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (22, N'Siddharth Nagar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (23, N'Chitrakoot', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (24, N'Banda', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (25, N'Hamirpur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (26, N'Mahoba', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (27, N'Behraich', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (28, N'Balrampur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (29, N'Gonda', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (30, N'Shrawasti', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (31, N'Meerut', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (32, N'Bulandshahar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (33, N'Gautam Buddh Nagar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (34, N'Bagpat', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (35, N'Hapur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (36, N'Saharanpur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (37, N'Muzaffar Nagar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (38, N'Moradabad', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (39, N'Sambhal', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (40, N'Rampur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (41, N'Bijnaur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (42, N'Amroha', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (43, N'Varansi', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (44, N'Chandauli', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (45, N'Ghazipur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (46, N'Lucknow', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (47, N'Hardoi', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (48, N'Lakhimpur Kheri', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (49, N'Rae Bareli', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (50, N'Sitapur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (51, N'Unnao', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (52, N'Mirzapur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (53, N'Sant Ravidas Nagar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (54, N'Sonbhadra', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (55, N'Kanpur Nagar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (56, N'Kanpur Dehat', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (57, N'Etawah', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (58, N'Jhansi', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (59, N'Jalaun', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (60, N'Lalitpur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (61, N'Gorakhpur', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (62, N'Kushi Nagar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (63, N'Deoria', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (64, N'Maharaj Ganj', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (65, N'Ambedkar Nagar', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (66, N'Amethi', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (67, N'Barabanki', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (68, N'Faizabad', 0)
GO
INSERT [dbo].[District] ([District_Id], [District_Name], [District_SateId]) VALUES (69, N'Sultanpur', 0)
GO
SET IDENTITY_INSERT [dbo].[District] OFF
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 5/14/2018 11:27:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Exam](
	[Exam_Id] [int] IDENTITY(1,1) NOT NULL,
	[Candidate_Id] [int] NULL,
	[ExamName] [varchar](max) NULL,
	[ExamActiveFrom] [datetime] NULL,
	[ExamActiveTo] [datetime] NULL,
	[ExamIsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Exam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberType]    Script Date: 5/14/2018 11:27:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MemberType](
	[MemberType_Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberType_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberType_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  StoredProcedure [dbo].[USP_GetDistrictNames]    Script Date: 5/14/2018 11:28:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_GetDistrictNames] 

AS
BEGIN
select * From District order by District_Name
END
GO

/****** Object:  StoredProcedure [dbo].[usp_InsertCandidateinfo]    Script Date: 5/14/2018 11:29:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================  
-- Author:  <Pradeep Singh Rawat>  
-- Create date: <5/7/2018 6:58 PM>  
-- Description: <Insert Candidate info into DB>  
-- =============================================  
CREATE PROCEDURE [dbo].[usp_InsertCandidateinfo]   
 @Name Varchar(100),  
 @FatherName varchar(80), 
 @MothersName varchar(MAX), 
 @DOB Datetime,  
 @UID_No varchar(500),  
 @school_Name_HSS varchar(MAX),  
 @Board_Name_HSS varchar(MAX),  
 @Roll_No_HSS varchar(MAX),  
 @YOP_HSS varchar(MAX), 
 @Total_Marks_HSS varchar(MAX), 
 @Marks_HSS varchar(50),  
 @Marks_Per_HSS varchar(MAX),  
 @school_Name_SSC varchar(MAX),  
 @Board_Name_SSC varchar(MAX),  
 @Roll_No_SSC varchar(MAX),  
 @YOP_SSC varchar(MAX), 
 @Total_Marks_SSC varchar(MAX), 
 @Marks_SSC varchar(50),  
 @Marks_Per_SSC varchar(MAX),
 @Picture varchar(MAX),
 @Signature Varchar(MAX),  
 @Candidate_Id int output  
AS  
BEGIN  
  
  
insert into Candidate_Info(  
[Name],FatherName,MothersName,DOB,UID_No,school_Name_HSS,Board_Name_HSS,Roll_No_HSS,YOP_HSS,Total_Marks_HSS,Marks_HSS,Marks_Per_HSS,school_Name_SSC,Board_Name_SSC,Roll_No_SSC,YOP_SSC,Total_Marks_SSC,Marks_SSC,Marks_Per_SSC,Picture,[Signature],CreatedOn,CreatedBy)  
values  
(  
 @Name,  
 @FatherName,  
 @MothersName,
 @DOB,  
 @UID_No,  
 @school_Name_HSS,  
 @Board_Name_HSS,  
 @Roll_No_HSS,  
 @YOP_HSS,  
 @Total_Marks_HSS,
 @Marks_HSS,  
 @Marks_Per_HSS,  
 @school_Name_SSC,  
 @Board_Name_SSC,  
 @Roll_No_SSC,  
 @YOP_SSC, 
 @Total_Marks_SSC, 
 @Marks_SSC,  
 @Marks_Per_SSC,
 @Picture,
 @Signature,
 GETDATE(),0  
)  
  
SET @Candidate_Id=SCOPE_IDENTITY()  
RETURN  @Candidate_Id  
END  
GO
