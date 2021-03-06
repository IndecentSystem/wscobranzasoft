/****** Object:  ForeignKey [FK_Deudor_Cliente]    Script Date: 03/08/2013 17:18:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Deudor_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
ALTER TABLE [dbo].[Deudor] DROP CONSTRAINT [FK_Deudor_Cliente]
GO
/****** Object:  Table [dbo].[Deudor]    Script Date: 03/08/2013 17:18:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Deudor]') AND type in (N'U'))
DROP TABLE [dbo].[Deudor]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 03/08/2013 17:18:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Default [DF_Deudor_fecRegistro]    Script Date: 03/08/2013 17:18:17 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Deudor_fecRegistro]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Deudor_fecRegistro]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Deudor] DROP CONSTRAINT [DF_Deudor_fecRegistro]
END


End
GO
/****** Object:  Default [DF_Deudor_fecActualizar]    Script Date: 03/08/2013 17:18:17 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Deudor_fecActualizar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Deudor_fecActualizar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Deudor] DROP CONSTRAINT [DF_Deudor_fecActualizar]
END


End
GO
/****** Object:  Default [DF_Deudor_flgActivo]    Script Date: 03/08/2013 17:18:17 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Deudor_flgActivo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Deudor_flgActivo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Deudor] DROP CONSTRAINT [DF_Deudor_flgActivo]
END


End
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 03/08/2013 17:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nomCliente] [nchar](30) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[codCliente] [nchar](10) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON
INSERT [dbo].[Cliente] ([idCliente], [nomCliente], [codCliente]) VALUES (1, N'BANCO RIPLEY                  ', N'RIPLEY    ')
INSERT [dbo].[Cliente] ([idCliente], [nomCliente], [codCliente]) VALUES (2, N'FINANCIERA EFECTIVA           ', N'EFECTIVA  ')
INSERT [dbo].[Cliente] ([idCliente], [nomCliente], [codCliente]) VALUES (3, N'ESTILOS                       ', N'ESTILOS   ')
INSERT [dbo].[Cliente] ([idCliente], [nomCliente], [codCliente]) VALUES (4, N'BANCO INTERBANK               ', N'INTERBANK ')
INSERT [dbo].[Cliente] ([idCliente], [nomCliente], [codCliente]) VALUES (5, N'CLARO                         ', N'CLARO     ')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
/****** Object:  Table [dbo].[Deudor]    Script Date: 03/08/2013 17:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Deudor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Deudor](
	[idDeudor] [int] IDENTITY(1,1) NOT NULL,
	[codDeudor] [nchar](20) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[nomDeudor] [nchar](100) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[tipDocumento] [nchar](10) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[numDocumento] [nchar](20) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[fecRegistro] [datetime] NOT NULL,
	[fecActualizar] [datetime] NOT NULL,
	[flgActivo] [bit] NOT NULL,
	[idCliente] [int] NULL,
 CONSTRAINT [PK_Deudor] PRIMARY KEY CLUSTERED 
(
	[idDeudor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Deudor] ON
INSERT [dbo].[Deudor] ([idDeudor], [codDeudor], [nomDeudor], [tipDocumento], [numDocumento], [fecRegistro], [fecActualizar], [flgActivo], [idCliente]) VALUES (1, N'09903031            ', N'HECTOR HUGO                                                                                         ', N'DNI       ', N'09903031            ', CAST(0x0000A17B000BB698 AS DateTime), CAST(0x0000A17B000BB698 AS DateTime), 1, 1)
INSERT [dbo].[Deudor] ([idDeudor], [codDeudor], [nomDeudor], [tipDocumento], [numDocumento], [fecRegistro], [fecActualizar], [flgActivo], [idCliente]) VALUES (2, N'10099030319         ', N'GARCIA GARCIA                                                                                       ', N'RUC       ', N'10099030319         ', CAST(0x0000A17B000BECFE AS DateTime), CAST(0x0000A17B000BECFE AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Deudor] OFF
/****** Object:  Default [DF_Deudor_fecRegistro]    Script Date: 03/08/2013 17:18:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Deudor_fecRegistro]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Deudor_fecRegistro]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Deudor] ADD  CONSTRAINT [DF_Deudor_fecRegistro]  DEFAULT (getdate()) FOR [fecRegistro]
END


End
GO
/****** Object:  Default [DF_Deudor_fecActualizar]    Script Date: 03/08/2013 17:18:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Deudor_fecActualizar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Deudor_fecActualizar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Deudor] ADD  CONSTRAINT [DF_Deudor_fecActualizar]  DEFAULT (getdate()) FOR [fecActualizar]
END


End
GO
/****** Object:  Default [DF_Deudor_flgActivo]    Script Date: 03/08/2013 17:18:17 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Deudor_flgActivo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Deudor_flgActivo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Deudor] ADD  CONSTRAINT [DF_Deudor_flgActivo]  DEFAULT ((1)) FOR [flgActivo]
END


End
GO
/****** Object:  ForeignKey [FK_Deudor_Cliente]    Script Date: 03/08/2013 17:18:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Deudor_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
ALTER TABLE [dbo].[Deudor]  WITH CHECK ADD  CONSTRAINT [FK_Deudor_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Deudor_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Deudor]'))
ALTER TABLE [dbo].[Deudor] CHECK CONSTRAINT [FK_Deudor_Cliente]
GO
