USE [BlogEngine]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPostsBySearch]    Script Date: 11/10/2017 6:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Raviteja Swayampu>
-- Create date: <Create Date,7-nov-2017>
-- Description:	<Description,Gets all posts based on search text>
-- =============================================

-- Exec sp_GetPostsBySearch 'Javasc'

ALTER PROCEDURE [dbo].[sp_GetPostsBySearch] 
	@searchText nvarchar(100)=null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT postid,title,shortdescription,postdescription,postmeta,posturlslug,ispublished,postedon,createdby,
	createddate,poststatus,ModifiedDate,CategoryId,UserId
	from post where Title like '%'+@searchText+'%'
END
