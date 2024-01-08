USE [master]
GO

/****** Object:  Database [MoviesDB]    Script Date: 13-11-2023 12:03:30 ******/
CREATE DATABASE [MoviesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MoviesDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MoviesDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MoviesDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MoviesDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MoviesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MoviesDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MoviesDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MoviesDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MoviesDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MoviesDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [MoviesDB] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [MoviesDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MoviesDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MoviesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MoviesDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MoviesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MoviesDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MoviesDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MoviesDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MoviesDB] SET  ENABLE_BROKER 
GO

ALTER DATABASE [MoviesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MoviesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MoviesDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MoviesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MoviesDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MoviesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MoviesDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MoviesDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [MoviesDB] SET  MULTI_USER 
GO

ALTER DATABASE [MoviesDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MoviesDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [MoviesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [MoviesDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [MoviesDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [MoviesDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [MoviesDB] SET QUERY_STORE = ON
GO

ALTER DATABASE [MoviesDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [MoviesDB] SET  READ_WRITE 
GO
