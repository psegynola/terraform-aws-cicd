terraform{
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "5.23.0"
        }
    }

    backend "s3" {
        bucket="fdivine-receipe-app-tf-state"
        key="tf-state-setup"
        region="us-east-1"
        encrypt=true
        dynamodb_table="fdivine-receipe-app-tf-lock"
    }
}

provider "aws" {
    region = "us-east-1"

    default_tags{
        tags = {
            Environment = "terraform.workspace"
            Project = var.project
            Contact = var.contact
            ManageBy = "Terraform/setup"
        }
    }
}
