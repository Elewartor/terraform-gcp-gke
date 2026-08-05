output "cluster_name" {
  description = "GKE cluster name"
  value       = google_container_cluster.primary.name
}


output "cluster_location" {
  description = "GKE cluster location"
  value       = google_container_cluster.primary.location
}
