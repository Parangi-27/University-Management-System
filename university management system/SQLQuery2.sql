CREATE TABLE [dbo].Dept(
    [Id]    INT           NOT NULL,
    [Dept]  NVARCHAR (50) NOT NULL,
	[Hod ]  NVARCHAR (50) NOT NULL,
    [Years] INT           NOT NULL,
	[Fees] BIGINT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);