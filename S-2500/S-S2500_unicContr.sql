/** EFDS_S2500_unicContr */

DROP TABLE IF EXISTS [dbo].[EFDS_S2500_unicContr]
GO

CREATE TABLE [dbo].[EFDS_S2500_unicContr]
(
    -- EventoSubEntityBase
    [id]            INT IDENTITY (1,1),
    [timeStamp]     DATETIME    NULL DEFAULT GETDATE(),
    [updRegistro]   DATETIME    NULL DEFAULT GETDATE(),


    [EFDS_S2500_infoContrId] INT         NOT NULL,

    -- unicContr
    [matUnic]        VARCHAR(30) NULL,
    [codCateg]         CHAR(2)     NULL,
    [dtInicio]       DATETIME NULL
)
GO


ALTER TABLE [dbo].[EFDS_S2500_unicContr]
    ADD CONSTRAINT PK_EFDS_S2500_unicContr_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2500_unicContr_clustered ON [dbo].[EFDS_S2500_unicContr] ([id])
GO