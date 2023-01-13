/** EFDS_S5501 */

DROP TABLE IF EXISTS [dbo].[EFDS_S5501]
GO

CREATE TABLE [dbo].[EFDS_S5501]
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
    [tpInsc]            INT              NULL,
    [nrInsc]            NCHAR(15)        NULL,
    [Status]            NCHAR(1)         NULL DEFAULT ('P'),
    [timeStamp]         DATETIME         NULL DEFAULT GETDATE(),
    [updRegistro]       DATETIME         NULL DEFAULT GETDATE(),
    [Origem]            NCHAR(1)         NULL DEFAULT ('S'),
    [Log]               NVARCHAR(MAX)    NULL DEFAULT (''),

    -- EventoPeriodicoEntityBase
    [indApuracao]       INT              NULL,
    [perApur]           NCHAR(7)         NULL DEFAULT (''),
    [indRetif]          INT              NULL,
    [nrRecibo]          NCHAR(40)        NULL DEFAULT (''),


    -- ideEvento
    [nrRecArqBase]      VARCHAR(23)      NULL,

    -- ideProc
    [nrProcTrab]        VARCHAR(20)      NULL,
)
GO

ALTER TABLE [dbo].[EFDS_S5501]
    ADD CONSTRAINT PK_EFDS_S5501_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S5501_clustered ON [dbo].[EFDS_S5501] ([id])
GO