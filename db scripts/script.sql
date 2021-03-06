USE [contosoinsauthdb]
GO
/****** Object:  Table [dbo].[VehPoliciesMaster]    Script Date: 20-11-2017 12:24:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehPoliciesMaster](
	[Id] [nvarchar](50) NOT NULL,
	[Uidname] [nvarchar](30) NULL,
	[Version] [nvarchar](50) NULL,
	[Inscompany] [nvarchar](20) NULL,
	[Policyno] [nvarchar](20) NULL,
	[Vehicleno] [nvarchar](15) NULL,
	[Userid] [nvarchar](20) NULL,
	[Status] [nvarchar](10) NULL,
	[Firstname] [nvarchar](20) NULL,
	[Lastname] [nvarchar](20) NULL,
	[Lastmod] [datetime] NULL,
	[Startdate] [datetime] NULL,
	[Enddate] [datetime] NULL,
 CONSTRAINT [PK_VehPoliciesMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [PolicyUniqueId] UNIQUE NONCLUSTERED 
(
	[Policyno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VehiclenoUNiqueId] UNIQUE NONCLUSTERED 
(
	[Vehicleno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VehPoliciesMaster] ADD  CONSTRAINT [DF_VehPoliciesMaster_Lastmod]  DEFAULT (getdate()) FOR [Lastmod]
GO
