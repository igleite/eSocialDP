/** EFDS_S2500_idePeriodo */

DROP TABLE IF EXISTS [dbo].[EFDS_S2500_idePeriodo]
GO

CREATE TABLE [dbo].[EFDS_S2500_idePeriodo]
(
    -- EventoSubEntityBase
    [id]                      INT IDENTITY (1,1),
    [timeStamp]               DATETIME    NULL DEFAULT GETDATE(),
    [updRegistro]             DATETIME    NULL DEFAULT GETDATE(),


    [EFDS_S2500_infoContrId] INT         NOT NULL,

    -- idePeriodo
    [perRef]                  CHAR(7)     NULL,

    -- baseCalculo
    [vrBcCpMensal]            MONEY       NULL,
    [vrBcCp13]                MONEY       NULL,
    [vrBcFgts]                MONEY       NULL,
    [vrBcFgts13]              MONEY       NULL,

    -- infoAgNocivo
    [grauExp]                 CHAR(1)     NULL,

    -- infoFGTS
    [vrBcFgtsGuia]            MONEY       NULL,
    [vrBcFgts13Guia]          MONEY       NULL,
    [pagDireto]               CHAR(1)     NULL,

    -- baseMudCateg
    [codCateg]                CHAR(3)     NULL,
    [vrBcCPrev]               VARCHAR(14) NULL
)
GO

ALTER TABLE [dbo].[EFDS_S2500_idePeriodo]
    ADD CONSTRAINT PK_EFDS_S2500_idePeriodo_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2500_idePeriodo_clustered ON [dbo].[EFDS_S2500_idePeriodo] ([id])
GO