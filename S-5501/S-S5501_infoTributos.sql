/** EFDS_S5501_infoTributos */

DROP TABLE IF EXISTS [dbo].[EFDS_S5501_infoTributos]
GO

CREATE TABLE [dbo].[EFDS_S5501_infoTributos]
(
    -- EventoSubEntityBase
    [id]           INT IDENTITY (1,1),
    [timeStamp]    DATETIME NULL DEFAULT GETDATE(),
    [updRegistro]  DATETIME NULL DEFAULT GETDATE(),

    [EFDS_S5501Id] INT      NOT NULL,

    [perRef]       CHAR(7)
)
GO

ALTER TABLE [dbo].[EFDS_S5501_infoTributos]
    ADD CONSTRAINT PK_EFDS_S5501_infoTributos_id PRIMARY KEY NONCLUSTERED ([id] ASC)

CREATE CLUSTERED INDEX ix_EFDS_S5501_infoTributos_clustered ON [dbo].[EFDS_S5501_infoTributos] ([id])
GO