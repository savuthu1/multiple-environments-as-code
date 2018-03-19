# generate a property file suitable for shell scripts with useful variables relating to the environment
resource "local_file" "output" {
  content = <<EOF
CLUSTER_NAME=${ibm_container_cluster.cluster.name}
CLUSTER_ID=${ibm_container_cluster.cluster.id}
CLUSTER_INGRESS_HOSTNAME=${ibm_container_cluster.cluster.ingress_hostname}
DATABASE_SECRET_NAME=${ibm_container_bind_service.bind_database.secret_name}
EOF

  filename = "../outputs/${terraform.workspace}.env"
}