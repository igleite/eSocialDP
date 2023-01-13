/** EFDS_S5501_infoCRIRRF */

DROP TABLE IF EXISTS [dbo].[EFDS_S5501_infoCRIRRF]
GO

CREATE TABLE [dbo].[EFDS_S5501_infoCRIRRF]
(
    -- EventoSubEntityBase
    [id]           INT IDENTITY (1,1),
    [timeStamp]    DATETIME NULL DEFAULT GETDATE(),
    [updRegistro]  DATETIME NULL DEFAULT GETDATE(),

    [EFDS_S5501Id] INT      NOT NULL,

    [tpCR]         CHAR(6)  NULL,
    [vrCR]         MONEY    NULL
)
GO


ALTER TABLE [dbo].[EFDS_S5501_infoCRIRRF]
    ADD CONSTRAINT PK_EFDS_S5501_infoCRIRRF_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S5501_infoCRIRRF_clustered ON [dbo].[EFDS_S5501_infoCRIRRF] ([id])
GO