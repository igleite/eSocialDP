/** EFDS_S2500_remuneracao */

DROP TABLE IF EXISTS [dbo].[EFDS_S2500_remuneracao]
GO

CREATE TABLE [dbo].[EFDS_S2500_remuneracao]
(
    -- EventoSubEntityBase
    [id]                     INT IDENTITY (1,1),
    [timeStamp]              DATETIME     NULL DEFAULT GETDATE(),
    [updRegistro]            DATETIME     NULL DEFAULT GETDATE(),

    [EFDS_S2500_infoContrId] INT          NOT NULL,

    -- remuneracao
    [dtRemun]                DATETIME     NULL,
    [vrSalFx]                MONEY        NULL,
    [undSalFixo]             CHAR(1)      NULL,
    [dscSalVar]              MONEY        NULL,

    -- infoVinc
    [tpRegTrab]              CHAR(1)      NULL,
    [tpRegPrev]              CHAR(1)      NULL,
    [dtAdm]                  DATETIME     NULL,
    [tmpParc]                CHAR(1)      NULL,

    -- duracao
    [tpContr]                CHAR(1)      NULL,
    [dtTerm]                 DATETIME     NULL,
    [clauAssec]              CHAR(1)      NULL,
    [objDet]                 VARCHAR(255) NULL,

    -- sucessaoVinc
    [tpInsc_sucessaoVinc]    CHAR(1)      NULL,
    [nrInsc_sucessaoVinc]    VARCHAR(14)  NULL,
    [matricAnt]              VARCHAR(30)  NULL,
    [dtTransf]               DATETIME     NULL,

    -- infoDeslig
    [dtDeslig]               DATETIME     NULL,
    [mtvDeslig]              CHAR(2)      NULL,
    [dtProjFimAPI]           DATETIME     NULL

)
GO

ALTER TABLE [dbo].[EFDS_S2500_remuneracao]
    ADD CONSTRAINT PK_EFDS_S2500_remuneracao_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2500_remuneracao_clustered ON [dbo].[EFDS_S2500_remuneracao] ([id])
GO