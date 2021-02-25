CREATE TABLE BottlePhoto
(
	[PhotoId][INT] IDENTITY(1, 1) NOT NULL,
	[BottleId][INT] UNIQUE NOT NULL,
	[Photo][VARBINARY](MAX) NOT NULL

	CONSTRAINT PK_PhotoId PRIMARY KEY (PhotoId),
	CONSTRAINT FK_BottlePhotoToBottle FOREIGN KEY (BottleId)
		REFERENCES Bottle (BottleId)
	ON DELETE CASCADE
	ON UPDATE NO ACTION
)