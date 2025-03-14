USE [Ecommerce_Shoping]
GO
/****** Object:  View [dbo].[EmpWorking]    Script Date: 3/10/2025 11:09:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[EmpWorking] AS
 select E.EmpName, S.SkillName, D.DeptName
 from EMPLOYEE E
 JOIN DEPARTMENT D on D.DeptNo = E.DeptNo
 JOIN EMP_SKILL ES ON E.EmpNo = ES.EmpNo
 JOIN SKILL S ON S.SkillNo = ES.SkillNo
GO
/****** Object:  View [dbo].[WorkingEMP]    Script Date: 3/10/2025 11:09:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[WorkingEMP] AS
select E.EmpName, S.SkillName, D.DeptName
from EMPLOYEE E 
Join EMP_SKILL ES ON E.EmpNo = ES.EmpNo 
Join SKILL S ON ES.SkillNo = S.SkillNo
Join DEPARTMENT D ON E.DeptNo = D.DeptNo
where Status = 0
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/10/2025 11:09:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Ocupation] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[RoleId] [nvarchar](max) NULL,
	[Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compares]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compares](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Compares] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Name] [nvarchar](450) NOT NULL,
	[Map] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[LogoImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DateStart] [datetime2](7) NOT NULL,
	[DateExpired] [datetime2](7) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[OrderCode] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[ShippingCost] [decimal](18, 2) NOT NULL,
	[CouponCode] [nvarchar](max) NULL,
	[PaymentMethod] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductQuantitys]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductQuantitys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductQuantitys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[BrandId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[Sold] [int] NOT NULL,
	[CapitalPrice] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Star] [nvarchar](max) NULL,
	[NgayDang] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippings]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Ward] [nvarchar](max) NULL,
	[Districe] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
 CONSTRAINT [PK_Shippings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statisticals]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statisticals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Sold] [int] NOT NULL,
	[Revenue] [decimal](18, 2) NOT NULL,
	[Profit] [decimal](18, 2) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Statisticals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VnPays]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VnPays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDescription] [nvarchar](max) NULL,
	[TransactionId] [nvarchar](max) NULL,
	[OrderId] [nvarchar](max) NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[PaymentId] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_VnPays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlists]    Script Date: 3/10/2025 11:09:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Wishlists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241031161228_InitialMigration', N'6.0.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241031165141_InitialSecond', N'6.0.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241031165617_AddVarchar', N'6.0.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241106214157_IdentityMigration', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241110194328_CheckoutInitial', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241110195257_CheckoutInitial2', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241115171330_AddStatusOD', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241126140948_RatingMigration', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241126153326_AddDateTimeRating', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241127164259_AddSlider', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241129145807_AddContactModel', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241203141903_WishCompInitial', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241203144406_ChangeDataType', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241203144531_ChangeDataType2', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241205142908_AddProductQuantity', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241205144005_QuantityAndSold', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241213152547_AddShippingCost', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241215025637_AddShipCostToOrder', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241217171048_AddCouponModel', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241217172640_ChangePrice', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241217184634_AddCouponToOrder', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241218145106_AddTokenUser', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241219202613_AddStaticticalModel', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241220160207_AddCapitalPrice', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241220163659_ChangeDataTypeToday', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241224140943_AddVnPay', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241224141839_AddCreatedDateToVnPay', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241224142732_AddPaymentMethodToOrder', N'6.0.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0a5f6db2-af01-4a6a-a912-0b5537b80f3b', N'Customers', N'CUSTOMERS', N'f565869d-792b-48cb-afd0-577e82b56ef9')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2c5372ca-4760-4876-b6f9-e2d4a9759fc5', N'Sales', N'SALES', N'0c37a645-e4d9-4a9a-8f56-7d921fd4a61e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3ef39d01-ddd0-4d66-a302-9070ac2e554c', N'Author', N'AUTHOR', N'4b7ed0ac-caa5-4dfe-9641-f02249b47d7b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4bad21c6-e78f-4633-bcab-8aab939b4524', N'Admin', N'ADMIN', N'5b14270e-2237-4ec2-9df4-472c03a66f03')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fa54a8aa-21a1-43e5-93ad-9a745ae2c509', N'Publisher', N'PUBLISHER', N'2db5bf16-3164-4a76-8e1c-0f78cc417e1d')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6e8866ab-8c6e-4e49-99fa-76ea0e53b08f', N'0a5f6db2-af01-4a6a-a912-0b5537b80f3b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fbe07373-9735-4336-b157-c39accb4cfe4', N'2c5372ca-4760-4876-b6f9-e2d4a9759fc5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'52729395-0318-4e83-a1e1-d4102da13cc5', N'4bad21c6-e78f-4633-bcab-8aab939b4524')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Ocupation], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RoleId], [Token]) VALUES (N'52729395-0318-4e83-a1e1-d4102da13cc5', NULL, N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEF0BuF3f8++6mK195OIIRJx6C15cJy/qGAf8NHii2Yt4ILTwDjT/rAQVSRicZPLZfQ==', N'BU4PEREOK757TBFNJMYK4IGGMLICXAPS', N'ff5a45c6-3d4b-4820-a663-1b8426eaf998', N'0905462702', 0, 0, NULL, 1, 0, N'4bad21c6-e78f-4633-bcab-8aab939b4524', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Ocupation], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RoleId], [Token]) VALUES (N'6e8866ab-8c6e-4e49-99fa-76ea0e53b08f', NULL, N'dung123', N'DUNG123', N'dnguen82@gmail.com', N'DNGUEN82@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEbkDN8ttG1P0D9/z9Yo2+EeFc9gnUvk6naRCBvoN2ygAMLHm7IzlrUGBLheAuSq/Q==', N'XKDN4BBSGLJZVN5GMKTUWDY2DY454DU2', N'3c8315c9-bc96-4271-bc6b-8a33edea737d', N'01214111465', 0, 0, NULL, 1, 0, NULL, N'56a56f1e-cb74-43c0-9de8-3226f82374c2')
INSERT [dbo].[AspNetUsers] ([Id], [Ocupation], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RoleId], [Token]) VALUES (N'bc038621-3b99-4117-a3cf-e98dcd311030', NULL, N'nhanvien', N'NHANVIEN', N'nhanvien@gmail.com', N'NHANVIEN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDxCqGwBUsPljW34Jw5ZGLC1kMGNUqqWLM5ol34ibIWUNXiRbbtd+Oc2AxlKyzQW2A==', N'GFDJFKI27LZJCC7DO66GAU7ORJXMKFIC', N'4e2af4e0-e0a7-4b45-9d85-6f894a359aa0', N'1214111465', 0, 0, NULL, 1, 0, N'3ef39d01-ddd0-4d66-a302-9070ac2e554c', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Ocupation], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RoleId], [Token]) VALUES (N'fbe07373-9735-4336-b157-c39accb4cfe4', NULL, N'nhanvien2', N'NHANVIEN2', N'nhanvien1@gmail.com', N'NHANVIEN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENUecv+n4/dgspOiJUn6ga03g2W5VokxzwFs8nIH8Jj//OPAT+U915I5ioSrPZwCnw==', N'GO7MUUWC6GPUT2ZBOHHAES55KBP6KARE', N'6c3a339e-a1dc-47aa-8c0e-b5dc23135ae7', N'1214111123', 0, 0, NULL, 1, 0, N'fa54a8aa-21a1-43e5-93ad-9a745ae2c509', NULL)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (9, N'Apple', N'<p>Apple is what the heck</p>
', N'Apple', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (10, N'Samsung', N'Samsung is what the heck', N'samsung', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (12, N'Dell', N'<p>Đ&acirc;y l&agrave; Dell</p>
', N'Dell', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (13, N'OPPO', N'<p>Đ&acirc;y l&agrave; Oppo</p>
', N'OPPO', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (14, N'ACER', N'<p>Đ&acirc;y l&agrave; ACER</p>
', N'ACER', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (15, N'ASUS', N'<p>Đ&acirc;y l&agrave; ASUS</p>
', N'ASUS', 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (10, N'Pc', N'Pc is what the heck', N'Pc', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (14, N'Tablet', N'<p>Đ&acirc;y l&agrave; Tablet</p>
', N'Tablet', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (15, N'Macbook', N'<p>McDonald&#39;s Product</p>
', N'Macbook', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[Contacts] ([Name], [Map], [Phone], [Email], [Description], [Slug], [Status], [LogoImage]) VALUES (N'Devine Gaming', N'<iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d6263.938862468028!2d108.21557348700212!3d16.0811407357392!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2s!5e0!3m2!1svi!2s!4v1732892827230!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'+84905462702', N'dnguen8232@gmail.com', N'<p>Shop Thất Đức 123</p>
', NULL, 1, N'8dda6c84-440e-4ef1-8592-93781b5a498a_evos-divine-logo-07ABB58203-seeklogo.com.png')
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([Id], [Name], [Description], [DateStart], [DateExpired], [Quantity], [Status]) VALUES (1, N'Giảm 50% cho mọi sản phẩm kể từ ngày 16/12', N'<p>Giảm 50% cho mọi sản phẩm kể từ ng&agrave;y 16/12</p>
', CAST(N'2024-12-16T00:32:00.0000000' AS DateTime2), CAST(N'2024-12-31T00:32:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[Coupons] ([Id], [Name], [Description], [DateStart], [DateExpired], [Quantity], [Status]) VALUES (2, N'VOUCHER2/9', N'<p>Nh&acirc;n ng&agrave;y 2/9 shop quyết định giảm gi&aacute; mọi mặt h&agrave;ng v&agrave; sẽ khuyến m&atilde;i cho kh&aacute;ch h&agrave;ng mua lần đầu ti&ecirc;n: Mua 1 được 1 t&iacute;nh tiền 2</p>
', CAST(N'2024-12-18T00:46:00.0000000' AS DateTime2), CAST(N'2024-12-31T00:46:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[Coupons] ([Id], [Name], [Description], [DateStart], [DateExpired], [Quantity], [Status]) VALUES (3, N'DUNGDEPTRAI', N'<p>Khuyễn m&atilde;i cho mọi kh&aacute;ch h&agrave;ng sẽ được giảm gi&aacute; nh&acirc;n ng&agrave;y t&ocirc;i qu&aacute; đẹp trai n&ecirc;n sẽ giảm mọi sản phẩm 30%</p>
', CAST(N'2024-12-18T00:48:00.0000000' AS DateTime2), CAST(N'2025-01-31T00:48:00.0000000' AS DateTime2), 0, 1)
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (1, N'dnguen9@yahoo.com', N'd6b9d71f-23b2-44f4-a3b3-793c91c7ea40', 4, CAST(3000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (2, N'admin@gmail.com', N'04d030e0-a7bb-4539-b82f-0e83657478a3', 4, CAST(3000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (3, N'admin@gmail.com', N'b70ed404-bf93-4037-989f-4d058405269d', 2, CAST(1233.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (4, N'dnguen82@gmail.com', N'f06dc9a6-f44a-43cc-ac25-6bd9c8abc431', 4, CAST(3000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (5, N'dnguen82@gmail.com', N'90fe5a29-3965-4b5d-a14d-e68ec24a2ffa', 4, CAST(3000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (6, N'dnguen82@gmail.com', N'b83aed93-2cfd-4f30-92e4-0a0a2ac0d050', 4, CAST(3000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (7, N'admin@gmail.com', N'1849b92a-69ab-4a14-8ec4-33fdc24988bb', 4, CAST(3000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (8, N'admin@gmail.com', N'1849b92a-69ab-4a14-8ec4-33fdc24988bb', 2, CAST(1233.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (9, N'admin@gmail.com', N'1849b92a-69ab-4a14-8ec4-33fdc24988bb', 6, CAST(3000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (10, N'admin@gmail.com', N'99315d5e-a825-42a5-b571-e8b3e7a79761', 4, CAST(3000.00 AS Decimal(18, 2)), 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (11, N'admin@gmail.com', N'0b23950a-8606-4eb3-89a5-e2bcd9789c30', 4, CAST(3000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (12, N'admin@gmail.com', N'9c14176c-5881-4b8a-82c1-5e0e8750793e', 8, CAST(23445.00 AS Decimal(18, 2)), 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (13, N'admin@gmail.com', N'2892c2ae-a79f-44b8-b498-0772c52c87b2', 2, CAST(11000233.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (14, N'admin@gmail.com', N'0d7b8ccd-9964-4ac3-aec8-93d41c1354fb', 2, CAST(11000233.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (15, N'dnguen82@gmail.com', N'6aba2d9c-6204-4b41-961b-027cc82c6ae4', 2, CAST(11000233.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (16, N'admin@gmail.com', N'6a3a749c-1ce7-444c-b346-37ce823cdd86', 2, CAST(11000233.00 AS Decimal(18, 2)), 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (1014, N'admin@gmail.com', N'40369da9-2f53-41b5-b022-dfc527c7e5b0', 6, CAST(200000.00 AS Decimal(18, 2)), 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (1015, N'admin@gmail.com', N'be6c970c-5a8c-4689-804d-a52e7bd4e873', 6, CAST(200000.00 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [Status]) VALUES (1016, N'admin@gmail.com', N'be6c970c-5a8c-4689-804d-a52e7bd4e873', 4, CAST(23000000.00 AS Decimal(18, 2)), 1, 0)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (1, N'328e5e7a-a3cf-4463-a5f4-3940d477b219', N'dnguen9@yahoo.com', CAST(N'2024-11-11T03:00:51.1948350' AS DateTime2), 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (2, N'd6b9d71f-23b2-44f4-a3b3-793c91c7ea40', N'dnguen9@yahoo.com', CAST(N'2024-11-11T03:10:35.9196885' AS DateTime2), 0, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (3, N'04d030e0-a7bb-4539-b82f-0e83657478a3', N'admin@gmail.com', CAST(N'2024-11-14T20:32:02.7646612' AS DateTime2), 3, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (4, N'b70ed404-bf93-4037-989f-4d058405269d', N'admin@gmail.com', CAST(N'2024-11-14T20:33:33.7728580' AS DateTime2), 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (5, N'f06dc9a6-f44a-43cc-ac25-6bd9c8abc431', N'dnguen82@gmail.com', CAST(N'2024-11-14T20:41:29.5281504' AS DateTime2), 3, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (6, N'90fe5a29-3965-4b5d-a14d-e68ec24a2ffa', N'dnguen82@gmail.com', CAST(N'2024-11-14T20:44:00.8192648' AS DateTime2), 0, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (7, N'b83aed93-2cfd-4f30-92e4-0a0a2ac0d050', N'dnguen82@gmail.com', CAST(N'2024-11-14T20:57:54.0509761' AS DateTime2), 0, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (8, N'1849b92a-69ab-4a14-8ec4-33fdc24988bb', N'admin@gmail.com', CAST(N'2024-11-16T02:43:03.1486572' AS DateTime2), 0, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (9, N'99315d5e-a825-42a5-b571-e8b3e7a79761', N'admin@gmail.com', CAST(N'2024-11-17T22:31:44.5098529' AS DateTime2), 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (10, N'0b23950a-8606-4eb3-89a5-e2bcd9789c30', N'admin@gmail.com', CAST(N'2024-11-18T00:00:37.5234582' AS DateTime2), 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (11, N'9c14176c-5881-4b8a-82c1-5e0e8750793e', N'admin@gmail.com', CAST(N'2024-12-09T21:35:58.0652217' AS DateTime2), 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (12, N'2892c2ae-a79f-44b8-b498-0772c52c87b2', N'admin@gmail.com', CAST(N'2024-12-15T10:14:54.4353351' AS DateTime2), 2, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (13, N'0d7b8ccd-9964-4ac3-aec8-93d41c1354fb', N'admin@gmail.com', CAST(N'2024-12-18T01:54:41.2363136' AS DateTime2), 1, CAST(50000.00 AS Decimal(18, 2)), N'VOUCHER2/9 | <p>Nh&acirc;n ng&agrave;y 2/9 shop quyết định giảm gi&aacute; mọi mặt h&agrave;ng v&agrave; sẽ khuyến m&atilde;i cho kh&aacute;ch h&agrave;ng mua lần đầu ti&ecirc;n: Mua 1 được 1 t&iacute;nh tiền 2</p>
', NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (14, N'6aba2d9c-6204-4b41-961b-027cc82c6ae4', N'dnguen82@gmail.com', CAST(N'2024-12-18T22:38:19.7912973' AS DateTime2), 1, CAST(22000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (15, N'6a3a749c-1ce7-444c-b346-37ce823cdd86', N'admin@gmail.com', CAST(N'2024-12-20T23:45:39.3662696' AS DateTime2), 2, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (1013, N'40369da9-2f53-41b5-b022-dfc527c7e5b0', N'admin@gmail.com', CAST(N'2024-12-24T21:38:55.2430990' AS DateTime2), 1, CAST(50000.00 AS Decimal(18, 2)), NULL, N'VnPay 14767427')
INSERT [dbo].[Orders] ([Id], [OrderCode], [UserName], [CreatedDate], [Status], [ShippingCost], [CouponCode], [PaymentMethod]) VALUES (1014, N'be6c970c-5a8c-4689-804d-a52e7bd4e873', N'admin@gmail.com', CAST(N'2024-12-24T21:39:32.7849795' AS DateTime2), 2, CAST(50000.00 AS Decimal(18, 2)), NULL, N'COD')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductQuantitys] ON 

INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (1, 2, 4, CAST(N'2024-12-05T21:53:32.603' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (2, 4, 7, CAST(N'2024-12-05T21:58:16.480' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (3, 6, 1, CAST(N'2024-12-05T21:58:32.573' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (4, 8, 4, CAST(N'2024-12-05T21:58:36.217' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (5, 6, 1, CAST(N'2024-12-05T21:59:04.887' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (6, 2, 2, CAST(N'2024-12-05T22:12:15.617' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (7, 6, 2, CAST(N'2024-12-05T22:13:43.227' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (8, 2, 12, CAST(N'2024-12-18T00:02:41.937' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (9, 4, 13, CAST(N'2024-12-18T00:02:50.413' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (10, 6, 23, CAST(N'2024-12-18T00:03:02.833' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (11, 2, 12, CAST(N'2024-12-20T23:44:31.030' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (12, 4, 13, CAST(N'2024-12-20T23:44:41.250' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (13, 6, 10, CAST(N'2024-12-20T23:44:52.320' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (1008, 6, 12, CAST(N'2024-12-24T00:27:20.880' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (1009, 6, 12, CAST(N'2024-12-24T01:19:47.810' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (1010, 6, 12, CAST(N'2024-12-24T01:47:14.070' AS DateTime))
INSERT [dbo].[ProductQuantitys] ([Id], [ProductId], [Quantity], [CreatedDate]) VALUES (1011, 6, 10, CAST(N'2024-12-24T02:42:39.143' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductQuantitys] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [BrandId], [CategoryId], [Image], [Quantity], [Sold], [CapitalPrice]) VALUES (2, N'Samsung', N'<p>Samsung is the Second</p>
', N'Samsung', CAST(11000233 AS Decimal(18, 0)), 10, 10, N'f8b17899-5023-41c8-b0d6-2b63b2f5dfa1_3.jpg', 10, 2, CAST(10000000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [BrandId], [CategoryId], [Image], [Quantity], [Sold], [CapitalPrice]) VALUES (4, N'MacbookPro', N'<p>Apple MacBook Pro M2 Chip 13.3&quot; 10GPU/8CPU- 8GB 256gb Mid 2022 - Good</p>
', N'MacbookPro', CAST(23000000 AS Decimal(18, 0)), 9, 15, N'e383e0ee-ff4b-4d01-8275-f865b2fad178_apple_z0um_mpxv22_bh_macbook_pro_tb_i5_1344676.jpg', 12, 1, CAST(20000000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [BrandId], [CategoryId], [Image], [Quantity], [Sold], [CapitalPrice]) VALUES (6, N'MacbookM90', N'<p>&aacute;dasdfsfvxzdcvzxcvawsefsdfcdfawedfscvzxdf</p>
', N'MacbookM90', CAST(200000 AS Decimal(18, 0)), 9, 15, N'5e5ad9de-2213-44cf-96b9-48e2fcc2d920_cleancode.jpg', 7, 3, CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [BrandId], [CategoryId], [Image], [Quantity], [Sold], [CapitalPrice]) VALUES (8, N'Samsung 12', N'<p><a href="http://www.bhphotovideo.com/c/product/1222108-REG/samsung_sm_w700nzkaxar_12_0_tabpro_s_tablet.html" target="_blank">Samsung 12.0&quot; TabPro S 128GB Tablet SM-W700NZKAXAR B&amp;H</a></p>
', N'Samsung-12', CAST(12000000 AS Decimal(18, 0)), 10, 14, N'e82c8994-0c78-4cb9-8b92-2d9ba4d4b2d4_4.jpg', 0, 0, CAST(11000000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Slug], [Price], [BrandId], [CategoryId], [Image], [Quantity], [Sold], [CapitalPrice]) VALUES (9, N'Dell Lapto', N'<p>Đ&acirc;y l&agrave; laptop dell&nbsp;<a href="https://www.costco.com/laptops.html?brand=dell&amp;refine=%7C%7CBrand_attr-Dell" target="_self">Dell Inspiron 16&quot; Touchscreen Laptop</a></p>
', N'Dell-Lapto', CAST(23000000 AS Decimal(18, 0)), 12, 10, N'4d945d3c-086e-43ce-b45c-ed76bcd0cceb_dell.jpg', 0, 0, CAST(21500000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [ProductId], [Name], [Email], [Comment], [Star], [NgayDang]) VALUES (1, 4, N'nero', N'nero@gmail.com', N'Sản phẩm như cớt :)))', N'4', CAST(N'2024-11-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [Name], [Email], [Comment], [Star], [NgayDang]) VALUES (2, 6, N'admin', N'admin@gmail.com', N'ádasdasdasd', N'4', CAST(N'2024-11-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [Name], [Email], [Comment], [Star], [NgayDang]) VALUES (3, 2, N'admin', N'admin@gmail.com', N'wwwwwwwwwwwwwwwwwwwww', N'4', CAST(N'2024-11-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [Name], [Email], [Comment], [Star], [NgayDang]) VALUES (4, 4, N'Nguyễn Quốc Dũng', N'dnguen82@gmail.com', N'McBook ? Sound like a McDonald product', N'4', CAST(N'2024-11-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [Name], [Email], [Comment], [Star], [NgayDang]) VALUES (5, 2, N'Nguyễn Quốc Dũng', N'dnguen82@gmail.com', N'Wtf trash à ?', N'4', CAST(N'2024-11-26T22:39:41.8323466' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [Name], [Email], [Comment], [Star], [NgayDang]) VALUES (6, 8, N'admin', N'admin@gmail.com', N'ờ thì ', N'4', CAST(N'2024-11-28T01:14:29.4131356' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
SET IDENTITY_INSERT [dbo].[Shippings] ON 

INSERT [dbo].[Shippings] ([Id], [Price], [Ward], [Districe], [City]) VALUES (9, CAST(22000.00 AS Decimal(18, 2)), N'Phường Hải Châu I', N'Quận Hải Châu', N'Thành phố Đà Nẵng')
INSERT [dbo].[Shippings] ([Id], [Price], [Ward], [Districe], [City]) VALUES (10, CAST(45000.00 AS Decimal(18, 2)), N'Xã Ba Trại', N'Huyện Ba Vì', N'Thành phố Hà Nội')
SET IDENTITY_INSERT [dbo].[Shippings] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Name], [Description], [Status], [Image]) VALUES (2, N'laptop', N'<p>laptop mmmm</p>
', 1, N'4c0047b0-bff1-4372-b41c-49003c829d79_laptopgaming.png')
INSERT [dbo].[Sliders] ([Id], [Name], [Description], [Status], [Image]) VALUES (3, N'Black Myth Wukong', N'<p>Black Myth Wukong banner</p>
', 1, N'8d84f51e-84bb-4eb0-90c9-27665a70ae38_black-myth-wukong-1l4n1.png')
INSERT [dbo].[Sliders] ([Id], [Name], [Description], [Status], [Image]) VALUES (4, N'PC Build', N'<p>PC Build</p>
', 1, N'f0731dc6-d72a-42b2-8a32-654ecd67cfef_c60334212894259.673ceb0e19671.jpg')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Statisticals] ON 

INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (1, 100, 80, CAST(5000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2024-12-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (2, 150, 100, CAST(7500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(N'2024-12-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (3, 120, 90, CAST(5400.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), CAST(N'2024-12-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (4, 180, 140, CAST(8400.00 AS Decimal(18, 2)), CAST(2800.00 AS Decimal(18, 2)), CAST(N'2024-12-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (5, 200, 150, CAST(10000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (6, 250, 200, CAST(12500.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (7, 220, 170, CAST(11000.00 AS Decimal(18, 2)), CAST(4400.00 AS Decimal(18, 2)), CAST(N'2024-12-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (8, 270, 220, CAST(13500.00 AS Decimal(18, 2)), CAST(5400.00 AS Decimal(18, 2)), CAST(N'2024-12-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (9, 240, 180, CAST(12000.00 AS Decimal(18, 2)), CAST(4800.00 AS Decimal(18, 2)), CAST(N'2024-12-14T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (10, 300, 250, CAST(15000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(N'2024-12-14T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (11, 310, 260, CAST(15500.00 AS Decimal(18, 2)), CAST(6200.00 AS Decimal(18, 2)), CAST(N'2024-12-15T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (12, 320, 270, CAST(16000.00 AS Decimal(18, 2)), CAST(6400.00 AS Decimal(18, 2)), CAST(N'2024-12-15T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (13, 330, 280, CAST(16500.00 AS Decimal(18, 2)), CAST(6600.00 AS Decimal(18, 2)), CAST(N'2024-12-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (14, 340, 290, CAST(17000.00 AS Decimal(18, 2)), CAST(6800.00 AS Decimal(18, 2)), CAST(N'2024-12-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (15, 350, 300, CAST(17500.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), CAST(N'2024-12-17T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (16, 360, 310, CAST(18000.00 AS Decimal(18, 2)), CAST(7200.00 AS Decimal(18, 2)), CAST(N'2024-12-17T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (17, 370, 320, CAST(18500.00 AS Decimal(18, 2)), CAST(7400.00 AS Decimal(18, 2)), CAST(N'2024-12-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (18, 380, 330, CAST(19000.00 AS Decimal(18, 2)), CAST(7600.00 AS Decimal(18, 2)), CAST(N'2024-12-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (19, 390, 340, CAST(19500.00 AS Decimal(18, 2)), CAST(7800.00 AS Decimal(18, 2)), CAST(N'2024-12-19T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (20, 400, 350, CAST(20000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(N'2024-12-19T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (21, 1, 2, CAST(22000466.00 AS Decimal(18, 2)), CAST(1000233.00 AS Decimal(18, 2)), CAST(N'2024-12-20T23:45:39.3662696' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (1021, 1, 1, CAST(200000.00 AS Decimal(18, 2)), CAST(199800.00 AS Decimal(18, 2)), CAST(N'2024-12-24T21:39:32.7849795' AS DateTime2))
INSERT [dbo].[Statisticals] ([Id], [Quantity], [Sold], [Revenue], [Profit], [DateCreated]) VALUES (1022, 2, 2, CAST(23000000.00 AS Decimal(18, 2)), CAST(3199800.00 AS Decimal(18, 2)), CAST(N'2024-12-24T21:39:32.7849795' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Statisticals] OFF
GO
SET IDENTITY_INSERT [dbo].[VnPays] ON 

INSERT [dbo].[VnPays] ([Id], [OrderDescription], [TransactionId], [OrderId], [PaymentMethod], [PaymentId], [CreatedDate]) VALUES (1, N'admin Test order 400000', N'14767427', N'638706730988720191', N'VnPay', N'14767427', CAST(N'2024-12-24T21:38:54.5659188' AS DateTime2))
SET IDENTITY_INSERT [dbo].[VnPays] OFF
GO
SET IDENTITY_INSERT [dbo].[Wishlists] ON 

INSERT [dbo].[Wishlists] ([Id], [ProductId], [UserId]) VALUES (4, 2, N'6e8866ab-8c6e-4e49-99fa-76ea0e53b08f')
INSERT [dbo].[Wishlists] ([Id], [ProductId], [UserId]) VALUES (6, 6, N'52729395-0318-4e83-a1e1-d4102da13cc5')
INSERT [dbo].[Wishlists] ([Id], [ProductId], [UserId]) VALUES (1002, 9, N'52729395-0318-4e83-a1e1-d4102da13cc5')
SET IDENTITY_INSERT [dbo].[Wishlists] OFF
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0)) FOR [ShippingCost]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Quanti__160F4887]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Sold__17036CC0]  DEFAULT ((0)) FOR [Sold]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Capita__3E1D39E1]  DEFAULT ((0.0)) FOR [CapitalPrice]
GO
ALTER TABLE [dbo].[Ratings] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [NgayDang]
GO
ALTER TABLE [dbo].[VnPays] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Compares]  WITH CHECK ADD  CONSTRAINT [FK_Compares_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Compares] CHECK CONSTRAINT [FK_Compares_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Products_ProductId]
GO
ALTER TABLE [dbo].[Wishlists]  WITH CHECK ADD  CONSTRAINT [FK_Wishlists_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Wishlists] CHECK CONSTRAINT [FK_Wishlists_Products_ProductId]
GO
