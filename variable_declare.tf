variable "replicas" {
 type = number
 default = 1
 description = "Number of delegate replicas"
}
variable "namespace" {
 type = string
 default = "harness-delegate-ng"
 description = "Namespace to be created"
}
variable "delegate_name" {
 type = string
 default = "terraform-delegate"
 description = "Number of delegate replicas"
}