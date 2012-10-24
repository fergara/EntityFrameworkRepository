
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 10/20/2012 11:53:17
-- Generated from EDMX file: C:\Users\Fergara\documents\visual studio 11\Projects\Numerics.Service\Numerics.Service\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [fergara1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ProductFamilyProductSubFamily]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductSubFamilies] DROP CONSTRAINT [FK_ProductFamilyProductSubFamily];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductSubFamilyProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_ProductSubFamilyProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_LegalEntityBook]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Books] DROP CONSTRAINT [FK_LegalEntityBook];
GO
IF OBJECT_ID(N'[dbo].[FK_TradeBook]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trades] DROP CONSTRAINT [FK_TradeBook];
GO
IF OBJECT_ID(N'[dbo].[FK_PositionBook]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Positions] DROP CONSTRAINT [FK_PositionBook];
GO
IF OBJECT_ID(N'[dbo].[FK_LegalEntityCurrency]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LegalEntities] DROP CONSTRAINT [FK_LegalEntityCurrency];
GO
IF OBJECT_ID(N'[dbo].[FK_SecurityAsset_inherits_Asset]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assets_SecurityAsset] DROP CONSTRAINT [FK_SecurityAsset_inherits_Asset];
GO
IF OBJECT_ID(N'[dbo].[FK_RepoAsset_inherits_Asset]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assets_RepoAsset] DROP CONSTRAINT [FK_RepoAsset_inherits_Asset];
GO
IF OBJECT_ID(N'[dbo].[FK_SecurityPosition_inherits_Position]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Positions_SecurityPosition] DROP CONSTRAINT [FK_SecurityPosition_inherits_Position];
GO
IF OBJECT_ID(N'[dbo].[FK_CashPosition_inherits_Position]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Positions_CashPosition] DROP CONSTRAINT [FK_CashPosition_inherits_Position];
GO
IF OBJECT_ID(N'[dbo].[FK_FutureAsset_inherits_Asset]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assets_FutureAsset] DROP CONSTRAINT [FK_FutureAsset_inherits_Asset];
GO
IF OBJECT_ID(N'[dbo].[FK_SecurityTrade_inherits_Trade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trades_SecurityTrade] DROP CONSTRAINT [FK_SecurityTrade_inherits_Trade];
GO
IF OBJECT_ID(N'[dbo].[FK_RepoTrade_inherits_Trade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trades_RepoTrade] DROP CONSTRAINT [FK_RepoTrade_inherits_Trade];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Assets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assets];
GO
IF OBJECT_ID(N'[dbo].[Positions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Positions];
GO
IF OBJECT_ID(N'[dbo].[ProductFamilies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductFamilies];
GO
IF OBJECT_ID(N'[dbo].[ProductSubFamilies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductSubFamilies];
GO
IF OBJECT_ID(N'[dbo].[Counterparties]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Counterparties];
GO
IF OBJECT_ID(N'[dbo].[Prices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prices];
GO
IF OBJECT_ID(N'[dbo].[Trades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Trades];
GO
IF OBJECT_ID(N'[dbo].[CashEvents]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CashEvents];
GO
IF OBJECT_ID(N'[dbo].[LegalEntities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LegalEntities];
GO
IF OBJECT_ID(N'[dbo].[Books]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Books];
GO
IF OBJECT_ID(N'[dbo].[CashFlows]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CashFlows];
GO
IF OBJECT_ID(N'[dbo].[Currencies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Currencies];
GO
IF OBJECT_ID(N'[dbo].[Assets_SecurityAsset]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assets_SecurityAsset];
GO
IF OBJECT_ID(N'[dbo].[Assets_RepoAsset]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assets_RepoAsset];
GO
IF OBJECT_ID(N'[dbo].[Positions_SecurityPosition]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Positions_SecurityPosition];
GO
IF OBJECT_ID(N'[dbo].[Positions_CashPosition]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Positions_CashPosition];
GO
IF OBJECT_ID(N'[dbo].[Assets_FutureAsset]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assets_FutureAsset];
GO
IF OBJECT_ID(N'[dbo].[Trades_SecurityTrade]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Trades_SecurityTrade];
GO
IF OBJECT_ID(N'[dbo].[Trades_RepoTrade]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Trades_RepoTrade];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ProductSubFamilyID] int  NOT NULL
);
GO

-- Creating table 'Assets'
CREATE TABLE [dbo].[Assets] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Positions'
CREATE TABLE [dbo].[Positions] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Amount] nvarchar(max)  NOT NULL,
    [ReferenceDate] datetime  NOT NULL,
    [Book_ID] int  NOT NULL
);
GO

-- Creating table 'ProductFamilies'
CREATE TABLE [dbo].[ProductFamilies] (
    [ID] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ProductSubFamilies'
CREATE TABLE [dbo].[ProductSubFamilies] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ProductFamilyID] int  NOT NULL
);
GO

-- Creating table 'Counterparties'
CREATE TABLE [dbo].[Counterparties] (
    [ID] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Prices'
CREATE TABLE [dbo].[Prices] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [OpeningPrice] nvarchar(max)  NOT NULL,
    [ClosingPrice] nvarchar(max)  NOT NULL,
    [ReferenceDate] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Trades'
CREATE TABLE [dbo].[Trades] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Book_ID] int  NOT NULL
);
GO

-- Creating table 'CashEvents'
CREATE TABLE [dbo].[CashEvents] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ReferenceDate] datetime  NOT NULL
);
GO

-- Creating table 'LegalEntities'
CREATE TABLE [dbo].[LegalEntities] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Currency_ID] int  NOT NULL
);
GO

-- Creating table 'Books'
CREATE TABLE [dbo].[Books] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [LegalEntityID] int  NOT NULL
);
GO

-- Creating table 'CashFlows'
CREATE TABLE [dbo].[CashFlows] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Currencies'
CREATE TABLE [dbo].[Currencies] (
    [ID] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Assets_SecurityAsset'
CREATE TABLE [dbo].[Assets_SecurityAsset] (
    [ID] int  NOT NULL
);
GO

-- Creating table 'Assets_RepoAsset'
CREATE TABLE [dbo].[Assets_RepoAsset] (
    [ID] int  NOT NULL
);
GO

-- Creating table 'Positions_SecurityPosition'
CREATE TABLE [dbo].[Positions_SecurityPosition] (
    [ID] int  NOT NULL
);
GO

-- Creating table 'Positions_CashPosition'
CREATE TABLE [dbo].[Positions_CashPosition] (
    [ID] int  NOT NULL
);
GO

-- Creating table 'Assets_FutureAsset'
CREATE TABLE [dbo].[Assets_FutureAsset] (
    [ID] int  NOT NULL
);
GO

-- Creating table 'Trades_SecurityTrade'
CREATE TABLE [dbo].[Trades_SecurityTrade] (
    [ID] int  NOT NULL
);
GO

-- Creating table 'Trades_RepoTrade'
CREATE TABLE [dbo].[Trades_RepoTrade] (
    [ID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Assets'
ALTER TABLE [dbo].[Assets]
ADD CONSTRAINT [PK_Assets]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Positions'
ALTER TABLE [dbo].[Positions]
ADD CONSTRAINT [PK_Positions]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ProductFamilies'
ALTER TABLE [dbo].[ProductFamilies]
ADD CONSTRAINT [PK_ProductFamilies]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ProductSubFamilies'
ALTER TABLE [dbo].[ProductSubFamilies]
ADD CONSTRAINT [PK_ProductSubFamilies]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Counterparties'
ALTER TABLE [dbo].[Counterparties]
ADD CONSTRAINT [PK_Counterparties]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Prices'
ALTER TABLE [dbo].[Prices]
ADD CONSTRAINT [PK_Prices]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Trades'
ALTER TABLE [dbo].[Trades]
ADD CONSTRAINT [PK_Trades]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CashEvents'
ALTER TABLE [dbo].[CashEvents]
ADD CONSTRAINT [PK_CashEvents]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'LegalEntities'
ALTER TABLE [dbo].[LegalEntities]
ADD CONSTRAINT [PK_LegalEntities]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Books'
ALTER TABLE [dbo].[Books]
ADD CONSTRAINT [PK_Books]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'CashFlows'
ALTER TABLE [dbo].[CashFlows]
ADD CONSTRAINT [PK_CashFlows]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'Currencies'
ALTER TABLE [dbo].[Currencies]
ADD CONSTRAINT [PK_Currencies]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Assets_SecurityAsset'
ALTER TABLE [dbo].[Assets_SecurityAsset]
ADD CONSTRAINT [PK_Assets_SecurityAsset]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Assets_RepoAsset'
ALTER TABLE [dbo].[Assets_RepoAsset]
ADD CONSTRAINT [PK_Assets_RepoAsset]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Positions_SecurityPosition'
ALTER TABLE [dbo].[Positions_SecurityPosition]
ADD CONSTRAINT [PK_Positions_SecurityPosition]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Positions_CashPosition'
ALTER TABLE [dbo].[Positions_CashPosition]
ADD CONSTRAINT [PK_Positions_CashPosition]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Assets_FutureAsset'
ALTER TABLE [dbo].[Assets_FutureAsset]
ADD CONSTRAINT [PK_Assets_FutureAsset]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Trades_SecurityTrade'
ALTER TABLE [dbo].[Trades_SecurityTrade]
ADD CONSTRAINT [PK_Trades_SecurityTrade]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Trades_RepoTrade'
ALTER TABLE [dbo].[Trades_RepoTrade]
ADD CONSTRAINT [PK_Trades_RepoTrade]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ProductFamilyID] in table 'ProductSubFamilies'
ALTER TABLE [dbo].[ProductSubFamilies]
ADD CONSTRAINT [FK_ProductFamilyProductSubFamily]
    FOREIGN KEY ([ProductFamilyID])
    REFERENCES [dbo].[ProductFamilies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductFamilyProductSubFamily'
CREATE INDEX [IX_FK_ProductFamilyProductSubFamily]
ON [dbo].[ProductSubFamilies]
    ([ProductFamilyID]);
GO

-- Creating foreign key on [ProductSubFamilyID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_ProductSubFamilyProduct]
    FOREIGN KEY ([ProductSubFamilyID])
    REFERENCES [dbo].[ProductSubFamilies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductSubFamilyProduct'
CREATE INDEX [IX_FK_ProductSubFamilyProduct]
ON [dbo].[Products]
    ([ProductSubFamilyID]);
GO

-- Creating foreign key on [LegalEntityID] in table 'Books'
ALTER TABLE [dbo].[Books]
ADD CONSTRAINT [FK_LegalEntityBook]
    FOREIGN KEY ([LegalEntityID])
    REFERENCES [dbo].[LegalEntities]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LegalEntityBook'
CREATE INDEX [IX_FK_LegalEntityBook]
ON [dbo].[Books]
    ([LegalEntityID]);
GO

-- Creating foreign key on [Book_ID] in table 'Trades'
ALTER TABLE [dbo].[Trades]
ADD CONSTRAINT [FK_TradeBook]
    FOREIGN KEY ([Book_ID])
    REFERENCES [dbo].[Books]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TradeBook'
CREATE INDEX [IX_FK_TradeBook]
ON [dbo].[Trades]
    ([Book_ID]);
GO

-- Creating foreign key on [Book_ID] in table 'Positions'
ALTER TABLE [dbo].[Positions]
ADD CONSTRAINT [FK_PositionBook]
    FOREIGN KEY ([Book_ID])
    REFERENCES [dbo].[Books]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PositionBook'
CREATE INDEX [IX_FK_PositionBook]
ON [dbo].[Positions]
    ([Book_ID]);
GO

-- Creating foreign key on [Currency_ID] in table 'LegalEntities'
ALTER TABLE [dbo].[LegalEntities]
ADD CONSTRAINT [FK_LegalEntityCurrency]
    FOREIGN KEY ([Currency_ID])
    REFERENCES [dbo].[Currencies]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LegalEntityCurrency'
CREATE INDEX [IX_FK_LegalEntityCurrency]
ON [dbo].[LegalEntities]
    ([Currency_ID]);
GO

-- Creating foreign key on [ID] in table 'Assets_SecurityAsset'
ALTER TABLE [dbo].[Assets_SecurityAsset]
ADD CONSTRAINT [FK_SecurityAsset_inherits_Asset]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Assets]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID] in table 'Assets_RepoAsset'
ALTER TABLE [dbo].[Assets_RepoAsset]
ADD CONSTRAINT [FK_RepoAsset_inherits_Asset]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Assets]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID] in table 'Positions_SecurityPosition'
ALTER TABLE [dbo].[Positions_SecurityPosition]
ADD CONSTRAINT [FK_SecurityPosition_inherits_Position]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Positions]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID] in table 'Positions_CashPosition'
ALTER TABLE [dbo].[Positions_CashPosition]
ADD CONSTRAINT [FK_CashPosition_inherits_Position]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Positions]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID] in table 'Assets_FutureAsset'
ALTER TABLE [dbo].[Assets_FutureAsset]
ADD CONSTRAINT [FK_FutureAsset_inherits_Asset]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Assets]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID] in table 'Trades_SecurityTrade'
ALTER TABLE [dbo].[Trades_SecurityTrade]
ADD CONSTRAINT [FK_SecurityTrade_inherits_Trade]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Trades]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID] in table 'Trades_RepoTrade'
ALTER TABLE [dbo].[Trades_RepoTrade]
ADD CONSTRAINT [FK_RepoTrade_inherits_Trade]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Trades]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------