USE [BlogEngine]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPostsByCategory]    Script Date: 11/10/2017 6:14:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Raviteja Swayampu>
-- Create date: <Create Date,7-nov-2017>
-- Description:	<Description,Gets posts based  on categoryid>
-- =============================================

-- Exec sp_GetPostsByCategory 1

ALTER PROCEDURE [dbo].[sp_GetPostsByCategory] 
	@categoryId bigint=0
AS
BEGIN
	SET NOCOUNT ON;

    select p.postid,p.title,p.shortdescription,p.postdescription,p.postmeta,p.posturlslug,p.ispublished,p.postedon,p.createdby,
	p.createddate,p.poststatus,p.ModifiedDate,p.CategoryId,p.UserId
	from post p inner join category c on c.categoryid=p.categoryid
	where c.CategoryId=@categoryId
END
