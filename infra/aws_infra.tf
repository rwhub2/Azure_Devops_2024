terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }

}

provider "aws" {
  region = "ap-southeast-2"
}


resource "aws_s3_bucket" "bronze_layer" {
    bucket = "bronze-layer34"
    # acl = "private"
}


# resource "aws_instance" "rw_instance" {
#     ami = "ami-0df4b2961410d4cff"  # Ubuntu, 22.04 LTS
#     instance_type = "t2.micro"
  
# }


# resource "aws_db_instance" "default" {
#     identifier = "postgresql-db"
#     allocated_storage = 20
#     storage_type = "gp2"
#     db_name = "rw_db"
#     engine = "postgres"
#     engine_version = "15.3"
#     port = 5432
#     instance_class = "db.t3.micro"
#     username = "rw_user"
#     password = "postgres"
#     # parameter_group_name = "default.postgres12"
#     publicly_accessible = true

#     # final_snapshot_identifier = "final-snapshot"
#     skip_final_snapshot = true
# }
