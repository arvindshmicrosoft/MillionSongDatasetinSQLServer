CREATE DATABASE [MillionSongDataset]
GO

ALTER DATABASE [MillionSongDataset] SET RECOVERY SIMPLE
GO

USE [MillionSongDataset]
GO

CREATE TABLE [dbo].[train_triplets](
	[UserId] [nvarchar](80) NULL,
	[SongId] [nvarchar](36) NULL,
	[ListenCount] [bigint] NULL,
	INDEX CCI_train_triplets CLUSTERED COLUMNSTORE
)
GO

CREATE TABLE [dbo].[unique_tracks](
	[TrackId] [varchar](50) NULL,
	[SongId] [varchar](50) NULL,
	[ArtistName] [varchar](500) NULL,
	[SongTitle] [varchar](500) NULL,
	INDEX CCI_unique_tracks CLUSTERED COLUMNSTORE
) 
GO

CREATE TABLE [dbo].[sid_matches](
	[SongId] [varchar](50) NULL,
	[TrackId] [varchar](50) NULL,
	[ActualArtist] [varchar](500) NULL,
	[ActualSongTitle] [varchar](500) NULL,
	INDEX CCI_sid_matches_tsv CLUSTERED COLUMNSTORE
)
GO

