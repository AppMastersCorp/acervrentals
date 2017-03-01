ALTER TABLE [VehicleSale].[OfferMaster] DROP CONSTRAINT [FK_OfferMaster_Vehicles]
GO
ALTER TABLE [dbo].[Widget] DROP CONSTRAINT [FK_Widget_Page]
GO
ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [FK_Vehicles_VehicleTypes]
GO
ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [FK_Vehicles_Models]
GO
ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [FK_Vehicles_Categories]
GO
ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [FK_Vehicles_Brands]
GO
ALTER TABLE [dbo].[VehicleRentleConditions] DROP CONSTRAINT [FK_VehicleRentleConditions_Vehicles]
GO
ALTER TABLE [dbo].[VehicleRent] DROP CONSTRAINT [FK_VehicleRent_Vehicles]
GO
ALTER TABLE [dbo].[VehicleRent] DROP CONSTRAINT [FK_VehicleRent_RentTerms]
GO
ALTER TABLE [dbo].[VehicleImages] DROP CONSTRAINT [FK_VehicleImages_Vehicles]
GO
ALTER TABLE [dbo].[VehicleFeatures] DROP CONSTRAINT [FK_VehicleFeatures_Vehicles]
GO
ALTER TABLE [dbo].[VehicleFeatures] DROP CONSTRAINT [FK_VehicleFeatures_FeaturesMaster]
GO
ALTER TABLE [dbo].[VehicleAmenties] DROP CONSTRAINT [FK_VehicleAmenties_Vehicles]
GO
ALTER TABLE [dbo].[VehicleAmenties] DROP CONSTRAINT [FK_VehicleAmenties_AmentiesMaster]
GO
ALTER TABLE [dbo].[UploadFiles] DROP CONSTRAINT [FK_UploadFiles_Folders]
GO
ALTER TABLE [dbo].[FeaturesMaster] DROP CONSTRAINT [FK_FeaturesMaster_AmentiesMaster]
GO
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [FK_Categories_VehicleTypes]
GO
/****** Object:  Table [VehicleSale].[Roles]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [VehicleSale].[Roles]
GO
/****** Object:  Table [VehicleSale].[OfferMaster]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [VehicleSale].[OfferMaster]
GO
/****** Object:  Table [VehicleSale].[Newsletter]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [VehicleSale].[Newsletter]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Wishlist]
GO
/****** Object:  Table [dbo].[Widget]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Widget]
GO
/****** Object:  Table [dbo].[VehicleTypes]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[VehicleTypes]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Vehicles]
GO
/****** Object:  Table [dbo].[VehicleRentleConditions]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[VehicleRentleConditions]
GO
/****** Object:  Table [dbo].[VehicleRent]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[VehicleRent]
GO
/****** Object:  Table [dbo].[VehicleImages]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[VehicleImages]
GO
/****** Object:  Table [dbo].[VehicleFeatures]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[VehicleFeatures]
GO
/****** Object:  Table [dbo].[VehicleAmenties]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[VehicleAmenties]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UploadFiles]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[UploadFiles]
GO
/****** Object:  Table [dbo].[Testimonial]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Testimonial]
GO
/****** Object:  Table [dbo].[RentTerms]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[RentTerms]
GO
/****** Object:  Table [dbo].[PageImages]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[PageImages]
GO
/****** Object:  Table [dbo].[Page]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Page]
GO
/****** Object:  Table [dbo].[Models]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Models]
GO
/****** Object:  Table [dbo].[Login_SocailNetwork]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Login_SocailNetwork]
GO
/****** Object:  Table [dbo].[Folders]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Folders]
GO
/****** Object:  Table [dbo].[FeaturesMaster]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[FeaturesMaster]
GO
/****** Object:  Table [dbo].[Faq]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Faq]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Brands]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[Banners]
GO
/****** Object:  Table [dbo].[AmentiesMaster]    Script Date: 2/28/2017 9:10:24 PM ******/
DROP TABLE [dbo].[AmentiesMaster]
GO
/****** Object:  Table [dbo].[AmentiesMaster]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmentiesMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[ImageUrl] [nvarchar](500) NULL,
 CONSTRAINT [PK_AmentiesMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banners]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[BannerUrl] [nvarchar](500) NULL,
	[BannerLink] [nvarchar](500) NULL,
	[Title] [nvarchar](500) NULL,
	[Description] [nchar](500) NULL,
	[IsActive] [bit] NULL,
	[PublicKey] [nvarchar](100) NULL,
 CONSTRAINT [PK_Banners] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brands]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[VehicleTypeID] [int] NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faq]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faq](
	[FaqId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[isactive] [bit] NULL,
	[createdon] [datetime] NULL,
	[updatedon] [datetime] NULL,
	[Faqresult] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FaqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeaturesMaster]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeaturesMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AmentiesID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_FeaturesMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Folders]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Folders](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[FolderName] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Folders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login_SocailNetwork]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_SocailNetwork](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Login_SocailNetwork] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Models]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Page]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Page](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Url] [varchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL DEFAULT (getdate()),
	[UpdatedOn] [datetime] NULL DEFAULT (getdate()),
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PageImages]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PageImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PageId] [int] NULL,
	[ImageId] [varchar](50) NULL,
	[ImagePath] [varchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RentTerms]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentTerms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Term] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_RentTerms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Testimonial]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Testimonial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Summary] [nvarchar](max) NOT NULL,
	[ImageURl] [varchar](max) NULL,
	[isactive] [bit] NOT NULL,
	[createdon] [datetime] NULL,
	[updatedon] [datetime] NULL,
	[Rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UploadFiles]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UploadFiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FolderId] [int] NULL,
	[FileName] [varchar](500) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_UploadFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[Password] [nvarchar](100) NULL,
	[UserName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[RoleID] [int] NULL,
	[ForgetPassword] [varchar](100) NULL,
	[ProviderKey] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VehicleAmenties]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleAmenties](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleID] [int] NULL,
	[AmentiesID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_VehicleAmenties] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleFeatures]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleFeatures](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleID] [int] NULL,
	[FeatureID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_VehicleFeatures] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleImages]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VehicleImages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleID] [int] NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[VideoUrl] [nvarchar](500) NULL,
	[PublicKey] [varchar](100) NULL,
 CONSTRAINT [PK_VehicleImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VehicleRent]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleRent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TermID] [int] NULL,
	[VehicleID] [int] NULL,
	[Amount] [float] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_VehicleRent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleRentleConditions]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VehicleRentleConditions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleID] [int] NULL,
	[Title] [varchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_VehicleRentleConditions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[VehicleCode] [nvarchar](50) NULL,
	[VehicleTypeID] [int] NULL,
	[CategoryID] [int] NULL,
	[BrandID] [int] NULL,
	[ModelID] [int] NULL,
	[Seats] [int] NULL,
	[Sleeps] [int] NULL,
	[YearBuilt] [int] NULL,
	[Length] [nvarchar](50) NULL,
	[Width] [nvarchar](50) NULL,
	[IsFeatured] [bit] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[Longitude] [nvarchar](100) NULL,
	[Latitude] [nvarchar](100) NULL,
	[Location] [geography] NULL,
	[IsSaleable] [bit] NOT NULL,
	[SalePrice] [float] NULL,
 CONSTRAINT [PK_RVs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleTypes]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_VehicleTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Widget]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Widget](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PageId] [int] NULL,
	[WidgetId] [varchar](50) NULL,
	[Text] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Widget] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NOT NULL,
	[Vehicleid] [int] NOT NULL,
	[Createdon] [datetime] NULL,
	[Updatedon] [datetime] NULL,
	[isactive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [VehicleSale].[Newsletter]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [VehicleSale].[Newsletter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](max) NULL,
	[isactive] [bit] NULL,
	[createdon] [datetime] NULL,
	[updatedon] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [VehicleSale].[OfferMaster]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VehicleSale].[OfferMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleID] [int] NULL,
	[NoOfNights] [int] NULL,
	[Location] [nvarchar](500) NULL,
	[ValidUntillDate] [datetime] NULL,
	[PickUp] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
	[OfferPrice] [float] NULL,
	[DownPaymentPercentage] [float] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_OfferMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [VehicleSale].[Roles]    Script Date: 2/28/2017 9:10:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [VehicleSale].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](20) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AmentiesMaster] ON 

INSERT [dbo].[AmentiesMaster] ([ID], [Name], [Description], [IsActive], [ImageUrl]) VALUES (1, N'Kitchen', N'Kitchen with Refrigerator, Microwave, Stove, Sink, Oven', 1, N'/ProductImage/5be0f1b6-baa6-4c0d-a681-6f3702e4133fafd7bc34-afd2-4c19-af79-72587033e9cfspoon.png')
INSERT [dbo].[AmentiesMaster] ([ID], [Name], [Description], [IsActive], [ImageUrl]) VALUES (2, N'Bathroom', N'Bathroom with Shower, Toilet and Sink', 1, N'/ProductImage/a9ad4134-0de5-4148-841f-4a7a2d1ddd2f2.png')
INSERT [dbo].[AmentiesMaster] ([ID], [Name], [Description], [IsActive], [ImageUrl]) VALUES (3, N'Rear garage', N'Rear garage', 1, N'/ProductImage/3781e898-1ae9-4098-9a6a-4b548873bbd8one.png')
SET IDENTITY_INSERT [dbo].[AmentiesMaster] OFF
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([ID], [Name], [BannerUrl], [BannerLink], [Title], [Description], [IsActive], [PublicKey]) VALUES (1, N'FirstBanner', N'/images/Banners/3c16ab0b-c260-4a56-9af6-8f7e08ef9dc4bannerbg1.jpg', N'abc1212', N'BOOK YOUR RV OR CAMPER', N'  YOUR NEXT FAMILY VACATION DOESN''T HAVE TO BREAK THE BANK!                         FORGET THE COST OF AIRFARE AND CALL ACE RV                        TO HIT THE OPEN ROAD WITH YOUR FAMILY                                                                                                                                                                                                                                                                                                                         ', 1, N'zqdwkc0lrfjt2s1sbfv6')
INSERT [dbo].[Banners] ([ID], [Name], [BannerUrl], [BannerLink], [Title], [Description], [IsActive], [PublicKey]) VALUES (2, N'2nd Banner', N'/images/Banners/bannerbg1.jpg', N'assssdd', N'BOOK YOUR RV OR CAMPER', N'  YOUR NEXT FAMILY VACATION DOESN''T HAVE TO BREAK THE BANK!                         FORGET THE COST OF AIRFARE AND CALL ACE RV                        TO HIT THE OPEN ROAD WITH YOUR FAMILY                                                                                                                                                                                                                                                                                                                         ', 1, N'r7dr2pdxktisd9bimrpp')
INSERT [dbo].[Banners] ([ID], [Name], [BannerUrl], [BannerLink], [Title], [Description], [IsActive], [PublicKey]) VALUES (3, N'FirstBanner', N'/images/banner.jpg', N'abc', N'BOOK YOUR RV OR CAMPER', N'  YOUR NEXT FAMILY VACATION DOESN''T HAVE TO BREAK THE BANK!                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 1, N'r7dr2pdxktisd9bimrpp')
INSERT [dbo].[Banners] ([ID], [Name], [BannerUrl], [BannerLink], [Title], [Description], [IsActive], [PublicKey]) VALUES (213, NULL, N'/images/banner.jpg', N'vxc', N'BOOK YOUR RV OR CAMPER', N'  YOUR NEXT FAMILY VACATION DOESN''T HAVE TO BREAK THE BANK!                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 1, N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[Banners] ([ID], [Name], [BannerUrl], [BannerLink], [Title], [Description], [IsActive], [PublicKey]) VALUES (230, NULL, N'/images/Banners/banner.jpg', N'sdsdsd', N'sdsds', N'sdsddddddddddddddddddddd                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 1, N'gjmuwon17xuajc7zpozy')
SET IDENTITY_INSERT [dbo].[Banners] OFF
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([ID], [Name], [IsActive]) VALUES (1002, N'Admiral', 1)
INSERT [dbo].[Brands] ([ID], [Name], [IsActive]) VALUES (1003, N'Adventurer', 1)
INSERT [dbo].[Brands] ([ID], [Name], [IsActive]) VALUES (1005, N'Aerbus', 1)
INSERT [dbo].[Brands] ([ID], [Name], [IsActive]) VALUES (1006, N'Allegro', 1)
INSERT [dbo].[Brands] ([ID], [Name], [IsActive]) VALUES (1007, N'Coachmen', 1)
INSERT [dbo].[Brands] ([ID], [Name], [IsActive]) VALUES (1008, N'Country Coach', 1)
INSERT [dbo].[Brands] ([ID], [Name], [IsActive]) VALUES (1009, N'Fleetwood', 1)
INSERT [dbo].[Brands] ([ID], [Name], [IsActive]) VALUES (1010, N'Monaco', 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name], [VehicleTypeID], [ImageUrl], [IsActive]) VALUES (1, N'Class A', 1, N'/ProductImage/2c78dad5-1a28-4645-8b1b-ae821997a41b98385308-7ac9-4d0d-8bbf-d21b453ea9bdchoose3.png', 1)
INSERT [dbo].[Categories] ([ID], [Name], [VehicleTypeID], [ImageUrl], [IsActive]) VALUES (2, N'Class B', 1, N'/ProductImage/a0f6eb2c-cde1-425e-8bad-925bb3463bbechoose2.png', 1)
INSERT [dbo].[Categories] ([ID], [Name], [VehicleTypeID], [ImageUrl], [IsActive]) VALUES (3, N'Class C', 1, N'/ProductImage/e8cd315e-0bf2-42f5-adae-6bc9cf60f1edchoose3.png', 1)
INSERT [dbo].[Categories] ([ID], [Name], [VehicleTypeID], [ImageUrl], [IsActive]) VALUES (4, N'Fifth Wheel trailer', 1, N'/ProductImage/be96c5a4-fea8-4358-8efd-595a7aeecf06choose4.png', 1)
INSERT [dbo].[Categories] ([ID], [Name], [VehicleTypeID], [ImageUrl], [IsActive]) VALUES (5, N'Travel Trailer', 1, N'/ProductImage/f488129e-021c-4723-b8ed-c5850e723d97Choose5.png', 1)
INSERT [dbo].[Categories] ([ID], [Name], [VehicleTypeID], [ImageUrl], [IsActive]) VALUES (6, N'Truck Camper', 1, N'/ProductImage/11b2db3a-0b06-45cd-9b50-d9d5c9e6d375Choose1.png', 1)
INSERT [dbo].[Categories] ([ID], [Name], [VehicleTypeID], [ImageUrl], [IsActive]) VALUES (7, N'Folding Trailer', 1, N'/ProductImage/1449cc2f-020d-4e1d-a72a-5e4f5d727939a0f6eb2c-cde1-425e-8bad-925bb3463bbechoose2.png', 1)
INSERT [dbo].[Categories] ([ID], [Name], [VehicleTypeID], [ImageUrl], [IsActive]) VALUES (8, N'All Other types', 1, N'/ProductImage/98385308-7ac9-4d0d-8bbf-d21b453ea9bdchoose3.png', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Faq] ON 

INSERT [dbo].[Faq] ([FaqId], [Description], [isactive], [createdon], [updatedon], [Faqresult]) VALUES (1, N'This is Photoshop''s version of Lorem Ipsum?', 1, CAST(N'2017-02-17 19:52:15.137' AS DateTime), CAST(N'2017-02-17 19:52:15.177' AS DateTime), N'Answer This is Photoshop''s version of Lorem Ipsum.')
INSERT [dbo].[Faq] ([FaqId], [Description], [isactive], [createdon], [updatedon], [Faqresult]) VALUES (2, N'This is Photoshop''s version of Lorem Ipsum?', 1, CAST(N'2017-02-17 19:52:35.153' AS DateTime), CAST(N'2017-02-17 19:52:35.153' AS DateTime), N'Answer This is Photoshop''s version of Lorem Ipsum.')
INSERT [dbo].[Faq] ([FaqId], [Description], [isactive], [createdon], [updatedon], [Faqresult]) VALUES (3, N'This is Photoshop''s version of Lorem Ipsum?', 1, CAST(N'2017-02-17 19:53:07.423' AS DateTime), CAST(N'2017-02-17 19:53:07.423' AS DateTime), N'Answer This is Photoshop''s version of Lorem Ipsum.')
INSERT [dbo].[Faq] ([FaqId], [Description], [isactive], [createdon], [updatedon], [Faqresult]) VALUES (4, N'This is Photoshop''s version of Lorem Ipsum?', 1, CAST(N'2017-02-17 19:52:57.607' AS DateTime), CAST(N'2017-02-17 19:52:57.607' AS DateTime), N'Answer This is Photoshop''s version of Lorem Ipsum.')
SET IDENTITY_INSERT [dbo].[Faq] OFF
SET IDENTITY_INSERT [dbo].[FeaturesMaster] ON 

INSERT [dbo].[FeaturesMaster] ([ID], [AmentiesID], [Title], [Description], [IsActive]) VALUES (1, 1, N'Hot water', N'Hot water', 1)
INSERT [dbo].[FeaturesMaster] ([ID], [AmentiesID], [Title], [Description], [IsActive]) VALUES (2, 1, N'Generator', N'Generator', 1)
INSERT [dbo].[FeaturesMaster] ([ID], [AmentiesID], [Title], [Description], [IsActive]) VALUES (3, 2, N'Fresh water tank', N'Fresh water tank', 1)
INSERT [dbo].[FeaturesMaster] ([ID], [AmentiesID], [Title], [Description], [IsActive]) VALUES (4, 2, N'Waste water tank', N'Waste water tank', 1)
INSERT [dbo].[FeaturesMaster] ([ID], [AmentiesID], [Title], [Description], [IsActive]) VALUES (5, 1, N'Refrigerator', N'Refrigerator', 1)
INSERT [dbo].[FeaturesMaster] ([ID], [AmentiesID], [Title], [Description], [IsActive]) VALUES (6, 3, N'Canopy awning', N'Canopy awning', 1)
INSERT [dbo].[FeaturesMaster] ([ID], [AmentiesID], [Title], [Description], [IsActive]) VALUES (10, 1, N'water', N'water', 1)
SET IDENTITY_INSERT [dbo].[FeaturesMaster] OFF
SET IDENTITY_INSERT [dbo].[Folders] ON 

INSERT [dbo].[Folders] ([Id], [FolderName], [CreatedOn], [IsDeleted]) VALUES (1, N'Images', CAST(N'2017-02-24 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Folders] ([Id], [FolderName], [CreatedOn], [IsDeleted]) VALUES (2, N'AboutUsImages', CAST(N'2017-02-24 20:03:54.170' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Folders] OFF
SET IDENTITY_INSERT [dbo].[Login_SocailNetwork] ON 

INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (1, N'Ramandeep Singh', NULL, N'1242388239179971', N'Facebook', 1, CAST(N'2017-02-17 15:31:14.643' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (2, N'Ramandeep Singh', NULL, N'1242388239179971', N'Facebook', 1, CAST(N'2017-02-17 15:36:33.473' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (3, N'Ramandeep Singh', NULL, N'1242388239179971', N'Facebook', 1, CAST(N'2017-02-17 15:48:43.447' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (4, N'Ramandeep Singh', NULL, N'1242388239179971', N'Facebook', 1, CAST(N'2017-02-17 15:49:57.143' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (5, N'Mukesh Chabbra', N'mukeshchabbra@gmail.com', N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjM0ZWNjNzM3OGJiM2RjNDhkNGNlMDRmNzkyNGMxNjM0MjM0OTMyYmQifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg3MzI4MTcwLCJleHAiOjE0ODczMzE3NzAsImF0X2hhc2giOiJnOVZ3aW1GcVVfXzZsUUVhS1RsVFZnIiwiYXVkIjoiODgyNzMwOTU0NzIxLTVzbW1rbjR1cTBvamxrcmptYTFjNDhrbG5sZWhnNm1kLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA5NTgxNjIzMTUwMzQ0NzUzMDExIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6Ijg4MjczMDk1NDcyMS01c21ta240dXEwb2psa3JqbWExYzQ4a2xubGVoZzZtZC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoibXVrZXNoY2hhYmJyYUBnbWFpbC5jb20iLCJuYW1lIjoiTXVrZXNoIENoYWJicmEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDUuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy11VGZZcVNNNWNsOC9BQUFBQUFBQUFBSS9BQUFBQUFBQUJuZy9fWnFOcndaeV9yYy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiTXVrZXNoIiwiZmFtaWx5X25hbWUiOiJDaGFiYnJhIiwibG9jYWxlIjoiZW4ifQ.iPYeC_6bnmDyhKT2UJJWRR1XmewQUcCozGhEcIBtlC7wvSzxoSlBzTA8-yZiNGGHk0YSBMnpBtd16QV5dQ5yl7wxCTyXShTZACEa16hlEXzzVhLsqXJV_4BpeUIRjKbDdt6rmkKMVhgz8vzZbASyuK9T9UmiQDpf6S8OoAkvHWNpZxrRwW7qU5kqxDwsgFWvIZAyNzd2m_PImBv6M2iuGxNAigo5-QBJg-30yZ6zHOz18WXJx3MsargdRfPePv1wAj1X4I2lRsAVNgIJMDMcTmMTaRyxJoZE57RbrP88QeV0uZlNtHZvhtGxy1PLmmZ7t9A1k5AOua1UF4f45y-6GQ', N'Google', 1, CAST(N'2017-02-17 16:03:17.473' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (6, N'Mukesh Chabbra', N'mukeshchabbra@gmail.com', N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjM0ZWNjNzM3OGJiM2RjNDhkNGNlMDRmNzkyNGMxNjM0MjM0OTMyYmQifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg3MzMzODMxLCJleHAiOjE0ODczMzc0MzEsImF0X2hhc2giOiJ5RTFMTzYyM3QydmIwdmZZbnJuejV3IiwiYXVkIjoiODgyNzMwOTU0NzIxLTVzbW1rbjR1cTBvamxrcmptYTFjNDhrbG5sZWhnNm1kLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA5NTgxNjIzMTUwMzQ0NzUzMDExIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6Ijg4MjczMDk1NDcyMS01c21ta240dXEwb2psa3JqbWExYzQ4a2xubGVoZzZtZC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoibXVrZXNoY2hhYmJyYUBnbWFpbC5jb20iLCJuYW1lIjoiTXVrZXNoIENoYWJicmEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDUuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy11VGZZcVNNNWNsOC9BQUFBQUFBQUFBSS9BQUFBQUFBQUJuZy9fWnFOcndaeV9yYy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiTXVrZXNoIiwiZmFtaWx5X25hbWUiOiJDaGFiYnJhIiwibG9jYWxlIjoiZW4ifQ.Tvfr7qVTnuXj4Cb2z3fnwuC9LNjtiQNrYiCXRBB41m8uuZhc3J-aHlnVWdzN_6gLPm2QlaeZT-71h_tHsyKKTi5ej8H3fzEPCJe8q6f3EvJ1kT3ry-Q2zPt45mrCOIVk59K_Q9_BKbGNbUmH0WdBEOJqDrm3QYx_VYOiq240vftw2q8wjCeJSmYpfkyr_l8D0S5O0fEhKmMNTa21If-aaUxrAU-VUHoJyQF6XPM5Obeo8Ab8pPKBlIzDnZRVZncPSG4fH_Td-2xkQc9ettz--6VsNxzQvrSzWf0QBu-r-CXjT6HAQiz1u7ehjTO9xQ3NOSwdjjWBq8KaKY37W7ZbdA', N'Google', 1, CAST(N'2017-02-17 17:37:38.733' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (7, N'Ramandeep Singh', NULL, N'1242388239179971', N'Facebook', 1, CAST(N'2017-02-17 17:55:04.693' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (8, N'Ramandeep Singh', NULL, N'1242388239179971', N'Facebook', 1, CAST(N'2017-02-17 18:37:52.507' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (9, N'Ramandeep Singh', NULL, N'1242388239179971', N'Facebook', 1, CAST(N'2017-02-17 20:06:54.097' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (10, N'Mukesh Chabbra', N'mukeshchabbra@gmail.com', N'1320071588054712', N'Facebook', 1, CAST(N'2017-02-17 20:08:50.250' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (11, N'Gorab Raturi', NULL, N'175799952910078', N'Facebook', 1, CAST(N'2017-02-20 12:55:52.827' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (12, N'Gorab Raturi', NULL, N'175799952910078', N'Facebook', 1, CAST(N'2017-02-20 18:11:19.177' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (13, N'Gorab Raturi', NULL, N'175799952910078', N'Facebook', 1, CAST(N'2017-02-20 18:25:19.830' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (14, N'Gorab Raturi', NULL, N'175799952910078', N'Facebook', 1, CAST(N'2017-02-20 18:38:20.100' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (15, N'Gorab Raturi', N'raturigorab15@gmail.com', N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjkyNmQ2MGNkMDU1OTExZjc1ZjMyNGFkZGUxNzA4ZDkzMmY5NTk1YWYifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg3NjUxNDcwLCJleHAiOjE0ODc2NTUwNzAsImF0X2hhc2giOiJVSG9YT2ZqamFaQlpIdnZ2RG55Z0pnIiwiYXVkIjoiODgyNzMwOTU0NzIxLTVzbW1rbjR1cTBvamxrcmptYTFjNDhrbG5sZWhnNm1kLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA5Mzc1NjM4MDA3MjUyNjYxMDIzIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6Ijg4MjczMDk1NDcyMS01c21ta240dXEwb2psa3JqbWExYzQ4a2xubGVoZzZtZC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoicmF0dXJpZ29yYWIxNUBnbWFpbC5jb20iLCJuYW1lIjoiR29yYWIgUmF0dXJpIiwicGljdHVyZSI6Imh0dHBzOi8vbGg1Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tejZJdk1yQTdCVk0vQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQURQbGhmSVUzUGpKOExKekdHM0Naa1RvWU9rRlNfbXB5Zy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiR29yYWIiLCJmYW1pbHlfbmFtZSI6IlJhdHVyaSIsImxvY2FsZSI6ImVuIn0.H00ak30Zera0LMOUHmW9f4-nyhXlzxu3Pz1StZ1NUTP-_lAXJEVvHB3FBr9A_tgTK1LrPiSUElzvqyJdkKPS-OvjtUDAjmrNiw-BfQ96_8HJuVRqUyguPxrKFOo20ejmSsqV1y26VvT4fzN8d3FISJY6Z5wd5pUUno30ga-cP8qbPFC2c10hihwOTYWyfsl26fHmNzeHNYAIYV0tQj7uODMhpchrRdcNI2wI37zKTmrdTVrgaIZA2w2oNHjTSxSU_4SAbDaK8yF_oR94Pq3HjOY7m-1sW0z1c-AA8lkG7OZJP2wBMFJXWz2tthGQSQS-aFhPhSapNd9jLRNPyku09A', N'Google', 1, CAST(N'2017-02-21 09:51:27.777' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (16, N'Gorab Raturi', N'raturigorab15@gmail.com', N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjkyNmQ2MGNkMDU1OTExZjc1ZjMyNGFkZGUxNzA4ZDkzMmY5NTk1YWYifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg3NjUyNDk5LCJleHAiOjE0ODc2NTYwOTksImF0X2hhc2giOiJPcG5ITU55S1I3MHlaT0RrbnB1UVZnIiwiYXVkIjoiODgyNzMwOTU0NzIxLTVzbW1rbjR1cTBvamxrcmptYTFjNDhrbG5sZWhnNm1kLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA5Mzc1NjM4MDA3MjUyNjYxMDIzIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6Ijg4MjczMDk1NDcyMS01c21ta240dXEwb2psa3JqbWExYzQ4a2xubGVoZzZtZC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoicmF0dXJpZ29yYWIxNUBnbWFpbC5jb20iLCJuYW1lIjoiR29yYWIgUmF0dXJpIiwicGljdHVyZSI6Imh0dHBzOi8vbGg1Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tejZJdk1yQTdCVk0vQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQURQbGhmSVUzUGpKOExKekdHM0Naa1RvWU9rRlNfbXB5Zy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiR29yYWIiLCJmYW1pbHlfbmFtZSI6IlJhdHVyaSIsImxvY2FsZSI6ImVuIn0.PEOxTfkRdDzPAwQbgye0OnwrQvYccocBNUn_YjR2v6CYXxRmAAlTqgLJeU-aTpqu1Oma6LnLYXSJsancsTYRgcOCmZeAT3M552kyK8uIGPbD8ky0i-b0RtIqjcsbDuTXzS8SyYe55p0N6JL2lmet6t_gvBe1trsIw7T3hE1cpmtUvSviN19OyRTXQ_yNWJ_v3XZydTfQja35o6OyeZfFaO82rUEhTe54OkkGKQV7D10gJ2RIRntL8y3L7Fw5oFTDTHI-3BsJ6hUKG7K7WPq4pfR6dY7T_8G-BPrLU53_qMqL0jUELyj7qqovDqwCA7hcz88Qusl4MtCLcE9f0zSZzQ', N'Google', 1, CAST(N'2017-02-21 10:08:37.483' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (17, N'Gorab Raturi', N'raturigorab15@gmail.com', N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjkyNmQ2MGNkMDU1OTExZjc1ZjMyNGFkZGUxNzA4ZDkzMmY5NTk1YWYifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg3NjUyNjk3LCJleHAiOjE0ODc2NTYyOTcsImF0X2hhc2giOiJOOE5xWVAzV3p4aEhMVGl6dk1RdU13IiwiYXVkIjoiODgyNzMwOTU0NzIxLTVzbW1rbjR1cTBvamxrcmptYTFjNDhrbG5sZWhnNm1kLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA5Mzc1NjM4MDA3MjUyNjYxMDIzIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6Ijg4MjczMDk1NDcyMS01c21ta240dXEwb2psa3JqbWExYzQ4a2xubGVoZzZtZC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoicmF0dXJpZ29yYWIxNUBnbWFpbC5jb20iLCJuYW1lIjoiR29yYWIgUmF0dXJpIiwicGljdHVyZSI6Imh0dHBzOi8vbGg1Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tejZJdk1yQTdCVk0vQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQURQbGhmSVUzUGpKOExKekdHM0Naa1RvWU9rRlNfbXB5Zy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiR29yYWIiLCJmYW1pbHlfbmFtZSI6IlJhdHVyaSIsImxvY2FsZSI6ImVuIn0.PnRB-kYcycYspxxymfeX325ELksE9Jyhp7jvvdBcxWaY3MTO7vaC4XDbzvEOxLADBXYktnsAo2xGVpEvjEHGbTwqQAQ6CffF8AksrgASvE57UneD6t6UFwVdHGyZFn0AsX3e6x62yAKyx4MTOCI93seOWK14bXqsLOw8oZCW0spMXyQT7CYI_j9ImEzqfHZkWrMiIZuUcR6AEhKmUfMTX745U98ZHEZ5ejM6QfTFRTCCVDUdV9e_m7RKX0X8rRhiDLcODgM-l-m0XiNp1mghWCoxUglldoucXerUBOniuLjhUjv_Rei0l4y-F1GB1f9hfKVjHjZPV5HO8psQbJk3tQ', N'Google', 1, CAST(N'2017-02-21 10:11:55.157' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (18, N'Manisha Test', N'manishatest88@gmail.com', N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjcwYWFlMDk3YmUwZmEyYTk5OTg1MmQ1N2E0ODBlNGNhZDZiZGI4MWMifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg3OTI3NDk4LCJleHAiOjE0ODc5MzEwOTgsImF0X2hhc2giOiIzQ2NocFFBR2Y1enh5NTFGZkplaFlBIiwiYXVkIjoiODgyNzMwOTU0NzIxLTVzbW1rbjR1cTBvamxrcmptYTFjNDhrbG5sZWhnNm1kLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTExNzE3OTY1NTQwNjA0Mzg3MjkzIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6Ijg4MjczMDk1NDcyMS01c21ta240dXEwb2psa3JqbWExYzQ4a2xubGVoZzZtZC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoibWFuaXNoYXRlc3Q4OEBnbWFpbC5jb20iLCJuYW1lIjoiTWFuaXNoYSBUZXN0IiwicGljdHVyZSI6Imh0dHBzOi8vbGg2Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8teHZpbC1xNm93UmsvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUFvbXZWMGs0a3hreVNfUFVfSUtPeERRUFhxa2ZIR3lkZy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiTWFuaXNoYSIsImZhbWlseV9uYW1lIjoiVGVzdCIsImxvY2FsZSI6ImVuIn0.lkRWGiypHbx0UM1McHa_LTktFLfZLV_U0lhnRHmT5IbNK8F5CoDOhvO0T81gaPXuXM68m-x3td7okR51Qk2MXtCF0d9hgsfX7J2dyJIvt3XKgLo5dXqjMDAzNuJUWemGIPXAM7w-L5rKvkJQzgKN4IIQAcM4yh2erITQE1PWVQ4foFHMW4c1p0FwUW50egdyRr1n2tp36QIesa7B-krdNQAZ2LGRsS8GrD37YMbEf4eeDOaTVu6hFQ5qztZe67JvMV4YEihlpK9xq2tmlYbVPwRiwVO4rhvuqLu2u4Pc2DEXC_SecDKB-nhmol875wjlMj-Xk3vWmjCBtYd-G5kcVw', N'Google', 1, CAST(N'2017-02-24 09:12:06.183' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (19, N'Todd Ron', N'testname233@gmail.com', N'202243053589686', N'Facebook', 1, CAST(N'2017-02-24 09:17:57.533' AS DateTime))
INSERT [dbo].[Login_SocailNetwork] ([Id], [Name], [Email], [ProviderKey], [ProviderName], [IsActive], [CreatedOn]) VALUES (20, N'MUKESH CHABBRA', N'mukeshchabbra5@gmail.com', N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjgxMDkxNGZiOTk0OGYxZTQzNTdjYzg3MjY4MDg3Mjk4ZTgzNTlkMjAifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg4MjA3MDMwLCJleHAiOjE0ODgyMTA2MzAsImF0X2hhc2giOiJNcGZhSDNWZVlJOVh2QjNfNmJRVUdnIiwiYXVkIjoiODgyNzMwOTU0NzIxLTVzbW1rbjR1cTBvamxrcmptYTFjNDhrbG5sZWhnNm1kLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA0NjQ5NTczNzg2NjAzOTA0MzYyIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6Ijg4MjczMDk1NDcyMS01c21ta240dXEwb2psa3JqbWExYzQ4a2xubGVoZzZtZC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoibXVrZXNoY2hhYmJyYTVAZ21haWwuY29tIiwibmFtZSI6Ik1VS0VTSCBDSEFCQlJBIiwicGljdHVyZSI6Imh0dHBzOi8vbGg1Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tY053SlNWMnRHelUvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQUFvbXZWMm5mazBRcVltYmlNcDRxeFZQd01QV3FMNmRqdy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiTVVLRVNIIiwiZmFtaWx5X25hbWUiOiJDSEFCQlJBIiwibG9jYWxlIjoiZW4ifQ.mfClZ8BVvg84jbyIYB6TyJ91npuoxgoO33iMhVsQS2WlaGlpaZhpP21NRcsBBnLXRcsZ9kXW5a5cygyZhHNaNeoMaXKI2Go8gE4mXFOXwCD8PoeuPqigwWP239pS8SQPcC7ccq5xCb1SYdO0rsDBEpuuu7AWCHOwmpQ_GIOnvnFl6he6aiTWt-yuq2RQtvJ_kBfaio8t8bwddVt4mrlUD794mf0a8q-i4xAQd92eSWWdvV0AXQ9BuAb3UXTWQ3H-kkOC7PF7-xcxJfGagCq8ObrkzE4fP5CBZ5w4vCprtRZhpAayeauj5VzwrVBWl98xGHY2r3ZUpuI7g5IndML3aw', N'Google', 1, CAST(N'2017-02-27 14:50:33.293' AS DateTime))
SET IDENTITY_INSERT [dbo].[Login_SocailNetwork] OFF
SET IDENTITY_INSERT [dbo].[Models] ON 

INSERT [dbo].[Models] ([ID], [Name], [IsActive]) VALUES (1, N'Sports Coach', 1)
INSERT [dbo].[Models] ([ID], [Name], [IsActive]) VALUES (2, N'Mirada', 1)
INSERT [dbo].[Models] ([ID], [Name], [IsActive]) VALUES (3, N'Crossfit', 1)
INSERT [dbo].[Models] ([ID], [Name], [IsActive]) VALUES (4, N'Concord', 1)
INSERT [dbo].[Models] ([ID], [Name], [IsActive]) VALUES (5, N'ADRENALINE', 1)
INSERT [dbo].[Models] ([ID], [Name], [IsActive]) VALUES (6, N'CHAPARRAL', 1)
INSERT [dbo].[Models] ([ID], [Name], [IsActive]) VALUES (7, N'Tioga', 1)
INSERT [dbo].[Models] ([ID], [Name], [IsActive]) VALUES (18, N'deluxe', 1)
SET IDENTITY_INSERT [dbo].[Models] OFF
SET IDENTITY_INSERT [dbo].[Page] ON 

INSERT [dbo].[Page] ([Id], [Name], [Url], [IsDeleted], [CreatedOn], [UpdatedOn]) VALUES (1, N'AboutUs', N'Home/AboutUs', 0, CAST(N'2017-02-24 00:00:00.000' AS DateTime), CAST(N'2017-02-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Page] ([Id], [Name], [Url], [IsDeleted], [CreatedOn], [UpdatedOn]) VALUES (2, N'RefundPolicy', N'Home/RefundPolicy', 0, CAST(N'2017-02-24 00:00:00.000' AS DateTime), CAST(N'2017-02-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Page] ([Id], [Name], [Url], [IsDeleted], [CreatedOn], [UpdatedOn]) VALUES (3, N'TermsAndConditions', N'Home/TermsAndConditions', 0, CAST(N'2017-02-02 00:00:00.000' AS DateTime), CAST(N'2017-02-24 12:58:40.250' AS DateTime))
SET IDENTITY_INSERT [dbo].[Page] OFF
SET IDENTITY_INSERT [dbo].[PageImages] ON 

INSERT [dbo].[PageImages] ([Id], [PageId], [ImageId], [ImagePath]) VALUES (1, 1, N'singleImg1', N'/Content/Upload/Images/qmcgqdar.u3ddownload.png')
INSERT [dbo].[PageImages] ([Id], [PageId], [ImageId], [ImagePath]) VALUES (2, 1, N'singleImg2', N'/images/download.png')
INSERT [dbo].[PageImages] ([Id], [PageId], [ImageId], [ImagePath]) VALUES (3, 1, NULL, N'/Content/Upload/AboutUsImages/ohmjz5st.4g232df163e-46ed-45f8-b4d3-19175c8c4a32banner.jpg')
SET IDENTITY_INSERT [dbo].[PageImages] OFF
SET IDENTITY_INSERT [dbo].[RentTerms] ON 

INSERT [dbo].[RentTerms] ([ID], [Term], [IsActive]) VALUES (1, N'One Night', 1)
INSERT [dbo].[RentTerms] ([ID], [Term], [IsActive]) VALUES (2, N'Monthly', 1)
SET IDENTITY_INSERT [dbo].[RentTerms] OFF
SET IDENTITY_INSERT [dbo].[Testimonial] ON 

INSERT [dbo].[Testimonial] ([ID], [Description], [Title], [Summary], [ImageURl], [isactive], [createdon], [updatedon], [Rating]) VALUES (1, N'testimonals Descriptions', N'This is Photoshop''s version  of Lorem Ipsum.', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', N'/Images/testimonlasimages/c500a2a4-d3f4-418b-8c14-212bdbe095f0testimonial1.png', 1, CAST(N'2017-02-27 15:29:59.190' AS DateTime), CAST(N'2017-02-27 15:29:59.190' AS DateTime), 2)
INSERT [dbo].[Testimonial] ([ID], [Description], [Title], [Summary], [ImageURl], [isactive], [createdon], [updatedon], [Rating]) VALUES (2, N'testimonals Descriptions', N'This is Photoshop''s version  of Lorem Ipsum.', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', N'/Images/testimonlasimages/testimonial2.png', 1, CAST(N'2017-02-16 07:03:32.623' AS DateTime), CAST(N'2017-02-16 07:03:32.623' AS DateTime), 3)
INSERT [dbo].[Testimonial] ([ID], [Description], [Title], [Summary], [ImageURl], [isactive], [createdon], [updatedon], [Rating]) VALUES (3, N'testimonals Descriptions', N'This is Photoshop''s version  of Lorem Ipsum.', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', N'/Images/testimonlasimages/testimonial3.png', 1, CAST(N'2017-02-16 07:04:55.500' AS DateTime), CAST(N'2017-02-16 07:04:55.500' AS DateTime), 5)
INSERT [dbo].[Testimonial] ([ID], [Description], [Title], [Summary], [ImageURl], [isactive], [createdon], [updatedon], [Rating]) VALUES (4, N'testimonals Descriptions', N'This is Photoshop''s version  of Lorem Ipsum.', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', N'/Images/testimonlasimages/testimonial4.png', 1, CAST(N'2017-02-16 07:30:55.720' AS DateTime), CAST(N'2017-02-16 07:30:55.720' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Testimonial] OFF
SET IDENTITY_INSERT [dbo].[UploadFiles] ON 

INSERT [dbo].[UploadFiles] ([Id], [FolderId], [FileName], [IsDeleted]) VALUES (1, 2, N'ohmjz5st.4g232df163e-46ed-45f8-b4d3-19175c8c4a32banner.jpg', 0)
INSERT [dbo].[UploadFiles] ([Id], [FolderId], [FileName], [IsDeleted]) VALUES (2, 1, N'agx1jjfw.hos8c9595f2-594b-42a9-a8f7-cf547c8ccbd22.png', 0)
INSERT [dbo].[UploadFiles] ([Id], [FolderId], [FileName], [IsDeleted]) VALUES (3, 1, N'qmcgqdar.u3ddownload.png', 0)
SET IDENTITY_INSERT [dbo].[UploadFiles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (1, N'Rohit', N'Katoch', N'rohit@gmail.com', N'898989889', CAST(N'1986-02-02 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'rohit', 1, 1, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (3, N'Gorab', N'Raturi', N'gorab@technocodz.com', N'112332435345', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'Ygn/uZc/FZMJuhLY8vabmA==', N'gorab', 1, 2, N'676879', NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (4, N'Amit', N'Singh', N'gorab@technocodz.comff', N'1232444244', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'123', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (5, N'fdf', N'fddf', N'gorab@technocodghz.com', N'213213213', CAST(N'1992-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'12', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (6, N'ddd', N'sss', N'gorab@technocodfdz.com', N'12333444', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'12', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (7, N'dsd', N'sa', N'gorab@technocddodz.com', N'23213123', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'122', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (8, N'ss', N'd', N'gorab@technoz.com', N'12324324', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'BhVNviA0q7ERN5Un3AzIPg==', N'dsa', 1, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (9, N'ff', N'dsf', N'gorab@technocffodz.com', N'123232444', CAST(N'1999-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'122', 1, 2, N'rQ5W5vZ8W/s3m0jxlDEadw==', NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (10, N'Mukesh', N'Chabbra', N'mukeshchabbra@gmail.com', N'98989898', CAST(N'2014-02-05 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'mukesh', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (11, N'Gorab', N'Raturi', N'gorab@technocodhhz.com', N'12324344', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'gorab', 0, 2, N'vudK+S4+7J2mJIsNSNWsZw==', NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (12, N'Gorab', N'Raturi', N'gorab@technocddodz.com', N'9544353433', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'gorab', 0, 2, N'akf8c9y78bv5ioRGl6Liqg==', NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (13, N'Gorab', N'Raturi', N'gorab@technocoddz.com', N'121444434', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'ADX4VeuwJ0BAoXSOXntYdJQJoRd61V+N/TNePnJfu38=', N'1233', 1, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (14, N'fff', N'sss', N'f@g.com', N'1234567', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'12333', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (15, N'Gorab', N'Raturi', N'gorab@technocaaodz.com', N'234234234', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'12333', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (16, N'ss', N'aa', N'gorab@technocodzss.com', N'8453453', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'11', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (17, N'ss', N'aa', N'gorab@techfffnocodz.com', N'324213323', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'12333', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (28, N'Gorab', N'Raturi', N'gorab@technocodddz.com', N'21334214', CAST(N'1993-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'sdfs', 0, 2, NULL, N'175799952910078')
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (29, N'Gorab', N'Raturi', N'raturigorab15@gmail.com', N'23213321132', CAST(N'1990-12-12 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'dd', 1, 2, NULL, N'eyJhbGciOiJSUzI1NiIsImtpZCI6IjkyNmQ2MGNkMDU1OTExZjc1ZjMyNGFkZGUxNzA4ZDkzMmY5NTk1YWYifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg3NjUyNDk5LCJleHAiOjE0ODc2NTYwOTksImF0X2hhc2giOiJPcG5ITU55S1I3MHlaT0RrbnB1UVZnIiwiYXVkIjoiODgyNzMwOTU0NzIxLTVzbW1rbjR1cTBvamxrcmptYTFjNDhrbG5sZWhnNm1kLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA5Mzc1NjM4MDA3MjUyNjYxMDIzIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6Ijg4MjczMDk1NDcyMS01c21ta240dXEwb2psa3JqbWExYzQ4a2xubGVoZzZtZC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoicmF0dXJpZ29yYWIxNUBnbWFpbC5jb20iLCJuYW1lIjoiR29yYWIgUmF0dXJpIiwicGljdHVyZSI6Imh0dHBzOi8vbGg1Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tejZJdk1yQTdCVk0vQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQURQbGhmSVUzUGpKOExKekdHM0Naa1RvWU9rRlNfbXB5Zy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiR29yYWIiLCJmYW1pbHlfbmFtZSI6IlJhdHVyaSIsImxvY2FsZSI6ImVuIn0.PEOxTfkRdDzPAwQbgye0OnwrQvYccocBNUn_YjR2v6CYXxRmAAlTqgLJeU-aTpqu1Oma6LnLYXSJsancsTYRgcOCmZeAT3M552kyK8uIGPbD8ky0i-b0RtIqjcsbDuTXzS8SyYe55p0N6JL2lmet6t_gvBe1trsIw7T3hE1cpmtUvSviN19OyRTXQ_yNWJ_v3XZydTfQja35o6OyeZfFaO82rUEhTe54OkkGKQV7D10gJ2RIRntL8y3L7Fw5oFTDTHI-3BsJ6hUKG7K7WPq4pfR6dY7T_8G-BPrLU53_qMqL0jUELyj7qqovDqwCA7hcz88Qusl4MtCLcE9f0zSZzQ')
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (30, N'manisha', N'test', N'manishatest88@gmail.com', N'hjhjhjkhkjh', CAST(N'1889-09-02 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'manisha', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (31, N'Todd', N'Ron', N'testname233@gmail.com', N'1234567898', CAST(N'1889-09-02 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'todd', 0, 2, NULL, NULL)
INSERT [dbo].[Users] ([ID], [FirstName], [LastName], [Email], [Phone], [DOB], [Password], [UserName], [IsActive], [RoleID], [ForgetPassword], [ProviderKey]) VALUES (32, N'hjh', N'jkj', N'jkjkj@fger.ol', N'89898989', CAST(N'2017-02-14 00:00:00.000' AS DateTime), N'fc0iUkg331qk3V8HY6MWvQ==', N'jjkj', 0, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[VehicleAmenties] ON 

INSERT [dbo].[VehicleAmenties] ([ID], [VehicleID], [AmentiesID], [IsActive]) VALUES (1, 1, 1, 1)
INSERT [dbo].[VehicleAmenties] ([ID], [VehicleID], [AmentiesID], [IsActive]) VALUES (2, 1, 2, 1)
SET IDENTITY_INSERT [dbo].[VehicleAmenties] OFF
SET IDENTITY_INSERT [dbo].[VehicleFeatures] ON 

INSERT [dbo].[VehicleFeatures] ([ID], [VehicleID], [FeatureID], [IsActive]) VALUES (3, 1, 3, 1)
INSERT [dbo].[VehicleFeatures] ([ID], [VehicleID], [FeatureID], [IsActive]) VALUES (4, 1, 4, 1)
INSERT [dbo].[VehicleFeatures] ([ID], [VehicleID], [FeatureID], [IsActive]) VALUES (8, 1, 1, 1)
INSERT [dbo].[VehicleFeatures] ([ID], [VehicleID], [FeatureID], [IsActive]) VALUES (9, 1, 6, 1)
INSERT [dbo].[VehicleFeatures] ([ID], [VehicleID], [FeatureID], [IsActive]) VALUES (11, 2, 2, 1)
INSERT [dbo].[VehicleFeatures] ([ID], [VehicleID], [FeatureID], [IsActive]) VALUES (12, 2, 1, 1)
INSERT [dbo].[VehicleFeatures] ([ID], [VehicleID], [FeatureID], [IsActive]) VALUES (13, 2, 4, 1)
INSERT [dbo].[VehicleFeatures] ([ID], [VehicleID], [FeatureID], [IsActive]) VALUES (16, 5, 1, 1)
SET IDENTITY_INSERT [dbo].[VehicleFeatures] OFF
SET IDENTITY_INSERT [dbo].[VehicleImages] ON 

INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (1, 1, N'/ProductImage/0f9ffdd1-4656-43c5-b6db-14006bfffa5abanner.jpg', 1, NULL, N'r7dr2pdxktisd9bimrpp')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (2, 2, N'/ProductImage/ef4cfcdb-18c8-4ec0-ae9d-b1edc862f8b41910.png', 1, N'https://www.youtube.com/watch?v=mb7V3yyfz7Q', N'r7dr2pdxktisd9bimrpp')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (4, 4, N'/ProductImage/32df163e-46ed-45f8-b4d3-19175c8c4a32banner.jpg', 1, N'https://www.youtube.com/watch?v=GKdr4Z1LBKY', N'r7dr2pdxktisd9bimrpp')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (5, 1, N'/ProductImage/32df163e-46ed-45f8-b4d3-19175c8c4a32banner.jpg', 1, N'https://www.youtube.com/watch?v=GKdr4Z1LBKY', N'r7dr2pdxktisd9bimrpp')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (6, 2, N'/ProductImage/32df163e-46ed-45f8-b4d3-19175c8c4a32banner.jpg', 1, N'https://www.youtube.com/watch?v=GKdr4Z1LBKY', N'r7dr2pdxktisd9bimrpp')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (7, 2, N'/ProductImage/3689-Jayco2017_Precept31UL_34Front_OceanBlue.png', 1, N'https://www.youtube.com/watch?v=z32Ffa0nV4Y', N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (8, 2, N'/ProductImage/3689-Jayco2017_Precept31UL_34Front_OceanBlue.png', 1, NULL, N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (9, 2, N'/ProductImage/32df163e-46ed-45f8-b4d3-19175c8c4a32banner.jpg', NULL, N'https://www.youtube.com/watch?v=z32Ffa0nV4Y', N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (10, 1, N'/ProductImage/86bda23d-3316-4a47-8e16-d2c7ba4dc8c4banner.jpg', 1, NULL, N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (11, 1, NULL, 1, NULL, N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (12, 2, N'/ProductImage/c0c24514-63ea-4b50-97d9-5cd73589704af2013101350Kirby.jpg', 1, N'https://www.facebook.com/TheTinyStories/videos/930544413718978/', N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (13, 1, N'/ProductImage/3c16ab0b-c260-4a56-9af6-8f7e08ef9dc4bannerbg1.jpg', 1, NULL, N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (14, 5, N'/ProductImage/efd1a078-74ba-4342-89f1-98a259614851banner.jpg', 1, NULL, N'gjmuwon17xuajc7zpozy')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (20, 9, N'/ProductImage/23e35919-4fc4-4798-8afe-862bbae734aeb77153bf-2330-4d15-8223-95e0c8f9b4bcbannerbg1.jpg', 1, NULL, N'xelmys0akjpdmjnmrhtm')
INSERT [dbo].[VehicleImages] ([ID], [VehicleID], [ImageUrl], [IsActive], [VideoUrl], [PublicKey]) VALUES (22, 3, N'/ProductImage/7209d492-eed9-4414-9c8d-b13524cab655bannerbg1.jpg', 1, NULL, N'w3hnc56ikxzjl7rdg1oh')
SET IDENTITY_INSERT [dbo].[VehicleImages] OFF
SET IDENTITY_INSERT [dbo].[VehicleRent] ON 

INSERT [dbo].[VehicleRent] ([ID], [TermID], [VehicleID], [Amount], [IsActive]) VALUES (1, 1, 1, 255, 1)
INSERT [dbo].[VehicleRent] ([ID], [TermID], [VehicleID], [Amount], [IsActive]) VALUES (2, 2, 1, 7500, 0)
INSERT [dbo].[VehicleRent] ([ID], [TermID], [VehicleID], [Amount], [IsActive]) VALUES (3, 1, 2, 258, 1)
INSERT [dbo].[VehicleRent] ([ID], [TermID], [VehicleID], [Amount], [IsActive]) VALUES (4, 1, 3, 259, 1)
INSERT [dbo].[VehicleRent] ([ID], [TermID], [VehicleID], [Amount], [IsActive]) VALUES (5, 1, 4, 282, 1)
INSERT [dbo].[VehicleRent] ([ID], [TermID], [VehicleID], [Amount], [IsActive]) VALUES (8, 1, 1, 444, 1)
SET IDENTITY_INSERT [dbo].[VehicleRent] OFF
SET IDENTITY_INSERT [dbo].[Vehicles] ON 

INSERT [dbo].[Vehicles] ([ID], [Title], [Description], [VehicleCode], [VehicleTypeID], [CategoryID], [BrandID], [ModelID], [Seats], [Sleeps], [YearBuilt], [Length], [Width], [IsFeatured], [IsActive], [CreatedOn], [UpdatedOn], [Longitude], [Latitude], [Location], [IsSaleable], [SalePrice]) VALUES (1, N'22’ Fleetwood Tioga class C motorhome', N'This class A motorhome can sleep up to 7 passengers. It has a big double bed in the slide-out to the rear, bunk beds in the larger slide-out, and an optional bed in the living area.  Nice features include 3 TVs and a DVD player.', N'RV 2', 1, 3, 1009, 7, 6, 8, 2014, N'22', N'12', 1, 1, CAST(N'2017-02-28 12:05:36.377' AS DateTime), CAST(N'2017-02-28 12:05:36.377' AS DateTime), N'72.82751083374023', N'18.946881619555448', NULL, 1, 26000)
INSERT [dbo].[Vehicles] ([ID], [Title], [Description], [VehicleCode], [VehicleTypeID], [CategoryID], [BrandID], [ModelID], [Seats], [Sleeps], [YearBuilt], [Length], [Width], [IsFeatured], [IsActive], [CreatedOn], [UpdatedOn], [Longitude], [Latitude], [Location], [IsSaleable], [SalePrice]) VALUES (2, N'Admiral class A sports coach rv', N'This class A motorhome can sleep up to 7 passengers. It has a big double bed in the slide-out to the rear, bunk beds in the larger slide-out, and an optional bed in the living area. Nice features include 3 TVs and a DVD player.', N'RV 4', 1, 1, 1002, 1, 6, 5, 2015, N'25', N'12', 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Vehicles] ([ID], [Title], [Description], [VehicleCode], [VehicleTypeID], [CategoryID], [BrandID], [ModelID], [Seats], [Sleeps], [YearBuilt], [Length], [Width], [IsFeatured], [IsActive], [CreatedOn], [UpdatedOn], [Longitude], [Latitude], [Location], [IsSaleable], [SalePrice]) VALUES (3, N'asa', NULL, N'RV 1', 1, 1, 1002, 1, 8, 12, 1989, N'22 ft', N'12', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Vehicles] ([ID], [Title], [Description], [VehicleCode], [VehicleTypeID], [CategoryID], [BrandID], [ModelID], [Seats], [Sleeps], [YearBuilt], [Length], [Width], [IsFeatured], [IsActive], [CreatedOn], [UpdatedOn], [Longitude], [Latitude], [Location], [IsSaleable], [SalePrice]) VALUES (4, N'The RV Hulk', NULL, N'22345', 1, 3, 1002, 1, 8, 8, 2016, N'13', N'15', 1, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Vehicles] ([ID], [Title], [Description], [VehicleCode], [VehicleTypeID], [CategoryID], [BrandID], [ModelID], [Seats], [Sleeps], [YearBuilt], [Length], [Width], [IsFeatured], [IsActive], [CreatedOn], [UpdatedOn], [Longitude], [Latitude], [Location], [IsSaleable], [SalePrice]) VALUES (5, N'Admiral class A sports coaaach rv', N'This class A motorhome can sleep up to 7 passengers. It has a big double bed in the slide-out to the rear, bunk beds in the larger slide-out, and an optional bed in the living area. Nice features include 3 TVs and a DVD player.', N'RV 4', 1, 1, 1002, 1, 6, 8, 2016, N'24', N'12', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 25000)
INSERT [dbo].[Vehicles] ([ID], [Title], [Description], [VehicleCode], [VehicleTypeID], [CategoryID], [BrandID], [ModelID], [Seats], [Sleeps], [YearBuilt], [Length], [Width], [IsFeatured], [IsActive], [CreatedOn], [UpdatedOn], [Longitude], [Latitude], [Location], [IsSaleable], [SalePrice]) VALUES (9, N'dsd', N'sdsd', N'v22', 1, 1, 1002, 1, 23, 36, 1585, N'25', N'25', 1, 1, CAST(N'2017-02-27 19:02:55.433' AS DateTime), CAST(N'2017-02-27 19:02:55.433' AS DateTime), N'56565', N'8989', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Vehicles] OFF
SET IDENTITY_INSERT [dbo].[VehicleTypes] ON 

INSERT [dbo].[VehicleTypes] ([ID], [Name], [IsActive]) VALUES (1, N'RV', NULL)
INSERT [dbo].[VehicleTypes] ([ID], [Name], [IsActive]) VALUES (2, N'Trailer', NULL)
INSERT [dbo].[VehicleTypes] ([ID], [Name], [IsActive]) VALUES (3, N'Van', NULL)
SET IDENTITY_INSERT [dbo].[VehicleTypes] OFF
SET IDENTITY_INSERT [dbo].[Widget] ON 

INSERT [dbo].[Widget] ([Id], [PageId], [WidgetId], [Text], [CreatedOn], [UpdatedOn], [IsDeleted]) VALUES (2, 1, N'Widget1', N'<h1>Lorem ipsum doller to set.</h1><p>Tinciduntfusce mauris porttitor hendreritphasellus natoque odio. At cum nunc enim vitaenunc, potenti suspendisse lobortisdonec netus. Viverra integer gravidaduis pharetra nisipellentesque. Phasellus congue eupraesent, egestasdonec vestibulum condimentum. Hac sem facilisimaecenas nisi. Et minulla quam maximus.</p><p>Semper integer urnavivamus enim. Quis eros faucibusmauris. Turpisnullam nostra lectus lacus tempusvestibulum, consectetur urnamorbi tempus facilisicurabitur praesent, ultricies ligula tortor congue, eufusce primis justo. Porttitor maximus proin, exsed montes hendreritphasellus maecenas, hendrerit venenatis maurisphasellus. Taciti torquent turpis eget tellusfusce, purusetiam idcras nullam ornare diamfusce. Imperdiet nullamaecenas ac dignissim. Lorem accumsan inceptos fames vehicula. Nislnam euismod auctor tempusmauris idsed, dapibusaliquam convalliscurabitur egetvestibulum musin.</p>', CAST(N'2017-02-24 17:49:58.670' AS DateTime), CAST(N'2017-02-24 18:51:01.810' AS DateTime), NULL)
INSERT [dbo].[Widget] ([Id], [PageId], [WidgetId], [Text], [CreatedOn], [UpdatedOn], [IsDeleted]) VALUES (3, 1, N'Widget2', N'<h1>Why Choose us.</h1><p>Loremfusce arcu purus torquent, risusaliquam minulla molestiecurabitur. Duivestibulum nisl sem urnamorbi exsed. Antephasellus maximus urnavivamus volutpatetiam posueremorbi..</p><ul><li>Lorem ispum doller to set conetain the veiw on the secet to improve the circuit the main concept.</li><li>Lorem ispum doller to set conetain the veiw on the secet to improve the circuit the main concept.</li><li>Lorem ispum doller to set conetain the veiw on the secet to improve the circuit the main concept.</li><li>Lorem ispum doller to set conetain the veiw on the secet to improve the circuit the main concept.</li><li>Lorem ispum doller to set conetain the veiw on the secet to improve the circuit the main concept.</li></ul>', CAST(N'2017-02-24 18:13:29.253' AS DateTime), CAST(N'2017-02-28 10:29:44.090' AS DateTime), NULL)
INSERT [dbo].[Widget] ([Id], [PageId], [WidgetId], [Text], [CreatedOn], [UpdatedOn], [IsDeleted]) VALUES (4, 2, N'Widget2', N'<p><strong>RV Deals and Policy</strong></p><p>Planning a Visit or a Vacation to the USA? Ace RV Rentals is now offering discounted “USA RV Rental Package“ for only €175/day to our European Visitors, to show our appreciation.</p><p>The USA RV rental package includes:</p><ul><li>Any RV rental from Ace RV.</li><li>Guest Pick up and Drop off service to and from Dulles International Airport or Reagan National Airport, DC</li><li>Free Local Calling</li></ul><h3>We are also offering a Full RV Data Package for an additional €175/week only, that includes unlimited data use and free local phone calls Mileage Packages are also available. Contact customer service for more information.<br>Note: Price does not include Taxes, Insurance and any other additional service charges. Offer expires March 31st 201 5 For more details please contact Customer service using our contact form , or simply call us on the following numbers:<br>Phone: 1-800-455-0144 | DC : (202) 739-1947 | VA (703) 944-6176 Para español: (571)-220-9779</h3>', CAST(N'2017-02-24 18:25:14.857' AS DateTime), CAST(N'2017-02-24 18:25:34.677' AS DateTime), NULL)
INSERT [dbo].[Widget] ([Id], [PageId], [WidgetId], [Text], [CreatedOn], [UpdatedOn], [IsDeleted]) VALUES (5, 2, N'Widget3', N'<p>Planning a Visit or a Vacation to the USA? Ace RV Rentals is now offering discounted “USA RV Rental Package“ for only €175/day to our European Visitors, to show our appreciation.</p><p>The USA RV rental package includes:</p><h3>We are also offering a Full RV Data Package for an additional €175/week only, that includes unlimited data use and free local phone calls Mileage Packages are also available. Contact customer service for more information.<br>Note: Price does not include Taxes, Insurance and any other additional service charges. Offer expires March 31st 201 5 For more details please contact Customer service using our contact form , or simply call us on the following numbers:<br>Phone: 1-800-455-0144 | DC : (202) 739-1947 | VA (703) 944-6176 Para español: (571)-220-9779</h3>', CAST(N'2017-02-24 18:25:16.620' AS DateTime), CAST(N'2017-02-24 18:25:32.873' AS DateTime), NULL)
INSERT [dbo].[Widget] ([Id], [PageId], [WidgetId], [Text], [CreatedOn], [UpdatedOn], [IsDeleted]) VALUES (6, 2, N'Widget1', N'<p>DIGITAL GOODS:  Lorem ipsum doller to set the main contauinrt to imp[rove the circuit to the main concentrate ti improve the cicutit. </p>', CAST(N'2017-02-24 18:25:17.717' AS DateTime), CAST(N'2017-02-24 18:25:36.170' AS DateTime), NULL)
INSERT [dbo].[Widget] ([Id], [PageId], [WidgetId], [Text], [CreatedOn], [UpdatedOn], [IsDeleted]) VALUES (7, 3, N'Widget1', N'<p>Term &amp; Condition</p><p>Lorem ispum doller to set the main course to improve the cicuit to invox the main page to imrpve the circuit the doller to set ipsum to contain the main course to imrpove the cciuit to yet the main course to imrpove the main course the main to imrve the main course to setimprove the cicuit to invox the main page to imrpve the circuit the doller to set ipsum to contain the main course to imrpove the cciuit to yet the main course to imrpove the main course the main to imrve.</p><p>Lorem ispum doller to set the main course to improve the cicuit to invox the main page to imrpve the circuit the doller to set ipsum to contain the main course to imrpove the cciuit to yet the main courseimprove the cicuit to invox the main page to imrpve the circuit the doller to set ipsum to contain the main course to imrpove the cciuit to yet the main course to imrpove the main course the main to imrve</p><ul><li>Doller to set the main content to improve the cicuit to set.</li><li>Ipsum to set the main content to improve the cicuit to set.</li><li>Tollent to set the main content to improve the cicuit to set.</li><li>Ipsum to set the main content to improve the cicuit to set.</li><li>Main to set the main content to improve the cicuit to set.</li></ul><p><strong>CONTENT TO LOREM IPSUM</strong></p><p>Lorem ispum doller to set the main course to improve the cicuit to invox the main page to imrpve the circuit the doller to set ipsum to contain the main course to imrpove the cciuit to yet the main course to imrpove the main course the main to imrve the main course to setimprove the cicuit to invox the main page to imrpve the circuit the doller to set ipsum to contain the main course to imrpove the cciuit to yet the main course to imrpove the main course the main to imrve.</p><p>Lorem ispum doller to set the main course to improve the cicuit to invox the main page to imrpve the circuit the doller to set ipsum to contain the main course to imrpove the cciuit to yet the main courseimprove the cicuit to invox the main page to imrpve the circuit the doller to set ipsum to contain the main course to imrpove the cciuit to yet the main course to imrpove the main course the main to imrve</p>', CAST(N'2017-02-24 18:27:30.123' AS DateTime), CAST(N'2017-02-24 18:30:36.537' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Widget] OFF
SET IDENTITY_INSERT [dbo].[Wishlist] ON 

INSERT [dbo].[Wishlist] ([Id], [Userid], [Vehicleid], [Createdon], [Updatedon], [isactive]) VALUES (8, 1, 2, CAST(N'2017-02-24 09:06:48.990' AS DateTime), CAST(N'2017-02-24 09:06:48.990' AS DateTime), 1)
INSERT [dbo].[Wishlist] ([Id], [Userid], [Vehicleid], [Createdon], [Updatedon], [isactive]) VALUES (14, 1, 3, CAST(N'2017-02-27 19:45:08.570' AS DateTime), CAST(N'2017-02-27 19:45:08.570' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Wishlist] OFF
SET IDENTITY_INSERT [VehicleSale].[Newsletter] ON 

INSERT [VehicleSale].[Newsletter] ([Id], [Email], [isactive], [createdon], [updatedon]) VALUES (1, N'ramandeepsingh@gmail.com', 0, CAST(N'2017-02-21 15:47:20.737' AS DateTime), CAST(N'2017-02-21 15:48:19.943' AS DateTime))
INSERT [VehicleSale].[Newsletter] ([Id], [Email], [isactive], [createdon], [updatedon]) VALUES (2, N'rmnsingh41@gmail.com', 1, CAST(N'2017-02-21 15:52:02.907' AS DateTime), CAST(N'2017-02-21 15:52:03.060' AS DateTime))
SET IDENTITY_INSERT [VehicleSale].[Newsletter] OFF
SET IDENTITY_INSERT [VehicleSale].[OfferMaster] ON 

INSERT [VehicleSale].[OfferMaster] ([ID], [VehicleID], [NoOfNights], [Location], [ValidUntillDate], [PickUp], [ReturnDate], [OfferPrice], [DownPaymentPercentage], [IsActive]) VALUES (1, 2, 12, N'US-98042 Covington', CAST(N'2017-05-30 00:00:00.000' AS DateTime), CAST(N'2017-05-02 00:00:00.000' AS DateTime), CAST(N'2017-05-14 00:00:00.000' AS DateTime), 2300, 15, 1)
INSERT [VehicleSale].[OfferMaster] ([ID], [VehicleID], [NoOfNights], [Location], [ValidUntillDate], [PickUp], [ReturnDate], [OfferPrice], [DownPaymentPercentage], [IsActive]) VALUES (6, 1, 2, N'india', CAST(N'2006-02-21 00:00:00.000' AS DateTime), CAST(N'2002-01-02 00:00:00.000' AS DateTime), CAST(N'2017-02-12 00:00:00.000' AS DateTime), 11, 11, 1)
SET IDENTITY_INSERT [VehicleSale].[OfferMaster] OFF
SET IDENTITY_INSERT [VehicleSale].[Roles] ON 

INSERT [VehicleSale].[Roles] ([ID], [RoleName]) VALUES (1, N'Admin')
INSERT [VehicleSale].[Roles] ([ID], [RoleName]) VALUES (2, N'User')
SET IDENTITY_INSERT [VehicleSale].[Roles] OFF
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_VehicleTypes] FOREIGN KEY([VehicleTypeID])
REFERENCES [dbo].[VehicleTypes] ([ID])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_VehicleTypes]
GO
ALTER TABLE [dbo].[FeaturesMaster]  WITH CHECK ADD  CONSTRAINT [FK_FeaturesMaster_AmentiesMaster] FOREIGN KEY([AmentiesID])
REFERENCES [dbo].[AmentiesMaster] ([ID])
GO
ALTER TABLE [dbo].[FeaturesMaster] CHECK CONSTRAINT [FK_FeaturesMaster_AmentiesMaster]
GO
ALTER TABLE [dbo].[UploadFiles]  WITH CHECK ADD  CONSTRAINT [FK_UploadFiles_Folders] FOREIGN KEY([FolderId])
REFERENCES [dbo].[Folders] ([Id])
GO
ALTER TABLE [dbo].[UploadFiles] CHECK CONSTRAINT [FK_UploadFiles_Folders]
GO
ALTER TABLE [dbo].[VehicleAmenties]  WITH CHECK ADD  CONSTRAINT [FK_VehicleAmenties_AmentiesMaster] FOREIGN KEY([AmentiesID])
REFERENCES [dbo].[AmentiesMaster] ([ID])
GO
ALTER TABLE [dbo].[VehicleAmenties] CHECK CONSTRAINT [FK_VehicleAmenties_AmentiesMaster]
GO
ALTER TABLE [dbo].[VehicleAmenties]  WITH CHECK ADD  CONSTRAINT [FK_VehicleAmenties_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([ID])
GO
ALTER TABLE [dbo].[VehicleAmenties] CHECK CONSTRAINT [FK_VehicleAmenties_Vehicles]
GO
ALTER TABLE [dbo].[VehicleFeatures]  WITH CHECK ADD  CONSTRAINT [FK_VehicleFeatures_FeaturesMaster] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[FeaturesMaster] ([ID])
GO
ALTER TABLE [dbo].[VehicleFeatures] CHECK CONSTRAINT [FK_VehicleFeatures_FeaturesMaster]
GO
ALTER TABLE [dbo].[VehicleFeatures]  WITH CHECK ADD  CONSTRAINT [FK_VehicleFeatures_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([ID])
GO
ALTER TABLE [dbo].[VehicleFeatures] CHECK CONSTRAINT [FK_VehicleFeatures_Vehicles]
GO
ALTER TABLE [dbo].[VehicleImages]  WITH CHECK ADD  CONSTRAINT [FK_VehicleImages_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([ID])
GO
ALTER TABLE [dbo].[VehicleImages] CHECK CONSTRAINT [FK_VehicleImages_Vehicles]
GO
ALTER TABLE [dbo].[VehicleRent]  WITH CHECK ADD  CONSTRAINT [FK_VehicleRent_RentTerms] FOREIGN KEY([TermID])
REFERENCES [dbo].[RentTerms] ([ID])
GO
ALTER TABLE [dbo].[VehicleRent] CHECK CONSTRAINT [FK_VehicleRent_RentTerms]
GO
ALTER TABLE [dbo].[VehicleRent]  WITH CHECK ADD  CONSTRAINT [FK_VehicleRent_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([ID])
GO
ALTER TABLE [dbo].[VehicleRent] CHECK CONSTRAINT [FK_VehicleRent_Vehicles]
GO
ALTER TABLE [dbo].[VehicleRentleConditions]  WITH CHECK ADD  CONSTRAINT [FK_VehicleRentleConditions_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([ID])
GO
ALTER TABLE [dbo].[VehicleRentleConditions] CHECK CONSTRAINT [FK_VehicleRentleConditions_Vehicles]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Brands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([ID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Brands]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Categories]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Models]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_VehicleTypes] FOREIGN KEY([VehicleTypeID])
REFERENCES [dbo].[VehicleTypes] ([ID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_VehicleTypes]
GO
ALTER TABLE [dbo].[Widget]  WITH CHECK ADD  CONSTRAINT [FK_Widget_Page] FOREIGN KEY([PageId])
REFERENCES [dbo].[Page] ([Id])
GO
ALTER TABLE [dbo].[Widget] CHECK CONSTRAINT [FK_Widget_Page]
GO
ALTER TABLE [VehicleSale].[OfferMaster]  WITH CHECK ADD  CONSTRAINT [FK_OfferMaster_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([ID])
GO
ALTER TABLE [VehicleSale].[OfferMaster] CHECK CONSTRAINT [FK_OfferMaster_Vehicles]
GO
-- Test changes