USE [DBWeb]
GO
/****** Object:  Table [dbo].[Charging]    Script Date: 10/21/2019 12:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charging](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_guest] [int] NULL,
	[amount_pay] [nvarchar](50) NULL,
	[pay_date] [date] NULL,
	[type] [bit] NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Charging] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupProduct]    Script Date: 10/21/2019 12:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupProduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
 CONSTRAINT [PK_GroupProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 10/21/2019 12:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[type] [bit] NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/21/2019 12:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_guest] [int] NULL,
	[code] [nvarchar](50) NULL,
	[type] [bit] NULL,
	[amount] [nvarchar](50) NULL,
	[total_price] [nvarchar](50) NULL,
	[pay] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/21/2019 12:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_group] [int] NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[price] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_charging]    Script Date: 10/21/2019 12:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_charging](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_guest] [int] NULL,
	[report_month] [date] NULL,
	[amount] [nvarchar](50) NULL,
	[type] [bit] NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_report_charging] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportRevenue]    Script Date: 10/21/2019 12:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportRevenue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_guest] [int] NULL,
	[report_month] [date] NULL,
	[revenue] [nvarchar](50) NULL,
	[cost] [nvarchar](50) NULL,
	[profit] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReportRevenue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/21/2019 12:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[type] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Charging]  WITH CHECK ADD  CONSTRAINT [FK_Charging_Guest] FOREIGN KEY([id_guest])
REFERENCES [dbo].[Guest] ([id])
GO
ALTER TABLE [dbo].[Charging] CHECK CONSTRAINT [FK_Charging_Guest]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Guest1] FOREIGN KEY([id_guest])
REFERENCES [dbo].[Guest] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Guest1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_GroupProduct] FOREIGN KEY([id_group])
REFERENCES [dbo].[GroupProduct] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_GroupProduct]
GO
ALTER TABLE [dbo].[report_charging]  WITH CHECK ADD  CONSTRAINT [FK_report_charging_Guest] FOREIGN KEY([id_guest])
REFERENCES [dbo].[Guest] ([id])
GO
ALTER TABLE [dbo].[report_charging] CHECK CONSTRAINT [FK_report_charging_Guest]
GO
ALTER TABLE [dbo].[ReportRevenue]  WITH CHECK ADD  CONSTRAINT [FK_ReportRevenue_Guest] FOREIGN KEY([id_guest])
REFERENCES [dbo].[Guest] ([id])
GO
ALTER TABLE [dbo].[ReportRevenue] CHECK CONSTRAINT [FK_ReportRevenue_Guest]
GO
