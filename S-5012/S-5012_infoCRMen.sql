/** EFDS_S5012_infoCRMen */

DROP TABLE IF EXISTS [dbo].[EFDS_S5012_infoCRMen]
CREATE TABLE [dbo].[EFDS_S5012_infoCRMen]
(
    [id]            INT IDENTITY (1,1) NOT NULL,
    [EFDS_S5012Id] INT                NOT NULL,

    [CRMen]         CHAR(6)            NULL,
    [vrCRMen]       MONEY              NULL,
    [vrCRMenSusp]   MONEY              NULL,

    [timeStamp]         DATETIME       NULL DEFAULT GETDATE(),
    [updRegistro]       DATETIME       NULL DEFAULT GETDATE()
)


ALTER TABLE [dbo].[EFDS_S5012_infoCRMen]
    ADD CONSTRAINT PK_EFDS_S5012_infoCRMen_id PRIMARY KEY NONCLUSTERED ([id] ASC)

CREATE CLUSTERED INDEX ix_EFDS_S5012_infoCRMen_clustered ON [dbo].[EFDS_S5012_infoCRMen] ([id])
GO