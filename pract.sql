USE [master]
GO
/****** Object:  Database [PRACT]    Script Date: 04.07.2018 17:32:42 ******/
CREATE DATABASE [PRACT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRACT', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PRACT.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PRACT_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PRACT_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PRACT] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRACT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRACT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRACT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRACT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRACT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRACT] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRACT] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRACT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PRACT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRACT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRACT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRACT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRACT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRACT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRACT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRACT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRACT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRACT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRACT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRACT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRACT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRACT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRACT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRACT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRACT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRACT] SET  MULTI_USER 
GO
ALTER DATABASE [PRACT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRACT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRACT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRACT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
/****** Object:  Login [ЛЯЛЕЧКА\User]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [ЛЯЛЕЧКА\User] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Vasya]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [Vasya] WITH PASSWORD=N'+ØÅ@«çNiÛ`6·#c6}2HÐºMß"', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [Vasya] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [user3]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [user3] WITH PASSWORD=N'FkØh^bÈÈÛg°Ôçå®êu½ ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [user3] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [user2]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [user2] WITH PASSWORD=N'àçÅ±@Íb<¶êSï=x®·i)[÷è"4Î', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [user2] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [user1]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [user1] WITH PASSWORD=N'ìêüM;ú0Á·ËÃîÆº)ýCÞ ¹·»ÚÄ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [user1] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [reader1]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [reader1] WITH PASSWORD=N'ÉU9b×+èhépÚÀÕ¤ùÖ`¼rkåµàì', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [reader1] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Olya]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [Olya] WITH PASSWORD=N'jéG_HN	Eò»Hó©H×''éhvrÅÉÿ½r', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [Olya] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский]
GO
/****** Object:  Login [NT AUTHORITY\СИСТЕМА]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [NT AUTHORITY\СИСТЕМА] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Morozov]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [Morozov] WITH PASSWORD=N',»4Ù.ºk$2q`åï*ô	=ÍÄÇ¦WyZR7vD', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Morozov] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [MMM]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [MMM] WITH PASSWORD=N'T ÞØÅ3ªX=n¢£Sþ£±ÇÆåØGæ*Ê', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [MMM] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [librarian1]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [librarian1] WITH PASSWORD=N'×ZzÕ>ÚÜ´/=|âr8ðÐ£ Ù=Æ]Q', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [librarian1] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Ivan]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [Ivan] WITH PASSWORD=N'N ·Rl@ÕÃy°Y}xaõJ-~à¬m^J#®', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Ivan] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Elena]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [Elena] WITH PASSWORD=N'¸§$ñ¦âAnÎ¸ãÊkÍÓ2l>¡ÿBáËvÛö¹ß ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [Elena] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [director1]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [director1] WITH PASSWORD=N'N%iOèv?Z^áP®ñj¼XÈø·øK}M', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [director1] DISABLE
GO
/****** Object:  Login [BUILTIN\Пользователи]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [BUILTIN\Пользователи] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Anna]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [Anna] WITH PASSWORD=N'Å ¶þcvjpèÂ¶ÊûãÕ_\©DÅun)bÍ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Anna] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Andrew]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [Andrew] WITH PASSWORD=N'Ð´¾NW.-Ó°û )lÇ+
©L-~Ü¥T¾Ø', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Andrew] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Alex]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [Alex] WITH PASSWORD=N'ÔÏv£yÇÔÉ±|h¯«"Ûî¸g»ûÃ/C', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [Alex] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [administrator1]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [administrator1] WITH PASSWORD=N'?ô(ðMbEÈ×$R|Ö«*Q¨ÕØøE\', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [administrator1] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N';¢&ò8"R¤ÒÍ°±4¹ÎúÄ2 ³ºY&D¼l»S0', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 04.07.2018 17:32:42 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'tØË>º+%)í¡rèíî7ü¡Y®Ëï*Z¹2', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ЛЯЛЕЧКА\User]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
USE [PRACT]
GO
/****** Object:  User [user3]    Script Date: 04.07.2018 17:32:43 ******/
CREATE USER [user3] FOR LOGIN [user3] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user2]    Script Date: 04.07.2018 17:32:43 ******/
CREATE USER [user2] FOR LOGIN [user2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user1]    Script Date: 04.07.2018 17:32:43 ******/
CREATE USER [user1] FOR LOGIN [user1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [users]    Script Date: 04.07.2018 17:32:43 ******/
CREATE ROLE [users]
GO
ALTER ROLE [users] ADD MEMBER [user3]
GO
ALTER ROLE [users] ADD MEMBER [user2]
GO
ALTER ROLE [users] ADD MEMBER [user1]
GO
GRANT CONNECT TO [user1] AS [dbo]
GO
GRANT CONNECT TO [user2] AS [dbo]
GO
GRANT CONNECT TO [user3] AS [dbo]
GO
/****** Object:  Table [dbo].[lots]    Script Date: 04.07.2018 17:32:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lots](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [text] NULL,
	[start_price] [numeric](22, 2) NULL,
	[final_price] [numeric](22, 2) NULL,
	[date_end_registration] [datetime] NULL,
	[date_end_first_parts_review] [datetime] NULL,
	[date_begin_auction] [datetime] NULL,
	[date_end_auction] [datetime] NULL,
	[date_end_second_parts_review] [datetime] NULL,
	[status] [int] NULL,
	[number] [int] NOT NULL,
	[actual] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 04.07.2018 17:32:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[login_user] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[login_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users_lots]    Script Date: 04.07.2018 17:32:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users_lots](
	[user_lot] [int] IDENTITY(1,1) NOT NULL,
	[user_login] [char](20) NOT NULL,
	[lot_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_lot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unique_lot] UNIQUE NONCLUSTERED 
(
	[lot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[view_user]    Script Date: 04.07.2018 17:32:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_user]
AS SELECT U.login_user, L.subject, L.start_price, L.date_end_first_parts_review, L.date_end_second_parts_review, L.date_begin_auction, L.date_end_auction, L.final_price, L.actual, L.number, L.status, UL.lot_id
FROM users AS U
JOIN users_lots AS UL ON U.login_user = UL.user_login
JOIN lots AS L ON UL.lot_id = L.id
WHERE U.login_user = SYSTEM_USER


GO
GRANT SELECT ON [dbo].[view_user] TO [user1] AS [dbo]
GO
GRANT SELECT ON [dbo].[view_user] TO [users] AS [dbo]
GO
ALTER TABLE [dbo].[lots] ADD  DEFAULT ((1)) FOR [number]
GO
ALTER TABLE [dbo].[lots] ADD  DEFAULT ((1)) FOR [actual]
GO
ALTER TABLE [dbo].[users_lots]  WITH CHECK ADD FOREIGN KEY([lot_id])
REFERENCES [dbo].[lots] ([id])
GO
ALTER TABLE [dbo].[users_lots]  WITH CHECK ADD FOREIGN KEY([user_login])
REFERENCES [dbo].[users] ([login_user])
GO
USE [master]
GO
ALTER DATABASE [PRACT] SET  READ_WRITE 
GO
