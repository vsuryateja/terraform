This Folder contains files related to azure infrastructure.

pre-requisites:
1. Terraform binary. download from official site. https://developer.hashicorp.com/terraform/install
2. Azure service principle with contributor role. get it from Azure Admin or login to portal and create one.
3. Install az cli
4. Set below environment variables after creating service principle and granting access to the subscrition level. here we are using service principle to create azure resources. Other way it login using az command with admin privilages.
=====================================
ARM_CLIENT_ID=****
ARM_CLIENT_SECRET=****
ARM_SUBSCRIPTION_ID=****
ARM_TENANT_ID=****
=====================================
5. set below varilable for the backend.
=====================================
export TF_VAR_DataRGName=***
export TF_VAR_storage_account_name=****
export TF_VAR_container_name=****
export TF_VAR_state_file=.***
=====================================
