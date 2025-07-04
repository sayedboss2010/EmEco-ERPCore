USE [master]
GO
/****** Object:  Database [ERP]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE DATABASE [ERP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ERP', FILENAME = N'F:\emecio work\DB\ERP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ERP_log', FILENAME = N'F:\emecio work\DB\ERP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  User [new]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE USER [new] FOR LOGIN [new] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [new]
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[A__User_Login_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[GR_Client_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[GR_Client_SEQ] 
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
/****** Object:  Sequence [dbo].[GR_Company_Details_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[GR_Company_Master_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[GR_Currency_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[GR_Currency_SEQ] 
 AS [int]
 START WITH 52
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Item_Categoriy_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[GR_Item_Categoriy_SEQ] 
 AS [int]
 START WITH 4
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Item_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[GR_Item_SEQ] 
 AS [int]
 START WITH 740
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_Item_Units_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[GR_Nationality_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[GR_Nationality_SEQ] 
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
/****** Object:  Sequence [dbo].[GR_Supplier_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[GR_Supplier_SEQ] 
 AS [int]
 START WITH 10
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[GR_SystemCode_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[GR_SystemCodeType_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Branch_Department_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Branches_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Companies_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Countries_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_Countries_SEQ] 
 AS [int]
 START WITH 5
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Degrees_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Departments_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_EmpFunctionalDegree_History_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_EmpJob_History_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employee_Attendance_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employee_Errands_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employee_Leaves_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employee_Nationality_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employee_Permission_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employee_Qualifications_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employee_Shifts_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employee_Skills_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Employees_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Errands_Places_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_Errands_Places_SEQ] 
 AS [int]
 START WITH 12
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_ErrandsTypes_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_ErrandsTypes_SEQ] 
 AS [tinyint]
 START WITH 3
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Faculty_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Formal_Holidays_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_Formal_Holidays_SEQ] 
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
/****** Object:  Sequence [dbo].[HR_Functional_Degree_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_Functional_Degree_SEQ] 
 AS [tinyint]
 START WITH 5
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Identity_Types_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_Identity_Types_SEQ] 
 AS [tinyint]
 START WITH 4
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Jobs_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_LeaveTypes_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_LeaveTypes_SEQ] 
 AS [tinyint]
 START WITH 4
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Machine_IP_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_MachineMoves_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_PermissionTypes_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_PermissionTypes_SEQ] 
 AS [tinyint]
 START WITH 3
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Qualifications_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_ShiftTypes_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_ShiftTypes_SEQ] 
 AS [tinyint]
 START WITH 7
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[HR_Skills_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Univercity_Faculty_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[HR_Univercity_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[HR_Univercity_SEQ] 
 AS [tinyint]
 START WITH 6
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 255
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_Group_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[PR_GroupModuleMenu_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PR_GroupModuleMenu_SEQ] 
 AS [int]
 START WITH 2025
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_Menu_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PR_Menu_SEQ] 
 AS [int]
 START WITH 20
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PR_Module_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[PR_User_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[PR_UserGroup_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PR_UserGroup_SEQ] 
 AS [int]
 START WITH 67
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PRJ_Project_Data_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PRJ_Project_Data_SEQ] 
 AS [bigint]
 START WITH 22
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PRJ_Project_Employees_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PRJ_Project_Employees_SEQ] 
 AS [bigint]
 START WITH 6
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PRJ_Tender_Item_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PRJ_Tender_Item_SEQ] 
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
/****** Object:  Sequence [dbo].[PRJ_Tender_Master_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PRJ_Tender_Master_SEQ] 
 AS [bigint]
 START WITH 2
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[Project_Data_Employees_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[Project_Data_Employees_SEQ] 
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
/****** Object:  Sequence [dbo].[Project_Data_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[PU_Purchase_Order_Details_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PU_Purchase_Order_Details_SEQ] 
 AS [bigint]
 START WITH 4
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PU_Purchase_Order_Items_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PU_Purchase_Order_Items_SEQ] 
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
/****** Object:  Sequence [dbo].[PU_Purchase_Order_Master_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PU_Purchase_Order_Master_SEQ] 
 AS [bigint]
 START WITH 3
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PU_Purchases_Orders_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PU_Purchases_Orders_SEQ] 
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
/****** Object:  Sequence [dbo].[PU_Supplier_Item_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PU_Supplier_Item_SEQ] 
 AS [bigint]
 START WITH 65
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[PU_Supplier_Quote_Detail_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[PU_Supplier_Quote_Master_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[PU_Supply_Order_Items_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PU_Supply_Order_Items_SEQ] 
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
/****** Object:  Sequence [dbo].[PU_Supply_Orders_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[PU_Supply_Orders_SEQ] 
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
/****** Object:  Sequence [dbo].[ST_Invoice_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[ST_Invoice_SEQ] 
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
/****** Object:  Sequence [dbo].[ST_Payment_Order_Item_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[ST_Payment_Order_Item_SEQ] 
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
/****** Object:  Sequence [dbo].[ST_Payment_Order_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[ST_Payment_Order_SEQ] 
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
/****** Object:  Sequence [dbo].[ST_Receiving_Permission_Item_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[ST_Receiving_Permission_Item_SEQ] 
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
/****** Object:  Sequence [dbo].[ST_Receiving_Permission_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[ST_Receiving_Permission_SEQ] 
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
/****** Object:  Sequence [dbo].[ST_Stock_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[ST_Stock_SEQ] 
 AS [int]
 START WITH 5
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
USE [ERP]
GO
/****** Object:  Sequence [dbo].[ST_Store_Items_Stock_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[Tender_Project_Item_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[Tender_Project_Master_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[Tender_Project_Supplier_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
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
/****** Object:  Sequence [dbo].[UserType_SEQ]    Script Date: 6/14/2023 9:53:55 PM ******/
CREATE SEQUENCE [dbo].[UserType_SEQ] 
 AS [int]
 START WITH 5
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CYCLE 
 CACHE 
GO
/****** Object:  View [dbo].[HR_DB_Job]    Script Date: 6/14/2023 9:53:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HR_DB_Job]
AS
SELECT        ID, Title_AR
FROM            HR_DB.dbo.Jobs AS j
WHERE        (IsActive = 1)
GO
/****** Object:  View [dbo].[HR_DB_Employees]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HR_DB_Employees]
AS
SELECT        emp.ID, emp.EmpCode, emp.Name_AR, emp.Address_AR, emp.CurrentJob_ID AS Job_ID, dbo.HR_DB_Job.Title_AR
FROM            HR_DB.dbo.Employees AS emp INNER JOIN
                         dbo.HR_DB_Job ON emp.CurrentJob_ID = dbo.HR_DB_Job.ID
WHERE        (emp.IsActive = 1)
GO
/****** Object:  Table [dbo].[A__User_Login]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[GR_Client]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Client](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Administrator_Name] [nvarchar](200) NULL,
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
	[Fax] [nchar](10) NULL,
 CONSTRAINT [PK_GR_Company_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Currency]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Currency](
	[ID] [int] NOT NULL,
	[Currency_Name] [nvarchar](50) NULL,
	[Covert_To_EGP] [money] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_GR_Currency] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Item]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Item](
	[ID] [int] NOT NULL,
	[ItemCatID] [int] NULL,
	[Unit_ID] [tinyint] NULL,
	[ItemName] [nvarchar](200) NULL,
	[Limit_Item_In_Stock] [float] NULL,
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
/****** Object:  Table [dbo].[GR_Item_Categoriy]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[GR_Item_Units]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[GR_Nationality]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GR_Nationality](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Is_Accpted] [bit] NULL,
	[Responsible_Emp_ID] [bigint] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_GR_Nationality] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GR_Supplier]    Script Date: 6/14/2023 9:53:56 PM ******/
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
	[GR_Nationality] [int] NULL,
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
/****** Object:  Table [dbo].[GR_SystemCode]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[GR_SystemCodeType]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Advance_Payment_Type]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Advance_Payment_Type](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_HR_Advance_Payment_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Branch_Department]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Branches]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Companies]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Countries]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Degrees]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Departments]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_EmpFunctionalDegree_History]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_EmpJob_History]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employee_absence]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_absence](
	[ID] [bigint] NOT NULL,
	[HR_Employees_ID] [bigint] NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_HR_Employee_absence] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Advance_Payment]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Advance_Payment](
	[ID] [bigint] NOT NULL,
	[HR_Employees_ID] [bigint] NULL,
	[Paid_Value] [nchar](10) NULL,
	[HR_Advance_Payment_Type_ID] [int] NULL,
	[Tatal_Value] [money] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_HR_Employee_Advance_Payment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Advance_Payment_Paid]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Advance_Payment_Paid](
	[ID] [bigint] NOT NULL,
	[HR_Employee_Advance_Payment_ID] [bigint] NULL,
	[Value] [money] NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_HR_Employee_Advance_Payment_Paid] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Attendance]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employee_Bonus]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Bonus](
	[ID] [bigint] NOT NULL,
	[HR_Employees_ID] [bigint] NULL,
	[Value] [money] NULL,
	[Reason] [nvarchar](250) NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NOT NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_HR_Employee_Bonus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Deduction]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Deduction](
	[ID] [bigint] NOT NULL,
	[HR_Employees_ID] [bigint] NULL,
	[Value] [money] NULL,
	[Reason] [nvarchar](250) NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_HR_Employee_Deduction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Errands]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employee_Lateness]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Lateness](
	[ID] [bigint] NULL,
	[HR_Employees_ID] [bigint] NULL,
	[HR_Lateness_Type_ID] [int] NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Leaves]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employee_Nationality]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employee_Permission]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employee_Qualifications]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employee_Salary_History]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Employee_Salary_History](
	[ID] [bigint] NOT NULL,
	[HR_Employee_ID] [bigint] NULL,
	[Salary] [money] NULL,
	[Execution_Date] [datetime] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_HR_Employee_Salary_History] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_Employee_Shifts]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employee_Skills]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Employees]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Errands_Places]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_ErrandsTypes]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Faculty]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Formal_Holidays]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Functional_Degree]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Identity_Types]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Jobs]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Lateness_Type]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HR_Lateness_Type](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Value] [float] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
 CONSTRAINT [PK_HR_Lateness_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HR_LeaveTypes]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Machine_IP]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_MachineMoves]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_PermissionTypes]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Qualifications]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_ShiftTypes]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Skills]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Univercity]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[HR_Univercity_Faculty]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[PR_Group]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[PR_GroupModuleMenu]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[PR_Menu]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[PR_Module]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[PR_User]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[PR_UserGroup]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[PRJ_Project_Data]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRJ_Project_Data](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](11) NULL,
	[Code] [nvarchar](50) NULL,
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
	[GR_Client_ID] [int] NULL,
	[Contract_Party] [nvarchar](250) NULL,
	[Contract_Number] [nvarchar](50) NULL,
	[Projectv_Vlue] [money] NULL,
	[Supply_Order] [nvarchar](50) NULL,
 CONSTRAINT [PK_Project_Data] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRJ_Project_Employees]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRJ_Project_Employees](
	[ID] [bigint] NOT NULL,
	[Employees_ID] [bigint] NOT NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[PRJ_Project_Data_ID] [bigint] NULL,
 CONSTRAINT [PK_Project_Data_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRJ_Tender_Item]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRJ_Tender_Item](
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
	[Price] [money] NULL,
	[Required_Quantity1] [float] NULL,
 CONSTRAINT [PK_Tender_Item_Project] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRJ_Tender_Master]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRJ_Tender_Master](
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
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_Tender_Project_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PU_Purchase_Order_Details]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PU_Purchase_Order_Details](
	[GR_Item_ID] [int] NULL,
	[Supplier_Quantity] [float] NULL,
	[Supplier_Price] [money] NULL,
	[Required_Quantity] [float] NULL,
	[Is_Accpted] [bit] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[Responsible_Emp_Date] [date] NULL,
	[ID] [bigint] NOT NULL,
	[Responsible_Emp_ID] [bigint] NULL,
	[PU_Purchase_Order_Master_ID] [bigint] NULL,
 CONSTRAINT [PK_PU_Purchase_Order_Details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PU_Purchase_Order_Master]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PU_Purchase_Order_Master](
	[GR_currency_ID] [int] NULL,
	[ID] [bigint] NOT NULL,
	[GR_Supplier_ID] [int] NULL,
	[Taxes_Included] [bit] NULL,
	[Responsible_Emp_ID] [bigint] NULL,
	[Supplier_Purchese_No] [nvarchar](50) NULL,
	[Purchese_Order_Date] [date] NULL,
	[Pureche_order_id] [nvarchar](50) NULL,
	[Purchese_Order_Img_Path] [nvarchar](500) NULL,
	[IS_Send_Email] [bit] NULL,
	[Is_Accpted] [bit] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[PRJ_Tender_Master_ID] [bigint] NULL,
	[Date_From] [date] NULL,
	[Date_To] [date] NULL,
	[PU_Supply_Orders_ID] [bigint] NULL,
 CONSTRAINT [PK_PU_Purchase_Order_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PU_Supplier_Item]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[PU_Supply_Order_Items]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PU_Supply_Order_Items](
	[ID] [bigint] NOT NULL,
	[GR_Item_ID] [int] NULL,
	[PU_Purchase_Order_ID] [bigint] NULL,
	[PU_Supply_Orders_ID] [bigint] NULL,
	[GR_currency_ID] [int] NULL,
	[Required_Quantity] [float] NULL,
	[Price] [money] NULL,
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
 CONSTRAINT [PK_PU_Purchase_Order_Items] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PU_Supply_Orders]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PU_Supply_Orders](
	[ID] [bigint] NOT NULL,
	[GR_Supplier_ID] [int] NULL,
	[Supply_Order_id] [nchar](10) NULL,
	[Pureche_date] [date] NULL,
	[Supply_Order_Img_Path] [nvarchar](500) NULL,
	[GR_currency_ID] [int] NULL,
	[Responsible_Emp_ID] [bigint] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[PRJ_Tender_Master_ID] [bigint] NULL,
	[Taxes_Included] [bit] NULL,
	[Profit_Discount] [nchar](10) NULL,
 CONSTRAINT [PK_PU_Purchases_Suppliers_Items] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ST_Payment_Order]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ST_Payment_Order](
	[ID] [bigint] NOT NULL,
	[Payment_Order_Number] [nvarchar](50) NULL,
	[Payment_Order_Date] [date] NULL,
	[Responsible_Emp_ID] [bigint] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[ST_Stock_ID] [int] NULL,
	[Move_Out_Date] [date] NULL,
	[Img_Path] [nvarchar](500) NULL,
	[PRJ_Project_Data_ID] [bigint] NULL,
	[IS_Spent] [bit] NULL,
 CONSTRAINT [PK_ST_Payment_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ST_Payment_Order_Item]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ST_Payment_Order_Item](
	[ID] [bigint] NOT NULL,
	[ST_Payment_Order_ID] [bigint] NULL,
	[GR_Item_ID] [int] NULL,
	[Move_Out_Date] [date] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[Spent_Quantity] [float] NULL,
 CONSTRAINT [PK_ST_Payment_Order_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ST_Receiving_Permission]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ST_Receiving_Permission](
	[ID] [bigint] NOT NULL,
	[Receiving_Permission_Number] [nvarchar](50) NULL,
	[Receiving_Permission_Date] [date] NULL,
	[Responsible_Emp_ID] [bigint] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[ST_Stock_ID] [int] NULL,
	[Store_Date] [date] NULL,
	[GR_Supplier_ID] [int] NULL,
	[Img_Path] [nvarchar](500) NULL,
	[PU_Supply_Orders_ID] [bigint] NULL,
 CONSTRAINT [PK_ST_Invoice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ST_Receiving_Permission_Item]    Script Date: 6/14/2023 9:53:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ST_Receiving_Permission_Item](
	[ID] [bigint] NOT NULL,
	[ST_Receiving_Permission_ID] [bigint] NULL,
	[GR_Item_ID] [int] NULL,
	[Store_date] [date] NULL,
	[IS_Active] [bit] NULL,
	[IS_Deleted] [bit] NULL,
	[User_Creation_Id] [bigint] NULL,
	[User_Creation_Date] [datetime] NULL,
	[User_Updation_Id] [bigint] NULL,
	[User_Updation_Date] [datetime] NULL,
	[User_Deletion_Id] [bigint] NULL,
	[User_Deletion_Date] [datetime] NULL,
	[Received_Quantity] [float] NULL,
 CONSTRAINT [PK_St_Store_Items_Stock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ST_Stock]    Script Date: 6/14/2023 9:53:56 PM ******/
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
/****** Object:  Table [dbo].[UserType]    Script Date: 6/14/2023 9:53:56 PM ******/
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
INSERT [dbo].[GR_Client] ([ID], [Name], [Administrator_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Email], [Phone], [Address], [Fax]) VALUES (1, N'شركة الجيش', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Currency] ([ID], [Currency_Name], [Covert_To_EGP], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, N'مصري', 3223.0000, 1, 0, 2, CAST(N'2023-06-05T23:30:00.200' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Currency] ([ID], [Currency_Name], [Covert_To_EGP], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (51, N'63', 3345.0000, 1, 0, 2, CAST(N'2023-06-03T21:48:18.627' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, 2, 1, N'بوش 1/2*1/4', NULL, 1, 0, NULL, NULL, 1, CAST(N'2023-06-03T21:49:54.690' AS DateTime), NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (2, 1, 1, N'بوش 3/4*1/2 ul', 1, 1, 0, 10, CAST(N'2023-06-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (3, 1, 1, N'جلبه 1/2 لحام', 1, 1, 0, 10, CAST(N'2023-06-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (4, 1, 1, N'كوع  1/2 ul', 1, 1, 0, 10, CAST(N'2023-06-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (5, 1, 1, N'كوع  2" ul', 1, 1, 0, 10, CAST(N'2023-06-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (6, 1, 1, N'كوع  3/4" ul', 1, 1, 0, 10, CAST(N'2023-06-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (7, 1, 1, N'لاكور 1/2" ul', 1, 1, 0, 10, CAST(N'2023-06-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (8, 1, 1, N'لاكور 3/4" ul', 1, 1, 0, 10, CAST(N'2023-06-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (9, 1, 1, N'نبل 1/2" ul', 1, 1, 0, 10, CAST(N'2023-06-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (10, 1, 1, N'نبل 1.1/4" ul', 1, 1, 0, 10, CAST(N'2023-06-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (11, 1, 1, N'نبل 1/4" ul', 1, 1, 0, 10, CAST(N'2023-06-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (12, 1, 1, N'نبل 3/4" ul', 1, 1, 0, 10, CAST(N'2023-06-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (13, 1, 1, N'بوش 1*1/2" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (14, 1, 1, N'بوش 1*3/4" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (15, 1, 1, N'T 1" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (16, 1, 1, N'جلبه 1" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (17, 1, 1, N'كوع 1"', 1, 1, 0, 10, CAST(N'2023-06-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (18, 1, 1, N'كوع 1.1/4" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (19, 1, 1, N'كوع 1/2" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (20, 1, 1, N'لاكور 3/4" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (21, 1, 1, N'لاكور 1/2" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (22, 1, 1, N'نبل 1/2" مجلفن', 1, 1, 0, 10, CAST(N'2023-06-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (23, 1, 1, N'كيلو كتان ', 1, 1, 0, 10, CAST(N'2023-06-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (24, 1, 1, N'طقم بيان نحاس 1/2"', 1, 1, 0, 10, CAST(N'2023-06-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (25, 1, 1, N'كتان  كيلو', 1, 1, 0, 10, CAST(N'2023-06-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (26, 1, 1, N'بكره تفلون ', 1, 1, 0, 10, CAST(N'2023-06-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (27, 1, 1, N'بوش صلب ضغط 2000 ( 3/8*1/2 ) "', 1, 1, 0, 10, CAST(N'2023-07-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (28, 1, 1, N'بوش قلاوظ ( 1.25*1.5 ) "', 1, 1, 0, 10, CAST(N'2023-07-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (29, 1, 1, N'بوش قلاوظ (  2*1 ) "', 1, 1, 0, 10, CAST(N'2023-07-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (30, 1, 1, N'تي قلاوظ ( 1) "', 1, 1, 0, 10, CAST(N'2023-07-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (31, 1, 1, N'ني مسلوبه قلاوظ ( 1.25*1.5 )', 1, 1, 0, 10, CAST(N'2023-07-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (32, 1, 1, N'جلبه قلاوظ (2 ) "', 1, 1, 0, 10, CAST(N'2023-07-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (33, 1, 1, N'جلبه لحام ( 1 ) "', 1, 1, 0, 10, CAST(N'2023-07-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (34, 1, 1, N'جلبه لحام ( 1/2 ) "', 1, 1, 0, 10, CAST(N'2023-07-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (35, 1, 1, N'طبه عاميه 1"', 1, 1, 0, 10, CAST(N'2023-07-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (36, 1, 1, N'طبه عاميه 2"', 1, 1, 0, 10, CAST(N'2023-07-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (37, 1, 1, N'طبه قلاوظ ( 3/4 )"', 1, 1, 0, 10, CAST(N'2023-07-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (38, 1, 1, N'طبه قلاوظ عاميه ( 1 )"', 1, 1, 0, 10, CAST(N'2023-07-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (39, 1, 1, N'طبه قلاوظ عاميه ( 1/2 )"', 1, 1, 0, 10, CAST(N'2023-07-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (40, 1, 1, N'عدم رجوع نحاس 1" بوابه', 1, 1, 0, 10, CAST(N'2023-07-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (41, 1, 1, N'فلانشه عاميه ( 2 ) " ', 1, 1, 0, 10, CAST(N'2023-07-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (42, 1, 1, N'فلانشه لحام بشفه 1.1/4"', 1, 1, 0, 10, CAST(N'2023-07-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (43, 1, 1, N'فلانشه لحام برقبه  2"', 1, 1, 0, 10, CAST(N'2023-07-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (44, 1, 1, N'فلانشه لحام - محلي 3" 15 مم', 1, 1, 0, 10, CAST(N'2023-07-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (45, 1, 1, N'فلانشه لحام بشفه 4"', 1, 1, 0, 10, CAST(N'2023-07-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (46, 1, 1, N'فلانشه لحام بشفه 5"', 1, 1, 0, 10, CAST(N'2023-07-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (47, 1, 1, N'فلانشه لحام برقبه 1/2"', 1, 1, 0, 10, CAST(N'2023-07-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (48, 1, 1, N'فلانشه لحام برقبه 5" ', 1, 1, 0, 10, CAST(N'2023-07-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (49, 1, 1, N'كاب لحام 10"', 1, 1, 0, 10, CAST(N'2023-07-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (50, 1, 1, N'كاب 12"', 1, 1, 0, 10, CAST(N'2023-07-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (51, 1, 1, N'كاب لحام 1.1/2"', 1, 1, 0, 10, CAST(N'2023-07-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (52, 1, 1, N'كرسي خشب 12"', 1, 1, 0, 10, CAST(N'2023-07-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (53, 1, 1, N'كوع صلب ضغط 2000 1"', 1, 1, 0, 10, CAST(N'2023-07-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (54, 1, 1, N'كوع قلاوظ ul ( 1)"', 1, 1, 0, 10, CAST(N'2023-07-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (55, 1, 1, N'كوع قلاوظ (ul ( 1.1/2"', 1, 1, 0, 10, CAST(N'2023-07-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (56, 1, 1, N'كوع قلاوظ  (1.1/4)"', 1, 1, 0, 10, CAST(N'2023-07-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (57, 1, 1, N'كوع قلاوظ (2)"', 1, 1, 0, 10, CAST(N'2023-07-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (58, 1, 1, N'كوع قلاوظ ( 3/4 )"', 1, 1, 0, 10, CAST(N'2023-08-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (59, 1, 1, N'كوع لحام 1.1/2"', 1, 1, 0, 10, CAST(N'2023-08-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (60, 1, 1, N'كوع لحام  2.1/2"', 1, 1, 0, 10, CAST(N'2023-08-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (61, 1, 1, N'كوع لحام  1.1/4"', 1, 1, 0, 10, CAST(N'2023-08-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (62, 1, 1, N'كوع لحام 12"', 1, 1, 0, 10, CAST(N'2023-08-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (63, 1, 1, N'كوع لحام  4"', 1, 1, 0, 10, CAST(N'2023-08-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (64, 1, 1, N'كوع لحام  5"', 1, 1, 0, 10, CAST(N'2023-08-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (65, 1, 1, N'كوع لحام   45 درجه 3"', 1, 1, 0, 10, CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (66, 1, 1, N'كوع لحام   45 درجه 4"', 1, 1, 0, 10, CAST(N'2023-08-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (67, 1, 1, N'لاكور زنبه قلاوظ ( 1)"', 1, 1, 0, 10, CAST(N'2023-08-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (68, 1, 1, N'لاكور زنبه قلاوظ ( 1.1/4)"', 1, 1, 0, 10, CAST(N'2023-08-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (69, 1, 1, N'لاكور زنبه قلاوظ ( 2)"', 1, 1, 0, 10, CAST(N'2023-08-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (70, 1, 1, N'لاكور زنبه قلاوظ ( 3/4)"', 1, 1, 0, 10, CAST(N'2023-08-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (71, 1, 1, N'لاكور  قلاوظ ( 3/4)"', 1, 1, 0, 10, CAST(N'2023-08-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (72, 1, 1, N'ماسوره لي محمله 1/2"', 1, 1, 0, 10, CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (73, 1, 1, N'مسلوب لحام (3*4)"', 1, 1, 0, 10, CAST(N'2023-08-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (74, 1, 1, N'مسلوب لحام (5*4)"', 1, 1, 0, 10, CAST(N'2023-08-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (75, 1, 1, N'نبل قلاوظ ( 1 )"', 1, 1, 0, 10, CAST(N'2023-08-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (76, 1, 1, N'نبل قلاوظ ( 1/2 )"', 1, 1, 0, 10, CAST(N'2023-08-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (77, 1, 1, N'نبل قلاوظ ( 3/4 )"', 1, 1, 0, 10, CAST(N'2023-08-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (78, 1, 1, N'مسلوب ( 6*5 )"', 1, 1, 0, 10, CAST(N'2023-08-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (79, 1, 1, N'فلانشه 6" بشفه كلاس 150', 1, 1, 0, 10, CAST(N'2023-08-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (80, 1, 1, N'كيلو مسامير 12 مم * 6 سم', 1, 1, 0, 10, CAST(N'2023-08-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (81, 1, 1, N'كوع لحام جدول (40) 14"', 1, 1, 0, 10, CAST(N'2023-08-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (82, 1, 1, N'كوع لحام جدول (40) 12"', 1, 1, 0, 10, CAST(N'2023-08-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (83, 1, 1, N'كوع لحام جدول (40) 10"', 1, 1, 0, 10, CAST(N'2023-08-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (84, 1, 1, N'كوع لحام جدول (40) 8"', 1, 1, 0, 10, CAST(N'2023-08-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (85, 1, 1, N'مسلوب لحام 14/12 "', 1, 1, 0, 10, CAST(N'2023-08-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (86, 1, 1, N'مسلوب لحام 12/10"', 1, 1, 0, 10, CAST(N'2023-08-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (87, 1, 1, N'مسلوب لحام 10/8 "', 1, 1, 0, 10, CAST(N'2023-08-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (88, 1, 1, N'تي لحام جدول (40) 8"', 1, 1, 0, 10, CAST(N'2023-08-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (89, 1, 1, N'تي لحام جدول (40) 8/12"', 1, 1, 0, 10, CAST(N'2023-09-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (90, 1, 1, N'تي لحام جدول (40) 8/10"', 1, 1, 0, 10, CAST(N'2023-09-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (91, 1, 1, N'ماسوره 12" اسود', 1, 1, 0, 10, CAST(N'2023-09-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (92, 1, 1, N'ماسوره 2" اسود', 1, 1, 0, 10, CAST(N'2023-09-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (93, 1, 1, N'طبه 1/2" مجلفنه', 1, 1, 0, 10, CAST(N'2023-09-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (94, 1, 1, N'كوع 1" مجلفنه ', 1, 1, 0, 10, CAST(N'2023-09-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (95, 1, 1, N'جوان 4" pn 16', 1, 1, 0, 10, CAST(N'2023-09-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (96, 1, 1, N'جوان 6" pn 16', 1, 1, 0, 10, CAST(N'2023-09-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (97, 1, 1, N'يوبلت 3"', 1, 1, 0, 10, CAST(N'2023-09-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (98, 1, 1, N'علبه انكور 10*10', 1, 1, 0, 10, CAST(N'2023-09-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (99, 1, 1, N'مسلوب لحام 4*3', 1, 1, 0, 10, CAST(N'2023-09-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (100, 1, 1, N'كاب 8" لحام ', 1, 1, 0, 10, CAST(N'2023-09-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (101, 1, 1, N'فلانشه 8" برقبه', 1, 1, 0, 10, CAST(N'2023-09-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (102, 1, 1, N'افيز 8"', 1, 1, 0, 10, CAST(N'2023-09-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (103, 1, 1, N'فلانشه 6" برقبه', 1, 1, 0, 10, CAST(N'2023-09-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (104, 1, 1, N'افيز 6"', 1, 1, 0, 10, CAST(N'2023-09-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (105, 1, 1, N'كوع 5" لحام', 1, 1, 0, 10, CAST(N'2023-09-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (106, 1, 1, N'فلانشه 5" برقبه', 1, 1, 0, 10, CAST(N'2023-09-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (107, 1, 1, N'افيز 5" ', 1, 1, 0, 10, CAST(N'2023-09-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (108, 1, 1, N'فلانشه 4" برقبه', 1, 1, 0, 10, CAST(N'2023-09-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (109, 1, 1, N'كوع 3" لحام', 1, 1, 0, 10, CAST(N'2023-09-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (110, 1, 1, N'افيز 3"', 1, 1, 0, 10, CAST(N'2023-09-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (111, 1, 1, N'فلانشه 3" برقبه', 1, 1, 0, 10, CAST(N'2023-09-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (112, 1, 1, N'مسلوب ( 2.5 / 2 )" لحام', 1, 1, 0, 10, CAST(N'2023-09-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (113, 1, 1, N'كوع 2.5 " لحام ', 1, 1, 0, 10, CAST(N'2023-09-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (114, 1, 1, N'فلانشه 2.5" برقبه', 1, 1, 0, 10, CAST(N'2023-09-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (115, 1, 1, N'افيز 2.5"', 1, 1, 0, 10, CAST(N'2023-09-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (116, 1, 1, N'كوع لحام 2"', 1, 1, 0, 10, CAST(N'2023-09-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (117, 1, 1, N'تي 2" لحام ', 1, 1, 0, 10, CAST(N'2023-09-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (118, 1, 1, N'مسلوب (1 / 2 )" لحام', 1, 1, 0, 10, CAST(N'2023-09-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (119, 1, 1, N'مسلوب (2/1.5) " لحام', 1, 1, 0, 10, CAST(N'2023-10-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (120, 1, 1, N'افيز 2"', 1, 1, 0, 10, CAST(N'2023-10-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (121, 1, 1, N'تي 1.5" لحام ', 1, 1, 0, 10, CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (122, 1, 1, N'كوع 1.5" لحام', 1, 1, 0, 10, CAST(N'2023-10-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (123, 1, 1, N'فلانشه 1.5" برقبه', 1, 1, 0, 10, CAST(N'2023-10-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (124, 1, 1, N'افيز 1.5" ', 1, 1, 0, 10, CAST(N'2023-10-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (125, 1, 1, N'جلبه 1" ربط ضغط عالي ', 1, 1, 0, 10, CAST(N'2023-10-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (126, 1, 1, N'نبل 1" ربط ضغط عالي ', 1, 1, 0, 10, CAST(N'2023-10-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (127, 1, 1, N'فلانشه 1" برقبه', 1, 1, 0, 10, CAST(N'2023-10-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (128, 1, 1, N'تي 1" لحام', 1, 1, 0, 10, CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (129, 1, 1, N'كوع 1" لحام ', 1, 1, 0, 10, CAST(N'2023-10-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (130, 1, 1, N'كوع 1/2 " لحام ', 1, 1, 0, 10, CAST(N'2023-10-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (131, 1, 1, N'افيز 1/2 " ', 1, 1, 0, 10, CAST(N'2023-10-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (132, 1, 1, N'نبل 1/4*1/2" ربط ضغط عالي ', 1, 1, 0, 10, CAST(N'2023-10-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (133, 1, 1, N'نبل 2" ربط ضغط عالي ', 1, 1, 0, 10, CAST(N'2023-10-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (134, 1, 1, N'بوش 3/8" * 1" رباط ضغط عالي ', 1, 1, 0, 10, CAST(N'2023-10-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (135, 1, 1, N'لاكور 6" رباط ضغط عالي ', 1, 1, 0, 10, CAST(N'2023-10-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (136, 1, 1, N'لاكور 1" رباط ضغط عالي ', 1, 1, 0, 10, CAST(N'2023-10-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (137, 1, 1, N'لاكور 1/2" رباط ضغط عالي ', 1, 1, 0, 10, CAST(N'2023-10-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (138, 1, 1, N'ولد بسن 2"', 1, 1, 0, 10, CAST(N'2023-10-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (139, 1, 1, N'ولد بسن 1"', 1, 1, 0, 10, CAST(N'2023-10-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (140, 1, 1, N'ولد بسن 1/2"', 1, 1, 0, 10, CAST(N'2023-10-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (141, 1, 1, N'مسلوب (8 / 5 )"', 1, 1, 0, 10, CAST(N'2023-10-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (142, 1, 1, N'مواسير استانليس 1/2"', 1, 1, 0, 10, CAST(N'2023-10-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (143, 1, 1, N'كوع استانليس 1/2"', 1, 1, 0, 10, CAST(N'2023-10-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (144, 1, 1, N'محبس عدم رجوع 1/2" استانليس', 1, 1, 0, 10, CAST(N'2023-10-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (145, 1, 1, N'محبس عداد ضغط 1/2 " استانليس', 1, 1, 0, 10, CAST(N'2023-10-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (146, 1, 1, N'لاكور استانليس سن 1/2" ', 1, 1, 0, 10, CAST(N'2023-10-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (147, 1, 1, N'كوع استانليس 1/2"', 1, 1, 0, 10, CAST(N'2023-10-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (148, 1, 1, N'تي استانليس سن 1/2"', 1, 1, 0, 10, CAST(N'2023-10-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (149, 1, 1, N'مواسير 1/2" اسود', 1, 1, 0, 10, CAST(N'2023-10-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (150, 1, 1, N'مواسير 2" اسود ', 1, 1, 0, 10, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (151, 1, 1, N'كوع حديد سن مجلفن 3/4"', 1, 1, 0, 10, CAST(N'2023-11-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (152, 1, 1, N'اوتلت سن جلبه مجلفن 1/2"', 1, 1, 0, 10, CAST(N'2023-11-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (153, 1, 1, N'اوتلت سن جلبه مجلفن 2"', 1, 1, 0, 10, CAST(N'2023-11-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (154, 1, 1, N'نبل استاندر سن 1/2" مجلفن ', 1, 1, 0, 10, CAST(N'2023-11-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (155, 1, 1, N'فلانشه كلاس 150 4"', 1, 1, 0, 10, CAST(N'2023-11-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (156, 1, 1, N'جوان كلاس 150 4"', 1, 1, 0, 10, CAST(N'2023-11-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (157, 1, 1, N'جوان كلاس 150 6"', 1, 1, 0, 10, CAST(N'2023-11-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (158, 1, 1, N'علبه انكور 10 مم ', 1, 1, 0, 10, CAST(N'2023-11-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (159, 1, 1, N'كوع لحام 2"', 1, 1, 0, 10, CAST(N'2023-11-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (160, 1, 1, N'تي اكوال 6"', 1, 1, 0, 10, CAST(N'2023-11-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (161, 1, 1, N'فيزال 30*72 بنتير', 1, 1, 0, 10, CAST(N'2023-11-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (162, 1, 1, N'هيد سوفر تايمر 1"', 1, 1, 0, 10, CAST(N'2023-11-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (163, 1, 1, N'ميتد 1.5"', 1, 1, 0, 10, CAST(N'2023-11-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (164, 1, 1, N'موتورايز 1.5"', 1, 1, 0, 10, CAST(N'2023-11-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (165, 1, 1, N'ريزن تولش t42na', 1, 1, 0, 10, CAST(N'2023-11-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (166, 1, 1, N'موزع سفلي شجره 30" 5. لزق', 1, 1, 0, 10, CAST(N'2023-11-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (167, 1, 1, N'توب 50 ملي سن خارجي ', 1, 1, 0, 10, CAST(N'2023-11-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (168, 1, 1, N'طبه 4"', 1, 1, 0, 10, CAST(N'2023-11-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (169, 1, 1, N'تنك 500 لتر ابيض', 1, 1, 0, 10, CAST(N'2023-11-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (170, 1, 1, N'ادبتور 15 فولت', 1, 1, 0, 10, CAST(N'2023-11-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (171, 1, 1, N'ريزار 50 ملي ', 1, 1, 0, 10, CAST(N'2023-11-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (172, 1, 1, N'طلمبه انتيك 5/5', 1, 1, 0, 10, CAST(N'2023-11-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (173, 1, 1, N'كرتونه سلك لحام  3 مم', 1, 1, 0, 10, CAST(N'2023-11-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (174, 1, 1, N'لفه حبل امينت', 1, 1, 0, 10, CAST(N'2023-11-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (175, 1, 1, N'جوان 4" pn 16 مخروم ', 1, 1, 0, 10, CAST(N'2023-11-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (176, 1, 1, N'علبه اكمون 12 مم', 1, 1, 0, 10, CAST(N'2023-11-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (177, 1, 1, N'تي لحام 6" جدول 40 اسود', 1, 1, 0, 10, CAST(N'2023-11-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (178, 1, 1, N'كوع لحام جدول 40 10" اسود', 1, 1, 0, 10, CAST(N'2023-11-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (179, 1, 1, N'مسلوب لحام 2/1.5 " اسود', 1, 1, 0, 10, CAST(N'2023-11-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (180, 1, 1, N'فلانشه لحام 1.5 " امريكي ', 1, 1, 0, 10, CAST(N'2023-12-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (181, 1, 1, N'جوان 1.5 " امريكي ', 1, 1, 0, 10, CAST(N'2023-12-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (182, 1, 1, N'فلانشه 5"   pn16', 1, 1, 0, 10, CAST(N'2023-12-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (183, 1, 1, N'فلانشه 5" كلاس 150', 1, 1, 0, 10, CAST(N'2023-12-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (184, 3, 1, N'جوان 4" كلاس 150', 1, 1, 0, 10, CAST(N'2023-12-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (185, 3, 1, N'جوان 5" كلاس 151', 1, 1, 0, 10, CAST(N'2023-12-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (186, 3, 1, N'جوان 6" كلاس 152', 1, 1, 0, 10, CAST(N'2023-12-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (187, 1, 1, N'ماسوره 2" اسود', 1, 1, 0, 10, CAST(N'2023-12-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (188, 1, 1, N'كوع لحام 2" اسود', 1, 1, 0, 10, CAST(N'2023-12-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (189, 1, 1, N'T 4*6 اسود', 1, 1, 0, 10, CAST(N'2023-12-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (190, 1, 1, N'ماسوره 2"  اسود', 1, 1, 0, 10, CAST(N'2023-12-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (191, 1, 1, N'ماسوره 1"  اسود', 1, 1, 0, 10, CAST(N'2023-12-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (192, 1, 1, N'طاب كاب 8" اسود', 1, 1, 0, 10, CAST(N'2023-12-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (193, 1, 1, N'كوع  3" اسود', 1, 1, 0, 10, CAST(N'2023-12-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (194, 1, 1, N'كوع 2" اسود', 1, 1, 0, 10, CAST(N'2023-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (195, 1, 1, N' مسامير 16 مم - 8 سم', 1, 1, 0, 10, CAST(N'2023-12-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (196, 1, 1, N'اسود    T 3"', 1, 1, 0, 10, CAST(N'2023-12-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (197, 1, 1, N'اسود   T 8"', 1, 1, 0, 10, CAST(N'2023-12-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (198, 1, 1, N'مسلوب 8*6" اسود لامركزي', 1, 1, 0, 10, CAST(N'2023-12-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (199, 1, 1, N'مسلوب 5*8 اسود', 1, 1, 0, 10, CAST(N'2023-12-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (200, 1, 1, N'مسلوب 4* 6" اسود مركزي', 1, 1, 0, 10, CAST(N'2023-12-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (201, 1, 1, N'supply of 2" Swing check  valve .NIBCO MODIL (kt-403-w) 200 psi', 1, 1, 0, 10, CAST(N'2023-12-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (202, 1, 1, N'supply of 2" os&y Gata valve .NIBCO MODIL (T-104-O) 175 PSI', 1, 1, 0, 10, CAST(N'2023-12-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (203, 1, 1, N'HU3 UTILITY LINE DPVF 60/4-2 SVP FNW 100*NW 150', 1, 1, 0, 10, CAST(N'2023-12-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (204, 1, 1, N'HU3 UTILITY LINE DPVF 85/4-2 SVP FNW 100*NW 200', 1, 1, 0, 10, CAST(N'2023-12-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (205, 1, 1, N'HU3 UTILITY LINE DPVF 40/3 SVP FNW 80*NW 150', 1, 1, 0, 10, CAST(N'2023-12-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (206, 1, 1, N'HU3 UTILITY LINE DPVF 60/4-2 (22kw )  SVP FNW 150 tpg 2024504', 1, 1, 0, 10, CAST(N'2023-12-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (207, 1, 1, N'HU3 UTILITY LINE DPVF 85/4-1 SVP FNW 100*NW 200', 1, 1, 0, 10, CAST(N'2023-12-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (208, 1, 1, N'ماسوره سمليس 1/2" اسود', 1, 1, 0, 10, CAST(N'2023-12-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (209, 1, 1, N'ماسوره سمليس 1" اسود', 1, 1, 0, 10, CAST(N'2023-12-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (210, 1, 1, N'ماسوره سمليس 2" اسود', 1, 1, 0, 10, CAST(N'2023-12-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (211, 1, 1, N'ماسوره سمليس 2.1/2" اسود', 1, 1, 0, 10, CAST(N'2024-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (212, 1, 1, N'ماسوره سمليس 3" اسود', 1, 1, 0, 10, CAST(N'2024-01-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (213, 1, 1, N'ماسوره سمليس 4" اسود', 1, 1, 0, 10, CAST(N'2024-01-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (214, 1, 1, N'ماسوره سمليس 6" اسود', 1, 1, 0, 10, CAST(N'2024-01-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (215, 1, 1, N'ماسوره سمليس 8" اسود', 1, 1, 0, 10, CAST(N'2024-01-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (216, 1, 1, N'مواسير مجلفن 3"', 1, 1, 0, 10, CAST(N'2024-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (217, 1, 1, N'مواسير مجلفن 4"', 1, 1, 0, 10, CAST(N'2024-01-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (218, 1, 1, N'مواسير مجلفن 6"', 1, 1, 0, 10, CAST(N'2024-01-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (219, 1, 1, N'مواسير مجلفن 8"', 1, 1, 0, 10, CAST(N'2024-01-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (220, 1, 1, N'مواسير مجلفن 10"', 1, 1, 0, 10, CAST(N'2024-01-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (221, 1, 1, N'مواسير 0.5" اسود', 1, 1, 0, 10, CAST(N'2024-01-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (222, 1, 1, N'مواسير 3/4" اسود', 1, 1, 0, 10, CAST(N'2024-01-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (223, 1, 1, N'مواسير 1" اسود', 1, 1, 0, 10, CAST(N'2024-01-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (224, 1, 1, N'مواسير 1.25" اسود', 1, 1, 0, 10, CAST(N'2024-01-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (225, 1, 1, N'مواسير 1.5" اسود', 1, 1, 0, 10, CAST(N'2024-01-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (226, 1, 1, N'مواسير 2" اسود', 1, 1, 0, 10, CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (227, 1, 1, N'مواسير2.5" اسود', 1, 1, 0, 10, CAST(N'2024-01-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (228, 1, 1, N'مواسير 3" اسود', 1, 1, 0, 10, CAST(N'2024-01-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (229, 1, 1, N'مواسير 4" اسود', 1, 1, 0, 10, CAST(N'2024-01-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (230, 1, 1, N'مواسير 5" اسود', 1, 1, 0, 10, CAST(N'2024-01-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (231, 1, 1, N'مواسير 6" اسود', 1, 1, 0, 10, CAST(N'2024-01-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (232, 1, 1, N'مواسير 8" اسود', 1, 1, 0, 10, CAST(N'2024-01-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (233, 1, 1, N'مواسير 10" اسود', 1, 1, 0, 10, CAST(N'2024-01-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (234, 1, 1, N'علبه 3*3', 1, 1, 0, 10, CAST(N'2024-01-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (235, 1, 1, N'كمر 10 سم', 1, 1, 0, 10, CAST(N'2024-01-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (236, 1, 1, N'كمره 6*6', 1, 1, 0, 10, CAST(N'2024-01-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (237, 1, 1, N'كمره 12 u', 1, 1, 0, 10, CAST(N'2024-01-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (238, 1, 1, N'كمره اتش 12', 1, 1, 0, 10, CAST(N'2024-01-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (239, 1, 1, N'كمره u 8', 1, 1, 0, 10, CAST(N'2024-01-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (240, 1, 1, N'زاوية 5سم  5مم', 1, 1, 0, 10, CAST(N'2024-01-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (241, 1, 1, N'زاوية 5سم  3 مم', 1, 1, 0, 10, CAST(N'2024-01-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (242, 1, 1, N'علبه 10*10', 1, 1, 0, 10, CAST(N'2024-02-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (243, 1, 1, N'علبه 3*3', 1, 1, 0, 10, CAST(N'2024-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (244, 1, 1, N'فلانشات 2" class 150', 1, 1, 0, 10, CAST(N'2024-02-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (245, 1, 1, N'فلانشات 3" class 150', 1, 1, 0, 10, CAST(N'2024-02-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (246, 1, 1, N'فلانشات 4" class 150', 1, 1, 0, 10, CAST(N'2024-02-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (247, 1, 1, N'فلانشات 6" class 150', 1, 1, 0, 10, CAST(N'2024-02-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (248, 1, 1, N'فلانشه 6" كلاس 150  12 خرم', 1, 1, 0, 10, CAST(N'2024-02-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (249, 1, 1, N'فلانشات 8" class 150', 1, 1, 0, 10, CAST(N'2024-02-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (250, 1, 1, N'فلانشات 10" class 150', 1, 1, 0, 10, CAST(N'2024-02-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (251, 1, 1, N'فلانشات 1.5" PN16 ', 1, 1, 0, 10, CAST(N'2024-02-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (252, 1, 1, N'فلانشات 2" PN16 ', 1, 1, 0, 10, CAST(N'2024-02-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (253, 1, 1, N'فلانشات 3" PN16 ', 1, 1, 0, 10, CAST(N'2024-02-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (254, 1, 1, N'فلانشات 4" PN16', 1, 1, 0, 10, CAST(N'2024-02-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (255, 1, 1, N'فلانشات 6" PN16', 1, 1, 0, 10, CAST(N'2024-02-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (256, 1, 1, N'فلانشات 8" PN16', 1, 1, 0, 10, CAST(N'2024-02-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (257, 1, 1, N'فلانشات 8" عمياء ', 1, 1, 0, 10, CAST(N'2024-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (258, 1, 1, N'كوع 2" اسود', 1, 1, 0, 10, CAST(N'2024-02-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (259, 1, 1, N'كوع 3" اسود', 1, 1, 0, 10, CAST(N'2024-02-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (260, 1, 1, N'كوع 4" اسود', 1, 1, 0, 10, CAST(N'2024-02-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (261, 1, 1, N'كوع 5" اسود', 1, 1, 0, 10, CAST(N'2024-02-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (262, 1, 1, N'كوع 5" اسود جدول 20', 1, 1, 0, 10, CAST(N'2024-02-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (263, 1, 1, N'كوع 6" اسود', 1, 1, 0, 10, CAST(N'2024-02-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (264, 1, 1, N'كوع 6" اسود خفيف جدول 20', 1, 1, 0, 10, CAST(N'2024-02-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (265, 1, 1, N'كوع 8" اسود', 1, 1, 0, 10, CAST(N'2024-02-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (266, 1, 1, N'كوع 2" مجلفن ', 1, 1, 0, 10, CAST(N'2024-02-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (267, 1, 1, N'كوع 2.5" مجلفن ', 1, 1, 0, 10, CAST(N'2024-02-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (268, 1, 1, N'كوع 2.5" خفيف جدول 20', 1, 1, 0, 10, CAST(N'2024-02-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (269, 1, 1, N'كوع 2.5"  جدول 40', 1, 1, 0, 10, CAST(N'2024-02-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (270, 1, 1, N'كوع 3" مجلفن ', 1, 1, 0, 10, CAST(N'2024-02-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (271, 1, 1, N'كوع 4" مجلفن ', 1, 1, 0, 10, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (272, 1, 1, N'كوع 6" مجلفن ', 1, 1, 0, 10, CAST(N'2024-03-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (273, 1, 1, N'كوع 8" مجلفن ', 1, 1, 0, 10, CAST(N'2024-03-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (274, 1, 1, N'كوع 10" مجلفن ', 1, 1, 0, 10, CAST(N'2024-03-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (275, 1, 1, N'تى مسلوبة (3/1.25) " اسود', 1, 1, 0, 10, CAST(N'2024-03-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (276, 1, 1, N'تى مسلوبة ("10/8) اسود', 1, 1, 0, 10, CAST(N'2024-03-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (277, 1, 1, N'تى مسلوبة ("10/8) مجلفن', 1, 1, 0, 10, CAST(N'2024-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (278, 1, 1, N'تى مسلوبة (8/6) اسود', 1, 1, 0, 10, CAST(N'2024-03-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (279, 1, 1, N'تى مسلوبة (8/6) مجلفن', 1, 1, 0, 10, CAST(N'2024-03-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (280, 1, 1, N'تى مسلوبة (8/4) اسود', 1, 1, 0, 10, CAST(N'2024-03-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (281, 1, 1, N'تى مسلوبة (10/6) اسود', 1, 1, 0, 10, CAST(N'2024-03-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (282, 1, 1, N'تى مسلوبة (6/4) مجلفن', 1, 1, 0, 10, CAST(N'2024-03-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (283, 1, 1, N'تى مسلوبة (6/4) اسود', 1, 1, 0, 10, CAST(N'2024-03-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (284, 1, 1, N'تى  8" صريح مجلفن', 1, 1, 0, 10, CAST(N'2024-03-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (285, 1, 1, N'تى  3" صريح  اسود', 1, 1, 0, 10, CAST(N'2024-03-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (286, 1, 1, N'تى  4" صريح اسود جدول 20', 1, 1, 0, 10, CAST(N'2024-03-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (287, 1, 1, N'تى  4" صريح اسود', 1, 1, 0, 10, CAST(N'2024-03-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (288, 1, 1, N'تى  6" صريح مجلفن', 1, 1, 0, 10, CAST(N'2024-03-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (289, 1, 1, N'تى  6" صريح جدول 20', 1, 1, 0, 10, CAST(N'2024-03-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (290, 1, 1, N'يوبلت 2"  - 10مم', 1, 1, 0, 10, CAST(N'2024-03-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (291, 1, 1, N'يوبلت 3"  - 10مم', 1, 1, 0, 10, CAST(N'2024-03-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (292, 1, 1, N'يوبلت 4"  - 10مم', 1, 1, 0, 10, CAST(N'2024-03-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (293, 1, 1, N'يوبلت 6"  - 10مم', 1, 1, 0, 10, CAST(N'2024-03-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (294, 1, 1, N'يوبلت 6"  - 12مم', 1, 1, 0, 10, CAST(N'2024-03-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (295, 1, 1, N'يوبلت 8"  - 10مم', 1, 1, 0, 10, CAST(N'2024-03-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (296, 1, 1, N'يوبلت 8"  - 14مم', 1, 1, 0, 10, CAST(N'2024-03-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (297, 1, 1, N'يوبلت 10"  - 14مم', 1, 1, 0, 10, CAST(N'2024-03-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (298, 1, 1, N'افيز بجوان 3"', 1, 1, 0, 10, CAST(N'2024-03-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (299, 1, 1, N'افيز بجوان 4"', 1, 1, 0, 10, CAST(N'2024-03-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (300, 1, 1, N'افيز بجوان 6"', 1, 1, 0, 10, CAST(N'2024-03-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (301, 1, 1, N'افيز بجوان 8"', 1, 1, 0, 10, CAST(N'2024-03-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (302, 1, 1, N'هنجر 6"', 1, 1, 0, 10, CAST(N'2024-04-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (303, 1, 1, N'هنجر 8"', 1, 1, 0, 10, CAST(N'2024-04-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (304, 1, 1, N'هنجر 2.5 "', 1, 1, 0, 10, CAST(N'2024-04-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (305, 1, 1, N'هنجر 3 "', 1, 1, 0, 10, CAST(N'2024-04-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (306, 1, 1, N'هنجر 4"', 1, 1, 0, 10, CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (307, 1, 1, N'هنجر 1"', 1, 1, 0, 10, CAST(N'2024-04-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (308, 1, 1, N'هنجر 1.25 "', 1, 1, 0, 10, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (309, 1, 1, N'هنجر 2"', 1, 1, 0, 10, CAST(N'2024-04-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (310, 1, 1, N'هنجر 1.5', 1, 1, 0, 10, CAST(N'2024-04-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (311, 1, 1, N'مسمار 20 مم طوله 10 سم', 1, 1, 0, 10, CAST(N'2024-04-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (312, 1, 1, N'كيلو ورده 12 مم  ', 1, 1, 0, 10, CAST(N'2024-04-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (313, 1, 1, N'كيلو صموله 12 مم', 1, 1, 0, 10, CAST(N'2024-04-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (314, 1, 1, N'كيلو صموله 10 مم', 1, 1, 0, 10, CAST(N'2024-04-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (315, 1, 1, N'كيلو ورده 10 مم', 1, 1, 0, 10, CAST(N'2024-04-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (316, 1, 1, N'جوان 8" للعمياء', 1, 1, 0, 10, CAST(N'2024-04-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (317, 1, 1, N'تيش 10 مم', 1, 1, 0, 10, CAST(N'2024-04-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (318, 1, 1, N'تيش 12 مم', 1, 1, 0, 10, CAST(N'2024-04-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (319, 1, 1, N'مسلوب (8/5) اسود ', 1, 1, 0, 10, CAST(N'2024-04-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (320, 1, 1, N'مسلوب (4/3) مجلفن ', 1, 1, 0, 10, CAST(N'2024-04-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (321, 1, 1, N'مسلوب (8/4) اسود ', 1, 1, 0, 10, CAST(N'2024-04-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (322, 1, 1, N'مسلوب (8/6) مجلفن ', 1, 1, 0, 10, CAST(N'2024-04-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (323, 1, 1, N'مسلوب (8/6) اسود ', 1, 1, 0, 10, CAST(N'2024-04-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (324, 1, 1, N'مسلوب (4/2.5) اسود ', 1, 1, 0, 10, CAST(N'2024-04-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (325, 1, 1, N'مسلوب (5/2.5) اسود ', 1, 1, 0, 10, CAST(N'2024-04-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (326, 1, 1, N'مسلوب (2/1.5) اسود ', 1, 1, 0, 10, CAST(N'2024-04-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (327, 1, 1, N'مسلوب (6/4) مجلفن ', 1, 1, 0, 10, CAST(N'2024-04-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (328, 1, 1, N'مسلوب (6/4) اسود', 1, 1, 0, 10, CAST(N'2024-04-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (329, 1, 1, N'طبة كاب 4" مجلفن', 1, 1, 0, 10, CAST(N'2024-04-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (330, 1, 1, N'طبة كاب 6" مجلفن', 1, 1, 0, 10, CAST(N'2024-04-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (331, 1, 1, N'طبة كاب 8" مجلفن', 1, 1, 0, 10, CAST(N'2024-04-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (332, 1, 1, N'طبة كاب 10" مجلفن', 1, 1, 0, 10, CAST(N'2024-05-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (333, 1, 1, N'طبه كاب 8" اسود', 1, 1, 0, 10, CAST(N'2024-05-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (334, 1, 1, N'طبة كاب 10" اسود', 1, 1, 0, 10, CAST(N'2024-05-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (335, 1, 1, N'جوان 1.5 " pn16', 1, 1, 0, 10, CAST(N'2024-05-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (336, 1, 1, N'جوان 2 " كلاس و pn ', 1, 1, 0, 10, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (337, 1, 1, N'جوان 4 " كلاس و pn ', 1, 1, 0, 10, CAST(N'2024-05-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (338, 1, 1, N'جوان 6 "', 1, 1, 0, 10, CAST(N'2024-05-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (339, 1, 1, N'جوان 6 " كلاس 150    12 خرم', 1, 1, 0, 10, CAST(N'2024-05-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (340, 1, 1, N'جوان 8 " كلاس 150', 1, 1, 0, 10, CAST(N'2024-05-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (341, 1, 1, N'جوان 8 "    pn 16', 1, 1, 0, 10, CAST(N'2024-05-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (342, 1, 1, N'جوان 10 "', 1, 1, 0, 10, CAST(N'2024-05-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (343, 1, 1, N'جوان 3 " PN16 ز 8 خرم ', 1, 1, 0, 10, CAST(N'2024-05-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (344, 1, 1, N'جوان 5" جين جريد ', 1, 1, 0, 10, CAST(N'2024-05-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (345, 1, 1, N'اكمون 10 العلبة بها 100 ق', 1, 1, 0, 10, CAST(N'2024-05-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (346, 1, 1, N'اكمون 10 العلبة بها 50 ق', 1, 1, 0, 10, CAST(N'2024-05-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (347, 1, 1, N'اكمون 12 العلبة بها 50 ق', 1, 1, 0, 10, CAST(N'2024-05-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (348, 1, 1, N'  انكر 10 العلبه فيها 50 ق', 1, 1, 0, 10, CAST(N'2024-05-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (349, 1, 1, N'انكر  12 مم العلبه فيها 30 ق', 1, 1, 0, 10, CAST(N'2024-05-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (350, 1, 1, N'منظم مياة 2.5 "', 1, 1, 0, 10, CAST(N'2024-05-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (351, 1, 1, N'مصفاة  3"', 1, 1, 0, 10, CAST(N'2024-05-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (352, 1, 1, N'مصفاة  4"', 1, 1, 0, 10, CAST(N'2024-05-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (353, 1, 1, N'مصفاة  6"', 1, 1, 0, 10, CAST(N'2024-05-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (354, 1, 1, N'مصفاة 8"', 1, 1, 0, 10, CAST(N'2024-05-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (355, 1, 1, N'محبس 1.5" Jafar', 1, 1, 0, 10, CAST(N'2024-05-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (356, 1, 1, N'محبس 2" Jafar', 1, 1, 0, 10, CAST(N'2024-05-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (357, 1, 1, N'عدم رجوع 2" Nibco', 1, 1, 0, 10, CAST(N'2024-05-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (358, 1, 1, N'محبس 2" Nibco', 1, 1, 0, 10, CAST(N'2024-05-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (359, 1, 1, N'محبس 3"  Nibco', 1, 1, 0, 10, CAST(N'2024-05-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (360, 1, 1, N'محبس 3" Fire kill', 1, 1, 0, 10, CAST(N'2024-05-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (361, 1, 1, N'محبس 4" Reliable', 1, 1, 0, 10, CAST(N'2024-05-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (362, 1, 1, N'محبس 4" Nibco', 1, 1, 0, 10, CAST(N'2024-05-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (363, 1, 1, N'محبس 6" Fire kill', 1, 1, 0, 10, CAST(N'2024-06-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (364, 1, 1, N'محبس 6" Nibco', 1, 1, 0, 10, CAST(N'2024-06-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (365, 1, 1, N'محبس 8" Fire kill', 1, 1, 0, 10, CAST(N'2024-06-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (366, 1, 1, N'محبس 8" Nibco', 1, 1, 0, 10, CAST(N'2024-06-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (367, 1, 1, N'محبس 6" Nibco', 1, 1, 0, 10, CAST(N'2024-06-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (368, 1, 1, N'محبس 4" Nibco', 1, 1, 0, 10, CAST(N'2024-06-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (369, 1, 1, N'مصفاة  6"', 1, 1, 0, 10, CAST(N'2024-06-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (370, 1, 1, N'محبس 10" Nibco', 1, 1, 0, 10, CAST(N'2024-06-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (371, 1, 1, N'محبس 8" Nibco حريق احمر', 1, 1, 0, 10, CAST(N'2024-06-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (372, 1, 1, N'محبس 6" Nibco', 1, 1, 0, 10, CAST(N'2024-06-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (373, 1, 1, N'محبس 4" Nibco', 1, 1, 0, 10, CAST(N'2024-06-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (374, 1, 1, N'محبس 3" Nibco', 1, 1, 0, 10, CAST(N'2024-06-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (375, 1, 1, N'محبس 4" Nibco', 1, 1, 0, 10, CAST(N'2024-06-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (376, 1, 1, N'محبس 6" Nibco', 1, 1, 0, 10, CAST(N'2024-06-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (377, 1, 1, N'محبس 8" Nibco مياه ازرق', 1, 1, 0, 10, CAST(N'2024-06-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (378, 1, 1, N'مصفاة  6"', 1, 1, 0, 10, CAST(N'2024-06-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (379, 1, 1, N'مصفاة  6"', 1, 1, 0, 10, CAST(N'2024-06-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (380, 1, 1, N'مصفاة  8"', 1, 1, 0, 10, CAST(N'2024-06-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (381, 1, 1, N'محبس عوامة 3" ', 1, 1, 0, 10, CAST(N'2024-06-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (382, 1, 1, N'محبس عدم رجوع 1.5"', 1, 1, 0, 10, CAST(N'2024-06-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (383, 1, 1, N'محبس عدم رجوع 2"', 1, 1, 0, 10, CAST(N'2024-06-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (384, 1, 1, N'محبس عدم رجوع 4" Nibco', 1, 1, 0, 10, CAST(N'2024-06-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (385, 1, 1, N'محبس عدم رجوع 6"', 1, 1, 0, 10, CAST(N'2024-06-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (386, 1, 1, N'محبس تحكم بخار 1"', 1, 1, 0, 10, CAST(N'2024-06-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (387, 1, 1, N'محبس تحكم بخار 4/3"', 1, 1, 0, 10, CAST(N'2024-06-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (388, 1, 1, N'محبس 2" جكوميني ', 1, 1, 0, 10, CAST(N'2024-06-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (389, 1, 1, N'محبس 1.5" جكوميني ', 1, 1, 0, 10, CAST(N'2024-06-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (390, 1, 1, N'محبس 1.4" جكوميني ', 1, 1, 0, 10, CAST(N'2024-06-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (391, 1, 1, N'محبس 1" جكوميني ', 1, 1, 0, 10, CAST(N'2024-06-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (392, 1, 1, N'محبس 3/4" جكوميني ', 1, 1, 0, 10, CAST(N'2024-06-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (393, 1, 1, N'محبس 1/2" جكوميني ', 1, 1, 0, 10, CAST(N'2024-07-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (394, 1, 1, N'وصلة سريعة 150 LPE "6', 1, 1, 0, 10, CAST(N'2024-07-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (395, 1, 1, N'وصلة سريعة 150 6*LPE "4', 1, 1, 0, 10, CAST(N'2024-07-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (396, 1, 1, N'وصله سريعه كاوتش 4"', 1, 1, 0, 10, CAST(N'2024-07-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (397, 1, 1, N'وصله سريعه كاوتش 6"', 1, 1, 0, 10, CAST(N'2024-07-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (398, 1, 1, N'عداد 3" DN 100 PNIBR100', 1, 1, 0, 10, CAST(N'2024-07-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (399, 1, 1, N'عداد 6" SWING G CV CIASS 125/150', 1, 1, 0, 10, CAST(N'2024-07-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (400, 1, 1, N'Reel diameter 1"*30m fire hose', 1, 1, 0, 10, CAST(N'2024-07-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (401, 1, 1, N'2.5 Single  jacket hos 3om clwauick AL uminium copling ', 1, 1, 0, 10, CAST(N'2024-07-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (402, 1, 1, N'2.5 AL uminium nozzeb Spry jet kinl', 1, 1, 0, 10, CAST(N'2024-07-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (403, 1, 1, N'لاكيه فضي', 1, 1, 0, 10, CAST(N'2024-07-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (404, 1, 1, N' برايمر رمادي', 1, 1, 0, 10, CAST(N'2024-07-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (405, 1, 1, N'جركن تنر 4 لتر', 1, 1, 0, 10, CAST(N'2024-07-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (406, 1, 1, N'لاكيه احمر', 1, 1, 0, 10, CAST(N'2024-07-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (407, 1, 1, N'برايمر  احمر بستله', 1, 1, 0, 10, CAST(N'2024-07-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (408, 1, 1, N'فورم', 1, 1, 0, 10, CAST(N'2024-07-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (409, 1, 1, N'تنر 8 لتر', 1, 1, 0, 10, CAST(N'2024-07-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (410, 1, 1, N'تنر 2 لتر', 1, 1, 0, 10, CAST(N'2024-07-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (411, 1, 1, N'لاكيه فاضي لامع كيلو', 1, 1, 0, 10, CAST(N'2024-07-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (412, 1, 1, N'دراع  روله', 1, 1, 0, 10, CAST(N'2024-07-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (413, 1, 1, N'غيار روله', 1, 1, 0, 10, CAST(N'2024-07-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (414, 1, 1, N'كيلو كتان ', 1, 1, 0, 10, CAST(N'2024-07-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (415, 1, 1, N'بكره تفلون', 1, 1, 0, 10, CAST(N'2024-07-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (416, 1, 1, N'FILTER 5*30', 1, 1, 0, 10, CAST(N'2024-07-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (417, 1, 1, N'FILTER HOUSHNG', 1, 1, 0, 10, CAST(N'2024-07-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (418, 1, 1, N'MEIT BIOWN CONRIDL ', 1, 1, 0, 10, CAST(N'2024-07-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (419, 1, 1, N'SIMPLE AS WATAR ', 1, 1, 0, 10, CAST(N'2024-07-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (420, 1, 1, N'BC2 ', 1, 1, 0, 10, CAST(N'2024-07-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (421, 1, 1, N'WATER METER WS4 NKP', 1, 1, 0, 10, CAST(N'2024-07-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (422, 1, 1, N'TANK 100 L', 1, 1, 0, 10, CAST(N'2024-07-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (423, 1, 1, N'FILTER 5*30', 1, 1, 0, 10, CAST(N'2024-07-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (424, 1, 1, N'ATMOS GIGA-N 100/250 طلمبه', 1, 1, 0, 10, CAST(N'2024-08-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (425, 1, 1, N'ATMOS GIGA-N 100/315 طلمبه', 1, 1, 0, 10, CAST(N'2024-08-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (426, 1, 1, N'DN 50/RP 2"', 1, 1, 0, 10, CAST(N'2024-08-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (427, 1, 1, N'DN 50/2RP 2"', 1, 1, 0, 10, CAST(N'2024-08-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (428, 1, 1, N'FlOAT SWITCH WA 65', 1, 1, 0, 10, CAST(N'2024-08-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (429, 1, 1, N'Rep.kit 2 s 1301', 1, 1, 0, 10, CAST(N'2024-08-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (430, 1, 1, N'Rep.kit 2 p17.1-15-24', 1, 1, 0, 10, CAST(N'2024-08-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (431, 1, 1, N'HU3 UTILITY LINE DPVF 25/3 SVP', 1, 1, 0, 10, CAST(N'2024-08-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (432, 1, 1, N'PVF 6/16 50HZ طلمبة الجوكى', 1, 1, 0, 10, CAST(N'2024-08-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (433, 1, 1, N'مسلوب بيان (4/6)"', 1, 1, 0, 10, CAST(N'2024-08-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (434, 1, 1, N'فلترهواء ', 1, 1, 0, 10, CAST(N'2024-08-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (435, 1, 1, N'فلتر زيت ', 1, 1, 0, 10, CAST(N'2024-08-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (436, 1, 1, N'لوحة طلمبة ديزل', 1, 1, 0, 10, CAST(N'2024-08-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (437, 1, 1, N'طلمبة ديزل ', 1, 1, 0, 10, CAST(N'2024-08-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (438, 1, 1, N'بطاريات طلمبة الديزل بكابلاتها', 1, 1, 0, 10, CAST(N'2024-08-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (439, 1, 1, N'مجموعة حريق كاملة منفصلة', 1, 1, 0, 10, CAST(N'2024-08-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (440, 1, 1, N'Cocrete lnertia base according to sample Approved ( Coating ) with 4- open Tye sring 500 kg - 25mm static deflection - Tembo', 1, 1, 0, 10, CAST(N'2024-08-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (441, 1, 1, N'سوست للقواعد', 1, 1, 0, 10, CAST(N'2024-08-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (442, 1, 1, N'CDX/I 90/10 IE3', 1, 1, 0, 10, CAST(N'2024-08-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (443, 1, 1, N'CDXM/G 200/25 IE3', 1, 1, 0, 10, CAST(N'2024-08-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (444, 1, 1, N'CDX/I 200/25 IE3', 1, 1, 0, 10, CAST(N'2024-08-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (445, 1, 1, N'CR 10 - 16 X - FJ - A - E - HOOE ', 1, 1, 0, 10, CAST(N'2024-08-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (446, 1, 1, N'RLS 510 / M MX -TYPE:1163T', 1, 1, 0, 10, CAST(N'2024-08-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (447, 1, 1, N'RLS 510 / M MX -TYPE:1163T', 1, 1, 0, 10, CAST(N'2024-08-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (448, 1, 1, N'Tulsion T 42 Na+', 1, 1, 0, 10, CAST(N'2024-08-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (449, 1, 1, N'pentair 36" d x 72"H', 1, 1, 0, 10, CAST(N'2024-08-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (450, 1, 1, N'pentair 21" d x 72"H', 1, 1, 0, 10, CAST(N'2024-08-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (451, 1, 1, N' سعة 200 لتر ', 1, 1, 0, 10, CAST(N'2024-08-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (452, 1, 1, N' سعة 1000 لتر ', 1, 1, 0, 10, CAST(N'2024-08-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (453, 1, 1, N'طول 1 متر', 1, 1, 0, 10, CAST(N'2024-08-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (454, 1, 1, N'Clak 2" ', 1, 1, 0, 10, CAST(N'2024-08-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (455, 1, 1, N'ادبتور 12 فولت ', 1, 1, 0, 10, CAST(N'2024-09-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (456, 1, 1, N'لاكور 2" ul', 1, 1, 0, 10, CAST(N'2024-09-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (457, 1, 1, N'كوع 2" ul', 1, 1, 0, 10, CAST(N'2024-09-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (458, 1, 1, N'T 2"', 1, 1, 0, 10, CAST(N'2024-09-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (459, 1, 1, N'جلبه 2"', 1, 1, 0, 10, CAST(N'2024-09-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (460, 1, 1, N'جلبه 1"', 1, 1, 0, 10, CAST(N'2024-09-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (461, 1, 1, N'كوع 1"', 1, 1, 0, 10, CAST(N'2024-09-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (462, 1, 1, N'لاكور 1"', 1, 1, 0, 10, CAST(N'2024-09-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (463, 1, 1, N'نبل 1"', 1, 1, 0, 10, CAST(N'2024-09-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (464, 1, 1, N'T نص "', 1, 1, 0, 10, CAST(N'2024-09-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (465, 1, 1, N'كوع نص"', 1, 1, 0, 10, CAST(N'2024-09-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (466, 1, 1, N'نبل نص"', 1, 1, 0, 10, CAST(N'2024-09-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (467, 1, 1, N'بوش 1علي نص', 1, 1, 0, 10, CAST(N'2024-09-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (468, 1, 1, N'لاكور 1" ونص', 1, 1, 0, 10, CAST(N'2024-09-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (469, 1, 1, N'نبل 1" ونص', 1, 1, 0, 10, CAST(N'2024-09-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (470, 1, 1, N'كوع 1" ونص', 1, 1, 0, 10, CAST(N'2024-09-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (471, 1, 1, N'نبل 2"', 1, 1, 0, 10, CAST(N'2024-09-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (472, 1, 1, N'جلبه 1" ونص لحام', 1, 1, 0, 10, CAST(N'2024-09-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (473, 1, 1, N'جلبه 1" لحام', 1, 1, 0, 10, CAST(N'2024-09-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (474, 1, 1, N'جلبه نص" لحام', 1, 1, 0, 10, CAST(N'2024-09-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (475, 1, 1, N'كيلو كتان', 1, 1, 0, 10, CAST(N'2024-09-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (476, 1, 1, N'جالون برايمر رمادي', 1, 1, 0, 10, CAST(N'2024-09-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (477, 1, 1, N'جالون اسود لامع', 1, 1, 0, 10, CAST(N'2024-09-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (478, 1, 1, N'T 1"', 1, 1, 0, 10, CAST(N'2024-09-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (479, 1, 1, N'جلبه 1" وربع', 1, 1, 0, 10, CAST(N'2024-09-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (480, 1, 1, N'بوش 1" وربع علي 1', 1, 1, 0, 10, CAST(N'2024-09-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (481, 1, 1, N'كرسي خشب 6" بلافيز', 1, 1, 0, 10, CAST(N'2024-09-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (482, 1, 1, N'كرسي خشب 4" بلافيز', 1, 1, 0, 10, CAST(N'2024-09-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (483, 1, 1, N'كرسي خشب 2" بلافيز', 1, 1, 0, 10, CAST(N'2024-09-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (484, 1, 1, N'مسمار بفليشر  ', 1, 1, 0, 10, CAST(N'2024-09-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (485, 1, 1, N'جوان 6" ', 1, 1, 0, 10, CAST(N'2024-10-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (486, 1, 1, N'جوان 4"', 1, 1, 0, 10, CAST(N'2024-10-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (487, 1, 1, N'كوع لحام 6" جدول 40', 1, 1, 0, 10, CAST(N'2024-10-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (488, 1, 1, N'T 6" جدول 40', 1, 1, 0, 10, CAST(N'2024-10-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (489, 1, 1, N'مسلوب 6*4', 1, 1, 0, 10, CAST(N'2024-10-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (490, 1, 1, N'مسلوب 4*2', 1, 1, 0, 10, CAST(N'2024-10-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (491, 1, 1, N'كوع لحام 4" جدول 40', 1, 1, 0, 10, CAST(N'2024-10-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (492, 1, 1, N'طبه عمياء 4" * 15', 1, 1, 0, 10, CAST(N'2024-10-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (493, 1, 1, N'فلتر بولندي 4" ', 1, 1, 0, 10, CAST(N'2024-10-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (494, 1, 1, N'بكره تفلون', 1, 1, 0, 10, CAST(N'2024-10-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (495, 1, 1, N'فلانشه 4" *15', 1, 1, 0, 10, CAST(N'2024-10-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (496, 1, 1, N'فلانشه 6" *15', 1, 1, 0, 10, CAST(N'2024-10-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (497, 1, 1, N'طبه 6" *15', 1, 1, 0, 10, CAST(N'2024-10-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (498, 1, 1, N'كوع 2" جدول 40', 1, 1, 0, 10, CAST(N'2024-10-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (499, 1, 1, N'افيز بفلشر 1" اطالي', 1, 1, 0, 10, CAST(N'2024-10-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (500, 1, 1, N'افيز بفلشر 1" ونص اطالي', 1, 1, 0, 10, CAST(N'2024-10-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (501, 1, 1, N'افيز بفلشر 2" اطالي', 1, 1, 0, 10, CAST(N'2024-10-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (502, 1, 1, N'كيلو مسمار 16 مم *8 سم', 1, 1, 0, 10, CAST(N'2024-10-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (503, 1, 1, N'كيلو مسمار 12 مم * 12 سم', 1, 1, 0, 10, CAST(N'2024-10-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (504, 1, 1, N'كيلو مسمار 12 مم * 8 سم', 1, 1, 0, 10, CAST(N'2024-10-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (505, 1, 1, N'شيك فالف 4" ayvaz cv 10 ', 1, 1, 0, 10, CAST(N'2024-10-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (506, 1, 1, N'مصفاه 2" استانلس AYVAZ YS800', 1, 1, 0, 10, CAST(N'2024-10-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (507, 1, 1, N'سفتي فالف 1" قلاوظ AYVAZ SV254', 1, 1, 0, 10, CAST(N'2024-10-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (508, 1, 1, N'شيك فالف 1.5" استانلس   ayvaz SC 201  ', 1, 1, 0, 10, CAST(N'2024-10-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (509, 1, 1, N'شيك فالف 2" استانلس   ayvaz SC 201', 1, 1, 0, 10, CAST(N'2024-10-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (510, 1, 1, N'شيك فالف 1" استانلس   ayvaz SC 201  ', 1, 1, 0, 10, CAST(N'2024-10-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (511, 1, 1, N'مصفاه 4" ZETKAMA', 1, 1, 0, 10, CAST(N'2024-10-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (512, 1, 1, N'محبس استانلس قلاوظ 2"  AYVAZ V2T"', 1, 1, 0, 10, CAST(N'2024-10-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (513, 1, 1, N'محبس استانلس قلاوظ 1"  AYVAZ V2T"', 1, 1, 0, 10, CAST(N'2024-10-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (514, 1, 1, N'محبس استانلس قلاوظ 1/2"  AYVAZ V2T"', 1, 1, 0, 10, CAST(N'2024-10-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (515, 1, 1, N'CMA/I 2.00 TIE3', 1, 1, 0, 10, CAST(N'2024-10-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (516, 1, 1, N'3D/I 65-125/5.5', 1, 1, 0, 10, CAST(N'2024-11-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (517, 1, 1, N'CR3-4-A-A-A-HOOE', 1, 1, 0, 10, CAST(N'2024-11-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (518, 1, 1, N'CR5-5-A-A-A', 1, 1, 0, 10, CAST(N'2024-11-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (519, 1, 1, N'13055-50W.253D.S60.400/10', 1, 1, 0, 10, CAST(N'2024-11-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (520, 1, 1, N'BASIC REPAIR', 1, 1, 0, 10, CAST(N'2024-11-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (521, 1, 1, N'3M/32-160/2.2 IE3', 1, 1, 0, 10, CAST(N'2024-11-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (522, 1, 1, N'DPVF 60/3-2 B 50HZ', 1, 1, 0, 10, CAST(N'2024-11-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (523, 1, 1, N'GALL MAC3 H0710MT', 1, 1, 0, 10, CAST(N'2024-11-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (524, 1, 1, N'CLAK 1"', 1, 1, 0, 10, CAST(N'2024-11-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (525, 1, 1, N'ادبتور 12 فولت ', 1, 1, 0, 10, CAST(N'2024-11-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (526, 1, 1, N'WSI FITTING 1"', 1, 1, 0, 10, CAST(N'2024-11-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (527, 1, 1, N'اكسيسورى قطعة صفراء ', 1, 1, 0, 10, CAST(N'2024-11-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (528, 1, 1, N'WATER METER WS4 NKP', 1, 1, 0, 10, CAST(N'2024-11-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (529, 1, 1, N'عوامة طول 1 متر ', 1, 1, 0, 10, CAST(N'2024-11-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (530, 1, 1, N'خزان سعة 100 لتر ', 1, 1, 0, 10, CAST(N'2024-11-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (531, 1, 1, N'مصفاة للخزان كل واحد 4 مصفاة', 1, 1, 0, 10, CAST(N'2024-11-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (532, 1, 1, N'حامل للعوامة', 1, 1, 0, 10, CAST(N'2024-11-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (533, 1, 1, N'غطاء للخزان', 1, 1, 0, 10, CAST(N'2024-11-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (534, 1, 1, N'قطعة اسطوانية للخزان ', 1, 1, 0, 10, CAST(N'2024-11-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (535, 1, 1, N'PENTER 21"', 1, 1, 0, 10, CAST(N'2024-11-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (536, 1, 1, N'خزان  سعة 200 لتر ', 1, 1, 0, 10, CAST(N'2024-11-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (537, 1, 1, N'RLS70', 1, 1, 0, 10, CAST(N'2024-11-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (538, 1, 1, N'RLS70', 1, 1, 0, 10, CAST(N'2024-11-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (539, 1, 1, N'RS100', 1, 1, 0, 10, CAST(N'2024-11-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (540, 1, 1, N'RS100', 1, 1, 0, 10, CAST(N'2024-11-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (541, 1, 1, N'DPVF 25/2 B 50HZ', 1, 1, 0, 10, CAST(N'2024-11-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (542, 1, 1, N'DPVF 60/1 B 50HZ', 1, 1, 0, 10, CAST(N'2024-11-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (543, 1, 1, N'  خزان اصفر ', 1, 1, 0, 10, CAST(N'2024-11-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (544, 1, 1, N'MR - 2320-R', 1, 1, 0, 10, CAST(N'2024-11-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (545, 1, 1, N'MIRCOM TD-135', 1, 1, 0, 10, CAST(N'2024-11-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (546, 1, 1, N'MIRCOM BB-700', 1, 1, 0, 10, CAST(N'2024-12-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (547, 1, 1, N'HORN/STROBE (FHS-400RR)', 1, 1, 0, 10, CAST(N'2024-12-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (548, 1, 1, N'FIRE ALARM BELL 6"', 1, 1, 0, 10, CAST(N'2024-12-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (549, 1, 1, N'PHOTOELECUTRIC SMOKE', 1, 1, 0, 10, CAST(N'2024-12-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (550, 1, 1, N'MOMENT SWITCH RED', 1, 1, 0, 10, CAST(N'2024-12-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (551, 1, 1, N'UPRIGHT ', 1, 1, 0, 10, CAST(N'2024-12-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (552, 1, 1, N'PENDENT', 1, 1, 0, 10, CAST(N'2024-12-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (553, 1, 1, N'( عمارات)  طلمبه DPV 15 / 5 B HZ 4KW 400 / 690 V2P Code13 fixed', 1, 1, 0, 10, CAST(N'2024-12-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (554, 1, 1, N'طلمبة ( فيلات ) DPV 10 /3 B 50 HZ 1.1KW 230 / V2 CODE 11 Fixed', 1, 1, 0, 10, CAST(N'2024-12-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (555, 1, 1, N'عوامه كهربائيه الكرتونه فيها 10 علبه ', 1, 1, 0, 10, CAST(N'2024-12-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (556, 1, 1, N'HEAT DETECTOR ', 1, 1, 0, 10, CAST(N'2024-12-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (557, 1, 1, N'BASE HEAT DETECTOR ', 1, 1, 0, 10, CAST(N'2024-12-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (558, 1, 1, N'محبس 6" spirax sarco    ', 1, 1, 0, 10, CAST(N'2024-12-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (559, 1, 1, N'محبس 8" spirax sarco    ', 1, 1, 0, 10, CAST(N'2024-12-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (560, 1, 1, N'سفاتي ', 1, 1, 0, 10, CAST(N'2024-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (561, 1, 1, N'3*4 كابلات', 1, 1, 0, 10, CAST(N'2024-12-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (562, 1, 1, N'4*4 كابلات', 1, 1, 0, 10, CAST(N'2024-12-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (563, 1, 1, N'3*95+50 mm', 1, 1, 0, 10, CAST(N'2024-12-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (564, 1, 1, N'4*25 mm', 1, 1, 0, 10, CAST(N'2024-12-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (565, 1, 1, N'W-CTRL-MS-L-2*4KW-DOL', 1, 1, 0, 10, CAST(N'2024-12-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (566, 1, 1, N'PRO V08DA-244/EADOX2-T0105-540.0', 1, 1, 0, 10, CAST(N'2024-12-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (567, 1, 1, N'suspenion device dn80 / 2RK SB', 1, 1, 0, 10, CAST(N'2024-12-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (568, 1, 1, N'Local control panel 10.5KW', 1, 1, 0, 10, CAST(N'2024-12-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (569, 1, 1, N'TWU 4.08-29-DM-C', 1, 1, 0, 10, CAST(N'2024-12-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (570, 1, 1, N'VALVE ACTUATOR FLOATING 24 V 20MM HONEYWELL', 1, 1, 0, 10, CAST(N'2024-12-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (571, 1, 1, N'لوحه MCC', 1, 1, 0, 10, CAST(N'2024-12-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (572, 1, 1, N'لوحه توزيع', 1, 1, 0, 10, CAST(N'2024-12-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (573, 1, 1, N'بالته 20*20 سم 3مم', 1, 1, 0, 10, CAST(N'2024-12-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (574, 1, 1, N'بالته 20*20 سم 5 مم', 1, 1, 0, 10, CAST(N'2024-12-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (575, 1, 1, N'جلفنه لاكيه لامع', 1, 1, 0, 10, CAST(N'2024-12-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (576, 1, 1, N'لوح صاج بقلاوه 3 مم', 1, 1, 0, 10, CAST(N'2024-12-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (577, 1, 1, N'فلانشه   8" كلاس 150', 1, 1, 0, 10, CAST(N'2025-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (578, 1, 1, N'فلانشه   6" كلاس 150', 1, 1, 0, 10, CAST(N'2025-01-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (579, 1, 1, N'فلانشه   4" كلاس 150', 1, 1, 0, 10, CAST(N'2025-01-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (580, 1, 1, N'فلانشه   3" كلاس 150', 1, 1, 0, 10, CAST(N'2025-01-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (581, 1, 1, N'محبس  فراشه 6" DI', 1, 1, 0, 10, CAST(N'2025-01-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (582, 1, 1, N'محبس  فراشه 4" DI', 1, 1, 0, 10, CAST(N'2025-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (583, 1, 1, N'محبس  فراشه 2.5" DI', 1, 1, 0, 10, CAST(N'2025-01-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (584, 1, 1, N'تكيف 3 حصان ', 1, 1, 0, 10, CAST(N'2025-01-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (585, 1, 1, N'تكيف 2.25 حصان ', 1, 1, 0, 10, CAST(N'2025-01-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (586, 1, 1, N'تكيف 1.5 حصان ', 1, 1, 0, 10, CAST(N'2025-01-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (587, 1, 1, N'كوع 2.25" اسود', 1, 1, 0, 10, CAST(N'2025-01-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (588, 1, 1, N'كوع 3"اسود', 1, 1, 0, 10, CAST(N'2025-01-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (589, 1, 1, N'ني مسلوب ( 3/1.25 )" اسود', 1, 1, 0, 10, CAST(N'2025-01-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (590, 1, 1, N'كوع لحام جدول 20 ) 6"', 1, 1, 0, 10, CAST(N'2025-01-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (591, 1, 1, N'تي لحام جدول 40) 4" ', 1, 1, 0, 10, CAST(N'2025-01-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (592, 1, 1, N'جوان 3" 4 خرم', 1, 1, 0, 10, CAST(N'2025-01-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (593, 1, 1, N'فلانشه 1 1.5" pn 16', 1, 1, 0, 10, CAST(N'2025-01-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (594, 1, 1, N'مسلوب لحام 2*1 1.5', 1, 1, 0, 10, CAST(N'2025-01-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (595, 1, 1, N'لفه سلك 3 مم ارث', 1, 1, 0, 10, CAST(N'2025-01-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (596, 1, 1, N'لفه فلكسبل معدن مكس 16 مم', 1, 1, 0, 10, CAST(N'2025-01-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (597, 1, 1, N'لفه فلكسبل معدن مكس 21 مم', 1, 1, 0, 10, CAST(N'2025-01-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (598, 1, 1, N'متر كابل تري 10*5 سم ', 1, 1, 0, 10, CAST(N'2025-01-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (599, 1, 1, N'روزته 4 مم اخضر ', 1, 1, 0, 10, CAST(N'2025-01-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (600, 1, 1, N'حساس  12سم  ptioo', 1, 1, 0, 10, CAST(N'2025-01-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (601, 1, 1, N'جلان معدن 5. " لاكوتيل', 1, 1, 0, 10, CAST(N'2025-01-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (602, 1, 1, N'جلان معدن 3/4" لاكوتيل', 1, 1, 0, 10, CAST(N'2025-01-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (603, 1, 1, N'نبل pump  moa ', 1, 1, 0, 10, CAST(N'2025-01-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (604, 1, 1, N'كونتاكتور بالعلبه بالاوفر', 1, 1, 0, 10, CAST(N'2025-01-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (605, 1, 1, N'كيس حزام 25 سم تايواني ابيض', 1, 1, 0, 10, CAST(N'2025-01-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (606, 1, 1, N'لوحه 60*80*20سم ABB', 1, 1, 0, 10, CAST(N'2025-01-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (607, 1, 1, N'لفه سلك 4م الوان سويدي ', 1, 1, 0, 10, CAST(N'2025-01-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (608, 1, 1, N'باره اورمه  2 متر  تركي ', 1, 1, 0, 10, CAST(N'2025-02-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (609, 1, 1, N'عود 2.5 * 4سم مفتوح تركي ', 1, 1, 0, 10, CAST(N'2025-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (610, 1, 1, N'روزته ميوز ', 1, 1, 0, 10, CAST(N'2025-02-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (611, 1, 1, N'سرينه 220 حمراء ', 1, 1, 0, 10, CAST(N'2025-02-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (612, 1, 1, N'لوحه 21*28  PVC تركي', 1, 1, 0, 10, CAST(N'2025-02-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (613, 1, 1, N'ليبل ', 1, 1, 0, 10, CAST(N'2025-02-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (614, 1, 1, N'مفتاح ثلاثي 40 A  ABB', 1, 1, 0, 10, CAST(N'2025-02-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (615, 1, 1, N'مفتاح حراري 95 - 4 A', 1, 1, 0, 10, CAST(N'2025-02-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (616, 1, 1, N'مفتاح حرار   4-63 A      ', 1, 1, 0, 10, CAST(N'2025-02-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (617, 1, 1, N'نقطه مساعده 11- HKFI', 1, 1, 0, 10, CAST(N'2025-02-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (618, 1, 1, N'مفتاح احادي 10A  ABB', 1, 1, 0, 10, CAST(N'2025-02-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (619, 1, 1, N'كونتاكتور 9 A  ABB', 1, 1, 0, 10, CAST(N'2025-02-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (620, 1, 1, N'كونتاكتور 12 A  ABB', 1, 1, 0, 10, CAST(N'2025-02-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (621, 1, 1, N'اوفر لود 9-13 A  ABB', 1, 1, 0, 10, CAST(N'2025-02-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (622, 1, 1, N'سلكتور قلاب ايزي لاين', 1, 1, 0, 10, CAST(N'2025-02-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (623, 1, 1, N'طبه بيان ايزي لاين', 1, 1, 0, 10, CAST(N'2025-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (624, 1, 1, N'تايمر بالقاعده اتونكس ', 1, 1, 0, 10, CAST(N'2025-02-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (625, 1, 1, N'جهاز حمايه رباعي شفتين', 1, 1, 0, 10, CAST(N'2025-02-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (626, 1, 1, N'سلكتور عاده ايزي لاين', 1, 1, 0, 10, CAST(N'2025-02-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (627, 1, 1, N'ربيله 11-ص ب القاعده شفتين', 1, 1, 0, 10, CAST(N'2025-02-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (628, 1, 1, N'روزته علي الباره 4 سم', 1, 1, 0, 10, CAST(N'2025-02-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (629, 1, 1, N'روزته علي الباره 6 سم', 1, 1, 0, 10, CAST(N'2025-02-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (630, 1, 1, N'لفه سلك 1 مم شم سويدي', 1, 1, 0, 10, CAST(N'2025-02-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (631, 1, 1, N'خزان 500 لتر', 1, 1, 0, 10, CAST(N'2025-02-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (632, 1, 1, N'لوحه 50*70*20 سم ABB', 1, 1, 0, 10, CAST(N'2025-02-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (633, 1, 1, N'بالته 50*50 ', 1, 1, 0, 10, CAST(N'2025-02-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (634, 1, 1, N'بالته 50*50 بفتحه في النص', 1, 1, 0, 10, CAST(N'2025-02-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (635, 1, 1, N'كمبلاشن جولف ابيض بسديلي ثقيل ', 1, 1, 0, 10, CAST(N'2025-02-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (636, 1, 1, N'خلاط سليم لاين شجره 8577', 1, 1, 0, 10, CAST(N'2025-03-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (637, 1, 1, N'خلاط بانيو ( جيم ) ابيض ( فاخر ) ديور', 1, 1, 0, 10, CAST(N'2025-03-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (638, 1, 1, N'حوض 1 متر 1 ع + ص ', 1, 1, 0, 10, CAST(N'2025-03-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (639, 1, 1, N'سيفون 1.5 بوصه ايطالي ', 1, 1, 0, 10, CAST(N'2025-03-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (640, 1, 1, N'سيفون 2 بوصه ايطالي ', 1, 1, 0, 10, CAST(N'2025-03-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (641, 1, 1, N'جلبه 2/1*2/1شيلد', 1, 1, 0, 10, CAST(N'2025-03-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (642, 1, 1, N'محبس زاويه 2/1  ( فاخر ) سمارت هوم', 1, 1, 0, 10, CAST(N'2025-03-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (643, 1, 1, N'وصله مرنه 50سم سمارت هوم ', 1, 1, 0, 10, CAST(N'2025-03-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (644, 1, 1, N'وش نيكل سوبر لوكس تركي', 1, 1, 0, 10, CAST(N'2025-03-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (645, 1, 1, N'غطاء 20*20 تاتش ثقيل', 1, 1, 0, 10, CAST(N'2025-03-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (646, 1, 1, N'يكره طفلون ايزي بوند برتقالي 50 متر', 1, 1, 0, 10, CAST(N'2025-03-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (647, 1, 1, N'حوض 55 بعمود جولف ابيض ديور', 1, 1, 0, 10, CAST(N'2025-03-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (648, 1, 1, N'حوض ديور ابلس 55 بعمود ابيض ديور', 1, 1, 0, 10, CAST(N'2025-03-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (649, 1, 1, N'محبس دفن 25مم نيكل', 1, 1, 0, 10, CAST(N'2025-03-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (650, 1, 1, N'محبس لاكور 25 مم', 1, 1, 0, 10, CAST(N'2025-03-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (651, 1, 1, N'محبس لاكور 32 مم ', 1, 1, 0, 10, CAST(N'2025-03-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (652, 1, 1, N'محبس لاكور 40 مم ', 1, 1, 0, 10, CAST(N'2025-03-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (653, 1, 1, N'محبس لاكور 63 مم', 1, 1, 0, 10, CAST(N'2025-03-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (654, 1, 1, N'جلبه دكر سن خارجي 63 مم', 1, 1, 0, 10, CAST(N'2025-03-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (655, 1, 1, N'جلبه دكر سن خارجي 32 مم', 1, 1, 0, 10, CAST(N'2025-03-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (656, 1, 1, N'جلبه انش سن داخلي 32 مم ', 1, 1, 0, 10, CAST(N'2025-03-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (657, 1, 1, N'(LeDe) GROOVED MECH Tee 6*4 INCH', 1, 1, 0, 10, CAST(N'2025-03-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (658, 1, 1, N'(LeDe) GROOVED MECH Tee 4*3 INCH', 1, 1, 0, 10, CAST(N'2025-03-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (659, 1, 1, N'(LeDe) GROOVED MECH Tee 4*2 1/2 INCH', 1, 1, 0, 10, CAST(N'2025-03-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (660, 1, 1, N'(LeDe) GROOVED THRD MECH Tee 3*1 1/4 INCH', 1, 1, 0, 10, CAST(N'2025-03-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (661, 1, 1, N'(LeDe) GROOVED  THRD MECH Tee 3*1 1/2 INCH', 1, 1, 0, 10, CAST(N'2025-03-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (662, 1, 1, N'(LeDe) GROOVED THRD MECH Tee 3*2 INCH', 1, 1, 0, 10, CAST(N'2025-03-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (663, 1, 1, N'(LeDe) GROOVED  Reducing Tee 3*2 1/2 INCH', 1, 1, 0, 10, CAST(N'2025-03-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (664, 1, 1, N'(LeDe) GROOVED  Elbow 90 6 INCH 168 mm', 1, 1, 0, 10, CAST(N'2025-03-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (665, 1, 1, N'(LeDe) GROOVED Elbow 90 4  INCH', 1, 1, 0, 10, CAST(N'2025-03-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (666, 1, 1, N'(LeDe) GROOVED Elbow 90 3  INCH', 1, 1, 0, 10, CAST(N'2025-03-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (667, 1, 1, N'(LeDe) GROOVED Elbow 90 2  1/2 73mm  INCH', 1, 1, 0, 10, CAST(N'2025-04-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (668, 1, 1, N'(mech/d300) threaded elbow 90 2 INCH', 1, 1, 0, 10, CAST(N'2025-04-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (669, 1, 1, N'(mech/d300) threaded elbow 90 1 1/2 INCH', 1, 1, 0, 10, CAST(N'2025-04-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (670, 1, 1, N'(mech/d300) threaded elbow 90 1  1/4 INCH', 1, 1, 0, 10, CAST(N'2025-04-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (671, 1, 1, N'(mech/d300) threaded elbow 90 1 INCH', 1, 1, 0, 10, CAST(N'2025-04-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (672, 1, 1, N'(LeDe) GROOVED  Tee 4 INCH', 1, 1, 0, 10, CAST(N'2025-04-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (673, 1, 1, N'(LeDe) GROOVED  Tee 3 INCH', 1, 1, 0, 10, CAST(N'2025-04-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (674, 1, 1, N'(mech/d300) threaded Tee 2  INCH', 1, 1, 0, 10, CAST(N'2025-04-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (675, 1, 1, N'(mech/d300) threaded Tee 1  1/2  INCH', 1, 1, 0, 10, CAST(N'2025-04-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (676, 1, 1, N'(mech/d300) threaded Tee 1  1/4  INCH', 1, 1, 0, 10, CAST(N'2025-04-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (677, 1, 1, N'(mech/d300) threaded Tee 1  INCH', 1, 1, 0, 10, CAST(N'2025-04-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (678, 1, 1, N'(mech/d300) red coupling threaded 1* 1/2  INCH', 1, 1, 0, 10, CAST(N'2025-04-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (679, 1, 1, N'(mech/d300) red coupling threaded 11 / 4*1/2  INCH', 1, 1, 0, 10, CAST(N'2025-04-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (680, 1, 1, N'(mech/d300) red coupling threaded 11/4*1  INCH', 1, 1, 0, 10, CAST(N'2025-04-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (681, 1, 1, N'(mech/d300) red coupling threaded 11/2*1 1/4  INCH', 1, 1, 0, 10, CAST(N'2025-04-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (682, 1, 1, N'(mech/d300) red coupling threaded 11/2*1  INCH', 1, 1, 0, 10, CAST(N'2025-04-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (683, 1, 1, N'(mech/d300) red coupling threaded 11/2*  1/2 INCH', 1, 1, 0, 10, CAST(N'2025-04-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (684, 1, 1, N'(mech/d300) red coupling threaded 2*1  1/2  INCH', 1, 1, 0, 10, CAST(N'2025-04-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (685, 1, 1, N'(mech/d300) red coupling threaded 2*1  INCH', 1, 1, 0, 10, CAST(N'2025-04-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (686, 1, 1, N'(mech/d300) red coupling threaded 2*1/2  INCH', 1, 1, 0, 10, CAST(N'2025-04-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (687, 1, 1, N'(LeDe) GROOVED  thrd reducer 2 1/2*1 INCH', 1, 1, 0, 10, CAST(N'2025-04-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (688, 1, 1, N'(LeDe) GROOVED   reducer 4*3 INCH', 1, 1, 0, 10, CAST(N'2025-04-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (689, 1, 1, N'(LeDe) GROOVED   reducer 4*2  1/2 INCH', 1, 1, 0, 10, CAST(N'2025-04-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (690, 1, 1, N' red coupling  1* 1/2 ', 1, 1, 0, 10, CAST(N'2025-04-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (691, 1, 1, N' red coupling  11/4*1', 1, 1, 0, 10, CAST(N'2025-04-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (692, 1, 1, N'red coupling  2*1  1/2', 1, 1, 0, 10, CAST(N'2025-04-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (693, 1, 1, N' red coupling  2*1.1/4  ', 1, 1, 0, 10, CAST(N'2025-04-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (694, 1, 1, N'(mech/d300) red coupling threaded 2*1.1/4  INCH', 1, 1, 0, 10, CAST(N'2025-04-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (695, 1, 1, N'(mech/d300) threaded elbow 90 1 INCH', 1, 1, 0, 10, CAST(N'2025-04-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (696, 1, 1, N'(mech/d300) threaded elbow 90 1.1/2 INCH', 1, 1, 0, 10, CAST(N'2025-04-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (697, 1, 1, N'(mech/d300) threaded elbow 90 2 INCH', 1, 1, 0, 10, CAST(N'2025-05-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (698, 1, 1, N'(mech/d300) tee red threaded 1.1/4*1 INCH', 1, 1, 0, 10, CAST(N'2025-05-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (699, 1, 1, N'(mech/d300) tee red threaded 1.1/2*1 INCH', 1, 1, 0, 10, CAST(N'2025-05-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (700, 1, 1, N'(mech/d300) tee red threaded 2*1.1/4 INCH', 1, 1, 0, 10, CAST(N'2025-05-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (701, 1, 1, N'(mech/d300) tee red threaded 2*1 INCH', 1, 1, 0, 10, CAST(N'2025-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (702, 1, 1, N'(mech/d300) threaded tee 1  INCH', 1, 1, 0, 10, CAST(N'2025-05-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (703, 1, 1, N'(mech/d300) threaded tee 2  INCH', 1, 1, 0, 10, CAST(N'2025-05-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (704, 1, 1, N'(LeDe) GROOVED  Tee  6  INCH 168mm', 1, 1, 0, 10, CAST(N'2025-05-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (705, 1, 1, N'(LeDe) GROOVED  Thrd mech tee 3*2   INCH', 1, 1, 0, 10, CAST(N'2025-05-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (706, 1, 1, N'(LeDe) GROOVED  Thrd mech tee 3*1.1/2  INCH', 1, 1, 0, 10, CAST(N'2025-05-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (707, 1, 1, N'(LeDe) GROOVED  Thrd mech tee 3*1.1/4  INCH', 1, 1, 0, 10, CAST(N'2025-05-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (708, 1, 1, N'(LeDe) GROOVED  Thrd mech tee 3*1   INCH', 1, 1, 0, 10, CAST(N'2025-05-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (709, 1, 1, N'(LeDe) GROOVED  Thrd mech tee 4*2.1/2 INCH', 1, 1, 0, 10, CAST(N'2025-05-13T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (710, 1, 1, N'(LeDe) GROOVED  Thrd mech tee 6*3   INCH', 1, 1, 0, 10, CAST(N'2025-05-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (711, 1, 1, N'(LeDe) GROOVED  reducer coupling 6*4   INCH', 1, 1, 0, 10, CAST(N'2025-05-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (712, 1, 1, N'(LeDe) GROOVED Elbow 90 2.1/2  73mm  INCH', 1, 1, 0, 10, CAST(N'2025-05-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (713, 1, 1, N'(LeDe) GROOVED Elbow 90 3  INCH', 1, 1, 0, 10, CAST(N'2025-05-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (714, 1, 1, N'(LeDe) GROOVED Elbow 90 4  INCH', 1, 1, 0, 10, CAST(N'2025-05-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (715, 1, 1, N'(LeDe) GROOVED tee 90 3 INCH', 1, 1, 0, 10, CAST(N'2025-05-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (716, 1, 1, N'(LeDe) GROOVED tee 90 6 INCH 168mm', 1, 1, 0, 10, CAST(N'2025-05-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (717, 1, 1, N'(LeDe) GROOVED rigid coupling 90 6 INCH 168mm', 1, 1, 0, 10, CAST(N'2025-05-21T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (718, 1, 1, N'(LeDe) GROOVED rigid coupling 90 4 INCH ', 1, 1, 0, 10, CAST(N'2025-05-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (719, 1, 1, N'(LeDe) GROOVED rigid coupling 90 3 INCH ', 1, 1, 0, 10, CAST(N'2025-05-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (720, 1, 1, N'(LeDe) GROOVED rigid coupling 90 2.1/2 INCH 73mm', 1, 1, 0, 10, CAST(N'2025-05-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (721, 1, 1, N'(LeDe) GROOVED rigid coupling 90 2 INCH ', 1, 1, 0, 10, CAST(N'2025-05-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (722, 1, 1, N'(LeDe) GROOVED rigid coupling 90 1.1/2 INCH ', 1, 1, 0, 10, CAST(N'2025-05-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (723, 3, 1, N'(LeDe) GROOVED rigid coupling 90 1.1/4 INCH ', 1, 1, 0, 10, CAST(N'2025-05-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (724, 3, 1, N'(LeDe) GROOVED rigid coupling 90 1 INCH ', 1, 1, 0, 10, CAST(N'2025-05-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (725, 3, 1, N'زهر بلاعه  جرجوري', 1, 1, 0, 10, CAST(N'2025-05-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (726, 3, 1, N'غطاء زهر بلاعه', 1, 1, 0, 10, CAST(N'2025-05-30T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (727, 3, 1, N'(mech/D300) Red couplind threaded 1 1/2" * 1 lnch', 1, 1, 0, 10, CAST(N'2025-05-31T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (728, 3, 1, N'(Lede) Grooved Reducer couplind 4*2 1/2  lnch', 1, 1, 0, 10, CAST(N'2025-06-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (729, 3, 1, N'حوض دوران مبلل ', 1, 1, 0, 10, CAST(N'2025-06-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (730, 3, 1, N'حوض جاف ', 1, 1, 0, 10, CAST(N'2025-06-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (731, 1, 1, N'شماعه', 1, 1, 0, 10, CAST(N'2025-06-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (732, 2, 1, N'ترابيزه 10*70*85', 1, 1, 0, 10, CAST(N'2025-06-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (733, 1, 1, N'حوض بركبه', 1, 1, 0, 10, CAST(N'2025-06-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (734, 2, 1, N'خلاط للحوض بالماكينه الضغط', 1, 1, 0, 10, CAST(N'2025-06-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (735, 2, 1, N'حوض 2 عين 150*70', 1, 1, 0, 10, CAST(N'2025-06-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (736, 2, 1, N'كبل 4*4  ترمو', 1, 1, 0, 10, CAST(N'2025-06-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (737, 2, 1, N'كبل 2.5 * 4  ترمو', 1, 1, 0, 10, CAST(N'2025-06-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (738, 2, 1, N'كبل 3 * 4  ترمو', 1, 1, 0, 10, CAST(N'2025-06-11T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item] ([ID], [ItemCatID], [Unit_ID], [ItemName], [Limit_Item_In_Stock], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (739, 2, 1, N'منتج', NULL, 1, 0, 1, CAST(N'2023-06-03T21:50:23.213' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, N'كل الاصناف', 1, 0, NULL, NULL, 2, CAST(N'2023-06-03T23:03:46.290' AS DateTime), NULL, NULL)
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (2, N'بوش', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Item_Categoriy] ([ID], [Cat_Name], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (3, N'مواسير', 1, 1, NULL, NULL, 1, CAST(N'2023-06-03T23:22:03.933' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[GR_Item_Units] ([ID], [Name], [Convert_To_Main_Unit], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, N'كرتونة', NULL, 1, 0, NULL, CAST(N'2023-05-30T03:23:04.897' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [GR_Nationality], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (2, N'مورد 1', N'01050130168', N'القاهرة
', N'rrrr@kkk.co', NULL, 1, 0, NULL, NULL, 1, CAST(N'2023-05-30T05:42:55.110' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [GR_Nationality], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (3, N'مورد 2', N'0106655666', N'السللام', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [GR_Nationality], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (4, N'مورد 15', N'01060182155', N'المنيب', N'wwww.@uuu.o', NULL, 1, 1, NULL, NULL, 1, CAST(N'2023-05-30T05:47:41.680' AS DateTime), 1, CAST(N'2023-05-30T05:48:25.233' AS DateTime), NULL)
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [GR_Nationality], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (5, N'443', N'3434', N'3434', N'سيبسيبسيبسي', NULL, 1, 0, NULL, NULL, 1, CAST(N'2023-05-25T22:58:06.377' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [GR_Nationality], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (6, N'34', N'34', N'43', N'34344334', NULL, 1, 0, 1, CAST(N'2023-05-25T22:58:34.233' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [GR_Nationality], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (7, N'مورد 10', N'0353588333', N'منوف', N'aa@eee', NULL, 0, 1, NULL, NULL, 1, CAST(N'2023-05-30T19:24:22.223' AS DateTime), 1, CAST(N'2023-05-30T19:24:27.880' AS DateTime), NULL)
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [GR_Nationality], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (8, N'rrrrr', N'43434234', N'eee', N'dfgdfgdfg', NULL, 1, 0, 1, CAST(N'2023-05-30T19:37:51.077' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[GR_Supplier] ([ID], [Name], [Phone], [Address], [Email], [GR_Nationality], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Supplier_Type_ID]) VALUES (9, N'sdf', N'01010101010', N'asdfas', N'sadf@sdg.sd', NULL, 1, 0, 1, CAST(N'2023-06-03T23:31:50.123' AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (1, N'مورد', NULL, 1, 1, 1)
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (2, N'عميل', NULL, 1, 1, 1)
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (3, N'مقاول', NULL, 1, 1, 1)
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (4, N'رئيسي', NULL, 2, 1, 1)
INSERT [dbo].[GR_SystemCode] ([Id], [ValueName], [ValueNameEN], [SystemCodeTypeId], [Value], [IsActive]) VALUES (5, N'فرعي', NULL, 2, 1, 1)
GO
INSERT [dbo].[GR_SystemCodeType] ([Id], [TableName], [Description]) VALUES (1, N'الجهات', NULL)
INSERT [dbo].[GR_SystemCodeType] ([Id], [TableName], [Description]) VALUES (2, N'تقسيمات', N'رئيسى - فرعي')
GO
INSERT [dbo].[HR_Countries] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'5555', N'5555', 1, 2, CAST(N'2023-06-03' AS Date), 2, CAST(N'2023-06-03' AS Date), NULL, NULL)
INSERT [dbo].[HR_Countries] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'rrr', N'rrrr', 0, 2, CAST(N'2023-06-03' AS Date), NULL, NULL, 2, CAST(N'2023-06-03' AS Date))
INSERT [dbo].[HR_Countries] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (3, N'354456', N'34563456', 0, 2, CAST(N'2023-06-03' AS Date), NULL, NULL, 2, CAST(N'2023-06-03' AS Date))
INSERT [dbo].[HR_Countries] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (4, N'lwf v', N'???????', 1, 2, CAST(N'2023-06-03' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HR_Errands_Places] ([ID], [Name_AR], [Name_EN], [Address_AR], [Address_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (8, N'1', N'1', N'1', N'1', 1, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_Errands_Places] ([ID], [Name_AR], [Name_EN], [Address_AR], [Address_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (9, N'3', N'3', N'2', N'2', 1, 2, CAST(N'2023-06-04' AS Date), 2, CAST(N'2023-06-04' AS Date), NULL, NULL)
INSERT [dbo].[HR_Errands_Places] ([ID], [Name_AR], [Name_EN], [Address_AR], [Address_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (10, N'4', N'4', N'3232', N'3266565', 1, 2, CAST(N'2023-06-05' AS Date), 2, CAST(N'2023-06-05' AS Date), NULL, NULL)
INSERT [dbo].[HR_Errands_Places] ([ID], [Name_AR], [Name_EN], [Address_AR], [Address_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (11, N'5', N'5', N'5', N'5', 0, 2, CAST(N'2023-06-05' AS Date), 2, CAST(N'2023-06-05' AS Date), 2, CAST(N'2023-06-05' AS Date))
GO
INSERT [dbo].[HR_ErrandsTypes] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'مأمورية خارجية', N'?223', 0, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, 2, CAST(N'2023-06-04' AS Date))
INSERT [dbo].[HR_ErrandsTypes] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'3434', N'33434', 1, 2, CAST(N'2023-06-05' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HR_Formal_Holidays] ([ID], [Name_AR], [Name_EN], [Date], [Year], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'we', N'we', NULL, NULL, 1, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_Formal_Holidays] ([ID], [Name_AR], [Name_EN], [Date], [Year], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'wer', N'wer', NULL, NULL, 1, 2, CAST(N'2023-06-04' AS Date), 2, CAST(N'2023-06-04' AS Date), NULL, NULL)
GO
INSERT [dbo].[HR_Functional_Degree] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'درجة اولي', N'12', 1, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_Functional_Degree] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'درجة ثانية', N'??????', 1, 2, CAST(N'2023-06-04' AS Date), 2, CAST(N'2023-06-04' AS Date), NULL, NULL)
INSERT [dbo].[HR_Functional_Degree] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (3, N'23', N'23', 0, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, 2, CAST(N'2023-06-04' AS Date))
INSERT [dbo].[HR_Functional_Degree] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (4, N'23', N'2323', 1, 2, CAST(N'2023-06-05' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HR_Identity_Types] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'السباحة', N'2', 1, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_Identity_Types] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'الرماية', N'43', 1, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_Identity_Types] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (3, N'3443433443', N'3434433434', 0, 2, CAST(N'2023-06-04' AS Date), 2, CAST(N'2023-06-04' AS Date), 2, CAST(N'2023-06-04' AS Date))
GO
INSERT [dbo].[HR_LeaveTypes] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'45', N'54', 1, 2, CAST(N'2023-06-03' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_LeaveTypes] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'qweweq232332', N'qwerqwerqwe232323', 1, 2, CAST(N'2023-06-03' AS Date), 2, CAST(N'2023-06-03' AS Date), NULL, NULL)
INSERT [dbo].[HR_LeaveTypes] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (3, N'werew', N'wrtwert', 0, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, 2, CAST(N'2023-06-04' AS Date))
GO
INSERT [dbo].[HR_PermissionTypes] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'إذن شخصى', N'3434', 1, 2, CAST(N'2023-06-04' AS Date), 2, CAST(N'2023-06-04' AS Date), NULL, NULL)
INSERT [dbo].[HR_PermissionTypes] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'4554', N'5454', 0, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, 2, CAST(N'2023-06-04' AS Date))
GO
INSERT [dbo].[HR_ShiftTypes] ([ID], [Name_AR], [Name_EN], [StartTime], [EndTime], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'وردية صباحية', N'343434', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1, 2, CAST(N'2023-06-04' AS Date), 2, CAST(N'2023-06-05' AS Date), NULL, NULL)
INSERT [dbo].[HR_ShiftTypes] ([ID], [Name_AR], [Name_EN], [StartTime], [EndTime], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'ثققثقث', N'??????', NULL, NULL, 0, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, 2, CAST(N'2023-06-04' AS Date))
INSERT [dbo].[HR_ShiftTypes] ([ID], [Name_AR], [Name_EN], [StartTime], [EndTime], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (3, N'45', N'34343465656565', NULL, NULL, 1, 2, CAST(N'2023-06-05' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_ShiftTypes] ([ID], [Name_AR], [Name_EN], [StartTime], [EndTime], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (4, N'2323', N'2323', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1, 2, CAST(N'2023-06-05' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_ShiftTypes] ([ID], [Name_AR], [Name_EN], [StartTime], [EndTime], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (5, N'34', N'43434343', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1, 2, CAST(N'2023-06-05' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_ShiftTypes] ([ID], [Name_AR], [Name_EN], [StartTime], [EndTime], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (6, N'e', N'e', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1, 2, CAST(N'2023-06-05' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HR_Univercity] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (1, N'vvvv', N'er', 0, 2, CAST(N'2023-06-03' AS Date), NULL, NULL, 2, CAST(N'2023-06-03' AS Date))
INSERT [dbo].[HR_Univercity] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (2, N'ggg', N'????', 1, 2, CAST(N'2023-06-03' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_Univercity] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (3, N'56', N'ggg', 1, 2, CAST(N'2023-06-03' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_Univercity] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (4, N'4544', N'5454', 1, 2, CAST(N'2023-06-04' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HR_Univercity] ([ID], [Name_AR], [Name_EN], [IsActive], [Created_UserId], [Created_Date], [Updated_UserId], [Updated_Date], [Deleted_UserId], [Deleted_Date]) VALUES (5, N'777', N'777', 0, 2, CAST(N'2023-06-03' AS Date), 2, CAST(N'2023-06-03' AS Date), 2, CAST(N'2023-06-03' AS Date))
GO
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (1, N'بيانات  اساسية', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (2, N'الاصناف', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (3, N'الموردين', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (5, N'المخاذن', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (8, N'ادارة النظام', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (9, N'المشاريع', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
INSERT [dbo].[PR_Group] ([Id], [GroupName], [GroupName_En], [Active], [CreatedDate], [LastModifiedDate], [Note], [PR_ApplicationId], [PR_ApplicationCategoryId], [IsMinistry]) VALUES (10, N'المناقصات', N'Basic Data', 1, CAST(N'2018-12-20' AS Date), NULL, NULL, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[PR_GroupModuleMenu] ON 

INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (1, 1, 2, 1, 2, 2)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (2, 1, 3, 1, 1, 4)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (2, 1, 4, 1, 2, 5)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (3, 1, 6, 1, 1, 7)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (8, 1, 12, 1, 1, 17)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (9, 1, 13, 1, 1, 19)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (3, 1, 14, 1, 3, 20)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (10, 1, 15, 1, 1, 1019)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (9, 1, 16, 1, 1, 1020)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (10, 1, 17, 1, 1, 1021)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (10, 1, 18, 1, 1, 1022)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (3, 1, 7, 1, 2, 1023)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (5, 1, 5, 1, 2, 1024)
INSERT [dbo].[PR_GroupModuleMenu] ([PR_GroupId], [PR_ModuleId], [PR_MenuId], [IS_Active], [Order_BY], [ID]) VALUES (9, 1, 19, 1, 1, 2024)
SET IDENTITY_INSERT [dbo].[PR_GroupModuleMenu] OFF
GO
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (1, N'انشاء مستخدم', N'User Create', N'', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (2, N'انشاء دورة', N'User Create', N'', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (3, N'انشاء مجموعة', N'User Create', N'Item_Data/ItemsCategoriy/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (4, N'انشاء صنف', N'User Create', N'Item_Data/Items/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (5, N'المخاذن', N'User Create', N'Stock/ST_Stock/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (6, N'الموردين', N'User Create', N'Custmer_Data/Suppliers/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (7, N'اصناف الموردين', N'User Create', N'Custmer_Data/Suppliers_Item/index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (12, N'الصلاحيات', N'User Create', N'Admin/User_Privilage/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (13, N'بيانات المشاريع', N'User Create', N'Company/Project_Data/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (14, N'عروض الاسعار', NULL, N'Custmer_Data/Suppliers_Item/index', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (15, N'مناقصة مشروع', N'User Create', N'Reciept_Data/Tender_processing/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (16, N'بيانات الشركات', N'User Create', N'Company/GR_Company_Master/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (17, N'تسجيل بنود مناقصة لمورد', N'User Create', N'Reciept_Data/Tender_processing/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (18, N'تحميل بنود مناقصة لمورد', N'User Create', N'Reciept_Data/Tender_processing/Index', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PR_Menu] ([Id], [MenuTitle], [MenuTitle_En], [MenuURL], [PR_MenuId], [Active], [PR_ModuleId], [PR_ApplicationId], [PR_ApplicationCategoryId], [Group_Id]) VALUES (19, N'امر التوريد', N'User Create', N'WebForms/pages/All_supply_Ordee.aspx', 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[PR_Module] ([Id], [ModuleName], [ModuleName_En], [ModuleDescription], [PR_ApplicationId], [PR_ApplicationCategoryId], [Active]) VALUES (1, N'كل الشاشات', N'Analysis', N'True', 1, 1, 1)
GO
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (1, N'sayed', N'123', 1, 1, N'عماد يوسف', NULL)
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (2, N'admin', N'02e86589188a4979e85873a0baa3a0e2', 1, 2, N'احمد طه', NULL)
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (3, N'nn', N'123', 4, NULL, N'وليد', NULL)
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (4, N'islam kamal', N'011011', 1, NULL, N'رجب', NULL)
INSERT [dbo].[PR_User] ([ID], [UserName], [Password], [UserTypeID], [Sector_ID], [Full_Name], [Employees_ID]) VALUES (5, N'hassan ezzat', N'12', 1, NULL, N'عماد حلمي', NULL)
GO
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (2, 1, 1, 4)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (4, 1, 1, 7)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (5, 1, 1, 17)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (6, 1, 1, 2)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (7, 1, 1, 1)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (9, 1, 1, 5)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (10, 1, 1, 19)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (11, 1, 1, 20)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (60, 1, 1, 1019)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (61, 1, 1, 1020)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (62, 1, 1, 1022)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (63, 1, 1, 1021)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (64, 1, 1, 1023)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (65, 1, 1, 1024)
INSERT [dbo].[PR_UserGroup] ([Id], [Active], [User_ID], [PR_GroupModuleMenu_ID]) VALUES (66, 1, 1, 2024)
GO
INSERT [dbo].[PRJ_Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Client_ID], [Contract_Party], [Contract_Number], [Projectv_Vlue], [Supply_Order]) VALUES (1, N'مشروع 1', N'asdfasdf', N'2323232323', N'23232323', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRJ_Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Client_ID], [Contract_Party], [Contract_Number], [Projectv_Vlue], [Supply_Order]) VALUES (2, N'مشروع 2', N'asdfasdf', N'23232323', N'1', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRJ_Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Client_ID], [Contract_Party], [Contract_Number], [Projectv_Vlue], [Supply_Order]) VALUES (3, N'مشروع 3', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRJ_Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Client_ID], [Contract_Party], [Contract_Number], [Projectv_Vlue], [Supply_Order]) VALUES (6, N'rr', N'rr', N'44444', N'444444', NULL, NULL, 1, 0, 1, CAST(N'2023-05-26T22:57:18.660' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRJ_Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Client_ID], [Contract_Party], [Contract_Number], [Projectv_Vlue], [Supply_Order]) VALUES (19, N'343434', N'3434', N'3434', N'343434', NULL, NULL, 1, 0, 1, CAST(N'2023-05-26T21:01:00.197' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRJ_Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Client_ID], [Contract_Party], [Contract_Number], [Projectv_Vlue], [Supply_Order]) VALUES (20, N'5', N'5', N'5', N'5', NULL, NULL, 1, 0, 1, CAST(N'2023-06-05T14:12:09.080' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRJ_Project_Data] ([ID], [Name], [Address], [Phone], [Code], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Date], [User_Deletion_Id], [GR_Client_ID], [Contract_Party], [Contract_Number], [Projectv_Vlue], [Supply_Order]) VALUES (21, N'5', N'5', N'5', N'5', NULL, NULL, 1, 0, 1, CAST(N'2023-06-05T14:14:55.387' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PRJ_Project_Employees] ([ID], [Employees_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [PRJ_Project_Data_ID]) VALUES (0, 1, 1, 0, 1, CAST(N'2023-06-05T14:12:09.970' AS DateTime), NULL, NULL, NULL, NULL, 20)
INSERT [dbo].[PRJ_Project_Employees] ([ID], [Employees_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [PRJ_Project_Data_ID]) VALUES (3, 26, 1, 0, 1, CAST(N'2023-06-05T14:14:55.573' AS DateTime), NULL, NULL, NULL, NULL, 21)
INSERT [dbo].[PRJ_Project_Employees] ([ID], [Employees_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [PRJ_Project_Data_ID]) VALUES (4, 27, 1, 0, 1, CAST(N'2023-06-05T14:14:55.753' AS DateTime), NULL, NULL, NULL, NULL, 21)
INSERT [dbo].[PRJ_Project_Employees] ([ID], [Employees_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [PRJ_Project_Data_ID]) VALUES (5, 77, 1, 0, 1, CAST(N'2023-06-05T14:14:55.933' AS DateTime), NULL, NULL, NULL, NULL, 21)
GO
INSERT [dbo].[PRJ_Tender_Master] ([ID], [Project_Data_ID], [User_Deletion_Date], [Start_Date], [End_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [Name]) VALUES (1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'مناقصة1')
GO
INSERT [dbo].[PU_Purchase_Order_Details] ([GR_Item_ID], [Supplier_Quantity], [Supplier_Price], [Required_Quantity], [Is_Accpted], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Responsible_Emp_Date], [ID], [Responsible_Emp_ID], [PU_Purchase_Order_Master_ID]) VALUES (1, 1000, 10.5000, NULL, 1, 1, 0, NULL, CAST(N'2023-06-13T12:24:41.373' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 5, 1)
INSERT [dbo].[PU_Purchase_Order_Details] ([GR_Item_ID], [Supplier_Quantity], [Supplier_Price], [Required_Quantity], [Is_Accpted], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Responsible_Emp_Date], [ID], [Responsible_Emp_ID], [PU_Purchase_Order_Master_ID]) VALUES (732, 100, 80.0000, NULL, 1, 1, 0, NULL, CAST(N'2023-06-13T12:25:46.333' AS DateTime), NULL, NULL, NULL, NULL, NULL, 2, 5, 1)
INSERT [dbo].[PU_Purchase_Order_Details] ([GR_Item_ID], [Supplier_Quantity], [Supplier_Price], [Required_Quantity], [Is_Accpted], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Responsible_Emp_Date], [ID], [Responsible_Emp_ID], [PU_Purchase_Order_Master_ID]) VALUES (1, 200, 8.0000, NULL, 1, 1, 0, NULL, CAST(N'2023-06-13T12:26:27.120' AS DateTime), NULL, NULL, NULL, NULL, NULL, 3, 5, 2)
GO
INSERT [dbo].[PU_Purchase_Order_Master] ([GR_currency_ID], [ID], [GR_Supplier_ID], [Taxes_Included], [Responsible_Emp_ID], [Supplier_Purchese_No], [Purchese_Order_Date], [Pureche_order_id], [Purchese_Order_Img_Path], [IS_Send_Email], [Is_Accpted], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [PRJ_Tender_Master_ID], [Date_From], [Date_To], [PU_Supply_Orders_ID]) VALUES (1, 1, 2, 1, 5, N'98754', CAST(N'2021-08-05' AS Date), N'98754', NULL, 1, NULL, 1, 0, NULL, CAST(N'2023-06-13T12:22:36.827' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[PU_Purchase_Order_Master] ([GR_currency_ID], [ID], [GR_Supplier_ID], [Taxes_Included], [Responsible_Emp_ID], [Supplier_Purchese_No], [Purchese_Order_Date], [Pureche_order_id], [Purchese_Order_Img_Path], [IS_Send_Email], [Is_Accpted], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [PRJ_Tender_Master_ID], [Date_From], [Date_To], [PU_Supply_Orders_ID]) VALUES (1, 2, 5, 1, 5, N'88888', CAST(N'2021-06-08' AS Date), N'88888', NULL, NULL, NULL, 1, 0, NULL, CAST(N'2023-06-13T12:28:10.980' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[PU_Supplier_Item] ([ID], [GR_Supplier_ID], [GR_Item_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (51, 2, 1, 1, 0, 1, CAST(N'2023-06-03T16:55:00.463' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PU_Supplier_Item] ([ID], [GR_Supplier_ID], [GR_Item_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (59, 2, 732, 1, 0, 1, CAST(N'2023-06-05T02:22:18.863' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PU_Supplier_Item] ([ID], [GR_Supplier_ID], [GR_Item_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (60, 2, 734, 1, 0, 1, CAST(N'2023-06-05T02:22:19.747' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PU_Supplier_Item] ([ID], [GR_Supplier_ID], [GR_Item_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (61, 2, 732, 1, 0, 1, CAST(N'2023-06-05T02:22:35.010' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PU_Supplier_Item] ([ID], [GR_Supplier_ID], [GR_Item_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (62, 2, 734, 1, 0, 1, CAST(N'2023-06-05T02:22:35.177' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PU_Supplier_Item] ([ID], [GR_Supplier_ID], [GR_Item_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (63, 2, 184, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PU_Supplier_Item] ([ID], [GR_Supplier_ID], [GR_Item_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (64, 2, 185, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ST_Payment_Order] ([ID], [Payment_Order_Number], [Payment_Order_Date], [Responsible_Emp_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [ST_Stock_ID], [Move_Out_Date], [Img_Path], [PRJ_Project_Data_ID], [IS_Spent]) VALUES (1, N'98', CAST(N'2022-09-05' AS Date), 5, 1, 0, 1, CAST(N'2023-06-14T17:30:49.440' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[ST_Payment_Order_Item] ([ID], [ST_Payment_Order_ID], [GR_Item_ID], [Move_Out_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Spent_Quantity]) VALUES (1, 1, 1, NULL, 1, 0, 1, CAST(N'2023-06-14T17:30:49.730' AS DateTime), NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[ST_Payment_Order_Item] ([ID], [ST_Payment_Order_ID], [GR_Item_ID], [Move_Out_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Spent_Quantity]) VALUES (2, 1, 732, NULL, 1, 0, 1, CAST(N'2023-06-14T17:30:49.730' AS DateTime), NULL, NULL, NULL, NULL, 70)
INSERT [dbo].[ST_Payment_Order_Item] ([ID], [ST_Payment_Order_ID], [GR_Item_ID], [Move_Out_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Spent_Quantity]) VALUES (3, 1, 734, NULL, 1, 0, 1, CAST(N'2023-06-14T17:30:49.730' AS DateTime), NULL, NULL, NULL, NULL, 41)
INSERT [dbo].[ST_Payment_Order_Item] ([ID], [ST_Payment_Order_ID], [GR_Item_ID], [Move_Out_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Spent_Quantity]) VALUES (4, 1, 184, NULL, 1, 0, 1, CAST(N'2023-06-14T17:30:49.730' AS DateTime), NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[ST_Payment_Order_Item] ([ID], [ST_Payment_Order_ID], [GR_Item_ID], [Move_Out_Date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Spent_Quantity]) VALUES (5, 1, 185, NULL, 1, 0, 1, CAST(N'2023-06-14T17:30:49.730' AS DateTime), NULL, NULL, NULL, NULL, 44)
GO
INSERT [dbo].[ST_Receiving_Permission] ([ID], [Receiving_Permission_Number], [Receiving_Permission_Date], [Responsible_Emp_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [ST_Stock_ID], [Store_Date], [GR_Supplier_ID], [Img_Path], [PU_Supply_Orders_ID]) VALUES (2, N'5', CAST(N'2012-07-05' AS Date), 5, 1, 0, 1, CAST(N'2023-06-14T00:10:37.800' AS DateTime), 1, CAST(N'2023-06-14T00:19:00.727' AS DateTime), NULL, NULL, 1, CAST(N'2012-04-08' AS Date), 2, NULL, NULL)
GO
INSERT [dbo].[ST_Receiving_Permission_Item] ([ID], [ST_Receiving_Permission_ID], [GR_Item_ID], [Store_date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Received_Quantity]) VALUES (3, 2, 1, NULL, 1, 0, 1, CAST(N'2023-06-14T00:10:37.800' AS DateTime), 1, CAST(N'2023-06-14T00:19:00.730' AS DateTime), NULL, NULL, 55)
INSERT [dbo].[ST_Receiving_Permission_Item] ([ID], [ST_Receiving_Permission_ID], [GR_Item_ID], [Store_date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Received_Quantity]) VALUES (4, 2, 734, NULL, 1, 0, 1, CAST(N'2023-06-14T00:10:37.803' AS DateTime), 1, CAST(N'2023-06-14T00:19:00.730' AS DateTime), NULL, NULL, 41)
INSERT [dbo].[ST_Receiving_Permission_Item] ([ID], [ST_Receiving_Permission_ID], [GR_Item_ID], [Store_date], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date], [Received_Quantity]) VALUES (5, 2, 732, NULL, 1, 0, 1, CAST(N'2023-06-14T00:19:00.747' AS DateTime), NULL, NULL, NULL, NULL, 44)
GO
INSERT [dbo].[ST_Stock] ([ID], [Name], [Email], [Phone], [Address], [Main_Stock_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (1, N'مخزن 1', N'info@uuu.com', N'01205555899', N'cairo', 1, 1, 0, NULL, NULL, 1, CAST(N'2023-05-30T19:19:11.907' AS DateTime), NULL, NULL)
INSERT [dbo].[ST_Stock] ([ID], [Name], [Email], [Phone], [Address], [Main_Stock_ID], [IS_Active], [IS_Deleted], [User_Creation_Id], [User_Creation_Date], [User_Updation_Id], [User_Updation_Date], [User_Deletion_Id], [User_Deletion_Date]) VALUES (4, N'مخزن 2', N'eng_nag_elme@yahoo.com', N'+201008879638', N'قصثثثثث', 1, 1, 1, 1, CAST(N'2023-05-30T19:18:47.600' AS DateTime), NULL, NULL, 1, CAST(N'2023-05-30T19:20:25.260' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'مخاذن')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'مهندس موقع')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (3, N'اداري')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (4, N'حسابات')
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
ALTER TABLE [dbo].[GR_Currency] ADD  CONSTRAINT [DF_GR_Currency_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[GR_Currency] ADD  CONSTRAINT [DF_GR_Currency_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[GR_Currency] ADD  CONSTRAINT [DF_GR_Currency_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
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
ALTER TABLE [dbo].[GR_Nationality] ADD  CONSTRAINT [DF_GR_Nationality_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[GR_Nationality] ADD  CONSTRAINT [DF_GR_Nationality_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[GR_Nationality] ADD  CONSTRAINT [DF_GR_Nationality_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Advance_Payment_Type] ADD  CONSTRAINT [DF_HR_Advance_Payment_Type_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Advance_Payment_Type] ADD  CONSTRAINT [DF_HR_Advance_Payment_Type_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Advance_Payment_Type] ADD  CONSTRAINT [DF_HR_Advance_Payment_Type_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Employee_absence] ADD  CONSTRAINT [DF_HR_Employee_absence_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Employee_absence] ADD  CONSTRAINT [DF_HR_Employee_absence_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Employee_absence] ADD  CONSTRAINT [DF_HR_Employee_absence_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment] ADD  CONSTRAINT [DF_HR_Employee_Advance_Payment_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment] ADD  CONSTRAINT [DF_HR_Employee_Advance_Payment_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment] ADD  CONSTRAINT [DF_HR_Employee_Advance_Payment_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment_Paid] ADD  CONSTRAINT [DF_HR_Employee_Advance_Payment_Paid_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment_Paid] ADD  CONSTRAINT [DF_HR_Employee_Advance_Payment_Paid_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment_Paid] ADD  CONSTRAINT [DF_HR_Employee_Advance_Payment_Paid_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Employee_Bonus] ADD  CONSTRAINT [DF_HR_Employee_Bonus_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Employee_Bonus] ADD  CONSTRAINT [DF_HR_Employee_Bonus_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Employee_Bonus] ADD  CONSTRAINT [DF_HR_Employee_Bonus_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Employee_Deduction] ADD  CONSTRAINT [DF_HR_Employee_Deduction_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Employee_Deduction] ADD  CONSTRAINT [DF_HR_Employee_Deduction_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Employee_Deduction] ADD  CONSTRAINT [DF_HR_Employee_Deduction_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Employee_Lateness] ADD  CONSTRAINT [DF_HR_Employee_Lateness_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Employee_Lateness] ADD  CONSTRAINT [DF_HR_Employee_Lateness_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Employee_Lateness] ADD  CONSTRAINT [DF_HR_Employee_Lateness_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Employee_Salary_History] ADD  CONSTRAINT [DF_HR_Employee_Salary_History_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Employee_Salary_History] ADD  CONSTRAINT [DF_HR_Employee_Salary_History_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Employee_Salary_History] ADD  CONSTRAINT [DF_HR_Employee_Salary_History_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[HR_Lateness_Type] ADD  CONSTRAINT [DF_HR_Lateness_Type_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[HR_Lateness_Type] ADD  CONSTRAINT [DF_HR_Lateness_Type_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[HR_Lateness_Type] ADD  CONSTRAINT [DF_HR_Lateness_Type_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[PR_Group] ADD  CONSTRAINT [DF_PR_Group_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PR_Group] ADD  CONSTRAINT [DF_PR_Group_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PR_Menu] ADD  CONSTRAINT [DF_PR_Menu_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PR_Module] ADD  CONSTRAINT [DF_PR_Module_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Details] ADD  CONSTRAINT [DF_PU_Quotes_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Details] ADD  CONSTRAINT [DF_PU_Quotes_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Details] ADD  CONSTRAINT [DF_PU_Quotes_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Master] ADD  CONSTRAINT [DF_PU_Purchase_Order_Master_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Master] ADD  CONSTRAINT [DF_PU_Purchase_Order_Master_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Master] ADD  CONSTRAINT [DF_PU_Purchase_Order_Master_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[PU_Supply_Order_Items] ADD  CONSTRAINT [DF_PU_Purchase_Order_Items_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[PU_Supply_Order_Items] ADD  CONSTRAINT [DF_PU_Purchase_Order_Items_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[PU_Supply_Order_Items] ADD  CONSTRAINT [DF_PU_Purchase_Order_Items_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[ST_Payment_Order] ADD  CONSTRAINT [DF_ST_Payment_Order_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[ST_Payment_Order] ADD  CONSTRAINT [DF_ST_Payment_Order_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[ST_Payment_Order] ADD  CONSTRAINT [DF_ST_Payment_Order_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[ST_Payment_Order] ADD  CONSTRAINT [DF_ST_Payment_Order_IS_Spent]  DEFAULT ((0)) FOR [IS_Spent]
GO
ALTER TABLE [dbo].[ST_Payment_Order_Item] ADD  CONSTRAINT [DF_ST_Payment_Order_Item_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[ST_Payment_Order_Item] ADD  CONSTRAINT [DF_ST_Payment_Order_Item_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[ST_Payment_Order_Item] ADD  CONSTRAINT [DF_ST_Payment_Order_Item_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission] ADD  CONSTRAINT [DF_ST_Invoice_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission] ADD  CONSTRAINT [DF_ST_Invoice_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission] ADD  CONSTRAINT [DF_ST_Invoice_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission_Item] ADD  CONSTRAINT [DF_ST_Store_Items_Stock_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission_Item] ADD  CONSTRAINT [DF_ST_Store_Items_Stock_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission_Item] ADD  CONSTRAINT [DF_ST_Store_Items_Stock_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
GO
ALTER TABLE [dbo].[ST_Stock] ADD  CONSTRAINT [DF_ST_Stock_IS_Active]  DEFAULT ((1)) FOR [IS_Active]
GO
ALTER TABLE [dbo].[ST_Stock] ADD  CONSTRAINT [DF_ST_Stock_IS_Deleted]  DEFAULT ((0)) FOR [IS_Deleted]
GO
ALTER TABLE [dbo].[ST_Stock] ADD  CONSTRAINT [DF_ST_Stock_User_Creation_Date]  DEFAULT (getdate()) FOR [User_Creation_Date]
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
ALTER TABLE [dbo].[GR_Supplier]  WITH CHECK ADD  CONSTRAINT [FK_GR_Supplier_GR_Nationality] FOREIGN KEY([GR_Nationality])
REFERENCES [dbo].[GR_Nationality] ([ID])
GO
ALTER TABLE [dbo].[GR_Supplier] CHECK CONSTRAINT [FK_GR_Supplier_GR_Nationality]
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
ALTER TABLE [dbo].[HR_Employee_absence]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_absence_HR_Employees] FOREIGN KEY([HR_Employees_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_absence] CHECK CONSTRAINT [FK_HR_Employee_absence_HR_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_Advance_Payment_HR_Advance_Payment_Type] FOREIGN KEY([HR_Advance_Payment_Type_ID])
REFERENCES [dbo].[HR_Advance_Payment_Type] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment] CHECK CONSTRAINT [FK_HR_Employee_Advance_Payment_HR_Advance_Payment_Type]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_Advance_Payment_HR_Employees] FOREIGN KEY([HR_Employees_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment] CHECK CONSTRAINT [FK_HR_Employee_Advance_Payment_HR_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment_Paid]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_Advance_Payment_Paid_HR_Employee_Advance_Payment] FOREIGN KEY([HR_Employee_Advance_Payment_ID])
REFERENCES [dbo].[HR_Employee_Advance_Payment] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Advance_Payment_Paid] CHECK CONSTRAINT [FK_HR_Employee_Advance_Payment_Paid_HR_Employee_Advance_Payment]
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
ALTER TABLE [dbo].[HR_Employee_Bonus]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_Bonus_HR_Employees] FOREIGN KEY([HR_Employees_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Bonus] CHECK CONSTRAINT [FK_HR_Employee_Bonus_HR_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Deduction]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_Deduction_HR_Employees] FOREIGN KEY([HR_Employees_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Deduction] CHECK CONSTRAINT [FK_HR_Employee_Deduction_HR_Employees]
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
ALTER TABLE [dbo].[HR_Employee_Lateness]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_Lateness_HR_Employees] FOREIGN KEY([HR_Employees_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Lateness] CHECK CONSTRAINT [FK_HR_Employee_Lateness_HR_Employees]
GO
ALTER TABLE [dbo].[HR_Employee_Lateness]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_Lateness_HR_Lateness_Type] FOREIGN KEY([HR_Lateness_Type_ID])
REFERENCES [dbo].[HR_Lateness_Type] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Lateness] CHECK CONSTRAINT [FK_HR_Employee_Lateness_HR_Lateness_Type]
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
ALTER TABLE [dbo].[HR_Employee_Salary_History]  WITH CHECK ADD  CONSTRAINT [FK_HR_Employee_Salary_History_HR_Employees] FOREIGN KEY([HR_Employee_ID])
REFERENCES [dbo].[HR_Employees] ([ID])
GO
ALTER TABLE [dbo].[HR_Employee_Salary_History] CHECK CONSTRAINT [FK_HR_Employee_Salary_History_HR_Employees]
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
ALTER TABLE [dbo].[PRJ_Project_Data]  WITH CHECK ADD  CONSTRAINT [FK_Project_Data_GR_Company_Master] FOREIGN KEY([GR_Client_ID])
REFERENCES [dbo].[GR_Client] ([ID])
GO
ALTER TABLE [dbo].[PRJ_Project_Data] CHECK CONSTRAINT [FK_Project_Data_GR_Company_Master]
GO
ALTER TABLE [dbo].[PRJ_Project_Employees]  WITH CHECK ADD  CONSTRAINT [FK_Project_Data_Employees_Project_Data] FOREIGN KEY([PRJ_Project_Data_ID])
REFERENCES [dbo].[PRJ_Project_Data] ([ID])
GO
ALTER TABLE [dbo].[PRJ_Project_Employees] CHECK CONSTRAINT [FK_Project_Data_Employees_Project_Data]
GO
ALTER TABLE [dbo].[PRJ_Tender_Item]  WITH CHECK ADD  CONSTRAINT [FK_PRJ_Tender_Item_PRJ_Tender_Master] FOREIGN KEY([Tender_Project_Master_ID])
REFERENCES [dbo].[PRJ_Tender_Master] ([ID])
GO
ALTER TABLE [dbo].[PRJ_Tender_Item] CHECK CONSTRAINT [FK_PRJ_Tender_Item_PRJ_Tender_Master]
GO
ALTER TABLE [dbo].[PRJ_Tender_Item]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Item_Project_GR_Item] FOREIGN KEY([GR_Item_ID])
REFERENCES [dbo].[GR_Item] ([ID])
GO
ALTER TABLE [dbo].[PRJ_Tender_Item] CHECK CONSTRAINT [FK_Tender_Item_Project_GR_Item]
GO
ALTER TABLE [dbo].[PRJ_Tender_Master]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Project_Master_Project_Data] FOREIGN KEY([Project_Data_ID])
REFERENCES [dbo].[PRJ_Project_Data] ([ID])
GO
ALTER TABLE [dbo].[PRJ_Tender_Master] CHECK CONSTRAINT [FK_Tender_Project_Master_Project_Data]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchase_Order_Details_PU_Purchase_Order_Master] FOREIGN KEY([PU_Purchase_Order_Master_ID])
REFERENCES [dbo].[PU_Purchase_Order_Master] ([ID])
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Details] CHECK CONSTRAINT [FK_PU_Purchase_Order_Details_PU_Purchase_Order_Master]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_PU_Quotes_GR_Item] FOREIGN KEY([GR_Item_ID])
REFERENCES [dbo].[GR_Item] ([ID])
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Details] CHECK CONSTRAINT [FK_PU_Quotes_GR_Item]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Master]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchase_Order_Master_GR_Supplier] FOREIGN KEY([GR_Supplier_ID])
REFERENCES [dbo].[GR_Supplier] ([ID])
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Master] CHECK CONSTRAINT [FK_PU_Purchase_Order_Master_GR_Supplier]
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Master]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchase_Order_Master_PRJ_Tender_Master] FOREIGN KEY([PRJ_Tender_Master_ID])
REFERENCES [dbo].[PRJ_Tender_Master] ([ID])
GO
ALTER TABLE [dbo].[PU_Purchase_Order_Master] CHECK CONSTRAINT [FK_PU_Purchase_Order_Master_PRJ_Tender_Master]
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
ALTER TABLE [dbo].[PU_Supply_Order_Items]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchase_Order_Items_GR_Currency] FOREIGN KEY([GR_currency_ID])
REFERENCES [dbo].[GR_Currency] ([ID])
GO
ALTER TABLE [dbo].[PU_Supply_Order_Items] CHECK CONSTRAINT [FK_PU_Purchase_Order_Items_GR_Currency]
GO
ALTER TABLE [dbo].[PU_Supply_Order_Items]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchase_Order_Items_GR_Item] FOREIGN KEY([GR_Item_ID])
REFERENCES [dbo].[GR_Item] ([ID])
GO
ALTER TABLE [dbo].[PU_Supply_Order_Items] CHECK CONSTRAINT [FK_PU_Purchase_Order_Items_GR_Item]
GO
ALTER TABLE [dbo].[PU_Supply_Order_Items]  WITH CHECK ADD  CONSTRAINT [FK_PU_Supply_Order_Items_PU_Supply_Orders] FOREIGN KEY([PU_Supply_Orders_ID])
REFERENCES [dbo].[PU_Supply_Orders] ([ID])
GO
ALTER TABLE [dbo].[PU_Supply_Order_Items] CHECK CONSTRAINT [FK_PU_Supply_Order_Items_PU_Supply_Orders]
GO
ALTER TABLE [dbo].[PU_Supply_Orders]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchases_Orders_GR_Currency] FOREIGN KEY([GR_currency_ID])
REFERENCES [dbo].[GR_Currency] ([ID])
GO
ALTER TABLE [dbo].[PU_Supply_Orders] CHECK CONSTRAINT [FK_PU_Purchases_Orders_GR_Currency]
GO
ALTER TABLE [dbo].[PU_Supply_Orders]  WITH CHECK ADD  CONSTRAINT [FK_PU_Purchases_Suppliers_Items_GR_Supplier] FOREIGN KEY([GR_Supplier_ID])
REFERENCES [dbo].[GR_Supplier] ([ID])
GO
ALTER TABLE [dbo].[PU_Supply_Orders] CHECK CONSTRAINT [FK_PU_Purchases_Suppliers_Items_GR_Supplier]
GO
ALTER TABLE [dbo].[PU_Supply_Orders]  WITH CHECK ADD  CONSTRAINT [FK_PU_Supply_Orders_PRJ_Tender_Master] FOREIGN KEY([PRJ_Tender_Master_ID])
REFERENCES [dbo].[PRJ_Tender_Master] ([ID])
GO
ALTER TABLE [dbo].[PU_Supply_Orders] CHECK CONSTRAINT [FK_PU_Supply_Orders_PRJ_Tender_Master]
GO
ALTER TABLE [dbo].[ST_Payment_Order]  WITH CHECK ADD  CONSTRAINT [FK_ST_Payment_Order_PRJ_Project_Data] FOREIGN KEY([PRJ_Project_Data_ID])
REFERENCES [dbo].[PRJ_Project_Data] ([ID])
GO
ALTER TABLE [dbo].[ST_Payment_Order] CHECK CONSTRAINT [FK_ST_Payment_Order_PRJ_Project_Data]
GO
ALTER TABLE [dbo].[ST_Payment_Order]  WITH CHECK ADD  CONSTRAINT [FK_ST_Payment_Order_ST_Stock] FOREIGN KEY([ST_Stock_ID])
REFERENCES [dbo].[ST_Stock] ([ID])
GO
ALTER TABLE [dbo].[ST_Payment_Order] CHECK CONSTRAINT [FK_ST_Payment_Order_ST_Stock]
GO
ALTER TABLE [dbo].[ST_Payment_Order_Item]  WITH CHECK ADD  CONSTRAINT [FK_ST_Payment_Order_Item_GR_Item] FOREIGN KEY([GR_Item_ID])
REFERENCES [dbo].[GR_Item] ([ID])
GO
ALTER TABLE [dbo].[ST_Payment_Order_Item] CHECK CONSTRAINT [FK_ST_Payment_Order_Item_GR_Item]
GO
ALTER TABLE [dbo].[ST_Payment_Order_Item]  WITH CHECK ADD  CONSTRAINT [FK_ST_Payment_Order_Item_ST_Payment_Order] FOREIGN KEY([ST_Payment_Order_ID])
REFERENCES [dbo].[ST_Payment_Order] ([ID])
GO
ALTER TABLE [dbo].[ST_Payment_Order_Item] CHECK CONSTRAINT [FK_ST_Payment_Order_Item_ST_Payment_Order]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission]  WITH CHECK ADD  CONSTRAINT [FK_ST_Receiving_Permission_GR_Supplier] FOREIGN KEY([GR_Supplier_ID])
REFERENCES [dbo].[GR_Supplier] ([ID])
GO
ALTER TABLE [dbo].[ST_Receiving_Permission] CHECK CONSTRAINT [FK_ST_Receiving_Permission_GR_Supplier]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission]  WITH CHECK ADD  CONSTRAINT [FK_ST_Receiving_Permission_PU_Supply_Orders] FOREIGN KEY([PU_Supply_Orders_ID])
REFERENCES [dbo].[PU_Supply_Orders] ([ID])
GO
ALTER TABLE [dbo].[ST_Receiving_Permission] CHECK CONSTRAINT [FK_ST_Receiving_Permission_PU_Supply_Orders]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission]  WITH CHECK ADD  CONSTRAINT [FK_ST_Receiving_Permission_ST_Stock] FOREIGN KEY([ST_Stock_ID])
REFERENCES [dbo].[ST_Stock] ([ID])
GO
ALTER TABLE [dbo].[ST_Receiving_Permission] CHECK CONSTRAINT [FK_ST_Receiving_Permission_ST_Stock]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission_Item]  WITH CHECK ADD  CONSTRAINT [FK_ST_Move_IN_Stock_GR_Item] FOREIGN KEY([GR_Item_ID])
REFERENCES [dbo].[GR_Item] ([ID])
GO
ALTER TABLE [dbo].[ST_Receiving_Permission_Item] CHECK CONSTRAINT [FK_ST_Move_IN_Stock_GR_Item]
GO
ALTER TABLE [dbo].[ST_Receiving_Permission_Item]  WITH CHECK ADD  CONSTRAINT [FK_ST_Move_IN_Stock_ST_Receiving_Permission] FOREIGN KEY([ST_Receiving_Permission_ID])
REFERENCES [dbo].[ST_Receiving_Permission] ([ID])
GO
ALTER TABLE [dbo].[ST_Receiving_Permission_Item] CHECK CONSTRAINT [FK_ST_Move_IN_Stock_ST_Receiving_Permission]
GO
/****** Object:  StoredProcedure [dbo].[Get_Group_Mnue_ByUser]    Script Date: 6/14/2023 9:53:56 PM ******/
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'بيانات العملاء ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GR_Client'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'العملة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GR_Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تم الموافقة علي العرض' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GR_Nationality', @level2type=N'COLUMN',@level2name=N'Is_Accpted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'from systemcode table 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GR_Supplier', @level2type=N'COLUMN',@level2name=N'Supplier_Type_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الموردين ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GR_Supplier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'انواع السلف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Advance_Payment_Type'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'غيابات الموظفين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_absence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'القيمة المسددة من السلفة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Advance_Payment', @level2type=N'COLUMN',@level2name=N'Paid_Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'قيمة السلفة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Advance_Payment', @level2type=N'COLUMN',@level2name=N'Tatal_Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'قيمة المكافاة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Advance_Payment_Paid', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تسويات السلف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Advance_Payment_Paid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Attendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'قيمة المكافاة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Bonus', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'سبب المكافاة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Bonus', @level2type=N'COLUMN',@level2name=N'Reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مكافات الموظفين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Bonus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'قيمة الخصم' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Deduction', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'سبب الخصم' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Deduction', @level2type=N'COLUMN',@level2name=N'Reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'خصم الموظفين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Deduction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مأموريات الموظف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Errands'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاخيرات الموظفين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Employee_Lateness'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'فترة التاخير ربع يوم (0.25)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HR_Lateness_Type', @level2type=N'COLUMN',@level2name=N'Value'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'رقم المشروع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Project_Data', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'جهة التعاقد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Project_Data', @level2type=N'COLUMN',@level2name=N'Contract_Party'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'رقم التعاقد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Project_Data', @level2type=N'COLUMN',@level2name=N'Contract_Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'امر التوريد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Project_Data', @level2type=N'COLUMN',@level2name=N'Supply_Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'بيانات المشروع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Project_Data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الكمية المتاحة فى المخزن' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Tender_Item', @level2type=N'COLUMN',@level2name=N'Available_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الكمية المطلوبة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Tender_Item', @level2type=N'COLUMN',@level2name=N'Required_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'السعر المقدم من المورد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Tender_Item', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كمية المطلوبة من العنصر' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Tender_Item', @level2type=N'COLUMN',@level2name=N'Required_Quantity1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'بنود المناقصة لمشروع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Tender_Item'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'المناقصة الاساسية' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Tender_Master', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مناقصة لمشروع' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRJ_Tender_Master'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كمية المتوفرة لدي المورد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Details', @level2type=N'COLUMN',@level2name=N'Supplier_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'السعر المقدم من المورد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Details', @level2type=N'COLUMN',@level2name=N'Supplier_Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كمية المطلوبة من العنصر' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Details', @level2type=N'COLUMN',@level2name=N'Required_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تم الموافقة علي العرض' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Details', @level2type=N'COLUMN',@level2name=N'Is_Accpted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ موافقة الموظف على المناقصة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Details', @level2type=N'COLUMN',@level2name=N'Responsible_Emp_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الموظف اللي وافق على المناقصة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Details', @level2type=N'COLUMN',@level2name=N'Responsible_Emp_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تفاصيل طلب الشراء وعروض الاسعار' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'شامل الضريبة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Taxes_Included'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الموظف اللي وافق على المناقصة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Responsible_Emp_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'رقم طلب الشراء من المورد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Supplier_Purchese_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ طلب الشراء' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Purchese_Order_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'رقم امر الشراء' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Pureche_order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'صورة مسار امر الشراء' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Purchese_Order_Img_Path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'هل تم ارسال الاميل' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'IS_Send_Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تم الموافقة علي العرض' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Is_Accpted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'نهاية عرض السعر' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Date_From'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'بداية عرض السعر' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'Date_To'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'رقم التوريد الذي تم  استخرجه لهذا العرض' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master', @level2type=N'COLUMN',@level2name=N'PU_Supply_Orders_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'طلب الشراء وعروض الاسعار' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Purchase_Order_Master'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'اصناف الموردين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supplier_Item'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'اصناف امر التوريد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Order_Items', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'صنف المشتري من جدول المشتريات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Order_Items', @level2type=N'COLUMN',@level2name=N'PU_Purchase_Order_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كود العملة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Order_Items', @level2type=N'COLUMN',@level2name=N'GR_currency_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كمية الواردة في امر التوريد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Order_Items', @level2type=N'COLUMN',@level2name=N'Required_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'سعر في امر التوريد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Order_Items', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مسار للصوره كود مكون من كود الصنف و كود المورد و المخزن ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Order_Items', @level2type=N'COLUMN',@level2name=N'Barcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'اصناف امر التوريد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Order_Items'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'امرالتوريد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Orders', @level2type=N'COLUMN',@level2name=N'Supply_Order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ الشراء' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Orders', @level2type=N'COLUMN',@level2name=N'Pureche_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مسار صور امر التوريد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Orders', @level2type=N'COLUMN',@level2name=N'Supply_Order_Img_Path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كود العملة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Orders', @level2type=N'COLUMN',@level2name=N'GR_currency_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'شامل الضريبة ام لا' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Orders', @level2type=N'COLUMN',@level2name=N'Taxes_Included'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'امر التوريد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PU_Supply_Orders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'رقم الصرف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order', @level2type=N'COLUMN',@level2name=N'Payment_Order_Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ الصرف' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order', @level2type=N'COLUMN',@level2name=N'Payment_Order_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كود المخزن المخزن فيه' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order', @level2type=N'COLUMN',@level2name=N'ST_Stock_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ الخروج من المخزن' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order', @level2type=N'COLUMN',@level2name=N'Move_Out_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'صورة مسار امر الشراء' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order', @level2type=N'COLUMN',@level2name=N'Img_Path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تم الصرف 1
لم يتم الصرف 0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order', @level2type=N'COLUMN',@level2name=N'IS_Spent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'اذن صرف مخزن' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ التخزين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order_Item', @level2type=N'COLUMN',@level2name=N'Move_Out_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الكمية المنصرفة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Payment_Order_Item', @level2type=N'COLUMN',@level2name=N'Spent_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'رقم اذن الاستلام' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission', @level2type=N'COLUMN',@level2name=N'Receiving_Permission_Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ اذن الاستلام' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission', @level2type=N'COLUMN',@level2name=N'Receiving_Permission_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كود المخزن المخزن فيه' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission', @level2type=N'COLUMN',@level2name=N'ST_Stock_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ التخزين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission', @level2type=N'COLUMN',@level2name=N'Store_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'صورة مسار امر الشراء' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission', @level2type=N'COLUMN',@level2name=N'Img_Path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'صنف المشتري من جدول المشتريات' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission', @level2type=N'COLUMN',@level2name=N'PU_Supply_Orders_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'إذن استلام' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'تاريخ التخزين' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission_Item', @level2type=N'COLUMN',@level2name=N'Store_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'الكمية المستلمة' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission_Item', @level2type=N'COLUMN',@level2name=N'Received_Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'حركة دخول المخزن' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Receiving_Permission_Item'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'كود المخزن الرئيسي في حالة كونه مخزن رئيسي يحصل علي نفس كوده انه ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ST_Stock', @level2type=N'COLUMN',@level2name=N'Main_Stock_ID'
GO
USE [master]
GO
ALTER DATABASE [ERP] SET  READ_WRITE 
GO
