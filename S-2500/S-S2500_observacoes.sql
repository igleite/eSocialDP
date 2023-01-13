/** EFDS_S2500_observacoes */

DROP TABLE IF EXISTS [dbo].[EFDS_S2500_observacoes]
GO

CREATE TABLE [dbo].[EFDS_S2500_observacoes]
(
    -- EventoSubEntityBase
    [id]                       INT IDENTITY (1,1),
    [timeStamp]                DATETIME     NULL DEFAULT GETDATE(),
    [updRegistro]              DATETIME     NULL DEFAULT GETDATE(),

    [EFDS_S2500_remuneracaoId] INT          NOT NULL,
    [observacao]               VARCHAR(255) NULL
)
GO

ALTER TABLE [dbo].[EFDS_S2500_observacoes]
    ADD CONSTRAINT PK_EFDS_S2500_observacoes_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2500_observacoes_clustered ON [dbo].[EFDS_S2500_observacoes] ([id])
GO