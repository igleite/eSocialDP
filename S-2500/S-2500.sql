/** EFDS_S2500 */

DROP TABLE IF EXISTS [dbo].[EFDS_S2500]
GO

CREATE TABLE [dbo].[EFDS_S2500]
(
    -- EntityBase
    [Id]                  INT              NOT NULL,
    [VersaoESocial]       NVARCHAR(2)      NULL,
    [RegistroId]          UNIQUEIDENTIFIER NULL,
    [EventoId]            NCHAR(36)        NULL,
    [ProtocoloEnvio]      NCHAR(30)        NULL,
    [NumeroReciboEnvio]   NCHAR(40)        NULL,
    [tpAmb]               NCHAR(1)         NULL,
    [procEmi]             INT              NULL DEFAULT (1),
    [verProc]             NCHAR(20)        NULL DEFAULT (''),
    [tpInsc]              INT              NULL,
    [nrInsc]              NCHAR(15)        NULL,
    [Status]              NCHAR(1)         NULL DEFAULT ('P'),
    [timeStamp]           DATETIME         NULL DEFAULT GETDATE(),
    [updRegistro]         DATETIME         NULL DEFAULT GETDATE(),
    [Origem]              NCHAR(1)         NULL DEFAULT ('S'),
    [Log]                 NVARCHAR(MAX)    NULL DEFAULT (''),

    -- EventoNaoPeriodicoEntityBase
    [indRetif]            INT              NULL,
    [nrRecibo]            NCHAR(40)        NULL DEFAULT (''),
    [dtRef]               DATETIME         NULL,


    -- ideResp
    [tpInsc_ideResp]      CHAR(1)          NULL,
    [nrInsc_ideResp]      VARCHAR(14)      NULL,

    -- infoProcesso
    [origem_infoProcesso] CHAR(1)          NULL,
    [nrProcTrab]          VARCHAR(20)      NULL,
    [obsProcTrab]         VARCHAR(999)     NULL,

    -- dadosCompl/infoProcJud
    [dtSent]              DATETIME         NULL,
    [ufVara]              CHAR(2)          NULL,
    [codMunic]            VARCHAR(7)       NULL,
    [idVara]              TINYINT          NULL,

    -- infoCCP
    [dtCCP]               DATETIME         NULL,
    [tpCCP]               CHAR(1)          NULL,
    [cnpjCCP]             VARCHAR(14)      NULL,

    -- ideTrab
    [cpfTrab]             VARCHAR(11)      NULL,
    [nmTrab]              VARCHAR(70)      NULL,
    [dtNascto]            DATETIME         NULL
)
GO

ALTER TABLE [dbo].[EFDS_S2500]
    ADD CONSTRAINT PK_EFDS_S2500_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2500_clustered ON [dbo].[EFDS_S2500] ([id])
GO