/** EFDS_S2501 */

DROP TABLE IF EXISTS [dbo].[EFDS_S2501]
CREATE TABLE [dbo].[EFDS_S2501]
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

    -- EventoNaoPeriodicoEntityBase
    [indRetif]          INT              NULL,
    [nrRecibo]          NCHAR(40)        NULL DEFAULT (''),
    [dtRef]             DATETIME         NULL,

    -- ideProc
    [nrProcTrab]        VARCHAR(20)      NULL,
    [perApurPgto]       CHAR(7)          NULL,
    [obs]               VARCHAR(999)     NULL,
)
GO

ALTER TABLE [dbo].[EFDS_S2501]
    ADD CONSTRAINT PK_EFDS_S2501_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S2501_clustered ON [dbo].[EFDS_S2501] ([id])
GO