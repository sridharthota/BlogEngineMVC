USE [BlogEngine]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPostsByTagId]    Script Date: 11/10/2017 6:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Raviteja Swayampu>
-- Create date: <Create Date,7-nov-2017>
-- Description:	<Description,Gets all posts based on tag>
-- =============================================

-- Exec sp_GetPostsByTagSlug 'html'

ALTER PROCEDURE [dbo].[sp_GetPostsByTagId]
	@tagId bigint=0
AS
BEGIN
	SET NOCOUNT ON

	 select p.postid,p.title,p.shortdescription,p.postdescription,p.postmeta,p.posturlslug,p.ispublished,p.postedon,p.createdby,
		p.createddate,p.poststatus,p.ModifiedDate,p.CategoryId,p.UserId
		from post p inner join PostTagMap PTM on PTM.PostId=p.PostId inner join Tag t on t.TagId=PTM.TagId
		where t.TagId=@tagId
END
