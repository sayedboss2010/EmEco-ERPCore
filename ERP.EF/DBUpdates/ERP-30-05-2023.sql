USE [master]
GO
/****** Object:  Database [ERP]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE DATABASE [ERP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ERP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ERP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ERP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ERP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ERP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ERP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ERP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ERP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ERP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ERP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ERP] SET ARITHABORT OFF 
GO
ALTER DATABASE [ERP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ERP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ERP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ERP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ERP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ERP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ERP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ERP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ERP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ERP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ERP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ERP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ERP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ERP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ERP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ERP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ERP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ERP] SET RECOVERY FULL 
GO
ALTER DATABASE [ERP] SET  MULTI_USER 
GO
ALTER DATABASE [ERP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ERP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ERP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ERP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ERP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ERP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ERP', N'ON'
GO
ALTER DATABASE [ERP] SET QUERY_STORE = OFF
GO
USE [ERP]
GO
/****** Object:  User [new]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE USER [new] FOR LOGIN [new] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [new]
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[A__User_Login_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[A__User_Login_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Company_Details_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[GR_Company_Details_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Company_Master_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[GR_Company_Master_SEQ] 
 AS [int]
 START WITH 2
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Item_Categoriy_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[GR_Item_Categoriy_SEQ] 
 AS [int]
 START WITH 18
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Item_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[GR_Item_SEQ] 
 AS [int]
 START WITH 54
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Item_Units_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[GR_Item_Units_SEQ] 
 AS [tinyint]
 START WITH 2
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Supplier_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[GR_Supplier_SEQ] 
 AS [int]
 START WITH 7
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_SystemCode_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[GR_SystemCode_SEQ] 
 AS [int]
 START WITH 6
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_SystemCodeType_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[GR_SystemCodeType_SEQ] 
 AS [int]
 START WITH 3
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Branch_Department_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Branch_Department_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Branches_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Branches_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Companies_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Companies_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Countries_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Countries_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Degrees_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Degrees_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Departments_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Departments_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_EmpFunctionalDegree_History_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_EmpFunctionalDegree_History_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_EmpJob_History_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_EmpJob_History_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employee_Attendance_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employee_Attendance_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employee_Errands_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employee_Errands_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employee_Leaves_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employee_Leaves_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employee_Nationality_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employee_Nationality_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employee_Permission_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employee_Permission_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employee_Qualifications_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employee_Qualifications_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employee_Shifts_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employee_Shifts_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employee_Skills_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employee_Skills_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Employees_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Employees_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Errands_Places_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Errands_Places_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_ErrandsTypes_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_ErrandsTypes_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Faculty_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Faculty_SEQ] 
 AS [smallint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 32767
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Formal_Holidays_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Formal_Holidays_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Functional_Degree_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Functional_Degree_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Identity_Types_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Identity_Types_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Jobs_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Jobs_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_LeaveTypes_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_LeaveTypes_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Machine_IP_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Machine_IP_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_MachineMoves_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_MachineMoves_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_PermissionTypes_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_PermissionTypes_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Qualifications_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Qualifications_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_ShiftTypes_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_ShiftTypes_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Skills_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Skills_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Univercity_Faculty_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Univercity_Faculty_SEQ] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Univercity_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[HR_Univercity_SEQ] 
 AS [tinyint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_Group_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PR_Group_SEQ] 
 AS [int]
 START WITH 11
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_GroupModuleMenu_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PR_GroupModuleMenu_SEQ] 
 AS [int]
 START WITH 1024
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_Menu_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PR_Menu_SEQ] 
 AS [int]
 START WITH 19
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_Module_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PR_Module_SEQ] 
 AS [int]
 START WITH 2
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_User_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PR_User_SEQ] 
 AS [int]
 START WITH 6
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_UserGroup_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PR_UserGroup_SEQ] 
 AS [int]
 START WITH 65
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[Project_Data_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[Project_Data_SEQ] 
 AS [bigint]
 START WITH 20
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PU_Purchases_Suppliers_Items_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PU_Purchases_Suppliers_Items_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PU_Supplier_Item_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PU_Supplier_Item_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PU_Supplier_Quote_Detail_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PU_Supplier_Quote_Detail_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PU_Supplier_Quote_Master_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[PU_Supplier_Quote_Master_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[ST_Stock_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[ST_Stock_SEQ] 
 AS [int]
 START WITH 2
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[ST_Store_Items_Stock_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[ST_Store_Items_Stock_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[Tender_Project_Item_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[Tender_Project_Item_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[Tender_Project_Master_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[Tender_Project_Master_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[Tender_Project_Supplier_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[Tender_Project_Supplier_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[UserType_SEQ]    Script Date: 5/30/2023 1:49:17 PM ******/
CREATE SEQUENCE [dbo].[UserType_SEQ] 
 AS [int]
 START WITH 5
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
/****** Object:  Table [dbo].[A__User_Login]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A__User_Login](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[User_Id] [smallint] NOT NULL,
	[Login_Date] [datetime] NOT NULL,
	[LogOut_Date] [datetime] NULL,
	[AccessToken] [varchar](100) NOT NULL,
 CONSTRAINT [PK_A_User_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Company_Details]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Company_Details](
	[ID] [int] NOT NULL,
	[GR_Company_Master_ID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](200) NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
 CONSTRAINT [PK_GR_Company_Details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Company_Master]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Company_Master](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CEO_Name] [nvarchar](100) NULL,
	[CEO_Email] [nvarchar](100) NULL,
	[CEO_Mobile] [nvarchar](11) NULL,
	[CEO_Tele] [nvarchar](20) NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[Email] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Main_GR_Company_ID] [int] NULL,
 CONSTRAINT [PK_GR_Company_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Item]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Item](
	[ID] [int] NOT NULL,
	[ItemCatID] [int] NULL,
	[Unit_ID] [tinyint] NULL,
	[ItemName] [nvarchar](200) NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_ITEMS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Item_Categoriy]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Item_Categoriy](
	[ID] [int] NOT NULL,
	[Cat_Name] [nvarchar](200) NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_ITMSCATEGORIES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Item_Units]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Item_Units](
	[ID] [tinyint] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Convert_To_Main_Unit] [float] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Supplier]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Supplier](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](200) NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[Supplier_Type_ID] [int] NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_SystemCode]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_SystemCode](
	[Id] [int] NOT NULL,
	[ValueName] [nvarchar](150) NULL,
	[ValueNameEN] [nvarchar](150) NULL,
	[SystemCodeTypeId] [int] NULL,
	[Value] [tinyint] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SystemCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_SystemCodeType]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_SystemCodeType](
	[Id] [int] NOT NULL,
	[TableName] [nvarchar](100) NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_SystemCodeType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Branch_Department]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Branch_Department](
	[ID] [int] NOT NULL,
	[Branch_ID] [int] NULL,
	[Department_ID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Branch_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Branches]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Branches](
	[ID] [int] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[Company_ID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Branches] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Companies]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Companies](
	[ID] [int] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[Country_ID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Countries]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Countries](
	[ID] [int] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Degrees]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Degrees](
	[ID] [tinyint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Degrees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Departments]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Departments](
	[ID] [int] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_EmpFunctionalDegree_History]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_EmpFunctionalDegree_History](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[Functional_Degree_ID] [tinyint] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_EmpFunctionalDegree_History] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_EmpJob_History]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_EmpJob_History](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[BranchDept_ID] [int] NULL,
	[Job_ID] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_EmpJob_History] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Attendance]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Attendance](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[Machine_ID] [tinyint] NULL,
	[MoveCode_ID] [tinyint] NULL,
	[ModeDate] [date] NULL,
	[MoveTime] [time](7) NULL,
 CONSTRAINT [PK_Employee_Attendance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Errands]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Errands](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[ErrandType_ID] [tinyint] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[ErrandPlace_ID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Employee_Errands] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Leaves]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Leaves](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[LeaveType_ID] [tinyint] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Reason] [nvarchar](300) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Employee_Leaves] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Nationality]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Nationality](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[Nationality_ID] [int] NOT NULL,
	[Identity_Type_ID] [tinyint] NULL,
	[Identity_Number] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Employee_Nationality] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Permission]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Permission](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[PermissionType_ID] [tinyint] NULL,
	[PermissionDate] [date] NULL,
	[FromTime] [time](7) NULL,
	[ToTime] [time](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Employee_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Qualifications]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Qualifications](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[Qualification_ID] [int] NULL,
	[Qualification_Date] [date] NULL,
	[Qualification_Degree] [tinyint] NULL,
	[Univercity_Faculty_ID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Employee_Qualifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Shifts]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Shifts](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[ShiftType_ID] [tinyint] NULL,
	[ShiftDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Employee_Shifts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Skills]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Skills](
	[ID] [bigint] NOT NULL,
	[Employee_ID] [bigint] NULL,
	[Skill_ID] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Employee_Skills] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employees]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employees](
	[ID] [bigint] NOT NULL,
	[EmpCode] [bigint] NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[Address_AR] [nvarchar](100) NULL,
	[Address_EN] [varchar](100) NULL,
	[PhoneNumber] [numeric](11, 0) NULL,
	[Email] [varchar](50) NULL,
	[Birthdate] [date] NULL,
	[HireDate] [date] NULL,
	[CurrentJob_ID] [int] NULL,
	[CurrentBranchDept_ID] [int] NULL,
	[CurrentFunctional_Degree_ID] [tinyint] NULL,
	[IsManager] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Errands_Places]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Errands_Places](
	[ID] [int] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[Address_AR] [nvarchar](100) NULL,
	[Address_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Errands_Places] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_ErrandsTypes]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_ErrandsTypes](
	[ID] [tinyint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_ErrandsTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Faculty]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Faculty](
	[ID] [smallint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Formal_Holidays]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Formal_Holidays](
	[ID] [int] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[Date] [date] NULL,
	[Year] [numeric](4, 0) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Formal_Holidays] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Functional_Degree]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Functional_Degree](
	[ID] [tinyint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Functional_Degree] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Identity_Types]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Identity_Types](
	[ID] [tinyint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Identity_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Jobs]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Jobs](
	[ID] [int] NOT NULL,
	[Title_AR] [nvarchar](100) NULL,
	[Title_EN] [varchar](100) NULL,
	[MinSalary] [money] NULL,
	[MaxSalary] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_LeaveTypes]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_LeaveTypes](
	[ID] [tinyint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_LeaveTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Machine_IP]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Machine_IP](
	[ID] [tinyint] NOT NULL,
	[MachineName_AR] [nvarchar](50) NULL,
	[MachineName_EN] [varchar](50) NULL,
	[MachineIP] [varchar](50) NULL,
	[Branch_ID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Machine_IP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_MachineMoves]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_MachineMoves](
	[ID] [tinyint] NOT NULL,
	[MoveName_AR] [nvarchar](50) NULL,
	[MoveName_EN] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_MachineMoves] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_PermissionTypes]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_PermissionTypes](
	[ID] [tinyint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_PermissionTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Qualifications]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Qualifications](
	[ID] [int] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Qualifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_ShiftTypes]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_ShiftTypes](
	[ID] [tinyint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_ShiftTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Skills]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Skills](
	[ID] [bigint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Univercity]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Univercity](
	[ID] [tinyint] NOT NULL,
	[Name_AR] [nvarchar](100) NULL,
	[Name_EN] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Univercity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Univercity_Faculty]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Univercity_Faculty](
	[ID] [int] NOT NULL,
	[Univercity_ID] [tinyint] NULL,
	[Faculty_ID] [smallint] NULL,
	[IsActive] [bit] NOT NULL,
	[Created_UserId] [int] NULL,
	[Created_Date] [date] NULL,
	[Updated_UserId] [int] NULL,
	[Updated_Date] [date] NULL,
	[Deleted_UserId] [int] NULL,
	[Deleted_Date] [date] NULL,
 CONSTRAINT [PK_Univercity_Faculty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_Group]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_Group](
	[Id] [int] NOT NULL,
	[GroupName] [nvarchar](150) NULL,
	[GroupName_En] [varchar](150) NULL,
	[Active] [bit] NOT NULL,
	[CreatedDate] [date] NULL,
	[LastModifiedDate] [date] NULL,
	[Note] [nvarchar](150) NULL,
	[PR_ApplicationId] [int] NULL,
	[PR_ApplicationCategoryId] [int] NULL,
	[IsMinistry] [bit] NOT NULL,
 CONSTRAINT [PK_PR_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_GroupModuleMenu]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_GroupModuleMenu](
	[PR_GroupId] [int] NOT NULL,
	[PR_ModuleId] [int] NOT NULL,
	[PR_MenuId] [int] NOT NULL,
	[IS_Active] [bit] NULL,
	[Order_BY] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_PR_GroupModuleMenu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_Menu]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_Menu](
	[Id] [int] NOT NULL,
	[MenuTitle] [nvarchar](150) NULL,
	[MenuTitle_En] [nvarchar](150) NULL,
	[MenuURL] [nvarchar](250) NULL,
	[PR_MenuId] [int] NULL,
	[Active] [bit] NOT NULL,
	[PR_ModuleId] [int] NULL,
	[PR_ApplicationId] [int] NULL,
	[PR_ApplicationCategoryId] [int] NULL,
	[Group_Id] [int] NULL,
 CONSTRAINT [PK_PR_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_Module]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_Module](
	[Id] [int] NOT NULL,
	[ModuleName] [nvarchar](150) NULL,
	[ModuleName_En] [varchar](150) NULL,
	[ModuleDescription] [nvarchar](250) NULL,
	[PR_ApplicationId] [int] NULL,
	[PR_ApplicationCategoryId] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_PR_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_User]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_User](
	[ID] [int] NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[UserTypeID] [int] NULL,
	[Sector_ID] [int] NULL,
	[Full_Name] [nvarchar](max) NULL,
	[Employees_ID] [bigint] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PR_UserGroup]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_UserGroup](
	[Id] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[User_ID] [int] NOT NULL,
	[PR_GroupModuleMenu_ID] [int] NULL,
 CONSTRAINT [PK_PR_UserGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Data]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Data](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](11) NULL,
	[Code] [bigint] NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[GR_Company_Master_ID] [int] NULL,
 CONSTRAINT [PK_Project_Data] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PU_Purchases_Suppliers_Items]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PU_Purchases_Suppliers_Items](
	[ID] [bigint] NOT NULL,
	[GR_Supplier_ID] [int] NULL,
	[GR_Item_ID] [int] NULL,
	[Pureche_date] [date] NULL,
	[Pureche_order_id] [nvarchar](50) NULL,
	[Amount] [float] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_PU_Purchases_Suppliers_Items] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PU_Supplier_Item]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PU_Supplier_Item](
	[ID] [bigint] NOT NULL,
	[GR_Supplier_ID] [int] NULL,
	[GR_Item_ID] [int] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_PR_Supplier_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PU_Supplier_Quote_Detail]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PU_Supplier_Quote_Detail](
	[ID] [bigint] NOT NULL,
	[PR_Supplier_Quote_Master_ID] [bigint] NULL,
	[PR_Supplier_Item_ID] [bigint] NULL,
	[Sell_Unit_Price] [money] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[Quantity_Total] [float] NULL,
 CONSTRAINT [PK_PR_Supplier_Quote_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PU_Supplier_Quote_Master]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PU_Supplier_Quote_Master](
	[ID] [bigint] NOT NULL,
	[GR_Supplier_ID] [int] NULL,
	[Date_From] [date] NULL,
	[Time] [time](0) NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[Date_To] [date] NULL,
 CONSTRAINT [PK_PR_Supplier_Quote_Master_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ST_Stock]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ST_Stock](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Main_Stock_ID] [int] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_ST_Stock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ST_Store_Items_Stock]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ST_Store_Items_Stock](
	[ID] [bigint] NOT NULL,
	[PU_Pur_Suppliers_Itm_ID] [bigint] NULL,
	[ST_Stock_ID] [int] NULL,
	[Amount] [float] NULL,
	[Store_date] [date] NULL,
	[Is_printed_barcode] [bit] NULL,
	[Barcode] [nvarchar](200) NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_St_Store_Items_Stock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tender_Project_Item]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tender_Project_Item](
	[ID] [bigint] NOT NULL,
	[GR_Item_ID] [int] NULL,
	[Tender_Project_Master_ID] [bigint] NULL,
	[Available_Quantity] [float] NULL,
	[Required_Quantity] [float] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
 CONSTRAINT [PK_Tender_Item_Project] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tender_Project_Master]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tender_Project_Master](
	[ID] [bigint] NOT NULL,
	[Project_Data_ID] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
 CONSTRAINT [PK_Tender_Project_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tender_Project_Supplier]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tender_Project_Supplier](
	[ID] [bigint] NOT NULL,
	[Tender_Project_Master_ID] [bigint] NULL,
	[GR_Supplier_ID] [int] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[IS_Send_Email] [bit] NULL,
 CONSTRAINT [PK_Tender_Project_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[GR_Company_Master] ([ID], [Name], [CEO_Name], [CEO_Email], [CEO_Mobile], [CEO_Tele], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Email], [Phone], [Address], [Main_GR_Company_ID]) VALUES (1, N'شركة الجيش', N'السيد', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (0, 1, 1, N'sdfgsdfg', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, 1, 1, N'جولد33333333333333', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (2, 1, 1, N'رويال3333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (3, 1, 1, N'كونوجيرسى444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (4, 1, 1, N'كونوفولكانو4444', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (5, 12, 1, N'كوناتاttttttt123', 1, 1, NULL, NULL, 1, CAST(N'2023-05-30T05:19:03.483' AS DateTime), 1, CAST(N'2023-05-30T05:19:19.153' AS DateTime))
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (6, 1, NULL, N'كونو2ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (7, 1, NULL, N'كونو سفن ', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (8, 1, NULL, N'كونوماريو', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (9, 1, NULL, N'فسدقه3ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (10, 1, NULL, N'فورجى3ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (11, 1, NULL, N'ذبديه3ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (12, 1, NULL, N'جوجو3ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (13, 1, 1, N'فولكانو7ج', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (14, 1, NULL, N'تشيز7ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (15, 1, NULL, N'بانج7ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (16, 1, NULL, N'حلزونه ش', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (17, 1, NULL, N'فانتستيك5ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (18, 1, NULL, N'استيك 5ج ', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (19, 1, NULL, N'دبل+هيرو4ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (20, 1, NULL, N'مانش+زووم', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (21, 1, NULL, N'ويتش5ج18', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (22, 1, NULL, N'ويتش 5ج12', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (23, 1, NULL, N'اسنكر6ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (24, 1, NULL, N'كوب4ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (25, 1, NULL, N'كوب5ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (26, 1, NULL, N'كوب6ج', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (27, 1, NULL, N'فروتي', NULL, 1, 10, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (28, 13, NULL, N'شعبي', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (32, 1, NULL, N'2', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (38, 16, NULL, N'333334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (39, 16, NULL, N'7777777', NULL, 1, 1, CAST(N'2023-05-22T23:58:59.660' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (40, 13, 1, N'test', 1, 0, 1, CAST(N'2023-05-30T04:25:36.593' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (45, 1, 1, N'2323', 1, 0, 1, CAST(N'2023-05-26T21:54:54.143' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (46, 1, 1, N'we', 0, 0, NULL, NULL, 1, CAST(N'2023-05-30T05:09:00.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (47, 1, 1, N'eee', 1, 0, 1, CAST(N'2023-05-26T21:55:15.757' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (48, 1, 1, N'34', NULL, 1, 1, CAST(N'2023-05-26T21:57:00.830' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (49, 1, 1, N'fffff66', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (50, 1, 1, N'222', NULL, 1, 1, CAST(N'2023-05-26T22:19:51.240' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (51, 1, 1, N'55', NULL, 1, 1, CAST(N'2023-05-26T22:20:01.743' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (52, 1, 1, N'الصنف واحد', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (53, 16, 1, N'منتج1', 1, 0, 1, CAST(N'2023-05-27T01:21:55.153' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, N'قطع الأنابيب 12', 1, 0, NULL, NULL, 1, CAST(N'2023-05-29T19:08:54.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (12, N'قوالب', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (13, N'سباكة', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (14, N'المواسير الحديد', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (15, N'المواسير الزهر', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (16, N'منتاجات مصنع', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (17, N'test1', 1, 1, 1, CAST(N'2023-05-29T18:10:12.190' AS DateTime), NULL, NULL, 1, CAST(N'2023-05-29T19:40:56.963' AS DateTime))
GO
INSERT [dbo].[GR_Item_Units] ([ID], [Name], [Convert_To_Main_Unit], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, N'كرتونة', NULL, 1, 0, NULL, CAST(N'2023-05-30T03:23:04.897' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (2, N'مورد 1', N'01050130168', N'القاهرة
', N'rrrr@kkk.co', 1, 0, NULL, NULL, 1, CAST(N'2023-05-30T05:42:55.110' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (3, N'مورد 2', N'0106655666', N'السللام', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (4, N'مورد 15', N'01060182155', N'المنيب', N'wwww.@uuu.o', 1, 1, NULL, NULL, 1, CAST(N'2023-05-30T05:47:41.680' AS DateTime), 1, CAST(N'2023-05-30T05:48:25.233' AS DateTime), NULL)
GO
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (5, N'443', N'3434', N'3434', N'سيبسيبسيبسي', 1, 0, NULL, NULL, 1, CAST(N'2023-05-25T22:58:06.377' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (6, N'34', N'34', N'43', N'34344334', 1, 0, 1, CAST(N'2023-05-25T22:58:34.233' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (1, N'مورد', NULL, 1, 1, 1)
GO
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (2, N'عميل', NULL, 1, 1, 1)
GO
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (3, N'مقاول', NULL, 1, 1, 1)
GO
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (4, N'رئيسي', NULL, 2, 1, 1)
GO
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (5, N'فرعي', NULL, 2, 1, 1)
GO
INSERT [dbo].[GR_SystemCodeType] ([Id], [TableName], [Description]) VALUES (1, N'الجهات', NULL)
GO
INSERT [dbo].[GR_SystemCodeType] ([Id], [TableName], [Description]) VALUES (2, N'تقسيمات', N'رئيسى - فرعي')
GO
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (1, N'بيانات  اساسية', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (2, N'الاصناف', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (3, N'الموردين', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (8, N'ادارة النظام', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (9, N'المشاريع', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (10, N'المناقصات', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[PR_GroupModuleMenu] ON 
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (1, 1, 2, 1, 2, 2)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (2, 1, 3, 1, 1, 4)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (2, 1, 4, 1, 2, 5)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (3, 1, 6, 1, 1, 7)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (8, 1, 12, 1, 1, 17)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (9, 1, 13, 1, 1, 19)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (3, 1, 14, 1, 3, 20)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (10, 1, 15, 1, 1, 1019)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (9, 1, 16, 1, 1, 1020)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (10, 1, 17, 1, 1, 1021)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (10, 1, 18, 1, 1, 1022)
GO
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (3, 1, 7, 1, 2, 1023)
GO
SET IDENTITY_INSERT [dbo].[PR_GroupModuleMenu] OFF
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (1, N'انشاء مستخدم', N'User Create', N'', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (2, N'انشاء دورة', N'User Create', N'', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (3, N'انشاء مجموعة', N'User Create', N'Item_Data/ItemsCategoriy/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (4, N'انشاء صنف', N'User Create', N'Item_Data/Items/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (5, N'العملاء', N'User Create', N'Custmer_Data/Clients/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (6, N'الموردين', N'User Create', N'Custmer_Data/Suppliers/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (7, N'اصناف الموردين', N'User Create', N'Custmer_Data/Suppliers', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (12, N'الصلاحيات', N'User Create', N'Admin/User_Privilage/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (13, N'بيانات المشاريع', N'User Create', N'Company/Project_Data/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (14, N'عروض الاسعار', NULL, N'Custmer_Data/Suppliers_Item/index', 1, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (15, N'مناقصة مشروع', N'User Create', N'Reciept_Data/Tender_processing/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (16, N'بيانات الشركات', N'User Create', N'Company/GR_Company_Master/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (17, N'تسجيل بنود مناقصة لمورد', N'User Create', N'Reciept_Data/Tender_processing/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (18, N'تحميل بنود مناقصة لمورد', N'User Create', N'Reciept_Data/Tender_processing/Index', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Module] ([Id], [ModuleName], [ModuleName_En], [ModuleDescription], [PR_ApplicationId], [PR_ApplicationCategoryId], [Active]) VALUES (1, N'كل الشاشات', N'Analysis', N'True', 1, 1, 1)
GO
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (1, N'sayed', N'123', 1, 1, N'عماد يوسف', NULL)
GO
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (2, N'محمد محمد ', N'123', 1, 2, N'احمد طه', NULL)
GO
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (3, N'nn', N'123', 4, NULL, N'وليد', NULL)
GO
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (4, N'islam kamal', N'011011', 1, NULL, N'رجب', NULL)
GO
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (5, N'hassan ezzat', N'12', 1, NULL, N'عماد حلمي', NULL)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (2, 1, 1, 4)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (4, 1, 1, 7)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (5, 1, 1, 17)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (6, 1, 1, 2)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (7, 1, 1, 1)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (9, 1, 1, 5)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (10, 1, 1, 19)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (11, 1, 1, 20)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (60, 1, 1, 1019)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (61, 1, 1, 1020)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (62, 1, 1, 1022)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (63, 1, 1, 1021)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (64, 1, 1, 1023)
GO
INSERT [dbo].[Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Company_Master_ID]) VALUES (1, N'مشروع 1', N'asdfasdf', N'2323232323', 23232323, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Company_Master_ID]) VALUES (2, N'مشروع 2', N'asdfasdf', N'23232323', 1, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Company_Master_ID]) VALUES (3, N'مشروع 3', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Company_Master_ID]) VALUES (6, N'rr', N'rr', N'44444', 444444, NULL, NULL, 1, 0, 1, CAST(N'2023-05-26T22:57:18.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Company_Master_ID]) VALUES (19, N'343434', N'3434', N'3434', 343434, NULL, NULL, 1, 0, 1, CAST(N'2023-05-26T21:01:00.197' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ST_Stock] ([ID], [Name], [Email], [Phone], [Address], [Main_Stock_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, N'Ali', N'info@uuu.com', N'01205555899', N'cairo', 1, 1, 0, NULL, NULL, 1, CAST(N'2023-05-30T02:09:45.487' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 
GO
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'مخاذن')
GO
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'مهندس موقع')
GO
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (3, N'اداري')
GO
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (4, N'حسابات')
GO
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
ALTER TABLE [dbo].[GR_Item] ADD  CONSTRAINT [DF_GR_Item_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[GR_Item] ADD  CONSTRAINT [DF_GR_Item_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[GR_Item] ADD  CONSTRAINT [DF_GR_Item_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[GR_Item_Categoriy] ADD  CONSTRAINT [DF_GR_Item_Categoriy_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[GR_Item_Categoriy] ADD  CONSTRAINT [DF_GR_Item_Categoriy_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[GR_Item_Categoriy] ADD  CONSTRAINT [DF_GR_Item_Categoriy_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[GR_Item_Units] ADD  CONSTRAINT [DF_GR_Item_Units_IS_Active1]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[GR_Item_Units] ADD  CONSTRAINT [DF_GR_Item_Units_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[GR_Item_Units] ADD  CONSTRAINT [DF_GR_Item_Units_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[PR_Group] ADD  CONSTRAINT [DF_PR_Group_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PR_Group] ADD  CONSTRAINT [DF_PR_Group_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PR_Menu] ADD  CONSTRAINT [DF_PR_Menu_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PR_Module] ADD  CONSTRAINT [DF_PR_Module_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PU_Supplier_Quote_Master] ADD  CONSTRAINT [DF_PR_Supplier_Quote_Master_Time_1]  DEFAULT (getdate()) FOR [Time]
GO
ALTER TABLE [dbo].[ST_Stock] ADD  CONSTRAINT [DF_ST_Stock_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[ST_Stock] ADD  CONSTRAINT [DF_ST_Stock_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[ST_Stock] ADD  CONSTRAINT [DF_ST_Stock_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[ST_Store_Items_Stock] ADD  CONSTRAINT [DF_ST_Store_Items_Stock_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[ST_Store_Items_Stock] ADD  CONSTRAINT [DF_ST_Store_Items_Stock_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[ST_Store_Items_Stock] ADD  CONSTRAINT [DF_ST_Store_Items_Stock_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[GR_Company_Details]  WITH CHECK ADD  CONSTRAINT [FK_GR_Company_Details_GR_Company_Master] FOREIGN KEY([GR_Company_Master_ID])
REFERENCES [dbo].[GR_Company_Master] ([ID])
GO
ALTER TABLE [dbo].[GR_Company_Details] CHECK CONSTRAINT [FK_GR_Company_Details_GR_Company_Master]
GO
ALTER TABLE [dbo].[GR_Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Units] FOREIGN KEY([Unit_ID])
REFERENCES [dbo].[GR_Item_Units] ([ID])
GO
ALTER TABLE [dbo].[GR_Item] CHECK CONSTRAINT [FK_Item_Units]
GO
ALTER TABLE [dbo].[GR_Item]  WITH CHECK ADD  CONSTRAINT [FK_ITEMS_ITMSCATEGORIES] FOREIGN KEY([ItemCatID])
REFERENCES [dbo].[GR_Item_Categoriy] ([ID])
GO
ALTER TABLE [dbo].[GR_Item] CHECK CONSTRAINT [FK_ITEMS_ITMSCATEGORIES]
GO
ALTER TABLE [dbo].[GR_SystemCode]  WITH CHECK ADD  CONSTRAINT [FK_SystemCode_SystemCodeType] FOREIGN KEY([SystemCodeTypeId])
REFERENCES [dbo].[GR_SystemCodeType] ([Id])
GO
ALTER TABLE [dbo].[GR_SystemCode] CHECK CONSTRAINT [FK_SystemCode_SystemCodeType]
GO
ALTER TABLE [dbo].[HR_Branch_Department]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Department_Branches] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[HR_Branches] ([ID])
GO
ALTER TABLE [dbo].[HR_Branch_Department] CHECK CONSTRAINT [FK_Branch_Department_Branches]
GO
ALTER TABLE [dbo].[HR_Branch_Department]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Department_Departments] FOREIGN KEY([Department_ID])
REFERENCES [dbo].[HR_Departments] ([ID])
GO
ALTER TABLE [dbo].[HR_Branch_Department] CHECK CONSTRAINT [FK_Branch_Department_Departments]
GO
ALTER TABLE [dbo].[HR_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Companies] FOREIGN KEY([Company_ID])
REFERENCES [dbo].[HR_Companies] ([ID])
GO
ALTER TABLE [dbo].[HR_Branches] CHECK CONSTRAINT [FK_Branches_Companies]
GO
ALTER TABLE [dbo].[HR_Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_Countries] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[HR_Countries] ([ID])
GO
ALTER TABLE [dbo].[HR_Companies] CHECK CONSTRAINT [FK_Companies_Countries]
GO
ALTER TABLE [dbo].[HR_EmpFunctionalDegree_History]  WITH CHECK ADD  CONSTRAINT [FK_EmpFunctionalDegree_History_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_EmpFunctionalDegree_History] CHECK CONSTRAINT [FK_EmpFunctionalDegree_History_Employees]
GO
ALTER TABLE [dbo].[HR_EmpFunctionalDegree_History]  WITH CHECK ADD  CONSTRAINT [FK_EmpFunctionalDegree_History_Functional_Degree] FOREIGN KEY([Functional_Degree_ID])
REFERENCES [dbo].[HR_Functional_Degree] ([ID])
GO
ALTER TABLE [dbo].[HR_EmpFunctionalDegree_History] CHECK CONSTRAINT [FK_EmpFunctionalDegree_History_Functional_Degree]
GO
ALTER TABLE [dbo].[HR_EmpJob_History]  WITH CHECK ADD  CONSTRAINT [FK_EmpJob_History_Branch_Department] FOREIGN KEY([BranchDept_ID])
REFERENCES [dbo].[HR_Branch_Department] ([ID])
GO
ALTER TABLE [dbo].[HR_EmpJob_History] CHECK CONSTRAINT [FK_EmpJob_History_Branch_Department]
GO
ALTER TABLE [dbo].[HR_EmpJob_History]  WITH CHECK ADD  CONSTRAINT [FK_EmpJob_History_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_EmpJob_History] CHECK CONSTRAINT [FK_EmpJob_History_Employees]
GO
ALTER TABLE [dbo].[HR_EmpJob_History]  WITH CHECK ADD  CONSTRAINT [FK_EmpJob_History_Jobs] FOREIGN KEY([Job_ID])
REFERENCES [dbo].[HR_Jobs] ([ID])
GO
ALTER TABLE [dbo].[HR_EmpJob_History] CHECK CONSTRAINT [FK_EmpJob_History_Jobs]
GO
ALTER TABLE [dbo].[HR_Employee_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Attendance_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Attendance] CHECK CONSTRAINT [FK_Employee_Attendance_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Attendance_Machine_IP] FOREIGN KEY([Machine_ID])
REFERENCES [dbo].[HR_Machine_IP] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Attendance] CHECK CONSTRAINT [FK_Employee_Attendance_Machine_IP]
GO
ALTER TABLE [dbo].[HR_Employee_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Attendance_MachineMoves] FOREIGN KEY([MoveCode_ID])
REFERENCES [dbo].[HR_MachineMoves] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Attendance] CHECK CONSTRAINT [FK_Employee_Attendance_MachineMoves]
GO
ALTER TABLE [dbo].[HR_Employee_Errands]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Errands_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Errands] CHECK CONSTRAINT [FK_Employee_Errands_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Errands]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Errands_Errands_Places] FOREIGN KEY([ErrandPlace_ID])
REFERENCES [dbo].[HR_Errands_Places] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Errands] CHECK CONSTRAINT [FK_Employee_Errands_Errands_Places]
GO
ALTER TABLE [dbo].[HR_Employee_Errands]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Errands_ErrandsTypes] FOREIGN KEY([ErrandType_ID])
REFERENCES [dbo].[HR_ErrandsTypes] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Errands] CHECK CONSTRAINT [FK_Employee_Errands_ErrandsTypes]
GO
ALTER TABLE [dbo].[HR_Employee_Leaves]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Leaves_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Leaves] CHECK CONSTRAINT [FK_Employee_Leaves_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Leaves]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Leaves_LeaveTypes] FOREIGN KEY([LeaveType_ID])
REFERENCES [dbo].[HR_LeaveTypes] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Leaves] CHECK CONSTRAINT [FK_Employee_Leaves_LeaveTypes]
GO
ALTER TABLE [dbo].[HR_Employee_Nationality]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Nationality_Countries] FOREIGN KEY([Nationality_ID])
REFERENCES [dbo].[HR_Countries] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Nationality] CHECK CONSTRAINT [FK_Employee_Nationality_Countries]
GO
ALTER TABLE [dbo].[HR_Employee_Nationality]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Nationality_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Nationality] CHECK CONSTRAINT [FK_Employee_Nationality_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Nationality]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Nationality_Identity_Types] FOREIGN KEY([Identity_Type_ID])
REFERENCES [dbo].[HR_Identity_Types] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Nationality] CHECK CONSTRAINT [FK_Employee_Nationality_Identity_Types]
GO
ALTER TABLE [dbo].[HR_Employee_Permission]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Permission_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Permission] CHECK CONSTRAINT [FK_Employee_Permission_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Permission]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Permission_PermissionTypes] FOREIGN KEY([PermissionType_ID])
REFERENCES [dbo].[HR_PermissionTypes] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Permission] CHECK CONSTRAINT [FK_Employee_Permission_PermissionTypes]
GO
ALTER TABLE [dbo].[HR_Employee_Qualifications]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Qualifications_Degrees] FOREIGN KEY([Qualification_Degree])
REFERENCES [dbo].[HR_Degrees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Qualifications] CHECK CONSTRAINT [FK_Employee_Qualifications_Degrees]
GO
ALTER TABLE [dbo].[HR_Employee_Qualifications]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Qualifications_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Qualifications] CHECK CONSTRAINT [FK_Employee_Qualifications_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Qualifications]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Qualifications_Qualifications] FOREIGN KEY([Qualification_ID])
REFERENCES [dbo].[HR_Qualifications] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Qualifications] CHECK CONSTRAINT [FK_Employee_Qualifications_Qualifications]
GO
ALTER TABLE [dbo].[HR_Employee_Qualifications]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Qualifications_Univercity_Faculty] FOREIGN KEY([Univercity_Faculty_ID])
REFERENCES [dbo].[HR_Univercity_Faculty] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Qualifications] CHECK CONSTRAINT [FK_Employee_Qualifications_Univercity_Faculty]
GO
ALTER TABLE [dbo].[HR_Employee_Shifts]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Shifts_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Shifts] CHECK CONSTRAINT [FK_Employee_Shifts_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Shifts]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Shifts_ShiftTypes] FOREIGN KEY([ShiftType_ID])
REFERENCES [dbo].[HR_ShiftTypes] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Shifts] CHECK CONSTRAINT [FK_Employee_Shifts_ShiftTypes]
GO
ALTER TABLE [dbo].[HR_Employee_Skills]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Skills_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Skills] CHECK CONSTRAINT [FK_Employee_Skills_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Skills]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Skills_Skills] FOREIGN KEY([Skill_ID])
REFERENCES [dbo].[HR_Skills] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Skills] CHECK CONSTRAINT [FK_Employee_Skills_Skills]
GO
ALTER TABLE [dbo].[HR_Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Branch_Department] FOREIGN KEY([CurrentBranchDept_ID])
REFERENCES [dbo].[HR_Branch_Department] ([ID])
GO
ALTER TABLE [dbo].[HR_Employees] CHECK CONSTRAINT [FK_Employees_Branch_Department]
GO
ALTER TABLE [dbo].[HR_Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Functional_Degree] FOREIGN KEY([CurrentFunctional_Degree_ID])
REFERENCES [dbo].[HR_Functional_Degree] ([ID])
GO
ALTER TABLE [dbo].[HR_Employees] CHECK CONSTRAINT [FK_Employees_Functional_Degree]
GO
ALTER TABLE [dbo].[HR_Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Jobs] FOREIGN KEY([CurrentJob_ID])
REFERENCES [dbo].[HR_Jobs] ([ID])
GO
ALTER TABLE [dbo].[HR_Employees] CHECK CONSTRAINT [FK_Employees_Jobs]
GO
ALTER TABLE [dbo].[HR_Machine_IP]  WITH CHECK ADD  CONSTRAINT [FK_Machine_IP_Branches] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[HR_Branches] ([ID])
GO
ALTER TABLE [dbo].[HR_Machine_IP] CHECK CONSTRAINT [FK_Machine_IP_Branches]
GO
ALTER TABLE [dbo].[HR_Univercity_Faculty]  WITH CHECK ADD  CONSTRAINT [FK_Univercity_Faculty_Faculty] FOREIGN KEY([Faculty_ID])
REFERENCES [dbo].[HR_Faculty] ([ID])
GO
ALTER TABLE [dbo].[HR_Univercity_Faculty] CHECK CONSTRAINT [FK_Univercity_Faculty_Faculty]
GO
ALTER TABLE [dbo].[HR_Univercity_Faculty]  WITH CHECK ADD  CONSTRAINT [FK_Univercity_Faculty_Univercity] FOREIGN KEY([Univercity_ID])
REFERENCES [dbo].[HR_Univercity] ([ID])
GO
ALTER TABLE [dbo].[HR_Univercity_Faculty] CHECK CONSTRAINT [FK_Univercity_Faculty_Univercity]
GO
ALTER TABLE [dbo].[PR_GroupModuleMenu]  WITH CHECK ADD  CONSTRAINT [FK_PR_GroupModuleMenu_PR_Group] FOREIGN KEY([PR_GroupId])
REFERENCES [dbo].[PR_Group] ([Id])
GO
ALTER TABLE [dbo].[PR_GroupModuleMenu] CHECK CONSTRAINT [FK_PR_GroupModuleMenu_PR_Group]
GO
ALTER TABLE [dbo].[PR_GroupModuleMenu]  WITH CHECK ADD  CONSTRAINT [FK_PR_GroupModuleMenu_PR_Menu] FOREIGN KEY([PR_MenuId])
REFERENCES [dbo].[PR_Menu] ([Id])
GO
ALTER TABLE [dbo].[PR_GroupModuleMenu] CHECK CONSTRAINT [FK_PR_GroupModuleMenu_PR_Menu]
GO
ALTER TABLE [dbo].[PR_GroupModuleMenu]  WITH CHECK ADD  CONSTRAINT [FK_PR_GroupModuleMenu_PR_Module] FOREIGN KEY([PR_ModuleId])
REFERENCES [dbo].[PR_Module] ([Id])
GO
ALTER TABLE [dbo].[PR_GroupModuleMenu] CHECK CONSTRAINT [FK_PR_GroupModuleMenu_PR_Module]
GO
ALTER TABLE [dbo].[PR_User]  WITH CHECK ADD  CONSTRAINT [FK_PR_User_Employees] FOREIGN KEY([Employees_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[PR_User] CHECK CONSTRAINT [FK_PR_User_Employees]
GO
ALTER TABLE [dbo].[PR_User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType_UserTypeID] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[PR_User] CHECK CONSTRAINT [FK_User_UserType_UserTypeID]
GO
ALTER TABLE [dbo].[PR_UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_PR_UserGroup_PR_GroupModuleMenu] FOREIGN KEY([PR_GroupModuleMenu_ID])
REFERENCES [dbo].[PR_GroupModuleMenu] ([ID])
GO
ALTER TABLE [dbo].[PR_UserGroup] CHECK CONSTRAINT [FK_PR_UserGroup_PR_GroupModuleMenu]
GO
ALTER TABLE [dbo].[PR_UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_PR_UserGroup_PR_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[PR_User] ([ID])
GO
ALTER TABLE [dbo].[PR_UserGroup] CHECK CONSTRAINT [FK_PR_UserGroup_PR_User]
GO
ALTER TABLE [dbo].[Project_Data]  WITH CHECK ADD  CONSTRAINT [FK_Project_Data_GR_Company_Master] FOREIGN KEY([GR_Company_Master_ID])
REFERENCES [dbo].[GR_Company_Master] ([ID])
GO
ALTER TABLE [dbo].[Project_Data] CHECK CONSTRAINT [FK_Project_Data_GR_Company_Master]
GO
ALTER TABLE [dbo].[PU_Purchases_Suppliers_Items]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchases_Suppliers_Items_GR_Item] FOREIGN KEY([GR_Item_ID])
REFERENCES [dbo].[GR_Item] ([ID])
GO
ALTER TABLE [dbo].[PU_Purchases_Suppliers_Items] CHECK CONSTRAINT [FK_PU_Purchases_Suppliers_Items_GR_Item]
GO
ALTER TABLE [dbo].[PU_Purchases_Suppliers_Items]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchases_Suppliers_Items_GR_Supplier] FOREIGN KEY([GR_Supplier_ID])
REFERENCES [dbo].[GR_Supplier] ([ID])
GO
ALTER TABLE [dbo].[PU_Purchases_Suppliers_Items] CHECK CONSTRAINT [FK_PU_Purchases_Suppliers_Items_GR_Supplier]
GO
ALTER TABLE [dbo].[PU_Supplier_Item]  WITH CHECK ADD  CONSTRAINT [FK_PR_Supplier_Item_GR_Item] FOREIGN KEY([GR_Item_ID])
REFERENCES [dbo].[GR_Item] ([ID])
GO
ALTER TABLE [dbo].[PU_Supplier_Item] CHECK CONSTRAINT [FK_PR_Supplier_Item_GR_Item]
GO
ALTER TABLE [dbo].[PU_Supplier_Item]  WITH CHECK ADD  CONSTRAINT [FK_PR_Supplier_Item_GR_Supplier] FOREIGN KEY([GR_Supplier_ID])
REFERENCES [dbo].[GR_Supplier] ([ID])
GO
ALTER TABLE [dbo].[PU_Supplier_Item] CHECK CONSTRAINT [FK_PR_Supplier_Item_GR_Supplier]
GO
ALTER TABLE [dbo].[PU_Supplier_Quote_Detail]  WITH CHECK ADD  CONSTRAINT [FK_PR_Supplier_Quote_Detail_PR_Supplier_Item] FOREIGN KEY([PR_Supplier_Item_ID])
REFERENCES [dbo].[PU_Supplier_Item] ([ID])
GO
ALTER TABLE [dbo].[PU_Supplier_Quote_Detail] CHECK CONSTRAINT [FK_PR_Supplier_Quote_Detail_PR_Supplier_Item]
GO
ALTER TABLE [dbo].[PU_Supplier_Quote_Detail]  WITH CHECK ADD  CONSTRAINT [FK_PR_Supplier_Quote_Detail_PR_Supplier_Quote_Master] FOREIGN KEY([PR_Supplier_Quote_Master_ID])
REFERENCES [dbo].[PU_Supplier_Quote_Master] ([ID])
GO
ALTER TABLE [dbo].[PU_Supplier_Quote_Detail] CHECK CONSTRAINT [FK_PR_Supplier_Quote_Detail_PR_Supplier_Quote_Master]
GO
ALTER TABLE [dbo].[PU_Supplier_Quote_Master]  WITH CHECK ADD  CONSTRAINT [FK_PR_Supplier_Quote_Master_GR_Supplier] FOREIGN KEY([GR_Supplier_ID])
REFERENCES [dbo].[GR_Supplier] ([ID])
GO
ALTER TABLE [dbo].[PU_Supplier_Quote_Master] CHECK CONSTRAINT [FK_PR_Supplier_Quote_Master_GR_Supplier]
GO
ALTER TABLE [dbo].[ST_Store_Items_Stock]  WITH CHECK ADD  CONSTRAINT [FK_St_Store_Items_Stock_PU_Purchases_Suppliers_Items] FOREIGN KEY([PU_Pur_Suppliers_Itm_ID])
REFERENCES [dbo].[PU_Purchases_Suppliers_Items] ([ID])
GO
ALTER TABLE [dbo].[ST_Store_Items_Stock] CHECK CONSTRAINT [FK_St_Store_Items_Stock_PU_Purchases_Suppliers_Items]
GO
ALTER TABLE [dbo].[ST_Store_Items_Stock]  WITH CHECK ADD  CONSTRAINT [FK_ST_Store_Items_Stock_ST_Stock] FOREIGN KEY([ST_Stock_ID])
REFERENCES [dbo].[ST_Stock] ([ID])
GO
ALTER TABLE [dbo].[ST_Store_Items_Stock] CHECK CONSTRAINT [FK_ST_Store_Items_Stock_ST_Stock]
GO
ALTER TABLE [dbo].[Tender_Project_Item]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Item_Project_GR_Item] FOREIGN KEY([GR_Item_ID])
REFERENCES [dbo].[GR_Item] ([ID])
GO
ALTER TABLE [dbo].[Tender_Project_Item] CHECK CONSTRAINT [FK_Tender_Item_Project_GR_Item]
GO
ALTER TABLE [dbo].[Tender_Project_Item]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Item_Project_Tender_Project_Master] FOREIGN KEY([Tender_Project_Master_ID])
REFERENCES [dbo].[Tender_Project_Master] ([ID])
GO
ALTER TABLE [dbo].[Tender_Project_Item] CHECK CONSTRAINT [FK_Tender_Item_Project_Tender_Project_Master]
GO
ALTER TABLE [dbo].[Tender_Project_Master]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Project_Master_Project_Data] FOREIGN KEY([Project_Data_ID])
REFERENCES [dbo].[Project_Data] ([ID])
GO
ALTER TABLE [dbo].[Tender_Project_Master] CHECK CONSTRAINT [FK_Tender_Project_Master_Project_Data]
GO
ALTER TABLE [dbo].[Tender_Project_Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Project_Supplier_GR_Supplier] FOREIGN KEY([GR_Supplier_ID])
REFERENCES [dbo].[GR_Supplier] ([ID])
GO
ALTER TABLE [dbo].[Tender_Project_Supplier] CHECK CONSTRAINT [FK_Tender_Project_Supplier_GR_Supplier]
GO
ALTER TABLE [dbo].[Tender_Project_Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Project_Supplier_Tender_Project_Master] FOREIGN KEY([Tender_Project_Master_ID])
REFERENCES [dbo].[Tender_Project_Master] ([ID])
GO
ALTER TABLE [dbo].[Tender_Project_Supplier] CHECK CONSTRAINT [FK_Tender_Project_Supplier_Tender_Project_Master]
GO
/****** Object:  StoredProcedure [dbo].[Get_Group_Mnue_ByUser]    Script Date: 5/30/2023 1:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_Group_Mnue_ByUser]

	@PR_UserId int =0,

@Language int=1 -- 1 ar, 0 en
AS
BEGIN

select g.Id GroupID,  g.GroupName  GroupName,
m.Id MenuID,  m.MenuTitle  MenuTitle,m.MenuURL
from  [dbo].PR_GroupModuleMenu  gmm
join [dbo].[PR_Group] g on gmm.PR_GroupId = g.Id
join PR_UserGroup ug on gmm.ID = ug.PR_GroupModuleMenu_ID
inner join PR_Menu m on gmm.PR_MenuId=m.Id
where ug.User_ID = @PR_UserId

AND g.Active=1
and gmm.Is_Active =1
	order  by gmm.Order_BY
	
--	select PR_GroupId,GroupName from  [dbo].[PR_UserGroup]
--join [dbo].[PR_Group] on [dbo].[PR_Group].Id=[dbo].[PR_UserGroup].PR_GroupId
--join [dbo].[PR_Application] on [dbo].[PR_Application].Id=[dbo].[PR_Group].PR_ApplicationId


END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'بيانات الشركة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GR_Company_Master'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'from systemcode table 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GR_Supplier', @level2type=N'COLUMN',@level2name=N'Supplier_Type_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الموردين والمقاولين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GR_Supplier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'إدارات الفرع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Branch_Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الفروع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Branches'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Companies'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Countries'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الدرجات(امتياز / جيد جدا ...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Degrees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الإدارات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Departments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ الدرجات الوظيفية' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_EmpFunctionalDegree_History'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'التاريخ الوظيفي' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_EmpJob_History'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Attendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مأموريات الموظف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Errands'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'أجازات الموظف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Leaves'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Nationality'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Permission'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مؤهلات الموظف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Qualifications'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ورديات الموظف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Shifts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Skills'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الموظفين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'جهات المأموريات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Errands_Places'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'المأموريات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_ErrandsTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الكليات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Faculty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������� ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Formal_Holidays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الدرجات الوظيفية' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Functional_Degree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Identity_Types'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الوظائف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Jobs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'أنواع الأجازات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_LeaveTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������� ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Machine_IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��� ���� ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_MachineMoves'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'أنواع الأذونات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_PermissionTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'المؤهلات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Qualifications'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الورديات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_ShiftTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Skills'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الجامعات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Univercity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������� ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Univercity_Faculty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'بيانات المشروع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project_Data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ الشراء' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchases_Suppliers_Items', @level2type=N'COLUMN',@level2name=N'Pureche_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'رقم امر الشراء' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchases_Suppliers_Items', @level2type=N'COLUMN',@level2name=N'Pureche_order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كمية المشتراه من الصنف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchases_Suppliers_Items', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'جدول مشتريات من الموردين من كل صنف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchases_Suppliers_Items'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'اصناف الموردين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supplier_Item'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'المشتريات بالتفصيل ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supplier_Quote_Detail', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'سعر بيع القطعة الواحدة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supplier_Quote_Detail', @level2type=N'COLUMN',@level2name=N'Sell_Unit_Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الكميه الكليه ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supplier_Quote_Detail', @level2type=N'COLUMN',@level2name=N'Quantity_Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تفاصيل عروض الاسعار' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supplier_Quote_Detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'عروض اسعار اساسية' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supplier_Quote_Master'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كود المخزن الرئيسي في حالة كونه مخزن رئيسي يحصل علي نفس كوده انه ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Stock', @level2type=N'COLUMN',@level2name=N'Main_Stock_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'صنف المشتري من جدول المشتريات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Store_Items_Stock', @level2type=N'COLUMN',@level2name=N'PU_Pur_Suppliers_Itm_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كود المخزن المخزن فيه' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Store_Items_Stock', @level2type=N'COLUMN',@level2name=N'ST_Stock_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كمية المخزنه باصغر وحده' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Store_Items_Stock', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ التخزين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Store_Items_Stock', @level2type=N'COLUMN',@level2name=N'Store_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مسار للصوره كود مكون من كود الصنف و كود المورد و المخزن ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Store_Items_Stock', @level2type=N'COLUMN',@level2name=N'Barcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الكمية المتاحة فى المخزن' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tender_Project_Item', @level2type=N'COLUMN',@level2name=N'Available_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الكمية المطلوبة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tender_Project_Item', @level2type=N'COLUMN',@level2name=N'Required_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'بنود المناقصة لمشروع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tender_Project_Item'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'بنود المناقصة لمشروع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tender_Project_Master'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'هل تم الاسال ام لا' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tender_Project_Supplier', @level2type=N'COLUMN',@level2name=N'IS_Send_Email'
GO
USE [master]
GO
ALTER DATABASE [ERP] SET  READ_WRITE 
GO
