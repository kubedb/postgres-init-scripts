# Create postgres database with startup script

    {
        "name": "pg-durable",
        "type": "pg",
        "sku": "DB-PG-DURABLE-BETA",
        "version": "9.5",
        "pv_size_gb": 6,
        "initial_script": {
          "script_path": "kubernetes-gitRepo/run.sh",
          "git_repo": {
            "repository": "https://github.com/aerokite/kubernetes-gitRepo.git"
          }
        }
    }
