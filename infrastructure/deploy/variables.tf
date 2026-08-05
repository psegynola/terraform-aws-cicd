variable "prefix" {
  description = "The prefix to use for resource names."
  type        = string
  default     = "raa"
}

variable "project" {
  description = "The name of the project."
  type        = string
  default     = "recipe-app-api"
}

variable "contact" {
  description = "The contact information for the project."
  type        = string
  default     = "devops@fdivine.com"
}
