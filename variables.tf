variable "primaryLocation" {
    type        = string
    description = "Location for all resources"
    default     = "southcentralus"
}

variable "secondaryLocation" {
    type        = string
    description = "Location for all resources"
    default     = "northcentralus"
}
variable "deploymentEnvironment" {
    type        = string
    description = "Type of environment being deployed."
}