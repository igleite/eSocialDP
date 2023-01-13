/** EFDS_S1210_infoPgto */

ALTER TABLE [dbo].[EFDS_S1210_infoPgto]
    ADD [paisResidExt] CHAR(3) NULL,
        [frmTribut] CHAR(2) NULL,
        [endDscLograd] VARCHAR(80) NULL,
        [endNrLograd] VARCHAR(10) NULL,
        [endComplem] VARCHAR(30) NULL,
        [endBairro] VARCHAR(60) NULL,
        [endCidade] VARCHAR(40) NULL,
        [endEstado] VARCHAR(40) NULL,
        [endCodPostal] VARCHAR(12) NULL,
        [telef] VARCHAR(15) NULL