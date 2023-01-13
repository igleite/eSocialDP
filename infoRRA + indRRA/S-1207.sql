/** EFDS_S1207_dmDev */

ALTER TABLE [dbo].[EFDS_S1207_dmDev]
    ADD [indRRA] CHAR(1) NULL,
        [tpProcRRA] CHAR(1) NULL,
        [nrProcRRA] VARCHAR(21) NULL,
        [descRRA] VARCHAR(50) NULL,
        [qtdMesesRRA] SMALLINT NULL,
        [vlrDespCustas] MONEY NULL,
        [vlrDespAdvogados] MONEY NULL
GO


/** EFDS_S1207_ideAdv */


DROP TABLE IF EXISTS [dbo].[EFDS_S1207_ideAdv]
GO

CREATE TABLE [dbo].[EFDS_S1207_ideAdv]
(
    -- EventoSubEntityBase
    [id]                 INT IDENTITY (1,1),
    [timeStamp]          DATETIME    NULL DEFAULT GETDATE(),
    [updRegistro]        DATETIME    NULL DEFAULT GETDATE(),


    -- ideAdv
    [EFDS_S1207_dmDevId] INT         NOT NULL,
    [tpInsc]             CHAR(1)     NOT NULL,
    [nrInsc]             VARCHAR(14) NOT NULL,
    [vlrAdv]             MONEY       NOT NULL
)
GO

ALTER TABLE [dbo].[EFDS_S1207_ideAdv]
    ADD CONSTRAINT PK_EFDS_S1207_ideAdvId PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S1207_ideAdv_clustered ON [dbo].[EFDS_S1207_ideAdv] ([id])
GO