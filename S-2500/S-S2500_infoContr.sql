/** EFDS_S2500_infoContr */

DROP TABLE IF EXISTS [dbo].[EFDS_S2500_infoContr]
GO

CREATE TABLE [dbo].[EFDS_S2500_infoContr]
(
    -- EventoSubEntityBase
    [id]                      INT IDENTITY (1,1),
    [timeStamp]               DATETIME    NULL DEFAULT GETDATE(),
    [updRegistro]             DATETIME    NULL DEFAULT GETDATE(),


    [EFDS_S2500_dependenteId] INT         NOT NULL,

    -- infoContr
    [tpContr]                 CHAR(1)     NULL,
    [indContr]                CHAR(1)     NULL,
    [dtAdmOrig]               DATETIME    NULL,
    [indReint]                CHAR(1)     NULL,
    [indCateg]                CHAR(1)     NULL,
    [indNatAtiv]              CHAR(1)     NULL,
    [indMotDeslig]            CHAR(1)     NULL,
    [indUnic]                 CHAR(1)     NULL,
    [matricula]               VARCHAR(30) NULL,
    [codCateg]                CHAR(3)     NULL,
    [dtInicio]                DATETIME    NULL,

    -- infoCompl
    [codCBO]                  VARCHAR(6)  NULL,
    [natAtividade]            CHAR(1)     NULL,

    -- infoTerm
    [dtTerm]                  DATETIME    NULL,
    [mtvDesligTSV]            CHAR(2)     NULL,

    -- ideEstab
    [tpInsc_ideEstab]         CHAR(1)     NULL,
    [nrInsc_ideEstab]         VARCHAR(14) NULL,

    -- infoVlr
    [compIni]                 CHAR(7)     NULL,
    [compFim]                 CHAR(7)     NULL,
    [repercProc]              CHAR(1)     NULL,
    [vrRemun]                 MONEY       NULL,
    [vrAPI]                   MONEY       NULL,
    [vr13API]                 MONEY       NULL,
    [vrInden]                 MONEY       NULL,
    [vrBaseIndenFGTS]         MONEY       NULL,
    [pagDiretoResc]           CHAR(1)     NULL
)
GO


ALTER TABLE [dbo].[EFDS_S2500_infoContr]
    ADD CONSTRAINT PK_EFDS_S2500_infoContr_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2500_infoContr_clustered ON [dbo].[EFDS_S2500_infoContr] ([id])
GO