Create Proc [dbo].[GetAllTreasuryDuration] 
@currencyId int,
@fromDate datetime,
@toDate datetime,
@pageNumber int, 
@pageSize int
as
begin	
	with all_trans as
	(		SELECT (x.ID + Receipt_ID) as Id  , [Receipt_ID], y.Name ,case when  x.Notes is null then y.Name else x.Notes end Notes ,
			[Move_out_Date] date ,[Value] * -1 value ,Destintion_Moveout, N' صرف ' type_trans
  
			FROM [dbo].[TR_Move_Out_Treasury] x
			inner join [dbo].[TR_Move_Out_Treasury_Type] y 
			on x.[TR_Move_Out_Treasury_Type_ID]=y.ID

			where x.[IS_Deleted]=0 and y.[IS_Active]=1 and x.GR_Currency_ID = @currencyId
			and 
		  (
			@fromDate is null
			or
			(@fromDate is not null and Convert(DATE, x.Move_out_Date) >= CONVERT(DATE, @fromDate))			
		  )	
		  and 
		  (
			@toDate is null
			or
			(@toDate is not null and Convert(DATE, x.Move_out_Date) <= CONVERT(DATE, @toDate))			
		  )	
	union
			SELECT ID, null, null, [Notes], [Move_In_Date] ,[Value] ,Destintion_MoveIn, N'ايداع'  type_trans

            FROM [ERP].[dbo].[TR_Move_In_Treasury]
			where [IS_Deleted]=0 and [IS_Active]=1 and GR_Currency_ID = @currencyId
			and 
		  (
			@fromDate is null
			or
			(@fromDate is not null and Convert(DATE, [Move_In_Date]) >= CONVERT(DATE, @fromDate))			
		  )	
		  and 
		  (
			@toDate is null
			or
			(@toDate is not null and Convert(DATE, [Move_In_Date]) <= CONVERT(DATE, @toDate))			
		  )	
	)
  
	select ID, [Receipt_ID] 'RecieptNumber' , Name 'Type' , Notes 'Notes', date  'Date' , [Value] 'Value',
			Destintion_Moveout 'EmployeeName' ,type_trans 'MoveType', Overall_count = COUNT_BIG(*) OVER()
	from all_trans t 

	order by date

	OFFSET ((@pageNumber - 1) * @pageSize) ROWS
	FETCH NEXT @pageSize ROWS ONLY
end
GO
-------------------------------------------------------
ALTER Proc [dbo].[GetAllTreasuryMoves] 
@currencyId int
as
begin	
	with all_trans as
	(		SELECT (x.ID + Receipt_ID) as Id  , [Receipt_ID], y.Name ,case when  x.Notes is null then y.Name else x.Notes end Notes ,
			[Move_out_Date] date ,[Value] * -1 value ,Destintion_Moveout, N' صرف ' type_trans
  
			FROM [dbo].[TR_Move_Out_Treasury] x
			inner join [dbo].[TR_Move_Out_Treasury_Type] y 
			on x.[TR_Move_Out_Treasury_Type_ID]=y.ID

			where x.[IS_Deleted]=0 and y.[IS_Active]=1 and x.GR_Currency_ID = @currencyId
	union
			SELECT ID, null, null, [Notes], [Move_In_Date] ,[Value] ,Destintion_MoveIn, N'ايداع'  type_trans

            FROM [ERP].[dbo].[TR_Move_In_Treasury]
			where [IS_Deleted]=0 and [IS_Active]=1 and GR_Currency_ID = @currencyId
	)
  
	select ID, [Receipt_ID] 'RecieptNumber' , Name 'Type' , Notes 'Notes', date  'Date' , [Value] 'Value',
			Destintion_Moveout 'EmployeeName' ,type_trans 'MoveType', Overall_count = 0
	from all_trans t 

	order by date
end
GO