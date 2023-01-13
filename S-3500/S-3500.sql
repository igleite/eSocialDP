DROP TABLE IF EXISTS [dbo].[EFDS_S3500]
GO

CREATE TABLE [dbo].[EFDS_S3500]
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
    [Status]            NCHAR(1) NULL DEFAULT ('P'),
    [timeStamp]         DATETIME         NULL DEFAULT GETDATE(),
    [updRegistro]       DATETIME         NULL DEFAULT GETDATE(),
    [Origem]            NCHAR(1)         NULL DEFAULT ('S'),
    [Log]               NVARCHAR(MAX)    NULL DEFAULT (''),
    [dtRetorno]         DATETIME         NULL,
    [dtEnvio]           DATETIME         NULL,
    [Alerta]            NCHAR(1)         NULL DEFAULT ('N'),

    -- S-3500
    [tpInsc]            INT              NULL DEFAULT (1),
    [nrInsc]            NCHAR(15)        NULL DEFAULT (''),
    [tpEvento]          VARCHAR(6)       NULL DEFAULT (''),
    [nrRecEvt]          VARCHAR(23)      NULL DEFAULT (''),
    [nrProcTrab]        VARCHAR(20)      NULL DEFAULT (''),
    [cpfTrab]           VARCHAR(11)      NULL DEFAULT (''),
    [perApurPgto]       VARCHAR(7)       NULL DEFAULT (''),

)

ALTER TABLE [dbo].[EFDS_S3500]
    ADD CONSTRAINT PK_EFDS_S3500_id PRIMARY KEY NONCLUSTERED ([id] ASC)
GO

CREATE CLUSTERED INDEX ix_EFDS_S3500_clustered ON [dbo].[EFDS_S3500] ([id], [VersaoESocial], [Status], [RegistroId])
GO
