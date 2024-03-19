DESCRIBE tbl_paciente;
DESCRIBE tbl_pacod_pacienteciente_bkp;

DELETE FROM tbl_paciente WHERE cod_paciente = 2;
SELECT * FROM tbl_paciente;
SELECT * FROM tbl_paciente_bkp;