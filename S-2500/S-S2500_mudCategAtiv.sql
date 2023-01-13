/** EFDS_S2500_mudCategAtiv */

DROP TABLE IF EXISTS [dbo].[EFDS_S2500_mudCategAtiv]
GO

CREATE TABLE [dbo].[EFDS_S2500_mudCategAtiv]
(
    -- EventoSubEntityBase
    [id]                      INT IDENTITY (1,1),
    [timeStamp]               DATETIME    NULL DEFAULT GETDATE(),
    [updRegistro]             DATETIME    NULL DEFAULT GETDATE(),

    [EFDS_S2500_infoContrId] INT         NOT NULL,

    -- mudCategAtiv
    [codCateg]                CHAR(3)     NULL,
    [natAtividade]            CHAR(1)     NULL,
    [dtMudCategAtiv]          DATETIME    NULL
)
GO

ALTER TABLE [dbo].[EFDS_S2500_mudCategAtiv]
    ADD CONSTRAINT PK_EFDS_S2500_mudCategAtiv_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2500_mudCategAtiv_clustered ON [dbo].[EFDS_S2500_mudCategAtiv] ([id])
GO