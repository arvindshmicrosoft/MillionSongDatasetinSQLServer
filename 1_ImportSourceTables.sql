-- Reference: https://labrosa.ee.columbia.edu/millionsong/pages/getting-dataset
-- Data file: http://labrosa.ee.columbia.edu/millionsong/sites/default/files/AdditionalFiles/unique_tracks.txt
INSERT dbo.unique_tracks
SELECT        *
FROM OPENROWSET(BULK 'C:\MSD\SourceData\unique_tracks.txt', 
			FORMATFILE = 'C:\MSD\echonesttracks.fmt', 
			CODEPAGE = '65001') AS RawData
GO

-- Reference: https://labrosa.ee.columbia.edu/millionsong/tasteprofile
-- Data file (unzip manually please!): http://labrosa.ee.columbia.edu/millionsong/sites/default/files/challenge/train_triplets.txt.zip
INSERT dbo.[train_triplets]
SELECT        *
FROM OPENROWSET(BULK 'C:\MSD\SourceData\train_triplets.txt', 
			FORMATFILE = 'C:\MSD\train_triplets.fmt') AS RawData
GO

-- Fix up errors in the Echo Nest data
-- References: 
-- https://labrosa.ee.columbia.edu/millionsong/blog/12-1-2-matching-errors-taste-profile-and-msd
-- https://labrosa.ee.columbia.edu/millionsong/blog/12-2-12-fixing-matching-errors
-- Data file:
-- http://labrosa.ee.columbia.edu/millionsong/sites/default/files/tasteprofile/sid_mismatches.txt
UPDATE orig
SET orig.SongTitle = final.ActualSong,
orig.ArtistName = final.ActualArtist
FROM
	unique_tracks orig
	JOIN (
	SELECT *
	FROM
		OPENROWSET(BULK 'C:\MSD\SourceData\sid_mismatches.txt', 
				FORMATFILE = 'C:\MSD\sid_mismatches.fmt', CODEPAGE = '65001') AS MismatchedSongs
) AS final
	ON orig.SongId = final.SongId
WHERE ActualArtist IS NOT NULL
	AND ActualSong IS NOT NULL
GO


