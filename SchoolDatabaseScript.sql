
CREATE TABLE [dbo].[AnnualTable](
	[AnnualID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Programe_ID] [int] NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Description] [varchar](400) NULL,
	[Fees] [float] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AnnualTable] PRIMARY KEY CLUSTERED 
(
	[AnnualID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AttendanceTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceTable](
	[AttendanceID] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [int] NOT NULL,
	[AttendDate] [datetime] NOT NULL,
	[AttendTime] [time](7) NOT NULL,
 CONSTRAINT [PK_AttendanceTable] PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DesignationTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesignationTable](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DesignationTable] PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamSettingTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamSettingTable](
	[ExamSettingID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Session_ID] [int] NOT NULL,
	[Exam_ID] [int] NOT NULL,
	[ProgrameSession_ID] [int] NOT NULL,
	[Description] [varchar](400) NOT NULL,
 CONSTRAINT [PK_ExamSettingTable] PRIMARY KEY CLUSTERED 
(
	[ExamSettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamTable](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Descrption] [varchar](200) NULL,
 CONSTRAINT [PK_ExamTable] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExpensesTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExpensesTable](
	[ExpensesID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseType_ID] [int] NOT NULL,
	[User_ID] [int] NULL,
	[Amount] [float] NOT NULL,
	[InvoiceNo] [varchar](50) NOT NULL,
	[Reason] [varchar](500) NOT NULL,
	[ExpDate] [datetime] NOT NULL,
	[Descrption] [varchar](500) NULL,
 CONSTRAINT [PK_ExpensesTable] PRIMARY KEY CLUSTERED 
(
	[ExpensesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExpensesTypeTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExpensesTypeTable](
	[ExpenseTypeID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ExpensesTypeTable] PRIMARY KEY CLUSTERED 
(
	[ExpenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProgrameSessionTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProgrameSessionTable](
	[ProgrameSessionID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Session_ID] [int] NOT NULL,
	[Programe_ID] [int] NOT NULL,
	[Details] [varchar](200) NOT NULL,
	[RegDate] [date] NOT NULL,
	[Description] [varchar](200) NULL,
 CONSTRAINT [PK_ProgrameSessionTable] PRIMARY KEY CLUSTERED 
(
	[ProgrameSessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[RoomTable]    Script Date: 10/12/2019 1:38:52 PM ******/

/****** Object:  Table [dbo].[SessionProgrameSubjectSettingTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SessionProgrameSubjectSettingTable](
	[SessionProgrameSubjectSettingID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Session_ID] [int] NOT NULL,
	[Programe_ID] [int] NOT NULL,
	[Annual_ID] [int] NOT NULL,
	[Subject_ID] [int] NOT NULL,
	[RegDate] [date] NOT NULL,
	[Description] [varchar](200) NULL,
 CONSTRAINT [PK_SessionProgrameSubjectSettingTable] PRIMARY KEY CLUSTERED 
(
	[SessionProgrameSubjectSettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[StaffAttendanceTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffAttendanceTable](
	[StaffAttendanceID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_ID] [int] NOT NULL,
	[AttendDate] [date] NOT NULL,
	[ComingTime] [time](7) NULL,
	[ClosingTime] [time](7) NULL,
 CONSTRAINT [PK_StaffAttendanceTable] PRIMARY KEY CLUSTERED 
(
	[StaffAttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StaffTable](
	[StaffID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Designation_ID] [int] NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](100) NULL,
	[Address] [varchar](200) NOT NULL,
	[Qualification] [varchar](500) NOT NULL,
	[Photo] [varchar](max) NOT NULL,
	[Description] [varchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[FingerPrint] [varchar](max) NULL,
 CONSTRAINT [PK_StaffTable] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentTable](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[Session_ID] [int] NOT NULL,
	[Programe_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[FatherName] [varchar](100) NOT NULL,
	[DateofBirth] [date] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[ContactNo] [varchar](20) NOT NULL,
	[CNIC] [varchar](20) NOT NULL,
	[FNIC] [varchar](20) NOT NULL,
	[Photo] [varchar](200) NOT NULL,
	[IsEnrolled] [bit] NOT NULL,
	[ApplyDate] [date] NOT NULL,
	[IsShortList] [bit] NOT NULL,
	[IsApply] [bit] NOT NULL,
	[PreviousSchool] [varchar](500) NOT NULL,
	[PreviousPercentage] [float] NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[FingerPrint] [varchar](max) NULL,
 CONSTRAINT [PK_StudentTable] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[SubmissionFeeTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubmissionFeeTable](
	[SubmissionFeeID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Student_ID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Programe_ID] [int] NOT NULL,
	[SubmissionDate] [date] NOT NULL,
	[FeesMonth] [varchar](100) NOT NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_SubmissionFeeTable] PRIMARY KEY CLUSTERED 
(
	[SubmissionFeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TimeTblTable]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeTblTable](
	[TimeTableID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Subject_ID] [int] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Day] [varchar](100) NOT NULL,
	[SessionProgrameSubjectSetting_ID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TimeTblTable] PRIMARY KEY CLUSTERED 
(
	[TimeTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


/****** Object:  View [dbo].[v_AllUsers]    Script Date: 10/12/2019 1:38:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_AllUsers]
AS
SELECT        dbo.UserTable.UserID, dbo.UserTable.UserType_ID, dbo.UserTypeTable.TypeName, dbo.UserTable.FullName, dbo.UserTable.UserName, dbo.UserTable.ContactNo, dbo.UserTable.EmailAddress, dbo.UserTable.Address
FROM            dbo.UserTable INNER JOIN
                         dbo.UserTypeTable ON dbo.UserTable.UserType_ID = dbo.UserTypeTable.UserTypeID

GO
ALTER TABLE [dbo].[AnnualTable] ADD  CONSTRAINT [DF_AnnualTable_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[DesignationTable] ADD  CONSTRAINT [DF_DesignationTable_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ExpensesTypeTable] ADD  CONSTRAINT [DF_ExpensesTypeTable_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProgrameTable] ADD  CONSTRAINT [DF_ProgrameTable_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[StaffTable] ADD  CONSTRAINT [DF_StaffTable_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[StudentTable] ADD  CONSTRAINT [DF_StudentTable_IsEnrolled]  DEFAULT ((0)) FOR [IsEnrolled]
GO
ALTER TABLE [dbo].[StudentTable] ADD  CONSTRAINT [DF_StudentTable_IsShortList]  DEFAULT ((0)) FOR [IsShortList]
GO
ALTER TABLE [dbo].[StudentTable] ADD  CONSTRAINT [DF_StudentTable_IsApply]  DEFAULT ((0)) FOR [IsApply]
GO
ALTER TABLE [dbo].[StudentTable] ADD  CONSTRAINT [DF_StudentTable_PreviousPercentage]  DEFAULT ((0)) FOR [PreviousPercentage]
GO
ALTER TABLE [dbo].[TimeTblTable] ADD  CONSTRAINT [DF_TimeTblTable_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AnnualTable]  WITH CHECK ADD  CONSTRAINT [FK_AnnualTable_ProgrameTable] FOREIGN KEY([Programe_ID])
REFERENCES [dbo].[ProgrameTable] ([ProgrameID])
GO
ALTER TABLE [dbo].[AnnualTable] CHECK CONSTRAINT [FK_AnnualTable_ProgrameTable]
GO
ALTER TABLE [dbo].[AnnualTable]  WITH CHECK ADD  CONSTRAINT [FK_AnnualTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[AnnualTable] CHECK CONSTRAINT [FK_AnnualTable_UserTable]
GO
ALTER TABLE [dbo].[AttendanceTable]  WITH CHECK ADD  CONSTRAINT [FK_AttendanceTable_StudentTable] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[StudentTable] ([StudentID])
GO
ALTER TABLE [dbo].[AttendanceTable] CHECK CONSTRAINT [FK_AttendanceTable_StudentTable]
GO
ALTER TABLE [dbo].[DesignationTable]  WITH CHECK ADD  CONSTRAINT [FK_DesignationTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[DesignationTable] CHECK CONSTRAINT [FK_DesignationTable_UserTable]
GO
ALTER TABLE [dbo].[ExamSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_ExamSettingTable_ExamTable] FOREIGN KEY([Exam_ID])
REFERENCES [dbo].[ExamTable] ([ExamID])
GO
ALTER TABLE [dbo].[ExamSettingTable] CHECK CONSTRAINT [FK_ExamSettingTable_ExamTable]
GO
ALTER TABLE [dbo].[ExamSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_ExamSettingTable_ProgrameSessionTable] FOREIGN KEY([ProgrameSession_ID])
REFERENCES [dbo].[ProgrameSessionTable] ([ProgrameSessionID])
GO
ALTER TABLE [dbo].[ExamSettingTable] CHECK CONSTRAINT [FK_ExamSettingTable_ProgrameSessionTable]
GO
ALTER TABLE [dbo].[ExamSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_ExamSettingTable_SessionTable] FOREIGN KEY([Session_ID])
REFERENCES [dbo].[SessionTable] ([SessionID])
GO
ALTER TABLE [dbo].[ExamSettingTable] CHECK CONSTRAINT [FK_ExamSettingTable_SessionTable]
GO
ALTER TABLE [dbo].[ExamSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_ExamSettingTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[ExamSettingTable] CHECK CONSTRAINT [FK_ExamSettingTable_UserTable]
GO
ALTER TABLE [dbo].[ExamTable]  WITH CHECK ADD  CONSTRAINT [FK_ExamTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[ExamTable] CHECK CONSTRAINT [FK_ExamTable_UserTable]
GO
ALTER TABLE [dbo].[ExpensesTable]  WITH CHECK ADD  CONSTRAINT [FK_ExpensesTable_ExpensesTypeTable] FOREIGN KEY([ExpenseType_ID])
REFERENCES [dbo].[ExpensesTypeTable] ([ExpenseTypeID])
GO
ALTER TABLE [dbo].[ExpensesTable] CHECK CONSTRAINT [FK_ExpensesTable_ExpensesTypeTable]
GO
ALTER TABLE [dbo].[ExpensesTable]  WITH CHECK ADD  CONSTRAINT [FK_ExpensesTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[ExpensesTable] CHECK CONSTRAINT [FK_ExpensesTable_UserTable]
GO
ALTER TABLE [dbo].[ExpensesTypeTable]  WITH CHECK ADD  CONSTRAINT [FK_ExpensesTypeTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[ExpensesTypeTable] CHECK CONSTRAINT [FK_ExpensesTypeTable_UserTable]
GO
ALTER TABLE [dbo].[ProgrameSessionTable]  WITH CHECK ADD  CONSTRAINT [FK_ProgrameSessionTable_ProgrameTable] FOREIGN KEY([Programe_ID])
REFERENCES [dbo].[ProgrameTable] ([ProgrameID])
GO
ALTER TABLE [dbo].[ProgrameSessionTable] CHECK CONSTRAINT [FK_ProgrameSessionTable_ProgrameTable]
GO
ALTER TABLE [dbo].[ProgrameSessionTable]  WITH CHECK ADD  CONSTRAINT [FK_ProgrameSessionTable_SessionTable] FOREIGN KEY([Session_ID])
REFERENCES [dbo].[SessionTable] ([SessionID])
GO
ALTER TABLE [dbo].[ProgrameSessionTable] CHECK CONSTRAINT [FK_ProgrameSessionTable_SessionTable]
GO
ALTER TABLE [dbo].[ProgrameSessionTable]  WITH CHECK ADD  CONSTRAINT [FK_ProgrameSessionTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[ProgrameSessionTable] CHECK CONSTRAINT [FK_ProgrameSessionTable_UserTable]
GO
ALTER TABLE [dbo].[ProgrameTable]  WITH CHECK ADD  CONSTRAINT [FK_ProgrameTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[ProgrameTable] CHECK CONSTRAINT [FK_ProgrameTable_UserTable]
GO
ALTER TABLE [dbo].[RoomTable]  WITH CHECK ADD  CONSTRAINT [FK_RoomTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[RoomTable] CHECK CONSTRAINT [FK_RoomTable_UserTable]
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_SessionProgrameSubjectSettingTable_AnnualTable] FOREIGN KEY([Annual_ID])
REFERENCES [dbo].[AnnualTable] ([AnnualID])
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable] CHECK CONSTRAINT [FK_SessionProgrameSubjectSettingTable_AnnualTable]
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_SessionProgrameSubjectSettingTable_ProgrameTable] FOREIGN KEY([Programe_ID])
REFERENCES [dbo].[ProgrameTable] ([ProgrameID])
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable] CHECK CONSTRAINT [FK_SessionProgrameSubjectSettingTable_ProgrameTable]
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_SessionProgrameSubjectSettingTable_SessionTable] FOREIGN KEY([Session_ID])
REFERENCES [dbo].[SessionTable] ([SessionID])
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable] CHECK CONSTRAINT [FK_SessionProgrameSubjectSettingTable_SessionTable]
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_SessionProgrameSubjectSettingTable_SubjectTable] FOREIGN KEY([Subject_ID])
REFERENCES [dbo].[SubjectTable] ([SubjectID])
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable] CHECK CONSTRAINT [FK_SessionProgrameSubjectSettingTable_SubjectTable]
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable]  WITH CHECK ADD  CONSTRAINT [FK_SessionProgrameSubjectSettingTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[SessionProgrameSubjectSettingTable] CHECK CONSTRAINT [FK_SessionProgrameSubjectSettingTable_UserTable]
GO
ALTER TABLE [dbo].[SessionTable]  WITH CHECK ADD  CONSTRAINT [FK_SessionTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[SessionTable] CHECK CONSTRAINT [FK_SessionTable_UserTable]
GO
ALTER TABLE [dbo].[StaffAttendanceTable]  WITH CHECK ADD  CONSTRAINT [FK_StaffAttendanceTable_StaffTable] FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[StaffTable] ([StaffID])
GO
ALTER TABLE [dbo].[StaffAttendanceTable] CHECK CONSTRAINT [FK_StaffAttendanceTable_StaffTable]
GO
ALTER TABLE [dbo].[StaffTable]  WITH CHECK ADD  CONSTRAINT [FK_StaffTable_DesignationTable] FOREIGN KEY([Designation_ID])
REFERENCES [dbo].[DesignationTable] ([DesignationID])
GO
ALTER TABLE [dbo].[StaffTable] CHECK CONSTRAINT [FK_StaffTable_DesignationTable]
GO
ALTER TABLE [dbo].[StaffTable]  WITH CHECK ADD  CONSTRAINT [FK_StaffTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[StaffTable] CHECK CONSTRAINT [FK_StaffTable_UserTable]
GO
ALTER TABLE [dbo].[StudentTable]  WITH CHECK ADD  CONSTRAINT [FK_StudentTable_ProgrameTable] FOREIGN KEY([Programe_ID])
REFERENCES [dbo].[ProgrameTable] ([ProgrameID])
GO
ALTER TABLE [dbo].[StudentTable] CHECK CONSTRAINT [FK_StudentTable_ProgrameTable]
GO
ALTER TABLE [dbo].[StudentTable]  WITH CHECK ADD  CONSTRAINT [FK_StudentTable_SessionTable] FOREIGN KEY([Session_ID])
REFERENCES [dbo].[SessionTable] ([SessionID])
GO
ALTER TABLE [dbo].[StudentTable] CHECK CONSTRAINT [FK_StudentTable_SessionTable]
GO
ALTER TABLE [dbo].[StudentTable]  WITH CHECK ADD  CONSTRAINT [FK_StudentTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[StudentTable] CHECK CONSTRAINT [FK_StudentTable_UserTable]
GO
ALTER TABLE [dbo].[SubjectTable]  WITH CHECK ADD  CONSTRAINT [FK_SubjectTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[SubjectTable] CHECK CONSTRAINT [FK_SubjectTable_UserTable]
GO
ALTER TABLE [dbo].[SubmissionFeeTable]  WITH CHECK ADD  CONSTRAINT [FK_SubmissionFeeTable_ProgrameTable] FOREIGN KEY([Programe_ID])
REFERENCES [dbo].[ProgrameTable] ([ProgrameID])
GO
ALTER TABLE [dbo].[SubmissionFeeTable] CHECK CONSTRAINT [FK_SubmissionFeeTable_ProgrameTable]
GO
ALTER TABLE [dbo].[SubmissionFeeTable]  WITH CHECK ADD  CONSTRAINT [FK_SubmissionFeeTable_StudentTable] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[StudentTable] ([StudentID])
GO
ALTER TABLE [dbo].[SubmissionFeeTable] CHECK CONSTRAINT [FK_SubmissionFeeTable_StudentTable]
GO
ALTER TABLE [dbo].[SubmissionFeeTable]  WITH CHECK ADD  CONSTRAINT [FK_SubmissionFeeTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[SubmissionFeeTable] CHECK CONSTRAINT [FK_SubmissionFeeTable_UserTable]
GO
ALTER TABLE [dbo].[TimeTblTable] CHECK CONSTRAINT [FK_TimeTblTable_RoomTable]
GO
ALTER TABLE [dbo].[TimeTblTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTblTable_SessionProgrameSubjectSettingTable] FOREIGN KEY([SessionProgrameSubjectSetting_ID])
REFERENCES [dbo].[SessionProgrameSubjectSettingTable] ([SessionProgrameSubjectSettingID])
GO
ALTER TABLE [dbo].[TimeTblTable] CHECK CONSTRAINT [FK_TimeTblTable_SessionProgrameSubjectSettingTable]
GO
ALTER TABLE [dbo].[TimeTblTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTblTable_SubjectTable] FOREIGN KEY([Subject_ID])
REFERENCES [dbo].[SubjectTable] ([SubjectID])
GO
ALTER TABLE [dbo].[TimeTblTable] CHECK CONSTRAINT [FK_TimeTblTable_SubjectTable]
GO
ALTER TABLE [dbo].[TimeTblTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTblTable_UserTable] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserTable] ([UserID])
GO
ALTER TABLE [dbo].[TimeTblTable] CHECK CONSTRAINT [FK_TimeTblTable_UserTable]
GO
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_UserTypeTable] FOREIGN KEY([UserType_ID])
REFERENCES [dbo].[UserTypeTable] ([UserTypeID])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_UserTypeTable]
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
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "UserTable"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "UserTypeTable"
            Begin Extent = 
               Top = 9
               Left = 401
               Bottom = 122
               Right = 571
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_AllUsers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_AllUsers'
GO
USE [master]
GO
ALTER DATABASE [BAUSTDB] SET  READ_WRITE 
GO
