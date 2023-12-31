USE [MusicOnlineProject]
GO
/****** Object:  Table [dbo].[pmoAddCart]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoAddCart](
	[IdAddCart] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[CountAddCart] [int] NULL,
	[IdProductShop] [int] NULL,
	[NameProductShop] [nvarchar](255) NULL,
	[SumPrice] [decimal](18, 0) NULL,
	[PriceProduct] [decimal](18, 0) NULL,
	[ImageProductShop] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAddCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoArtists]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoArtists](
	[IdArtists] [int] IDENTITY(1,1) NOT NULL,
	[NameArtists] [nvarchar](255) NULL,
	[DateTimeCreate] [datetime] NULL,
	[ImageArtists] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArtists] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoBanner]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoBanner](
	[idBanner] [int] IDENTITY(1,1) NOT NULL,
	[imageBanner] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoBrandShop]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoBrandShop](
	[IdBrandShop] [int] IDENTITY(1,1) NOT NULL,
	[NameBrandShop] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBrandShop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoCateGory]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoCateGory](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[NameCategory] [nvarchar](255) NULL,
	[DateTimeCreate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoCategoryShop]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoCategoryShop](
	[IdCategoryShop] [int] IDENTITY(1,1) NOT NULL,
	[NameCategoryShop] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoryShop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoItemCategoryShop]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoItemCategoryShop](
	[IdItemCategoryShop] [int] IDENTITY(1,1) NOT NULL,
	[NameItemCategoryShop] [nvarchar](255) NULL,
	[IdCategoryShop] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdItemCategoryShop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoLyricMusic]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoLyricMusic](
	[IdLyricMusic] [int] IDENTITY(1,1) NOT NULL,
	[LyricMusic] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLyricMusic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoMessage]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoMessage](
	[IdMessage] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[IdUserSend] [int] NULL,
	[IdUserReceive] [int] NULL,
	[TextChatMessage] [nvarchar](max) NULL,
	[TimeChatMessage] [nvarchar](max) NULL,
	[IsChatMessage] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMessage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoMusic]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoMusic](
	[IdMusic] [int] IDENTITY(1,1) NOT NULL,
	[NameMusic] [nvarchar](50) NULL,
	[DescribeMusic] [nvarchar](max) NULL,
	[IdLyricMusic] [int] NULL,
	[ImageMusic] [text] NULL,
	[AudioMusic] [text] NULL,
	[IdCategory] [int] NULL,
	[IdArtists] [int] NULL,
	[TopMusic] [int] NULL,
	[DateTimeCreate] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[IsNew] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMusic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoMyFriendUser]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoMyFriendUser](
	[IdMyFriendUser] [int] IDENTITY(1,1) NOT NULL,
	[IdUserSend] [int] NULL,
	[IdUserReceive] [int] NULL,
	[IsMyFriendUser] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMyFriendUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoPay]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoPay](
	[IdPay] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[IdProductString] [varchar](255) NULL,
	[CountProductString] [varchar](255) NULL,
	[CountCart] [int] NULL,
	[TotalPay] [decimal](18, 0) NULL,
	[ActionPay] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoProductShop]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoProductShop](
	[IdProductShop] [int] IDENTITY(1,1) NOT NULL,
	[NameProductShop] [nvarchar](255) NULL,
	[IdBrandShop] [int] NULL,
	[IdItemCategoryShop] [int] NULL,
	[NewProductShop] [bit] NULL,
	[PriceProductShop] [decimal](18, 0) NULL,
	[ImageProductShop] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProductShop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pmoUser]    Script Date: 10/4/2023 7:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pmoUser](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[AccountUser] [varchar](max) NULL,
	[AccountPass] [varchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[IsAdmin] [bit] NULL,
	[IsBan] [bit] NULL,
	[UserImage] [text] NULL,
	[SDTUser] [int] NULL,
	[TimeCreate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pmoAddCart] ON 

INSERT [dbo].[pmoAddCart] ([IdAddCart], [IdUser], [CountAddCart], [IdProductShop], [NameProductShop], [SumPrice], [PriceProduct], [ImageProductShop]) VALUES (11, 2, 10, 2, N'Bàn phím DareU EK87V2 Black Red Switch', CAST(150 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)), N'3_600e887b30294ce9b2431e328d25539f_master.jpg')
INSERT [dbo].[pmoAddCart] ([IdAddCart], [IdUser], [CountAddCart], [IdProductShop], [NameProductShop], [SumPrice], [PriceProduct], [ImageProductShop]) VALUES (12, 2, 5, 6, N'Bàn phím MonsGeek M1 QMK Black AKKO Switch v3 Cream Yellow Pro', CAST(50 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)), N'9_b6d68a66f26f4e3e910b66e215e2ffb9_master.jpg')
INSERT [dbo].[pmoAddCart] ([IdAddCart], [IdUser], [CountAddCart], [IdProductShop], [NameProductShop], [SumPrice], [PriceProduct], [ImageProductShop]) VALUES (13, 1, 10000, 3, N'Tai nghe Chụp Tai Gaming Rapoo VH510 7.1', CAST(250000 AS Decimal(18, 0)), CAST(25 AS Decimal(18, 0)), N'tai-nghe-chup-tai-gaming-71-rapoo-vh510-den-2-org.jpg')
SET IDENTITY_INSERT [dbo].[pmoAddCart] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoArtists] ON 

INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (1, N'Trung Dio', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'trungdio.jpg')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (2, N'Sơn Tùng MTP', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'somtungMTP.jpg')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (3, N'Lê Bảo Bình', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'lebaobinh.jpg')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (4, N'Hồ Quang Hiếu', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'hoquanghieu.jpg')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (5, N'Phát Hồ', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'phatho.png')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (6, N'H2K', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'h2k.jpg')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (7, N'Masew', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'Masew.png')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (8, N'Trịnh Đình Quang', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'TrinhDinhQuang.jpg')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (9, N'Mr. Siro', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'MrSiro.jpg')
INSERT [dbo].[pmoArtists] ([IdArtists], [NameArtists], [DateTimeCreate], [ImageArtists]) VALUES (10, N'Tama', CAST(N'2023-08-23T22:03:06.357' AS DateTime), N'Tama.png')
SET IDENTITY_INSERT [dbo].[pmoArtists] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoBanner] ON 

INSERT [dbo].[pmoBanner] ([idBanner], [imageBanner]) VALUES (1, N'banner1.png')
SET IDENTITY_INSERT [dbo].[pmoBanner] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoBrandShop] ON 

INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (1, N'Sennheiser')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (2, N'JBL')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (3, N'Sony')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (4, N'Bose')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (5, N'Skullcandy')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (6, N'Audio-Technica')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (7, N'Beats by Dre')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (8, N'AKG Acoustics')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (9, N'Beyerdynamic')
INSERT [dbo].[pmoBrandShop] ([IdBrandShop], [NameBrandShop]) VALUES (10, N'Bang & Olufsen')
SET IDENTITY_INSERT [dbo].[pmoBrandShop] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoCateGory] ON 

INSERT [dbo].[pmoCateGory] ([IdCategory], [NameCategory], [DateTimeCreate]) VALUES (1, N'Remix', CAST(N'2023-08-21T22:51:18.247' AS DateTime))
INSERT [dbo].[pmoCateGory] ([IdCategory], [NameCategory], [DateTimeCreate]) VALUES (2, N'Lofi', CAST(N'2023-08-21T22:51:18.247' AS DateTime))
SET IDENTITY_INSERT [dbo].[pmoCateGory] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoCategoryShop] ON 

INSERT [dbo].[pmoCategoryShop] ([IdCategoryShop], [NameCategoryShop]) VALUES (1, N'Tai nghe')
INSERT [dbo].[pmoCategoryShop] ([IdCategoryShop], [NameCategoryShop]) VALUES (2, N'Bàn phím')
INSERT [dbo].[pmoCategoryShop] ([IdCategoryShop], [NameCategoryShop]) VALUES (3, N'Chuột')
INSERT [dbo].[pmoCategoryShop] ([IdCategoryShop], [NameCategoryShop]) VALUES (4, N'Tai nghe')
SET IDENTITY_INSERT [dbo].[pmoCategoryShop] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoItemCategoryShop] ON 

INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (1, N'Tai nghe có dây TypeC', 1)
INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (2, N'Tai nghe có dây Iphone', 1)
INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (3, N'Tai nghe có dây chụp tai', 1)
INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (4, N'Tai nghe không dây', 1)
INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (5, N'Tai nghe không dây chụp tai', 1)
INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (6, N'Bàn phím có dây', 2)
INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (7, N'Bàn phím không dây', 2)
INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (8, N'Chuột không dây', 3)
INSERT [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop], [NameItemCategoryShop], [IdCategoryShop]) VALUES (9, N'Chuột có dây', 3)
SET IDENTITY_INSERT [dbo].[pmoItemCategoryShop] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoLyricMusic] ON 

INSERT [dbo].[pmoLyricMusic] ([IdLyricMusic], [LyricMusic]) VALUES (1, N'Quá vội vàng lời nói gấm nhung lụa... Lỡ tin người em bước đi về nơi xa Thế gian tình người phũ lắm em ơi Nếu em buồn hãy nhớ anh chờ nơi đây, Cơn gió chiều, thoáng đưa mùi hương ai Tan lát lòng khiến anh ngỡ lại Tháng năm dài người đã sống bên ai Thôi chấp nhận em đúng anh là sai. Đk : Cnh lòng trong anh lại nhớ, một thời phải bơ vơ Một chiều dài nên thơ, chắc giờ em có nhớ Tình duyên ta như giọt nước, nhỏ giọt vậy mà thấm lâu Đời này hai ta đậm sâu lỡ mai em tìm đâu Từ giờ em chẳng phải khóc Vì mọi chuyện buồn đã qua và giờ e bên người ta sẽ có niềm vui mới Và giờ anh đã sai, hạnh phúc a nhường lại Chỉ mong em, vui bên tình duyên mới.')
INSERT [dbo].[pmoLyricMusic] ([IdLyricMusic], [LyricMusic]) VALUES (2, N'—Melody Phát Hồ:

Từng là hơi ấm bên đời...giờ là cơn gió ngang trời....

Mọi người xung quanh thay nhau cho tôi biết, Cô Thắm không về nữa đâu!

Đặt trọn niềm tin sai người...giờ này ai khóc ai cười...

Thề hẹn làm chi...để rồi bỏ đi...

Tôi cố đem tình vun đắp mây hoá ngang trời che lấp 

Tôi vẫn nơi này, đợi chờ cô về với tôi

Là vì tôi quá ngốc nghếch 

Hay là do gia cảnh tôi nghèo 

Gốc đa chỉ còn mình tôi ngồi nhìn trăng lên 

Bao nhiêu kí ức 1 thời...giờ thành cay đắng 1 đời

Nhà cao xe sang, váy cưới lộng lẫy sớm tối có người đón đưa

Hình dung theo gió mây ngàn...ngồi ôm thương nhớ bẻ bàng 

Phận đời ngang trái...giờ biết nói cùng với ai!

Dẫu biết phận mình cay đắng...nhưng cớ sao lòng vẫn buồn 

Làm phu..làm thuê...làm sao, mơ cho được ngọc ngà 

Cô Thắm ngày nào bên tôi..nay khuất xa dần mất rồi 

Đành thôi...tôi phải quên 

—Rap JokeS Bii:
 
Tôi còn nhớ ngày cô đi, mưa lâm râm nặng hạt

Cô vội trao chiếc nhẫn cỏ, gương mặt cô lạnh nhạt

Thề hẹn xưa nay còn đâu, khi tôi đã không còn cạnh cô

Áo gấm lụa đào, cô cất bước đi giữa chốn phù phiếm nơi thành đô

Cô Thắm ơi! Mỗi 1 ngày thiếu điều, tôi nhớ cô lắm

Ánh đèn vàng, thành phố xa hoa đã cướp mất đi cô Thắm

Túp lều tranh, nay chỉ lẻ bóng đơn điệu trong đó 1 trái tim

Chỉ biết đợi chờ cô về, trong nổi tuyệt vọng bóng ai dưới mái hiên

Tui lau! Giọt nước mắt, sau còn động 2 hàng mi

Đã bao lần, tui nắm lấy thứ tình cảm phai tàn đi

Con sông xưa, mà vẫn khúc Bồi, giờ đây lòng người chỉ Lỡ

Sao nỡ quên đi, thứ ân tình xưa là cả 1 đời tui ghi nhớ

Chờ cô về, chờ chiếc hôn, chờ 1 vòng tay ấm áp

Chờ cô nói: “ Cô nhớ tui “ chỉ là câu nói thấm thoát

Câu hỏi đó, nợ tình duyên, liệu cô có trả lời?

Cô bắt tui chờ, và chờ bao giờ hay tui phải chờ đến chờ đến cả đời

—Melody Phát Hồ:

Từng là hơi ấm bên đời...giờ là cơn gió ngang trời....

Mọi người xung quanh thay nhau cho tôi biết, Cô Thắm không về nữa đâu

Đặt trọn niềm tin sai người...giờ này ai khóc ai cười...

Thề hẹn làm chi...để rồi bỏ đi


Bao nhiêu kí ức 1 thời...giờ thành cay đắng 1 đời

Nhà cao xe sang, váy cưới lộng lẫy sớm tối có người đón đưa

Hình dung theo gió mây ngàn...ngồi ôm thương nhớ bẻ bàng 

Phận đời ngang trái...Giờ biết nói cùng với ai!

—Rap Sinike:

Một tiểu thư đài các, cô không còn là Cô Thắm xưa

Nơi đô thành tấp nập, cuộc sống cô giờ êm ấm chưa?

Sao buồn vương trên mắt, sao đôi lần khóc ướt mi 

Tôi vẫn luôn dõi theo từ cái ngày cô bước đi

Cô xa nơi mái chèo bến sông nhỏ ta thường qua 

Cô xa nơi đồng cỏ mái tranh nghèo cạnh vườn hoa 

Ánh trăng kia còn đợi, nhưng bóng người giờ nơi đâu 

Tôi chỉ biết mượn hơi men, tâm sự cùng trăng cho vơi sầu.')
INSERT [dbo].[pmoLyricMusic] ([IdLyricMusic], [LyricMusic]) VALUES (3, N'Khi bên anh em thấy điều chi
Khi bên anh em thấy điều gì
Nước mắt rơi gần kề làn mi
Chẳng còn những giây phút
Chẳng còn những ân tình
Gió mang em rời xa nơi đây
Khi xa anh em nhớ về ai
Khi xa anh em nhớ một người
Chắc không phải một người như anh
Người từng làm em khóc
Người từng khiến em buồn
Buông bàn tay
Rời xa lặng thinh bước đi
 
[Chorus]
Hạt mưa rơi bủa vây trái tim hiu quạnh
Ngàn yêu thương vụt tan bỗng xa
Người từng nói ở bên cạnh anh mỗi khi anh buồn
Cớ sao giờ lời nói kia như gió bay
Đừng bỏ rơi bàn tay ấy bơ vơ mà
Một mình anh lặng im chốn đây
Yêu em âm thầm bên em

[Rap]
Yêu thương không còn nơi đây
Mang tình buồn theo mây
Cơn mơ về
Mong manh câu thề
Tan trôi qua mau quên đi phút giây
Mưa rơi trên đôi mi qua lối vắng
Ánh sáng mờ buông lơi Làn khói trắng
Bóng dáng em, nụ cười ngày hôm qua
Kí ức có ngủ quên chìm trong màn sương đắng
Anh nhớ giọt nước mắt sâu lắng
Anh nhớ nỗi buồn của em ngày không nắng

[Chorus]
Hạt mưa rơi bủa vây trái tim hiu quạnh
Ngàn yêu thương vụt tan bỗng xa
Người từng nói ở bên cạnh anh mỗi khi anh buồn
Cớ sao giờ lời nói kia như gió bay
Đừng bỏ rơi bàn tay ấy bơ vơ mà
Cầm bông hoa chờ mong nhớ thương
Làm sao quên người ơi, tình anh mãi như hôm nào
Vẫn yêu người và vẫn mong em về đây

[Coda]
Giọt nước mắt tại sao cứ lăn rơi hoài
Ở bên anh chỉ có đớn đau
Thì anh xin nhận hết ngàn đau đớn để thấy em cười
Dẫu biết rằng người đến không như giấc mơ
Yêu em âm thầm bên em
Thì anh xin nhận hết ngàn đau đớn để thấy em cười
Dẫu biết rằng người đến không như giấc mơ
Yêu em âm thầm bên em')
INSERT [dbo].[pmoLyricMusic] ([IdLyricMusic], [LyricMusic]) VALUES (4, N'')
SET IDENTITY_INSERT [dbo].[pmoLyricMusic] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoMessage] ON 

INSERT [dbo].[pmoMessage] ([IdMessage], [IdUser], [IdUserSend], [IdUserReceive], [TextChatMessage], [TimeChatMessage], [IsChatMessage]) VALUES (20, 1, 1, 4, N'hi', N'09/29 1:30 AM', 1)
INSERT [dbo].[pmoMessage] ([IdMessage], [IdUser], [IdUserSend], [IdUserReceive], [TextChatMessage], [TimeChatMessage], [IsChatMessage]) VALUES (21, 1, 1, 4, N'alo', N'09/29 1:30 AM', 1)
INSERT [dbo].[pmoMessage] ([IdMessage], [IdUser], [IdUserSend], [IdUserReceive], [TextChatMessage], [TimeChatMessage], [IsChatMessage]) VALUES (22, 4, 4, 1, N'alo men', N'09/29 1:30 AM', 1)
INSERT [dbo].[pmoMessage] ([IdMessage], [IdUser], [IdUserSend], [IdUserReceive], [TextChatMessage], [TimeChatMessage], [IsChatMessage]) VALUES (34, 1, 1, 2, N'1', N'10/03 9:18 PM', 1)
INSERT [dbo].[pmoMessage] ([IdMessage], [IdUser], [IdUserSend], [IdUserReceive], [TextChatMessage], [TimeChatMessage], [IsChatMessage]) VALUES (35, 1, 1, 2, N'1', N'10/03 9:39 PM', 1)
INSERT [dbo].[pmoMessage] ([IdMessage], [IdUser], [IdUserSend], [IdUserReceive], [TextChatMessage], [TimeChatMessage], [IsChatMessage]) VALUES (36, 1, 1, 2, N'1', N'10/03 9:41 PM', 1)
INSERT [dbo].[pmoMessage] ([IdMessage], [IdUser], [IdUserSend], [IdUserReceive], [TextChatMessage], [TimeChatMessage], [IsChatMessage]) VALUES (37, 1, 1, 2, N'Hoàng', N'10/03 9:43 PM', 1)
INSERT [dbo].[pmoMessage] ([IdMessage], [IdUser], [IdUserSend], [IdUserReceive], [TextChatMessage], [TimeChatMessage], [IsChatMessage]) VALUES (39, 1, 1, 2, N'123', N'10/03 9:45 PM', 1)
SET IDENTITY_INSERT [dbo].[pmoMessage] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoMusic] ON 

INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (1, N'LỤY TÌNH (AIR REMIX)', N'Lụy Tình (AIR Remix) - Trung Dio x Tú GG ♫ Chạnh Lòng Trong Anh Lại Nhớ Một Thời Phải Bơ Vơ Remix', 1, N'imageLuytinh.png', N'luytinhremix.mp3', 1, 1, 534, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 0)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (2, N'Cô Thắm Không Về Remix', N'Cô Thắm Không Về (DinhLong Remix) - Phát Hồ x JokeS Bii x Sinike', 2, N'imageCothamkhongVe.png', N'cothamkhongve.mp3', 1, 5, 500, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 1)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (3, N'Âm Thầm Bên Em', N'Âm Thầm Bên Em (Lofi Ver.) - Sơn Tùng M-TP', 3, N'imageAmThamBenEm.png', N'amthambenem.mp3', 2, 2, 534, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 0)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (4, N'EM CỦA NGÀY HÔM QUA', N'Em Của Ngày Hôm Qua - Sơn Tùng M-TP', 4, N'imageEmCuaNgayHomQua.png', N'emcuangayhomqua.mp3', 1, 2, 490, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 1)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (5, N'Bước Qua Đời Nhau', N'Bước Qua Đời Nhau - Lê Bảo Bình', 4, N'imageBuocQuaDoiNhau.jpg', N'BuocQuaDoiNhau.mp3', 2, 3, 480, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 0)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (6, N'Ngã Tư Đường', N'Ngã Tư Đường - Hồ Quang Hiếu', 4, N'imageNgaTuDuong.png', N'ngaTuDuong.mp3', 2, 4, 470, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 0)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (7, N'Đổi Thay Remix', N'Đổi Thay - Hồ Quang Hiếu Remix', 4, N'imageDoiThay.png', N'doiThayRemix.mp3', 1, 4, 460, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 1)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (8, N'Túy Âm', N'Túy Âm - Xesi x Masew x Nhatnguyen', 4, N'imageTuyAm.png', N'tuyam.mp3', 1, 7, 450, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 1)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (9, N'Thất Tình', N'Thất Tình Remake - Trịnh Đình Quang', 4, N'imageThatTinh.jpg', N'thattinh.mp3', 2, 8, 440, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 0)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (10, N'Một Bước Yêu, Vạn Dặm Đau', N'Một Bước Yêu, Vạn Dặm Đau (Lyrics Video) - Mr. Siro', 4, N'imageMotBuocVanDamDau.jpg', N'motBuocYeuVanDamDau.mp3', 2, 9, 430, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 1)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (11, N'Ngày Em Đẹp Nhất', N'Ngày Em Đẹp Nhất - TAMA', 4, N'imageNgayEmDepNhat.png', N'ngayEmDepNhat.mp3', 2, 10, 420, CAST(N'2023-09-12T22:00:47.623' AS DateTime), 0, 0)
INSERT [dbo].[pmoMusic] ([IdMusic], [NameMusic], [DescribeMusic], [IdLyricMusic], [ImageMusic], [AudioMusic], [IdCategory], [IdArtists], [TopMusic], [DateTimeCreate], [IsDelete], [IsNew]) VALUES (12, N'Độ Tộc 2', N'FROM MIXI WITH LOVE - MASEW x PHÚC DU x PHÁO x ĐỘ MIXI', 4, N'do-toc-21-450x251.png', N'dotoc2.mp3', 1, 7, 1, CAST(N'2023-09-12T22:04:23.030' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[pmoMusic] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoMyFriendUser] ON 

INSERT [dbo].[pmoMyFriendUser] ([IdMyFriendUser], [IdUserSend], [IdUserReceive], [IsMyFriendUser]) VALUES (1, 2, 1, 0)
INSERT [dbo].[pmoMyFriendUser] ([IdMyFriendUser], [IdUserSend], [IdUserReceive], [IsMyFriendUser]) VALUES (3, 1, 2, 0)
SET IDENTITY_INSERT [dbo].[pmoMyFriendUser] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoPay] ON 

INSERT [dbo].[pmoPay] ([IdPay], [IdUser], [IdProductString], [CountProductString], [CountCart], [TotalPay], [ActionPay]) VALUES (7, 1, N' 1', N' 4', 4, CAST(48 AS Decimal(18, 0)), 1)
INSERT [dbo].[pmoPay] ([IdPay], [IdUser], [IdProductString], [CountProductString], [CountCart], [TotalPay], [ActionPay]) VALUES (8, 1, N' 1 3', N' 4 1', 5, CAST(73 AS Decimal(18, 0)), 2)
INSERT [dbo].[pmoPay] ([IdPay], [IdUser], [IdProductString], [CountProductString], [CountCart], [TotalPay], [ActionPay]) VALUES (9, 1, N' 1 3', N' 4 1', 5, CAST(73 AS Decimal(18, 0)), 0)
INSERT [dbo].[pmoPay] ([IdPay], [IdUser], [IdProductString], [CountProductString], [CountCart], [TotalPay], [ActionPay]) VALUES (10, 1, N' 3', N' 10000', 10000, CAST(250000 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[pmoPay] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoProductShop] ON 

INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (1, N'Tai nghe Bluetooth Chụp Tai HAVIT H661BT', 2, 3, 0, CAST(12 AS Decimal(18, 0)), N'tai-nghe-bluetooth-chup-tai-havit-h661bt-2.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (2, N'Bàn phím DareU EK87V2 Black Red Switch', 2, 6, 0, CAST(15 AS Decimal(18, 0)), N'3_600e887b30294ce9b2431e328d25539f_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (3, N'Tai nghe Chụp Tai Gaming Rapoo VH510 7.1', 2, 3, 0, CAST(25 AS Decimal(18, 0)), N'tai-nghe-chup-tai-gaming-71-rapoo-vh510-den-2-org.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (4, N'Bàn Phím Bluetooth Logitech K380 Black', 2, 7, 1, CAST(42 AS Decimal(18, 0)), N'hinh-7_9e1e1d0f2ba947ad88cac67c231d9c85_20e93779ff444df492bf46f12b2e0a92_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (5, N'Chuột Corsair DarkCore RGB Pro SE Wireless', 2, 8, 0, CAST(9 AS Decimal(18, 0)), N'chuot-corsair-dark-core-rgb-pro-se-2_b4ad81f8b21f46c9b5db3afbf5d262da_cf96a661d3cc46d1bcca3ae76cd81a8b_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (6, N'Bàn phím MonsGeek M1 QMK Black AKKO Switch v3 Cream Yellow Pro', 2, 3, 1, CAST(10 AS Decimal(18, 0)), N'9_b6d68a66f26f4e3e910b66e215e2ffb9_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (7, N'Chuột Logitech B100 USB', 2, 9, 0, CAST(17 AS Decimal(18, 0)), N'75_6848_chu____t_logitech_b100_usb_3.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (8, N'Bàn phím cơ DareU EK1280 V2 RGB Blue Switch', 2, 6, 0, CAST(12 AS Decimal(18, 0)), N'1_0d4a2050d6db4288b293167c2f4dd1af_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (9, N'CHUỘT CÓ DÂY M100r', 2, 9, 0, CAST(14 AS Decimal(18, 0)), N'm100r-midnight-black-gallery-1.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (10, N'Tai nghe Chụp Tai Mozard IP-878', 6, 3, 1, CAST(22 AS Decimal(18, 0)), N'tai-nghe-chup-tai-mozard-ip-878-den-reu-xam-1-org.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (11, N'Chuột Corsair Harpoon Wireless (CH-9311011-AP)', 2, 8, 0, CAST(25 AS Decimal(18, 0)), N'harpoonwireless1-gearvn_1a2540a5dcfa4ad9838c490ee10cebe1_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (12, N'Chuột quang có dây Genius DX-110 trắng', 2, 9, 0, CAST(31 AS Decimal(18, 0)), N'chuot-quang-co-day-genius-dx110-trang-5o63vh.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (13, N'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20 ', 2, 4, 0, CAST(27 AS Decimal(18, 0)), N'tai-nghe-bluetooth-true-wireless-ava-freego-a20-den-1.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (14, N'Bàn phím cơ AKKO 3108 v2 DS Horizon Akko Switch V3 Cream Yellow', 2, 6, 0, CAST(18 AS Decimal(18, 0)), N'6_5b341e8aba8443ef91ee2b5705e9bd17_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (15, N'Chuột quang có dây Genius DX-110 xanh da trời', 2, 3, 0, CAST(15 AS Decimal(18, 0)), N'chuot-quang-co-day-genius-dx110-xanh-da-troi-J12FV3.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (16, N'Chuột Asus Rog Gladius III Wireless Aimpoint White', 2, 8, 1, CAST(19 AS Decimal(18, 0)), N'rog-gladius-iii-aimpoint-white-01_95c5b080e2754ec9a4fdffa4647a97f2_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (17, N'Bàn phím cơ AKKO 5075B Plus Naruto Akko Crystal Switch', 2, 7, 0, CAST(20 AS Decimal(18, 0)), N'bp-akko-5075b-plus-naruto_49492aaefc984d7baf8ddd9b97bd9a27_f2b1d5cbc0354e20af54cda0a95dce71_master.jpg')
INSERT [dbo].[pmoProductShop] ([IdProductShop], [NameProductShop], [IdBrandShop], [IdItemCategoryShop], [NewProductShop], [PriceProductShop], [ImageProductShop]) VALUES (18, N'Chuột có dây Logitech G102 LIGHTSYNC RGB White', 2, 9, 1, CAST(16 AS Decimal(18, 0)), N'chuot-quang-co-dayvh.jpg')
SET IDENTITY_INSERT [dbo].[pmoProductShop] OFF
GO
SET IDENTITY_INSERT [dbo].[pmoUser] ON 

INSERT [dbo].[pmoUser] ([IdUser], [AccountUser], [AccountPass], [UserName], [IsAdmin], [IsBan], [UserImage], [SDTUser], [TimeCreate]) VALUES (1, N'admin', N'admin', N'Nguyễn Thanh Tùng', 1, 0, N'anhdaidien.jpg', 836818595, CAST(N'2023-09-26T16:48:01.547' AS DateTime))
INSERT [dbo].[pmoUser] ([IdUser], [AccountUser], [AccountPass], [UserName], [IsAdmin], [IsBan], [UserImage], [SDTUser], [TimeCreate]) VALUES (2, N'vanA', N'123', N'Nguyễn Văn A', 0, 0, N'do-toc-21-450x251.png', 836818591, CAST(N'2023-09-27T16:24:48.167' AS DateTime))
INSERT [dbo].[pmoUser] ([IdUser], [AccountUser], [AccountPass], [UserName], [IsAdmin], [IsBan], [UserImage], [SDTUser], [TimeCreate]) VALUES (3, N'vanB', N'123', N'Nguyễn Văn B', 0, 1, N'MrSiro.jpg', 836818592, CAST(N'2023-09-27T20:14:19.360' AS DateTime))
INSERT [dbo].[pmoUser] ([IdUser], [AccountUser], [AccountPass], [UserName], [IsAdmin], [IsBan], [UserImage], [SDTUser], [TimeCreate]) VALUES (4, N'vanC', N'123', N'Nguyễn Văn C', 0, 0, N'ho-quang-hieu.jpg', 836818593, CAST(N'2023-09-27T17:14:28.707' AS DateTime))
INSERT [dbo].[pmoUser] ([IdUser], [AccountUser], [AccountPass], [UserName], [IsAdmin], [IsBan], [UserImage], [SDTUser], [TimeCreate]) VALUES (5, N'vanD', N'123', N'Nguyễn Văn D', 0, 0, N'trungdio.jpg', 836818594, CAST(N'2023-09-27T20:14:32.510' AS DateTime))
INSERT [dbo].[pmoUser] ([IdUser], [AccountUser], [AccountPass], [UserName], [IsAdmin], [IsBan], [UserImage], [SDTUser], [TimeCreate]) VALUES (6, N'vanE', N'123', N'Nguyễn Văn E', 0, 0, N'phatho.png', 836818596, CAST(N'2023-09-27T20:14:47.447' AS DateTime))
INSERT [dbo].[pmoUser] ([IdUser], [AccountUser], [AccountPass], [UserName], [IsAdmin], [IsBan], [UserImage], [SDTUser], [TimeCreate]) VALUES (7, N'vanF', N'123', N'Nguyễn Văn F', 0, 0, N'son-tung-m-tp.jpg', 836818597, CAST(N'2023-09-27T20:14:58.957' AS DateTime))
INSERT [dbo].[pmoUser] ([IdUser], [AccountUser], [AccountPass], [UserName], [IsAdmin], [IsBan], [UserImage], [SDTUser], [TimeCreate]) VALUES (8, N'nguyenthanhtung.06112003@gmail.com', N'123', N'Thanh Tung', 0, 0, N'imageUserdefaul.png', 123456789, CAST(N'2023-09-29T15:52:35.200' AS DateTime))
SET IDENTITY_INSERT [dbo].[pmoUser] OFF
GO
ALTER TABLE [dbo].[pmoAddCart]  WITH CHECK ADD  CONSTRAINT [FK_pmoAddCart_pmoProductShop] FOREIGN KEY([IdProductShop])
REFERENCES [dbo].[pmoProductShop] ([IdProductShop])
GO
ALTER TABLE [dbo].[pmoAddCart] CHECK CONSTRAINT [FK_pmoAddCart_pmoProductShop]
GO
ALTER TABLE [dbo].[pmoAddCart]  WITH CHECK ADD  CONSTRAINT [FK_pmoAddCart_pmoUser] FOREIGN KEY([IdUser])
REFERENCES [dbo].[pmoUser] ([IdUser])
GO
ALTER TABLE [dbo].[pmoAddCart] CHECK CONSTRAINT [FK_pmoAddCart_pmoUser]
GO
ALTER TABLE [dbo].[pmoItemCategoryShop]  WITH CHECK ADD  CONSTRAINT [FK_pmoItemCategoryShop_pmoCategoryShop] FOREIGN KEY([IdCategoryShop])
REFERENCES [dbo].[pmoCategoryShop] ([IdCategoryShop])
GO
ALTER TABLE [dbo].[pmoItemCategoryShop] CHECK CONSTRAINT [FK_pmoItemCategoryShop_pmoCategoryShop]
GO
ALTER TABLE [dbo].[pmoMessage]  WITH CHECK ADD  CONSTRAINT [FK_pmoMessage_pmoUser] FOREIGN KEY([IdUser])
REFERENCES [dbo].[pmoUser] ([IdUser])
GO
ALTER TABLE [dbo].[pmoMessage] CHECK CONSTRAINT [FK_pmoMessage_pmoUser]
GO
ALTER TABLE [dbo].[pmoMusic]  WITH CHECK ADD  CONSTRAINT [FK_pmoMusic_pmoArtists] FOREIGN KEY([IdArtists])
REFERENCES [dbo].[pmoArtists] ([IdArtists])
GO
ALTER TABLE [dbo].[pmoMusic] CHECK CONSTRAINT [FK_pmoMusic_pmoArtists]
GO
ALTER TABLE [dbo].[pmoMusic]  WITH CHECK ADD  CONSTRAINT [FK_pmoMusic_pmoCateGory] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[pmoCateGory] ([IdCategory])
GO
ALTER TABLE [dbo].[pmoMusic] CHECK CONSTRAINT [FK_pmoMusic_pmoCateGory]
GO
ALTER TABLE [dbo].[pmoMusic]  WITH CHECK ADD  CONSTRAINT [FK_pmoMusic_pmoLyricMusic] FOREIGN KEY([IdLyricMusic])
REFERENCES [dbo].[pmoLyricMusic] ([IdLyricMusic])
GO
ALTER TABLE [dbo].[pmoMusic] CHECK CONSTRAINT [FK_pmoMusic_pmoLyricMusic]
GO
ALTER TABLE [dbo].[pmoPay]  WITH CHECK ADD  CONSTRAINT [FK_pmoPay_pmoUser] FOREIGN KEY([IdUser])
REFERENCES [dbo].[pmoUser] ([IdUser])
GO
ALTER TABLE [dbo].[pmoPay] CHECK CONSTRAINT [FK_pmoPay_pmoUser]
GO
ALTER TABLE [dbo].[pmoProductShop]  WITH CHECK ADD  CONSTRAINT [FK_pmoProductShop_pmoBrandShop] FOREIGN KEY([IdBrandShop])
REFERENCES [dbo].[pmoBrandShop] ([IdBrandShop])
GO
ALTER TABLE [dbo].[pmoProductShop] CHECK CONSTRAINT [FK_pmoProductShop_pmoBrandShop]
GO
ALTER TABLE [dbo].[pmoProductShop]  WITH CHECK ADD  CONSTRAINT [FK_pmoProductShop_pmoItemCategoryShop] FOREIGN KEY([IdItemCategoryShop])
REFERENCES [dbo].[pmoItemCategoryShop] ([IdItemCategoryShop])
GO
ALTER TABLE [dbo].[pmoProductShop] CHECK CONSTRAINT [FK_pmoProductShop_pmoItemCategoryShop]
GO
