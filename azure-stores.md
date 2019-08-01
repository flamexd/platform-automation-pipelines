| Azure Storage Account  | Container                       |
|------------------------|---------------------------------|
| **State**              | Terraform (terraform)           |
| (t3ao0v2ql7x0doz8zqxy) | OpsMan (opsmgr)                 |
|                        | State.yml (p-automator)         |
|                        |                                 |
| **Deployment**         | Product (product)               |
| (t3ctjwpgrtre6oankgkt) | MySQL Backup (mysql-backup)     |
|                        | Credhub Backup (credhub-backup) |
|                        |                                 |
| **Opsman**             | bosh                            |
| (3efqfk3n9lbne9kkl4pg) | stemcell                        |
|                        |                                 |
| **PAS**                | buildpacks                      |
| (6lgheirrt8n5pql08q12) | droplets                        |
|                        | packages                        |
|                        | resources                       |


<!-- state_storage_account_name = t3ao0v2ql7x0doz8zqxy
state_opsmanager_storage_container = opsmgr
state_p_automator_storage_container = p-automator
state_terraform_storage_container = terraform -->

<!-- deploy_backup_storage_account_name = t3ctjwpgrtre6oankgkt
deploy_assets_storage_container_name = product
backup_credhub_storage_container_name = credhub-backup
backup_mysql_storage_container_name = mysql-backup -->

<!-- bosh_root_storage_account = 3efqfk3n9lbne9kkl4pg -->

<!-- cf_storage_account_name = 6lgheirrt8n5pql08q12
cf_buildpacks_storage_container = buildpacks
cf_droplets_storage_container = droplets
cf_packages_storage_container = packages
cf_resources_storage_container = resources -->

## CREDHUB

```bash
# /concourse/sbx-2/azure-state-storage-account ([name, key] as [username, password])
credhub set -n /concourse/sbx-2/azure-state-storage-account -t user -z t3ao0v2ql7x0doz8zqxy -w YVHpJVj4eSxa787OUC9mCTdgcM3J7UGy5lf67eoKPtiRHdqnejmNGKrLWy2UkFYQGgCV23P3ePi5O4Sgie1Xug==
credhub set -n /concourse/sbx-2/azure-deploy-storage-account -t user -z t3ctjwpgrtre6oankgkt -w CcDASNIiuO9y1wQV+k/wQXs1Sx4fDUixYdiO9BSXbtLCgb4XSiYlrTg1AfHr0O9oB3km8lU9Xh1+n/nXM+BAyQ==
credhub set -n /concourse/sbx-2/azure-opsman-storage-account -t user -z 3efqfk3n9lbne9kkl4pg -w ezA3xuc+W2lU8P/8eDNK64ITEL3KPVV2clSNdmbI+f80zEZvhp2LsToxCVfvaQPeUfDt/hnQTbd3qJ5qUc1BmQ==
credhub set -n /concourse/sbx-2/azure-pas-storage-account -t user -z 6lgheirrt8n5pql08q12 -w 2thUUQEzabahdMia79C7LOjqmwxifDxsEbdUfDMXoufHam+ygVwVUX6GV+zHR5MQUqylOQ+uAyB2MKOle2cLoQ==

# /concourse/sbx-2/
# credhub set -n /concourse/sbx-2/azure-state-terraform-container -t value -v STATE_TERRAFORM_CONTAINER
# credhub set -n /concourse/sbx-2/azure-state-opsman-container -t value -v STATE_OPSMAN_CONTAINER
# credhub set -n /concourse/sbx-2/azure-state-product-container -t value -v DEPLOYMENT_PRODUCT_CONTAINER

# /concourse/sbx-2/

# /concourse/sbx-2/

```