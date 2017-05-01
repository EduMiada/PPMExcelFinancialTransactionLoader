REM para utilizar este instalador descompacte o arquivo ImportTransaction.zip na pasta c:\temp
REM altere as informações de usuário, senha, servidor e indique o caminho do executário xog.exe

@echo off

set user=admin
set pass=c
set svr=cappm142-ps01
set port=80
set ssl=false
set XOG_FULL_PATH="E:\apps\xog\bin\xog"

IF NOT EXIST c:\temp\ImportTransactions\output md c:\temp\ImportTransactions\output
cls

call %XOG_FULL_PATH% -username %user% -password %pass% -servername %svr% -portnumber %port% -sslenabled=%ssl% -input "c:\temp\ImportTransactions\00_task_attributes.xml" -output "c:\temp\ImportTransactions\output\00_task_attributes_output.xml"
call %XOG_FULL_PATH% -username %user% -password %pass% -servername %svr% -portnumber %port% -sslenabled=%ssl% -input "c:\temp\ImportTransactions\01_cabr_fin_active_currency.xml" -output "c:\temp\ImportTransactions\output\01_cabr_fin_active_currency_output.xml"
call %XOG_FULL_PATH% -username %user% -password %pass% -servername %svr% -portnumber %port% -sslenabled=%ssl% -input "c:\temp\ImportTransactions\02_cabr_proj_import_custo.xml" -output "c:\temp\ImportTransactions\output\02_cabr_proj_import_custo_output.xml"
call %XOG_FULL_PATH% -username %user% -password %pass% -servername %svr% -portnumber %port% -sslenabled=%ssl% -input "c:\temp\ImportTransactions\03_cabr_fin_charge_code.xml" -output "c:\temp\ImportTransactions\output\03_cabr_fin_charge_code_output.xml"
call %XOG_FULL_PATH% -username %user% -password %pass% -servername %svr% -portnumber %port% -sslenabled=%ssl% -input "c:\temp\ImportTransactions\04_cabr_fin_transactionclass.xml" -output "c:\temp\ImportTransactions\output\04_cabr_fin_transactionclass_output.xml"

REM call %XOG_FULL_PATH% -username %user% -password %pass% -servername %svr% -portnumber %port% -sslenabled=%ssl% -input "c:\temp\ImportTransactions\grupo_Importacao_trans_fin.xml" -output "c:\temp\ImportTransactions\output\grupo_Importacao_trans_fin_output.xml"


echo.


