## Usage
### Please copy paste below code

```
module demo {
    source = "Elewartor/gke/gcp"
    gke_config = {
        cluster_name   = "project-cluster"
        location       = "us-central1"
        node_count     = 1
        min_node_count = 1
        max_node_count = 2
        machine_type   = "e2-medium"
        disk_size_gb   = 100
        disk_type      = "pd-balanced"
  }
}

```

### Run
```
terraform init
terraform apply
```

## Outputs

After applying the configuration, Terraform provides the following outputs:

| Output | Description |
|--------|-------------|
| `cluster_name` | Name of the GKE cluster |
| `cluster_location` | Region or zone where the GKE cluster is deployed |

#### View the outputs:

```bash
terraform output
```

#### Or retrieve an individual value:

```bash
terraform output cluster_name
terraform output cluster_location
```

#### Output example
```
output "cluster_name" {
  description = "GKE cluster name"
  value       = module.demo.cluster_name
}


output "cluster_location" {
  description = "GKE cluster location"
  value       = module.demo.cluster_location
}

```