CREATE TABLE [dbo].[postproject] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [project_name]   NVARCHAR (5000) NULL,
    [project_desc]   NCHAR (7000)     NULL,
    [project_image]  NVARCHAR (500) NULL,
    [project_skill]  NVARCHAR (5000)  NULL,
    [project_budget] NVARCHAR (5000)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

