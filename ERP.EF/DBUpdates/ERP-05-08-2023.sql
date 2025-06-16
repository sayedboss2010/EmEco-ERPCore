ALTER Proc [dbo].[GetAllTrMoveOut] 
@recieptId bigint, 
@destination nvarchar(500),
@currencyId int,
@isSetteled int,
@fromDate datetime,
@toDate datetime,
@pageNumber int, 
@pageSize int
as
begin	
	select m.[Id], ReceiptId = m.Receipt_ID, DestintionMoveout = m.Destintion_Moveout, 
		   ImgPath = m.Img_Path, MoveOutDate = m.Move_out_Date, TypeId = m.TR_Move_Out_Treasury_Type_ID,
		   TypeText = m.TR_Move_Out_Treasury_Type_Text, TotalValue = m.Value, CurrencyId = m.GR_Currency_ID,
		   TypeName = t.Name, 
		   CurrencyName = c.Currency_Name,
		   PaidValue = ISNULL((select SUM(a.Value) from TR_Adjustment_Advance_Treasury a 
		                where a.TR_Move_Out_Treasury_ID = m.ID and a.User_Deletion_Date is null and a.User_Deletion_Id is null),0),

		   Overall_count = COUNT_BIG(*) OVER()

	from [dbo].[TR_Move_Out_Treasury] m
	
	inner join [dbo].[TR_Move_Out_Treasury_Type] t
	on m.TR_Move_Out_Treasury_Type_ID = t.ID
	
	inner join [dbo].[GR_Currency] c
	on m.GR_Currency_ID = c.ID
	
	where m.User_Deletion_Date is null and m.User_Deletion_Id is null 
		  and 
		  (
				@recieptId is null 
				or 
				(@recieptId is not null and m.Receipt_ID = @recieptId)										
		  )		  		 
		  and 
		  (
			@destination is null 
			or
			(@destination is not null and m.Destintion_Moveout like N'%' + @destination + '%')
		  )		  
		  and 
		  (
			@currencyId is null
			or
			(@currencyId is not null and m.GR_Currency_ID = @currencyId)			
		  )	
		  and 
		  (
			@isSetteled is null
			or
			(@isSetteled is not null and @isSetteled = 0)
			or
			(-- لم تتم التسوية
				@isSetteled is not null and @isSetteled = 1 
				and m.Value > 
				ISNULL((select sum(a.Value) from TR_Adjustment_Advance_Treasury a 
				 where a.TR_Move_Out_Treasury_ID = m.ID and a.User_Deletion_Date is null and a.User_Deletion_Id is null), 0) 
			)
			or
			(--  تمت التسوية
				@isSetteled is not null and @isSetteled = 2
				and m.Value =
				ISNULL((select sum(a.Value) from TR_Adjustment_Advance_Treasury a 
				where a.TR_Move_Out_Treasury_ID = m.ID and a.User_Deletion_Date is null and a.User_Deletion_Id is null), 0)
			)
		  )	
		  and 
		  (
			@fromDate is null
			or
			(@fromDate is not null and Convert(DATE, m.Move_out_Date) >= CONVERT(DATE, @fromDate))			
		  )	
		  and 
		  (
			@toDate is null
			or
			(@toDate is not null and Convert(DATE, m.Move_out_Date) <= CONVERT(DATE, @toDate))			
		  )	

	Order by m.ID desc

	OFFSET ((@pageNumber - 1) * @pageSize) ROWS
	FETCH NEXT @pageSize ROWS ONLY
end