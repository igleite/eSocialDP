/** EFDS_S2501_calcTrib */

DROP TABLE IF EXISTS [dbo].[EFDS_S2501_calcTrib]
GO

CREATE TABLE [dbo].[EFDS_S2501_calcTrib]
(
    -- EventoSubEntityBase
    [id]                   INT IDENTITY (1,1),
    [timeStamp]            DATETIME NULL DEFAULT GETDATE(),
    [updRegistro]          DATETIME NULL DEFAULT GETDATE(),


    [EFDS_S2501_ideTrabId] INT      NOT NULL,

    [perRef]               CHAR(7)  NULL,
    [vrBcCpMensal]         MONEY    NULL,
    [vrBcCp13]             MONEY    NULL,
    [vrRendIRRF]           MONEY    NULL,
    [vrRendIRRF13]         MONEY    NULL
)
GO


ALTER TABLE [dbo].[EFDS_S2501_calcTrib]
    ADD CONSTRAINT PK_EFDS_S2501_calcTrib_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2501_calcTrib_clustered ON [dbo].[EFDS_S2501_calcTrib] ([id])
GO