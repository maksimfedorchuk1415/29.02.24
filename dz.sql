USE [teatr ]
GO
/****** Object:  Table [dbo].[rabotnik_teatra]    Script Date: 29.02.2024 10:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rabotnik_teatra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[family] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[god_rozdeniya] [int] NOT NULL,
	[god_postupleniya] [int] NOT NULL,
	[experience] [int] NOT NULL,
	[dolzhost] [nvarchar](50) NOT NULL,
	[pol] [nvarchar](50) NOT NULL,
	[adress] [nvarchar](255) NOT NULL,
	[dorod] [nvarchar](255) NOT NULL,
	[telephon] [decimal](11, 0) NOT NULL,
 CONSTRAINT [PK_rabotnik_teatra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[raspisanie_gostroei]    Script Date: 29.02.2024 10:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[raspisanie_gostroei](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[date_nachala] [date] NOT NULL,
	[date_okonchaniya] [date] NOT NULL,
	[mesto_provedeniya] [nvarchar](50) NOT NULL,
	[spectakl] [int] NOT NULL,
 CONSTRAINT [PK_raspisanie_gostroei] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[repertuar_teatra]    Script Date: 29.02.2024 10:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repertuar_teatra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[spectakl] [int] NOT NULL,
	[date_premier] [date] NOT NULL,
	[period_provedeniya] [int] NOT NULL,
	[date_i_vremya] [time](7) NOT NULL,
	[price_bileta] [nchar](10) NOT NULL,
 CONSTRAINT [PK_repertuar_teatra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spektakli]    Script Date: 29.02.2024 10:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spektakli](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[reziser] [int] NOT NULL,
	[xydoznik] [int] NOT NULL,
	[dirizer] [int] NOT NULL,
	[avtor] [int] NOT NULL,
	[zanr] [nvarchar](50) NOT NULL,
	[tupe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_spektakli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[truppa_spectakl]    Script Date: 29.02.2024 10:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[truppa_spectakl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[akter] [nvarchar](50) NOT NULL,
	[name_rol] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_truppa_spectakl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[rabotnik_teatra] ON 

INSERT [dbo].[rabotnik_teatra] ([id], [family], [name], [surname], [god_rozdeniya], [god_postupleniya], [experience], [dolzhost], [pol], [adress], [dorod], [telephon]) VALUES (1, N'Крылов ', N'Никита ', N'Алесандрович', 2004, 2010, 6, N'режисер-постановщик ', N'м', N'926810, Костромская область, город Талдом, пер. 1905 года, 96', N'Владивосток ', CAST(89308109528 AS Decimal(11, 0)))
INSERT [dbo].[rabotnik_teatra] ([id], [family], [name], [surname], [god_rozdeniya], [god_postupleniya], [experience], [dolzhost], [pol], [adress], [dorod], [telephon]) VALUES (2, N'Голубева ', N'Татьяна ', N'Александровн', 2004, 2010, 7, N'художник-постановщик ', N'ж', N'959661, Магаданская область, город Воскресенск, пер. 1905 года, 55', N'Магадан', CAST(89535532054 AS Decimal(11, 0)))
INSERT [dbo].[rabotnik_teatra] ([id], [family], [name], [surname], [god_rozdeniya], [god_postupleniya], [experience], [dolzhost], [pol], [adress], [dorod], [telephon]) VALUES (3, N'Захаров ', N'Виктор', N'Александрович', 2004, 2011, 8, N'дирижер-постановщик', N'м', N'709183, Волгоградская область, город Кашира, пр. Домодедовская, 71', N'Волгоград', CAST(88005553535 AS Decimal(11, 0)))
INSERT [dbo].[rabotnik_teatra] ([id], [family], [name], [surname], [god_rozdeniya], [god_postupleniya], [experience], [dolzhost], [pol], [adress], [dorod], [telephon]) VALUES (4, N'Федорчук', N'Максим', N'Александрович ', 2004, 2010, 11, N'автор ', N'м', N'245192, Оренбургская область, город Домодедово, пер. Балканская, 25', N'Оренбуг ', CAST(88888888888 AS Decimal(11, 0)))
SET IDENTITY_INSERT [dbo].[rabotnik_teatra] OFF
GO
SET IDENTITY_INSERT [dbo].[raspisanie_gostroei] ON 

INSERT [dbo].[raspisanie_gostroei] ([id], [name], [date_nachala], [date_okonchaniya], [mesto_provedeniya], [spectakl]) VALUES (1, N'первый ', CAST(N'2011-10-18' AS Date), CAST(N'2011-10-19' AS Date), N'Большой театр', 1)
INSERT [dbo].[raspisanie_gostroei] ([id], [name], [date_nachala], [date_okonchaniya], [mesto_provedeniya], [spectakl]) VALUES (2, N'второй ', CAST(N'2015-02-19' AS Date), CAST(N'2015-02-18' AS Date), N'Малый теат ', 2)
SET IDENTITY_INSERT [dbo].[raspisanie_gostroei] OFF
GO
SET IDENTITY_INSERT [dbo].[repertuar_teatra] ON 

INSERT [dbo].[repertuar_teatra] ([id], [spectakl], [date_premier], [period_provedeniya], [date_i_vremya], [price_bileta]) VALUES (1, 1, CAST(N'2010-11-11' AS Date), 1, CAST(N'11:11:00' AS Time), N'100       ')
INSERT [dbo].[repertuar_teatra] ([id], [spectakl], [date_premier], [period_provedeniya], [date_i_vremya], [price_bileta]) VALUES (2, 2, CAST(N'2011-11-11' AS Date), 2, CAST(N'12:33:00' AS Time), N'200       ')
SET IDENTITY_INSERT [dbo].[repertuar_teatra] OFF
GO
SET IDENTITY_INSERT [dbo].[spektakli] ON 

INSERT [dbo].[spektakli] ([id], [name], [reziser], [xydoznik], [dirizer], [avtor], [zanr], [tupe]) VALUES (1, N'Голубиное озеро', 1, 2, 3, 4, N'Драмма', N'молодежные ')
INSERT [dbo].[spektakli] ([id], [name], [reziser], [xydoznik], [dirizer], [avtor], [zanr], [tupe]) VALUES (2, N'Вессение танцы ', 1, 2, 3, 4, N'Комедии ', N'детские ')
SET IDENTITY_INSERT [dbo].[spektakli] OFF
GO
SET IDENTITY_INSERT [dbo].[truppa_spectakl] ON 

INSERT [dbo].[truppa_spectakl] ([id], [akter], [name_rol]) VALUES (1, N'Перевезенцев ', N'танцор')
INSERT [dbo].[truppa_spectakl] ([id], [akter], [name_rol]) VALUES (2, N'Шемарулин', N'танцор')
SET IDENTITY_INSERT [dbo].[truppa_spectakl] OFF
GO
ALTER TABLE [dbo].[raspisanie_gostroei]  WITH CHECK ADD  CONSTRAINT [FK_raspisanie_gostroei_spektakli] FOREIGN KEY([spectakl])
REFERENCES [dbo].[spektakli] ([id])
GO
ALTER TABLE [dbo].[raspisanie_gostroei] CHECK CONSTRAINT [FK_raspisanie_gostroei_spektakli]
GO
ALTER TABLE [dbo].[repertuar_teatra]  WITH CHECK ADD  CONSTRAINT [FK_repertuar_teatra_spektakli] FOREIGN KEY([spectakl])
REFERENCES [dbo].[spektakli] ([id])
GO
ALTER TABLE [dbo].[repertuar_teatra] CHECK CONSTRAINT [FK_repertuar_teatra_spektakli]
GO
ALTER TABLE [dbo].[spektakli]  WITH CHECK ADD  CONSTRAINT [FK_spektakli_rabotnik_teatra] FOREIGN KEY([id])
REFERENCES [dbo].[rabotnik_teatra] ([id])
GO
ALTER TABLE [dbo].[spektakli] CHECK CONSTRAINT [FK_spektakli_rabotnik_teatra]
GO
