﻿CREATE TABLE [dbo].[DataToExcel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](300) NULL,
	[LastReadedId] [bigint] NULL,
 CONSTRAINT [PK_DataToExcel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO