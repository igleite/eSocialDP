/** EFDS_S5012 */

DROP TABLE IF EXISTS [dbo].[EFDS_S5012]
CREATE TABLE [dbo].[EFDS_S5012]
(
    -- EntityBase
    [Id]                INT              NOT NULL,
    [VersaoESocial]     NVARCHAR(2)      NULL,
    [RegistroId]        UNIQUEIDENTIFIER NULL,
    [EventoId]          NCHAR(36)        NULL,
    [ProtocoloEnvio]    NCHAR(30)        NULL,
    [NumeroReciboEnvio] NCHAR(40)        NULL,
    [tpAmb]             NCHAR(1)         NULL,
    [procEmi]           INT              NULL DEFAULT (1),
    [verProc]           NCHAR(20)        NULL DEFAULT (''),
    [Status]            NCHAR(1)         NULL DEFAULT ('P'),
    [timeStamp]         DATETIME         NULL DEFAULT GETDATE(),
    [updRegistro]       DATETIME         NULL DEFAULT GETDATE(),
    [Origem]            NCHAR(1)         NULL DEFAULT ('S'),
    [Log]               NVARCHAR(MAX)    NULL DEFAULT (''),
    [dtRetorno]         DATETIME         NULL,
    [dtEnvio]           DATETIME         NULL,
    [Alerta]            NCHAR(1)         NULL DEFAULT ('N'),

    -- ideEvento
    [perApur]           CHAR(7)          NULL,

    -- ideEmpregador
    [tpInsc]            CHAR(1)          NULL,
    [nrInsc]            VARCHAR(14)      NULL,

    -- infoIRRF
    [nrRecArqBase]      VARCHAR(23)      NULL,
    [indExistInfo]      CHAR(1)          NULL
)
GO

ALTER TABLE [dbo].[EFDS_S5012]
    ADD CONSTRAINT PK_EFDS_S5012_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S5012_clustered ON [dbo].[EFDS_S5012] ([id])
GO