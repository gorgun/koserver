IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'PREMIUM_ITEM')
    DROP TABLE PREMIUM_ITEM;

CREATE TABLE [dbo].[PREMIUM_ITEM](
	[Type] [tinyint] NULL,
	[ExpRestorePercent] [smallint] NULL,
	[NoahPercent] [smallint] NULL,
	[DropPercent] [smallint] NULL,
	[BonusLoyalty] [int] NULL,
	[RepairDiscountPercent] [smallint] NULL,
	[ItemSellPercent] [smallint] NULL
) ON [PRIMARY]

GO


INSERT INTO PREMIUM_ITEM VALUES (1,0,0,0,0,0,0)
INSERT INTO PREMIUM_ITEM VALUES (2,0,0,0,0,0,0)
INSERT INTO PREMIUM_ITEM VALUES (3,90,0,0,2,0,0)
INSERT INTO PREMIUM_ITEM VALUES (4,0,0,0,0,0,0)
INSERT INTO PREMIUM_ITEM VALUES (5,80,5,3,5,50,30)
INSERT INTO PREMIUM_ITEM VALUES (6,0,0,0,0,0,0)
INSERT INTO PREMIUM_ITEM VALUES (7,70,5,3,5,50,30)
INSERT INTO PREMIUM_ITEM VALUES (8,0,0,0,0,0,0)
INSERT INTO PREMIUM_ITEM VALUES (9,0,0,0,0,0,0)
INSERT INTO PREMIUM_ITEM VALUES (10,80,100,5,12,50,30)
INSERT INTO PREMIUM_ITEM VALUES (11,1,100,0,12,50,30)
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'PREMIUM_ITEM_EXP')
    DROP TABLE PREMIUM_ITEM_EXP;

CREATE TABLE [dbo].[PREMIUM_ITEM_EXP](
	[nIndex] [smallint] NULL,
	[Type] [tinyint] NULL,
	[MinLevel] [tinyint] NULL,
	[MaxLevel] [tinyint] NULL,
	[sPercent] [smallint] NULL
) ON [PRIMARY]

GO

INSERT INTO PREMIUM_ITEM_EXP VALUES (1,3,1,83,20)
INSERT INTO PREMIUM_ITEM_EXP VALUES (2,5,1,83,30)
INSERT INTO PREMIUM_ITEM_EXP VALUES (3,7,1,50,400)
INSERT INTO PREMIUM_ITEM_EXP VALUES (4,7,51,83,100)
INSERT INTO PREMIUM_ITEM_EXP VALUES (5,10,1,83,30)
INSERT INTO PREMIUM_ITEM_EXP VALUES (6,11,1,50,400)
INSERT INTO PREMIUM_ITEM_EXP VALUES (7,11,51,60,300)
INSERT INTO PREMIUM_ITEM_EXP VALUES (8,11,61,70,200)
INSERT INTO PREMIUM_ITEM_EXP VALUES (9,11,71,83,120)
GO