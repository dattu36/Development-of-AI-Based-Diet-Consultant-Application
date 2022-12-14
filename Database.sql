USE [master]
GO
/****** Object:  Database [Diet]    Script Date: 2017/01/09 07:17:23 PM ******/
CREATE DATABASE [Diet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Diet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Diet.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Diet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Diet_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Diet] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Diet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Diet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Diet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Diet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Diet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Diet] SET ARITHABORT OFF 
GO
ALTER DATABASE [Diet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Diet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Diet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Diet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Diet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Diet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Diet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Diet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Diet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Diet] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Diet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Diet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Diet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Diet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Diet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Diet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Diet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Diet] SET RECOVERY FULL 
GO
ALTER DATABASE [Diet] SET  MULTI_USER 
GO
ALTER DATABASE [Diet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Diet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Diet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Diet] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Diet] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Diet', N'ON'
GO
USE [Diet]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2017/01/09 07:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cust]    Script Date: 2017/01/09 07:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cust](
	[Id] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[Disease] [varchar](200) NULL,
	[FType] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DietChart]    Script Date: 2017/01/09 07:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DietChart](
	[Item] [varchar](50) NULL,
	[Protine] [varchar](50) NULL,
	[Carbo] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Veg] [varchar](50) NULL,
	[PCat] [varchar](50) NULL,
	[CCat] [varchar](50) NULL,
	[Cat] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dietitian]    Script Date: 2017/01/09 07:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dietitian](
	[Name] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DietPlan]    Script Date: 2017/01/09 07:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DietPlan](
	[Uid] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[FoodItem] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[Note] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DietRequest]    Script Date: 2017/01/09 07:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DietRequest](
	[Uid] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mob] [varchar](50) NULL,
	[Disease] [varchar](50) NULL,
	[Ftype] [varchar](50) NULL,
	[Date] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2017/01/09 07:17:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[Uid] [varchar](50) NULL,
	[Msg] [varchar](max) NULL,
	[DateTime] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([ID], [Pass]) VALUES (N'Admin', N'Admin')
INSERT [dbo].[Cust] ([Id], [Name], [Address], [Email], [Mobile], [Pass], [Disease], [FType]) VALUES (N'1001', N'Amish', N'Goregoan', N'vora@gmail.com', N'9076613215', N'1234', NULL, N'Veg')
INSERT [dbo].[Cust] ([Id], [Name], [Address], [Email], [Mobile], [Pass], [Disease], [FType]) VALUES (N'1002', N'Hardik', N'Mumbai', N'testemail@gmail.com', N'9876543210', N'1234', N'Diabetes,Blood Pressure', N'Non-Veg')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Fruits / Fruit Juice', N'1', N'14', N'B', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Bread Butter', N'0', N'50', N'B', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Poha', N'6', N'46', N'B', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Eggs', N'13', N'2', N'B', N'No', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Milk ', N'12', N'5', N'B', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Soymilk', N'15', N'6', N'B', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Roti 4', N'4', N'22', N'L', N'Yes', N'M', N'M', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Sabzi (Any except Potato)', N'20', N'30', N'L', N'Yeg', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Potato sabzi', N'10', N'35', N'L', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Roated Chicken', N'25', N'0', N'L', N'No', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Dal (Any)', N'27', N'15', N'L', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Rise (Half Catori)', N'20', N'50', N'L', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Rise (1 Catori )', N'40', N'100', N'L', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Salad', N'20', N'10', N'L', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Curd', N'10', N'30', N'L', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Veg Salad / Fruit Salad', N'20', N'20', N'S', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Dal Kichidi ', N'30', N'20', N'D', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Roti 4', N'4', N'22', N'D', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Sabzi', N'20', N'30', N'D', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Roti 5', N'4', N'22', N'L', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Roti 2', N'40', N'22', N'D', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Dahi-Sabzi', N'20', N'35', N'D', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Veg Salad / Fruit Salad', N'20', N'20', N'S', N'Yes', N'H', N'H', N'O')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Dal (Any)', N'27', N'15', N'L', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[DietChart] ([Item], [Protine], [Carbo], [Type], [Veg], [PCat], [CCat], [Cat]) VALUES (N'Salad', N'20', N'10', N'L', N'Yes', N'L', N'M', N'N/U')
INSERT [dbo].[Dietitian] ([Name], [Phone], [Email], [Gender], [Pass]) VALUES (N'TestDietitian', N'9876543210', N'testemail@gmail.com', N'Male', N'1234')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Breakfast', N'Toast', N'09:00', N'Have toast dip with tea')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Breakfast', N'Bread-Butter', N'09:00', N'Toast the bread with butter')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Lunch', N'Chapati', N'13:00', N'Have two')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Lunch', N'Bhaaji', N'13:00', N'Any Bhaaji')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Lunch', N'Daal', N'13:00', N'Avoid tadka on daal')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Lunch', N'Rice', N'13:00', N'')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Evening Snacks', N'Corn Flakes', N'17:00', N'Boiled Corns')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Evening Snacks', N'Biscuit', N'17:00', N'Eat wheat biscuits')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Dinner', N'Chapati', N'20:00', N'1 Chapati')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Dinner', N'Bhaaji', N'20:00', N'Eat Sprouts Bhaaji like Matki, Green Peas, etc.')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Dinner', N'Daal', N'20:00', N'Avoid tadka on daal')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1001', N'Dinner', N'Rice', N'20:00', N'')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Breakfast', N'Biscuits', N'09:30', N'NutriChoice Diet Biscuits')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Breakfast', N'Tea', N'09:30', N'Less Sugar')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Lunch', N'Chapati', N'13:30', N'2 Chapaties')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Lunch', N'Bhaaji', N'13:30', N'Any Bhaaji')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Lunch', N'Daal', N'13:30', N'')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Lunch', N'Rice', N'13:30', N'')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Evening Snacks', N'Idli', N'17:30', N'3-4 Idli')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Evening Snacks', N'Tea', N'17:30', N'Less Sugar')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Dinner', N'Chapati', N'20:30', N'')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Dinner', N'Bhaaji', N'20:30', N'Any Bhaaji')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Dinner', N'Daal', N'20:30', N'')
INSERT [dbo].[DietPlan] ([Uid], [Type], [FoodItem], [Time], [Note]) VALUES (N'1002', N'Dinner', N'Rice', N'20:30', N'')
INSERT [dbo].[DietRequest] ([Uid], [Name], [Email], [Mob], [Disease], [Ftype], [Date]) VALUES (N'1002', N'Hardik', N'testemail@gmail.com', N'9876543210', N'Diabetes,Blood Pressure', N'Non-Veg', N'2017-01-09 16:13')
INSERT [dbo].[DietRequest] ([Uid], [Name], [Email], [Mob], [Disease], [Ftype], [Date]) VALUES (N'1001', N'Amish', N'vora@gmail.com', N'9076613215', N'', N'Veg', N'2017-01-09 18:57')
USE [master]
GO
ALTER DATABASE [Diet] SET  READ_WRITE 
GO
