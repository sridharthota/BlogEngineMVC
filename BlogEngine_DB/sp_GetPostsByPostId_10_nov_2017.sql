USE [BlogEngine]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPostsByPostId]    Script Date: 11/10/2017 6:11:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Raviteja Swayampu>
-- Create date: <Create Date,8-nov-2017>
-- Description:	<Description,Gets all posts based on PostId>
-- =============================================

-- Exec sp_GetPostsByPostId '1'

ALTER PROCEDURE [dbo].[sp_GetPostsByPostId] 
	@postId bigint=0
AS
BEGIN

	SET NOCOUNT ON;

	SELECT postid,title,shortdescription,postdescription,postmeta,posturlslug,ispublished,postedon,createdby,
	createddate,poststatus,ModifiedDate,CategoryId,UserId
	from post where PostId=@postId
END
