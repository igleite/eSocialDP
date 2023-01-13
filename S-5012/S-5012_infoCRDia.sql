/** EFDS_S5012_infoCRDia */

DROP TABLE IF EXISTS [dbo].[EFDS_S5012_infoCRDia]
CREATE TABLE [dbo].[EFDS_S5012_infoCRDia]
(
    [id]                      INT IDENTITY (1,1) NOT NULL,
    [EFDS_S5012_infoCRMenId]  INT                NOT NULL,

    [perApurDia]              VARCHAR(2)         NULL,
    [CRDia]                   CHAR(6)            NULL,
    [vrCRDia]                 MONEY              NULL,
    [vrCRDiaSusp]             MONEY              NULL,

    [timeStamp]               DATETIME       NULL DEFAULT GETDATE(),
    [updRegistro]             DATETIME       NULL DEFAULT GETDATE()
)


ALTER TABLE [dbo].[EFDS_S5012_infoCRDia]
    ADD CONSTRAINT PK_EFDS_S5012_infoCRDia_id PRIMARY KEY NONCLUSTERED ([id] ASC)

CREATE CLUSTERED INDEX ix_EFDS_S5012_infoCRDia_clustered ON [dbo].[EFDS_S5012_infoCRDia] ([id])
GO