/** EFDS_S2500_dependente */

DROP TABLE IF EXISTS [dbo].[EFDS_S2500_dependente]
GO

CREATE TABLE [dbo].[EFDS_S2500_dependente]
(
    -- EventoSubEntityBase
    [id]            INT IDENTITY (1,1),
    [timeStamp]     DATETIME    NULL DEFAULT GETDATE(),
    [updRegistro]   DATETIME    NULL DEFAULT GETDATE(),


    [EFDS_S2500Id] INT         NOT NULL,

    -- dependente
    [cpfDep]        VARCHAR(11) NULL,
    [tpDep]         CHAR(2)     NULL,
    [descDep]       VARCHAR(30) NULL
)
GO


ALTER TABLE [dbo].[EFDS_S2500_dependente]
    ADD CONSTRAINT PK_EFDS_S2500_dependente_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2500_dependente_clustered ON [dbo].[EFDS_S2500_dependente] ([id])
GO