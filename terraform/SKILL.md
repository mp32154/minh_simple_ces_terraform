# minh-delete-me-dev Terraform Configuration

## Structure

-   `main/`: The core module containing the resource definitions.
-   `dev/`: Development environment configuration.
-   `prod/`: Production environment configuration.

## How to Run

Before running, make sure to update the placeholder values in the respective
`main.tf` files.

To initialize and apply the development configuration:

```bash
/google/bin/releases/g3terraform/runner_main \
  --base_service_dir=<path_to_this_folder_relative_to_google3> \
  --config_dir=dev init \
&& /google/bin/releases/g3terraform/runner_main \
  --base_service_dir=<path_to_this_folder_relative_to_google3> \
  --config_dir=dev apply
```
