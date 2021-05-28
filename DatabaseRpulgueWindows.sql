USE [Repulgue]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 28/05/2021 17:13:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombreCliente] [varchar](45) NULL,
	[direccionCliente] [varchar](45) NULL,
	[cpCliente] [int] NULL,
	[localidadCliente] [varchar](45) NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COCINERO]    Script Date: 28/05/2021 17:13:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COCINERO](
	[idCocinero] [int] IDENTITY(1,1) NOT NULL,
	[recetaMesCocinero] [varchar](45) NULL,
	[idEmpleadoFK] [int] NULL,
 CONSTRAINT [PK_COCINERO] PRIMARY KEY CLUSTERED 
(
	[idCocinero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 28/05/2021 17:13:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombreEmpleado] [varchar](45) NULL,
	[direccionEmpleado] [varchar](45) NULL,
	[cpEmpleado] [int] NULL,
	[localidadEmpleado] [varchar](45) NULL,
	[sueldoEmpleado] [decimal](6, 2) NULL,
	[idEmpleadoJefeFK] [int] NULL,
 CONSTRAINT [PK_EMPLEADOS] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LINEAORDENESCOMPRA]    Script Date: 28/05/2021 17:13:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LINEAORDENESCOMPRA](
	[idLineaOrdenCompra] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [varchar](45) NULL,
	[idProductoFK] [int] NULL,
	[idOrdenCompraFK] [int] NULL,
 CONSTRAINT [PK_LINEAORDENESCOMPRA] PRIMARY KEY CLUSTERED 
(
	[idLineaOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDENESCOMPRA]    Script Date: 28/05/2021 17:13:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDENESCOMPRA](
	[idOrdenCompra] [int] IDENTITY(1,1) NOT NULL,
	[totalOrdenCompra] [decimal](6, 2) NULL,
	[subtotalOrdenCompra] [decimal](6, 2) NULL,
	[ivaOrdenCompra] [decimal](6, 2) NULL,
	[fechaOrdenCompra] [date] NULL,
	[idEmpleadoFK] [int] NULL,
	[idClienteFK] [int] NULL,
 CONSTRAINT [PK_ORDENESCOMPRA] PRIMARY KEY CLUSTERED 
(
	[idOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 28/05/2021 17:13:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[descripcionProducto] [varchar](45) NULL,
	[precioProducto] [decimal](6, 2) NULL,
	[stockProducto] [int] NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENDEDOR]    Script Date: 28/05/2021 17:13:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDEDOR](
	[idVendedor] [int] IDENTITY(1,1) NOT NULL,
	[primaVendedor] [decimal](6, 2) NULL,
	[objetivosVendedor] [int] NULL,
	[idEmpleadoFK] [int] NULL,
 CONSTRAINT [PK_VENDEDOR] PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CLIENTES] ON 

INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (1, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (2, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (3, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (4, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (5, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (6, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (7, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (8, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (9, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (10, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (11, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (12, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (13, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (14, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (15, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (16, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (17, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (18, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (19, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (20, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (21, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (22, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (23, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (24, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (25, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (26, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (27, N'Raúl López', N'Av Calanda N7 1A', 50017, N'Zaragoza')
INSERT [dbo].[CLIENTES] ([idCliente], [nombreCliente], [direccionCliente], [cpCliente], [localidadCliente]) VALUES (28, N'Rosa Pardo', N'Calle Celanova N2', 50017, N'Zaragoza')
SET IDENTITY_INSERT [dbo].[CLIENTES] OFF
GO
SET IDENTITY_INSERT [dbo].[COCINERO] ON 

INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (1, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (2, N'Empanada atún marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (3, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (4, N'Empanada atún marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (5, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (6, N'Empanada atún marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (7, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (8, N'Empanada atún marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (9, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (10, N'Empanada atún marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (11, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (12, N'Empanada atún marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (13, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (14, N'Empanada atún marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (15, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (16, N'Empanada atún marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (17, N'Empanada carne marzo', 2)
INSERT [dbo].[COCINERO] ([idCocinero], [recetaMesCocinero], [idEmpleadoFK]) VALUES (18, N'Empanada atún marzo', 2)
SET IDENTITY_INSERT [dbo].[COCINERO] OFF
GO
SET IDENTITY_INSERT [dbo].[EMPLEADOS] ON 

INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (1, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (2, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (3, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (4, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (5, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (6, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (7, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (8, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (9, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (10, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (11, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (12, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (13, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (14, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (15, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (16, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (17, N'Ana Sierra', N'Calle Rioja N7 P1C', 50017, N'Zaragoza', CAST(2000.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[EMPLEADOS] ([idEmpleado], [nombreEmpleado], [direccionEmpleado], [cpEmpleado], [localidadEmpleado], [sueldoEmpleado], [idEmpleadoJefeFK]) VALUES (18, N'Carlos Torres', N'Av Navarra N3', 50017, N'Zaragoza', CAST(1800.00 AS Decimal(6, 2)), 2)
SET IDENTITY_INSERT [dbo].[EMPLEADOS] OFF
GO
SET IDENTITY_INSERT [dbo].[LINEAORDENESCOMPRA] ON 

INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (1, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (2, N'10', 2, 2)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (3, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (4, N'10', 2, 2)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (5, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (6, N'10', 2, 2)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (7, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (8, N'10', 2, 2)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (9, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (10, N'10', 2, 2)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (11, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (12, N'10', 2, 2)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (13, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (14, N'10', 2, 2)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (15, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (16, N'10', 2, 2)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (17, N'5', 1, 1)
INSERT [dbo].[LINEAORDENESCOMPRA] ([idLineaOrdenCompra], [cantidad], [idProductoFK], [idOrdenCompraFK]) VALUES (18, N'10', 2, 2)
SET IDENTITY_INSERT [dbo].[LINEAORDENESCOMPRA] OFF
GO
SET IDENTITY_INSERT [dbo].[ORDENESCOMPRA] ON 

INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (1, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (2, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (3, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (4, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (5, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (6, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (7, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (8, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (9, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (10, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (11, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (12, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (13, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (14, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (15, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (16, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (17, CAST(12.10 AS Decimal(6, 2)), CAST(10.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-08' AS Date), 1, 1)
INSERT [dbo].[ORDENESCOMPRA] ([idOrdenCompra], [totalOrdenCompra], [subtotalOrdenCompra], [ivaOrdenCompra], [fechaOrdenCompra], [idEmpleadoFK], [idClienteFK]) VALUES (18, CAST(24.20 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), CAST(21.00 AS Decimal(6, 2)), CAST(N'2021-03-09' AS Date), 1, 2)
SET IDENTITY_INSERT [dbo].[ORDENESCOMPRA] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTOS] ON 

INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (1, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (2, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (3, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (4, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (5, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (6, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (7, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (8, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (9, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (10, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (11, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (12, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (13, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (14, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (15, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (16, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (17, N'Empanada carne', CAST(2.00 AS Decimal(6, 2)), 400)
INSERT [dbo].[PRODUCTOS] ([idProducto], [descripcionProducto], [precioProducto], [stockProducto]) VALUES (18, N'Empanada atún', CAST(2.00 AS Decimal(6, 2)), 500)
SET IDENTITY_INSERT [dbo].[PRODUCTOS] OFF
GO
SET IDENTITY_INSERT [dbo].[VENDEDOR] ON 

INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (1, CAST(100.00 AS Decimal(6, 2)), 400, 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (2, CAST(100.00 AS Decimal(6, 2)), 400, 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (3, CAST(100.00 AS Decimal(6, 2)), 400, 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (4, CAST(100.00 AS Decimal(6, 2)), 400, 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (5, CAST(100.00 AS Decimal(6, 2)), 400, 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (6, CAST(100.00 AS Decimal(6, 2)), 400, 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (7, CAST(100.00 AS Decimal(6, 2)), 400, 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (8, CAST(100.00 AS Decimal(6, 2)), 400, 1)
INSERT [dbo].[VENDEDOR] ([idVendedor], [primaVendedor], [objetivosVendedor], [idEmpleadoFK]) VALUES (9, CAST(100.00 AS Decimal(6, 2)), 400, 1)
SET IDENTITY_INSERT [dbo].[VENDEDOR] OFF
GO
ALTER TABLE [dbo].[COCINERO]  WITH CHECK ADD  CONSTRAINT [FK_COCINERO_EMPLEADOS] FOREIGN KEY([idEmpleadoFK])
REFERENCES [dbo].[EMPLEADOS] ([idEmpleado])
GO
ALTER TABLE [dbo].[COCINERO] CHECK CONSTRAINT [FK_COCINERO_EMPLEADOS]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_EMPLEADOS] FOREIGN KEY([idEmpleadoJefeFK])
REFERENCES [dbo].[EMPLEADOS] ([idEmpleado])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_EMPLEADOS]
GO
ALTER TABLE [dbo].[LINEAORDENESCOMPRA]  WITH CHECK ADD  CONSTRAINT [FK_LINEAORDENESCOMPRA_ORDENESCOMPRA] FOREIGN KEY([idOrdenCompraFK])
REFERENCES [dbo].[ORDENESCOMPRA] ([idOrdenCompra])
GO
ALTER TABLE [dbo].[LINEAORDENESCOMPRA] CHECK CONSTRAINT [FK_LINEAORDENESCOMPRA_ORDENESCOMPRA]
GO
ALTER TABLE [dbo].[LINEAORDENESCOMPRA]  WITH CHECK ADD  CONSTRAINT [FK_LINEAORDENESCOMPRA_PRODUCTOS] FOREIGN KEY([idProductoFK])
REFERENCES [dbo].[PRODUCTOS] ([idProducto])
GO
ALTER TABLE [dbo].[LINEAORDENESCOMPRA] CHECK CONSTRAINT [FK_LINEAORDENESCOMPRA_PRODUCTOS]
GO
ALTER TABLE [dbo].[ORDENESCOMPRA]  WITH CHECK ADD  CONSTRAINT [FK_ORDENESCOMPRA_CLIENTES] FOREIGN KEY([idClienteFK])
REFERENCES [dbo].[CLIENTES] ([idCliente])
GO
ALTER TABLE [dbo].[ORDENESCOMPRA] CHECK CONSTRAINT [FK_ORDENESCOMPRA_CLIENTES]
GO
ALTER TABLE [dbo].[ORDENESCOMPRA]  WITH CHECK ADD  CONSTRAINT [FK_ORDENESCOMPRA_EMPLEADOS] FOREIGN KEY([idEmpleadoFK])
REFERENCES [dbo].[EMPLEADOS] ([idEmpleado])
GO
ALTER TABLE [dbo].[ORDENESCOMPRA] CHECK CONSTRAINT [FK_ORDENESCOMPRA_EMPLEADOS]
GO
ALTER TABLE [dbo].[VENDEDOR]  WITH CHECK ADD  CONSTRAINT [FK_VENDEDOR_EMPLEADOS] FOREIGN KEY([idEmpleadoFK])
REFERENCES [dbo].[EMPLEADOS] ([idEmpleado])
GO
ALTER TABLE [dbo].[VENDEDOR] CHECK CONSTRAINT [FK_VENDEDOR_EMPLEADOS]
GO
