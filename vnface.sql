USE [vnfacedatabase]
GO
/****** Object:  Table [dbo].[face_log_tb]    Script Date: 4/11/2021 2:26:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[face_log_tb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NULL CONSTRAINT [DF__face_log_t__name__0F975522]  DEFAULT (NULL),
	[gender] [varchar](128) NULL CONSTRAINT [DF__face_log___gende__108B795B]  DEFAULT (NULL),
	[age] [varchar](128) NULL CONSTRAINT [DF__face_log_tb__age__117F9D94]  DEFAULT (NULL),
	[date] [varchar](128) NULL CONSTRAINT [DF__face_log_t__date__1273C1CD]  DEFAULT (NULL),
	[face_img] [text] NULL CONSTRAINT [DF__face_log___face___1367E606]  DEFAULT (NULL),
	[recognize_img] [text] NULL CONSTRAINT [DF__face_log___recog__145C0A3F]  DEFAULT (NULL),
 CONSTRAINT [PK__face_log__3213E83F7AC24389] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[face_tb]    Script Date: 4/11/2021 2:26:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[face_tb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NULL CONSTRAINT [DF__face_tb__name__164452B1]  DEFAULT (NULL),
	[gender] [varchar](128) NULL CONSTRAINT [DF__face_tb__gender__173876EA]  DEFAULT (NULL),
	[age] [varchar](128) NULL CONSTRAINT [DF__face_tb__age__182C9B23]  DEFAULT (NULL),
	[face_image] [text] NULL CONSTRAINT [DF__face_tb__face_im__1920BF5C]  DEFAULT (NULL),
	[feature] [text] NULL CONSTRAINT [DF__face_tb__feature__1A14E395]  DEFAULT (NULL),
 CONSTRAINT [PK__face_tb__3213E83FB154617A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_tb]    Script Date: 4/11/2021 2:26:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_tb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](128) NULL CONSTRAINT [DF__user_tb__name__1BFD2C07]  DEFAULT (NULL),
	[password] [text] NULL CONSTRAINT [DF__user_tb__passwor__1CF15040]  DEFAULT (NULL),
	[face_image] [text] NULL CONSTRAINT [DF__user_tb__face_im__1DE57479]  DEFAULT (NULL),
	[role] [varchar](128) NULL CONSTRAINT [DF__user_tb__role__1ED998B2]  DEFAULT (NULL),
 CONSTRAINT [PK__user_tb__3213E83F4CCCE31D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[face_log_tb] ON 

INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (1, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-03-35.432', N'/static/upload/detected/662569_detected.jpg', N'/static/upload/detected/662569_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (2, N'Doanh', N'Male', N'34', N'2021-04-08-19-03-58.864', N'/static/upload/detected/995134_detected.jpg', N'/static/upload/detected/995134_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (3, N'Doanh', N'Male', N'34', N'2021-04-08-19-04-04.080', N'/static/upload/detected/641182_detected.jpg', N'/static/upload/detected/641182_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (4, N'Doanh', N'Male', N'34', N'2021-04-08-19-06-06.453', N'/static/upload/detected/569379_detected.jpg', N'/static/upload/detected/569379_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (5, N'Doanh', N'Male', N'34', N'2021-04-08-19-08-49.663', N'/static/upload/detected/135993_detected.jpg', N'/static/upload/detected/135993_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (6, N'Doanh', N'Male', N'34', N'2021-04-08-19-11-06.079', N'/static/upload/detected/652774_detected.jpg', N'/static/upload/detected/652774_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (7, N'Doanh', N'Male', N'34', N'2021-04-08-19-11-12.873', N'/static/upload/detected/676913_detected.jpg', N'/static/upload/detected/676913_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (8, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-11-27.877', N'/static/upload/detected/151153_detected.jpg', N'/static/upload/detected/151153_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (9, N'Doanh', N'Male', N'34', N'2021-04-08-19-11-38.288', N'/static/upload/detected/186902_detected.jpg', N'/static/upload/detected/186902_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (10, N'Doanh', N'Male', N'34', N'2021-04-08-19-11-49.489', N'/static/upload/detected/768434_detected.jpg', N'/static/upload/detected/768434_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (11, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-12-09.486', N'/static/upload/detected/137831_detected.jpg', N'/static/upload/detected/137831_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (12, N'Doanh', N'Male', N'34', N'2021-04-08-19-28-31.447', N'/static/upload/detected/559547_detected.jpg', N'/static/upload/detected/559547_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (13, N'Doanh', N'Male', N'34', N'2021-04-08-19-40-30.403', N'/static/upload/detected/924678_detected.jpg', N'/static/upload/detected/924678_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (14, N'Doanh', N'Male', N'34', N'2021-04-08-19-40-37.710', N'/static/upload/detected/308261_detected.jpg', N'/static/upload/detected/308261_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (15, N'Doanh', N'Male', N'34', N'2021-04-08-19-40-51.009', N'/static/upload/detected/182286_detected.jpg', N'/static/upload/detected/182286_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (16, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-40-56.909', N'/static/upload/detected/563745_detected.jpg', N'/static/upload/detected/563745_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (17, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-41-24.360', N'/static/upload/detected/963831_detected.jpg', N'/static/upload/detected/963831_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (18, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-41-41.540', N'/static/upload/detected/353144_detected.jpg', N'/static/upload/detected/353144_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (19, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-42-09.828', N'/static/upload/detected/826004_detected.jpg', N'/static/upload/detected/826004_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (20, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-42-16.224', N'/static/upload/detected/240931_detected.jpg', N'/static/upload/detected/240931_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (21, N'Doanh', N'Male', N'34', N'2021-04-08-19-42-46.618', N'/static/upload/detected/306102_detected.jpg', N'/static/upload/detected/306102_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (22, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-42-55.342', N'/static/upload/detected/910385_detected.jpg', N'/static/upload/detected/910385_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (23, N'Doanh', N'Male', N'34', N'2021-04-08-19-43-14.847', N'/static/upload/detected/440067_detected.jpg', N'/static/upload/detected/440067_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (24, N'unknown', N'unknown', N'unknown', N'2021-04-08-19-43-31.528', N'/static/upload/detected/231725_detected.jpg', N'/static/upload/detected/231725_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (25, N'Doanh', N'Male', N'34', N'2021-04-08-19-43-48.000', N'/static/upload/detected/970416_detected.jpg', N'/static/upload/detected/970416_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (26, N'Doanh', N'Male', N'34', N'2021-04-08-19-43-52.016', N'/static/upload/detected/135533_detected.jpg', N'/static/upload/detected/135533_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (27, N'Doanh', N'Male', N'34', N'2021-04-08-19-44-02.628', N'/static/upload/detected/846397_detected.jpg', N'/static/upload/detected/846397_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (28, N'Doanh', N'Male', N'34', N'2021-04-08-19-44-15.007', N'/static/upload/detected/604070_detected.jpg', N'/static/upload/detected/604070_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (29, N'Doanh', N'Male', N'34', N'2021-04-08-19-44-40.403', N'/static/upload/detected/667271_detected.jpg', N'/static/upload/detected/667271_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (30, N'Doanh', N'Male', N'34', N'2021-04-09-14-01-37.125', N'/static/upload/detected/280965_detected.jpg', N'/static/upload/detected/280965_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (31, N'Doanh', N'Male', N'34', N'2021-04-09-14-01-40.951', N'/static/upload/detected/560691_detected.jpg', N'/static/upload/detected/560691_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (32, N'unknown', N'unknown', N'unknown', N'2021-04-09-14-01-52.140', N'/static/upload/detected/254821_detected.jpg', N'/static/upload/detected/254821_recognized.jpg')
INSERT [dbo].[face_log_tb] ([id], [name], [gender], [age], [date], [face_img], [recognize_img]) VALUES (33, N'unknown', N'unknown', N'unknown', N'2021-04-09-14-02-11.434', N'/static/upload/detected/416790_detected.jpg', N'/static/upload/detected/416790_recognized.jpg')
SET IDENTITY_INSERT [dbo].[face_log_tb] OFF
SET IDENTITY_INSERT [dbo].[face_tb] ON 

INSERT [dbo].[face_tb] ([id], [name], [gender], [age], [face_image], [feature]) VALUES (1, N'Doanh', N'Male', N'34', N'/static/upload/person/671766_upload.jpg', N'[ 1.09943531e-01  1.21735306e-02 -1.97034515e-02  6.61804304e-02\n  7.94693381e-02  2.83691417e-02 -5.58054410e-02  3.67247909e-02\n -2.65175216e-02 -1.52780302e-02  8.10189173e-03  1.16682397e-02\n  6.33358909e-03 -2.02746913e-02  5.56517057e-02 -6.26806961e-03\n  1.16331853e-01  8.63055661e-02  2.89939139e-02  4.56587523e-02\n  4.51892465e-02  4.90775183e-02 -5.04458463e-03 -4.22789901e-02\n -1.85239706e-02  7.25503638e-03  8.93012807e-02  3.38475928e-02\n  5.17056026e-02  3.00619360e-02  2.51878928e-02 -5.68324663e-02\n -1.28845880e-02  1.40814753e-02  5.44704357e-03 -1.54316977e-01\n -7.06369430e-02 -4.78883348e-02  1.53538529e-02 -1.62576009e-02\n -2.59450078e-02 -4.90456782e-02 -8.75345431e-03 -1.15561467e-02\n -2.83484235e-02  5.58330193e-02  2.46447511e-02 -4.10436913e-02\n -5.32581545e-02  2.75349356e-02  2.30054446e-02 -1.71148051e-02\n  2.69506145e-02 -3.27960066e-02  5.13025373e-03 -5.39416708e-02\n  2.23487280e-02 -5.19323908e-02  1.68757699e-02  1.67009532e-02\n -3.15564685e-02  3.60083170e-02 -3.63616273e-02  5.55215776e-02\n -6.65860102e-02 -2.45848689e-02  1.59993986e-04 -6.27722815e-02\n  3.85573842e-02 -7.33901560e-02 -3.37586477e-02  1.83620453e-02\n -7.30184540e-02  1.16500016e-02  1.46058407e-02  1.68144032e-02\n  4.98977257e-03 -1.14150077e-01  3.13964002e-02 -3.55413929e-02\n  4.20451090e-02 -2.88582034e-02 -1.30883148e-02 -4.54469062e-02\n -2.38556731e-02 -2.75411620e-03 -1.32849962e-02 -6.20807847e-03\n -1.27624348e-02 -2.11361852e-02 -7.24879876e-02 -4.89975512e-02\n  4.36550006e-02  2.84294244e-02  1.96761228e-02  3.70472781e-02\n -6.06156588e-02  3.51020768e-02 -2.54301298e-02 -3.49969342e-02\n -1.46077471e-02  7.75670111e-02  4.06381190e-02  5.37190214e-02\n  4.90740724e-02 -4.14110757e-02 -5.56797050e-02 -7.14645237e-02\n -1.15420182e-04  1.59838125e-02 -1.85844756e-03 -2.71370336e-02\n -8.02106857e-02 -4.55821455e-02  3.48577648e-02  1.57792587e-02\n  2.88971197e-02  2.73453873e-02  9.47152672e-04  5.58079928e-02\n  4.80293557e-02  8.77340659e-02 -3.14341821e-02 -8.82848129e-02\n -1.66758706e-04  4.72793961e-03  8.66397843e-02 -1.08427614e-01\n  1.30082900e-02  4.00013616e-03  1.83471218e-02  7.84103796e-02\n -1.87503621e-02 -4.34182659e-02 -3.94771285e-02 -2.61862837e-02\n -7.47503564e-02 -4.70060818e-02  8.09261873e-02  3.01085301e-02\n  4.42093834e-02  6.29077181e-02 -4.41489927e-02 -3.23659740e-02\n  5.85630536e-02 -2.83297654e-02  2.44900212e-02 -5.56505024e-02\n  7.40237162e-03 -1.21733220e-03  2.57549807e-02  1.22604799e-02\n  3.13863568e-02  6.01100810e-02  4.36547138e-02 -9.03519690e-02\n -3.86653058e-02 -4.75655161e-02  1.52270785e-02 -2.10869014e-02\n -6.41461927e-03 -1.49108225e-03  3.15537071e-03  7.00451583e-02\n  1.37547953e-02  7.92416409e-02  1.21782708e-03  4.20802161e-02\n -7.75403604e-02  1.75064281e-02  1.17649231e-03  1.00054242e-01\n  5.46685755e-02  1.14106499e-02  2.00731307e-02  3.64384390e-02\n -7.91046545e-02  2.74700746e-02  4.73241694e-02  7.86656514e-02\n  2.33961474e-02 -5.47998324e-02 -3.80961522e-02 -1.41281355e-02\n  6.35467619e-02  1.84852984e-02  8.14381801e-03  3.30004767e-02\n  6.01747259e-02  4.29885574e-02  4.54474520e-03  4.71602790e-02\n  6.27535135e-02 -4.58513238e-02  5.78230135e-02 -8.72039050e-03\n -2.49453690e-02 -3.66004072e-02  1.42281801e-02 -8.42186064e-02\n  1.02195539e-01 -6.79044202e-02  8.40920359e-02 -3.02267764e-02\n -1.65066998e-02  5.42024411e-02 -1.19076278e-02  4.85860631e-02\n -1.88733563e-02  3.50085571e-02 -1.15944361e-02  1.87282655e-02\n -2.55475789e-02  1.46793667e-02 -8.72120168e-03 -2.84801312e-02\n -2.51678226e-04 -1.66322701e-02 -5.98241873e-02 -4.68354532e-03\n -4.31143977e-02 -1.33353155e-04 -6.66884333e-03  7.06920549e-02\n  5.44269830e-02  1.02071036e-02  1.23805944e-02 -8.42277892e-03\n  4.12684046e-02 -1.78969856e-02  1.10455109e-02 -5.99818565e-02\n  6.56557307e-02 -7.19766542e-02 -4.01536822e-02 -1.70469955e-02\n -4.11615409e-02  2.13348437e-02  8.90827402e-02  2.72615924e-02\n  1.43845733e-02 -1.85562409e-02  2.08445936e-02 -2.69129332e-02\n -1.55627145e-04  7.94183165e-02 -1.79416202e-02 -4.19767722e-02\n -1.99742280e-02  4.29394133e-02 -5.79742827e-02  2.92082205e-02\n  7.43128210e-02 -2.52867937e-02  3.35890613e-03 -2.26721428e-02\n  3.27134952e-02  5.41514382e-02 -5.70669025e-03 -7.39642084e-02\n -6.99028745e-02 -1.04060117e-02  5.25352918e-02 -4.47520651e-02\n  9.35105700e-03 -2.87886113e-02  4.40696999e-02 -2.77017569e-03\n -1.36140815e-03 -5.64636700e-02  3.52149494e-02  6.78982139e-02\n  1.38075858e-01 -7.53445625e-02 -2.79083401e-02  8.74434933e-02\n -3.52472486e-03 -1.83512568e-02  1.63493026e-02 -4.96172579e-03\n -2.35335995e-02  1.40511505e-02 -1.80971716e-02 -1.03122564e-02\n -7.62707787e-03  3.51256728e-02  8.99630319e-03 -3.77796516e-02\n -3.32409143e-02  4.75782230e-02 -4.83440943e-02 -6.24911562e-02\n -4.94400691e-03  1.60020478e-02  7.13565806e-03 -2.04539169e-02\n -5.73890395e-02 -6.76612258e-02  7.47232586e-02 -9.72081274e-02\n  8.91661197e-02 -6.55299649e-02 -1.06972763e-02 -2.17849221e-02\n -2.76322514e-02  2.74403556e-03  1.23213613e-02  6.97672414e-03\n -8.85502025e-02  2.29940005e-02 -1.65266953e-02  8.60572979e-03\n  1.93419922e-02  5.06815054e-02  1.38004404e-02 -1.61407646e-02\n -5.63237406e-02  3.69218877e-03  7.74580091e-02  5.03162062e-03\n  5.55374622e-02 -1.51310125e-02 -2.99123675e-02 -4.45318455e-03\n -4.72777989e-03 -2.48871241e-02  3.46035473e-02  2.90341955e-02\n -7.10943155e-03  3.35679064e-03 -2.84410659e-02  2.08027530e-02\n -3.49230133e-02 -2.46294308e-03 -3.09122168e-02  2.32236180e-02\n  4.01251167e-02 -1.05498753e-01 -3.30871791e-02  5.67851998e-02\n  2.87730210e-02 -3.47455256e-02 -1.08454395e-02  6.85734600e-02\n -1.40689444e-02  3.78948674e-02  2.72404496e-02  1.82026308e-02\n -3.53492238e-02 -3.61286593e-03 -7.00747129e-03  2.51092180e-03\n  8.00876878e-03 -2.47815903e-02  1.13774603e-02  4.15107943e-02\n  6.63820282e-02  7.16290553e-04 -8.25206414e-02 -2.71464493e-02\n  1.61976498e-02 -3.58908139e-02 -3.44169280e-03  1.35956556e-02\n  7.01634353e-03  2.16313545e-02 -6.64481670e-02 -2.50104833e-02\n  2.97721336e-03  4.52065654e-02 -6.65024072e-02 -3.37822661e-02\n -1.16360849e-02 -5.37366569e-02  2.76584681e-02  5.70927337e-02\n -6.09409511e-02  3.82593572e-02 -4.31345738e-02  2.09775660e-02\n -7.75686279e-02 -4.00274619e-02 -3.73208933e-02  1.89273860e-02\n  4.87954356e-02 -2.27610171e-02  3.84501107e-02  3.05451471e-02\n  4.40745428e-03 -4.70145643e-02 -5.38236573e-02  6.13718182e-02\n -7.02873319e-02  6.42215535e-02 -2.26771226e-03  7.82943666e-02\n -1.24797234e-02  1.05288975e-01  2.44294312e-02 -4.01743315e-02\n -3.28361429e-02  1.02400500e-02  6.49363846e-02  4.20474932e-02\n  6.29698625e-03 -2.20000613e-02 -8.02050754e-02  1.81760099e-02\n -1.52054401e-02 -4.86480184e-02  4.72071730e-02 -7.68786576e-03\n  3.02791353e-02  1.69222392e-02 -2.47153006e-02 -1.18534397e-02\n  6.45615831e-02  5.56597598e-02  1.03796721e-01 -5.40517122e-02\n -8.42839945e-03 -3.20847072e-02 -1.33974943e-02  2.51453258e-02\n -5.18734008e-02 -2.21753567e-02 -5.82468323e-02 -6.51978934e-03\n  1.95235740e-02 -3.25232446e-02 -5.34268767e-02 -5.04221134e-05\n -1.57282725e-02  1.08926324e-02  4.67952080e-02  2.95491591e-02\n -1.76259093e-02 -6.31405860e-02  5.10835908e-02  2.88631730e-02\n -2.17988081e-02  1.35133136e-02 -3.03502791e-02 -1.12043107e-02\n -6.11703051e-03  3.49076614e-02  4.55029942e-02 -3.63528021e-02\n -1.26042245e-02 -2.30365451e-02 -6.95570111e-02  2.10833233e-02\n  3.06888781e-02  1.23393284e-02 -2.66171917e-02 -2.81903204e-02\n -1.55930500e-03  1.86269183e-03 -5.83147667e-02  9.07349363e-02\n -1.91144447e-03  2.32727230e-02  2.26972904e-02  4.91910502e-02\n -1.68250815e-03 -1.52327009e-02 -3.19295414e-02 -5.45580275e-02\n  7.95772597e-02  2.94884685e-02  4.77158241e-02 -1.38591770e-02\n  4.43497859e-02  3.19619216e-02 -7.54998699e-02 -3.65222618e-03\n  5.72563708e-02 -3.39289829e-02 -3.94489281e-02  7.60760345e-03\n -1.66209582e-02 -9.45199654e-03  3.06449365e-02 -2.27871928e-02\n  9.67236422e-03  1.20528704e-02 -6.08369857e-02  3.69146653e-02\n  2.78207902e-02 -3.00829159e-03 -3.29455510e-02 -9.71560627e-02\n -3.55803058e-03  2.33842563e-02  7.54973758e-03 -3.31593938e-02\n  1.11164540e-01 -5.63559383e-02 -1.49397785e-02  5.10483310e-02\n  9.87548158e-02 -4.21160944e-02 -1.44386748e-02 -8.24743807e-02\n -3.90907563e-02  7.97433779e-02  5.91183864e-02  3.32283229e-02\n -2.76831426e-02  5.04993892e-04 -9.80609749e-03 -4.57648002e-02]')
SET IDENTITY_INSERT [dbo].[face_tb] OFF
SET IDENTITY_INSERT [dbo].[user_tb] ON 

INSERT [dbo].[user_tb] ([id], [name], [password], [face_image], [role]) VALUES (1, N'admin', N'admin', N'/static/img/no_image.jpg', N'admin')
SET IDENTITY_INSERT [dbo].[user_tb] OFF
