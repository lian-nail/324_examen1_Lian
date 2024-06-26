USE [bdlian8_9]
GO
/****** Object:  Table [dbo].[dat_transaccion]    Script Date: 05/03/2024 12:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_transaccion](
	[id_transaccion] [int] IDENTITY(1,1) NOT NULL,
	[id_cuenta_origen] [int] NULL,
	[id_cuenta_destino] [int] NULL,
	[monto] [nvarchar](20) NULL,
	[tipo_moneda] [varchar](10) NULL,
	[fecha_registro] [datetime] NULL,
 CONSTRAINT [PK_dat_transaccion] PRIMARY KEY CLUSTERED 
(
	[id_transaccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dat_tipo_cuenta]    Script Date: 05/03/2024 12:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_tipo_cuenta](
	[id_tipo_cuenta] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](150) NULL,
	[fecha_registro] [datetime] NULL,
 CONSTRAINT [PK_dat_tipo_cuenta] PRIMARY KEY CLUSTERED 
(
	[id_tipo_cuenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dat_persona]    Script Date: 05/03/2024 12:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_persona](
	[id_persona] [int] IDENTITY(1,1) NOT NULL,
	[id_rol] [int] NULL,
	[nombre] [varchar](20) NULL,
	[ap_paterno] [varchar](20) NULL,
	[ap_materno] [varchar](20) NULL,
	[ci] [nvarchar](20) NULL,
	[fecha_registro] [datetime] NULL,
 CONSTRAINT [PK_dat_persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dat_cuenta]    Script Date: 05/03/2024 12:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_cuenta](
	[id_cuenta] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_cuenta] [int] NULL,
	[id_persona] [int] NULL,
	[numero_cuenta] [varchar](100) NULL,
	[fecha_registro] [datetime] NULL,
 CONSTRAINT [PK_dat_cuenta] PRIMARY KEY CLUSTERED 
(
	[id_cuenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
