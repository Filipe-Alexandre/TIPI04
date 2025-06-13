USE [master]
GO
/****** Object:  Database [ClinicaEstetica]    Script Date: 14/04/2023 21:46:21 ******/
CREATE DATABASE [ClinicaEstetica]
GO

USE [ClinicaEstetica]
GO
/****** Object:  Table [dbo].[Agendamento]    Script Date: 14/04/2023 21:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agendamento](
	[IdAgendamento] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdStatusAgendamento] [int] NOT NULL,
	[ValorTotal] [decimal](10, 2) NOT NULL,
	[ValorDesconto] [decimal](10, 2) NOT NULL,
	[DataAgendamento] [datetime] NOT NULL,
	[MotivoCancelamento] [varchar](200) NULL,
	[DataCadastro] [datetime] NOT NULL,
	[IdUsuarioCadastro] [int] NOT NULL,
	[DataAlteracao] [datetime] NULL,
	[IdUsuarioAlteracao] [int] NULL,
 CONSTRAINT [PK_Agendamento] PRIMARY KEY CLUSTERED 
(
	[IdAgendamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendamentoServico]    Script Date: 14/04/2023 21:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendamentoServico](
	[IdAgendamento] [int] NOT NULL,
	[IdServico] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/04/2023 21:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Cpf] [varchar](14) NULL,
	[Email] [varchar](100) NOT NULL,
	[Telefone] [varchar](15) NOT NULL,
	[Logradouro] [varchar](200) NOT NULL,
	[Nro] [int] NOT NULL,
	[Complemento] [varchar](50) NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Estado] [varchar](2) NOT NULL,
	[Cep] [varchar](9) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servico]    Script Date: 14/04/2023 21:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servico](
	[IdServico] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoServico] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descricao] [varchar](1000) NULL,
	[Valor] [decimal](10, 2) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Servico] PRIMARY KEY CLUSTERED 
(
	[IdServico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusAgendamento]    Script Date: 14/04/2023 21:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusAgendamento](
	[IdStatusAgendamento] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StatusAgendamento] PRIMARY KEY CLUSTERED 
(
	[IdStatusAgendamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoServico]    Script Date: 14/04/2023 21:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoServico](
	[IdTipoServico] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoServico] PRIMARY KEY CLUSTERED 
(
	[IdTipoServico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 14/04/2023 21:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[IdTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[IdTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 14/04/2023 21:46:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY NOT NULL,
	[IdTipoUsuario] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Senha] [varchar](20) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agendamento] ADD  CONSTRAINT [DF_Agendamento_DataCadastro]  DEFAULT (getdate()) FOR [DataCadastro]
GO
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [FK_Agendamento_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [FK_Agendamento_Cliente]
GO
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [FK_Agendamento_StatusAgendamento] FOREIGN KEY([IdStatusAgendamento])
REFERENCES [dbo].[StatusAgendamento] ([IdStatusAgendamento])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [FK_Agendamento_StatusAgendamento]
GO
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [FK_Agendamento_Usuario] FOREIGN KEY([IdUsuarioCadastro])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [FK_Agendamento_Usuario]
GO
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [FK_Agendamento_Usuario1] FOREIGN KEY([IdUsuarioAlteracao])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [FK_Agendamento_Usuario1]
GO
ALTER TABLE [dbo].[AgendamentoServico]  WITH CHECK ADD  CONSTRAINT [FK_AgendamentoServico_Agendamento] FOREIGN KEY([IdAgendamento])
REFERENCES [dbo].[Agendamento] ([IdAgendamento])
GO
ALTER TABLE [dbo].[AgendamentoServico] CHECK CONSTRAINT [FK_AgendamentoServico_Agendamento]
GO
ALTER TABLE [dbo].[AgendamentoServico]  WITH CHECK ADD  CONSTRAINT [FK_AgendamentoServico_Servico] FOREIGN KEY([IdServico])
REFERENCES [dbo].[Servico] ([IdServico])
GO
ALTER TABLE [dbo].[AgendamentoServico] CHECK CONSTRAINT [FK_AgendamentoServico_Servico]
GO
ALTER TABLE [dbo].[Servico]  WITH CHECK ADD  CONSTRAINT [FK_Servico_TipoServico] FOREIGN KEY([IdTipoServico])
REFERENCES [dbo].[TipoServico] ([IdTipoServico])
GO
ALTER TABLE [dbo].[Servico] CHECK CONSTRAINT [FK_Servico_TipoServico]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoUsuario] FOREIGN KEY([IdTipoUsuario])
REFERENCES [dbo].[TipoUsuario] ([IdTipoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoUsuario]
GO
USE [master]
GO
ALTER DATABASE [ClinicaEstetica] SET  READ_WRITE 
GO