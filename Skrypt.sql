CREATE TABLE [dbo].[UserData] (
    [Id]       INT        IDENTITY (1, 1) NOT NULL,
    [Login]    NCHAR (30) NOT NULL,
    [Name]     NCHAR (20) NOT NULL,
    [Surname]  NCHAR (30) NOT NULL,
    [Password] NCHAR (30) NOT NULL,
    [Email]    NCHAR (50) NOT NULL,
    [TypeOfUser] NCHAR(10) NOT NULL, 
    [AccStatus] NCHAR(10) NOT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



CREATE TABLE [dbo].[Car]
(
	[Id_Car] INT IDENTITY (1, 1) NOT NULL , 
    [Id_user] INT NOT NULL, 
    [TradeMark] NCHAR(50) NOT NULL, 
    [Model] NCHAR(50) NOT NULL, 
    [Rent] NCHAR(50) NOT NULL, 
    [Price] MONEY NOT NULL, 
    [Image] NCHAR(250) NOT NULL, 
    PRIMARY KEY ([Id_Car]), 
    CONSTRAINT [FK_CAR_USER] FOREIGN KEY ([Id_user]) REFERENCES [UserData]([Id])
)



CREATE TABLE [dbo].[Rent]
(
	[Id_Rent] INT NOT NULL PRIMARY KEY, 
    [Id_car] INT NOT NULL, 
    [Id_user] INT NOT NULL, 
    [Rent_start] DATE NOT NULL, 
    [Rent_end] DATE NOT NULL, 
    CONSTRAINT [FK_Rent_User] FOREIGN KEY ([Id_user]) REFERENCES [UserData]([Id]), 
    CONSTRAINT [FK_Rent_Car] FOREIGN KEY ([Id_car]) REFERENCES [Car]([Id_Car])
)


CREATE TABLE [dbo].[Mail]
(
	[Id_Mail] INT NOT NULL PRIMARY KEY, 
    [Id_user] INT NOT NULL, 
    [Title] NCHAR(50) NOT NULL, 
    [Body] NCHAR(200) NOT NULL, 
    CONSTRAINT [FK_Mail_USER] FOREIGN KEY ([Id_user]) REFERENCES [UserData]([Id])
)






////// Poprawiony skrypt wywalona referencja i pole id_user


CREATE TABLE [dbo].[Car] (
    [Id_Car]    INT         IDENTITY (1, 1) NOT NULL,
    [TradeMark] NCHAR (50)  NOT NULL,
    [Model]     NCHAR (50)  NOT NULL,
    [Rent]      NCHAR (50)  NOT NULL,
    [Price]     MONEY       NOT NULL,
    [Image]     NCHAR (500) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id_Car] ASC)
);

