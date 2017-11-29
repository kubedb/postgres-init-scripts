# Create postgres database with startup script

    apiVersion: kubedb.com/v1alpha1
    kind: Postgres
    metadata:
      name: pg
    spec:
      replicas: 1
      version: 9.6.5
      init:
        scriptSource:
          gitRepo:
            repository: "https://github.com/k8sdb/postgres-init-scripts.git"
            directory: "."
