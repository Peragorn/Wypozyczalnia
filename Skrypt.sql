CREATE TABLE [dbo].[UserData] (
    [Id]       INT IDENTITY(1,1)       NOT NULL,
    [Login]    NCHAR (30) NOT NULL,
    [Name]     NCHAR (20) NOT NULL,
    [Surname]  NCHAR (30) NOT NULL,
    [Password] NCHAR (30) NOT NULL,
    [Email]    NCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);