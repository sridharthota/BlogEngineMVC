USE [BlogEngine]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllPosts]    Script Date: 11/10/2017 6:10:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,KrishnaVamsi Gudivada>
-- Create date: <Create Date,7-nov-2017>
-- Description:	<Description,Gets all posts with category and tags data>
-- =============================================
ALTER PROCEDURE [dbo].[sp_GetAllPosts]
AS
BEGIN
	SET NOCOUNT ON;

    select p.postid,p.title,p.shortdescription,p.postdescription,p.postmeta,p.posturlslug,p.ispublished,p.postedon,p.createdby,
	p.createddate,p.poststatus,p.ModifiedDate,p.CategoryId,p.UserId
	from post p inner join category c on c.categoryid=p.categoryid
END
