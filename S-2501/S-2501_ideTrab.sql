/** EFDS_S2501_ideTrab */

DROP TABLE IF EXISTS [dbo].[EFDS_S2501_ideTrab]
GO

CREATE TABLE [dbo].[EFDS_S2501_ideTrab]
(
    -- EventoSubEntityBase
    [id]            INT IDENTITY (1,1),
    [timeStamp]     DATETIME NULL DEFAULT GETDATE(),
    [updRegistro]   DATETIME NULL DEFAULT GETDATE(),


    [EFDS_S2501Id] INT      NOT NULL,

    [cpfTrab]       CHAR(11) NULL,
    [tpCR]          CHAR(6)  NULL,
    [vrCR]          MONEY    NULL
)
GO


ALTER TABLE [dbo].[EFDS_S2501_ideTrab]
    ADD CONSTRAINT PK_EFDS_S2501_ideTrab_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2501_ideTrab_clustered ON [dbo].[EFDS_S2501_ideTrab] ([id])
GO