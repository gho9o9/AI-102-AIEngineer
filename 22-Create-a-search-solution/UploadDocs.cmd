@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=6f11db96-1ff9-4887-ab71-7d65065f8b98
set azure_storage_account=o9o9adlsgen2
set azure_storage_container=sample
set azure_storage_key=qQrfn5k+Xyau7J5O99Ru4Qe6F9XrOpVb7tFQog3Y4tBCc3wA3dp5eb69VYRYieGG8IhJE30TjrkTmg4D7M752Q==

rem echo Creating container...
rem call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name !azure_storage_container! --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d !azure_storage_container!/margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
