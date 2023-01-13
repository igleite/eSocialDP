/** EFDS_S2501_infoCRContrib */

DROP TABLE IF EXISTS [dbo].[EFDS_S2501_infoCRContrib]
GO

CREATE TABLE [dbo].[EFDS_S2501_infoCRContrib]
(
    -- EventoSubEntityBase
    [id]                    INT IDENTITY (1,1),
    [timeStamp]             DATETIME NULL DEFAULT GETDATE(),
    [updRegistro]           DATETIME NULL DEFAULT GETDATE(),

    [EFDS_S2501_calcTribId] INT      NOT NULL,

    [tpCR]                  CHAR(6)  NULL,
    [vrCR]                  MONEY    NULL
)
GO


ALTER TABLE [dbo].[EFDS_S2501_infoCRContrib]
    ADD CONSTRAINT PK_EFDS_S2501_infoCRContrib_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2501_infoCRContrib_clustered ON [dbo].[EFDS_S2501_infoCRContrib] ([id])
GO