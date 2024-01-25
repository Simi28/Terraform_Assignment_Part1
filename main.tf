provider "random" {


#locals

}
locals {
  character=var.Friends[2]
}


#variable-string
resource "local_file" "sameeksha" {
    content=var.Name
    filename="sameksha.bar"
}


#use of locals
resource "local_file" "Practice" {
    content=local.character
    filename="${path.module}/Terraform_file_2/terraform_file_3/test.bar"
}


#Text file , variable -number 
resource "local_file" "Number_file" {
    content=var.Age
    filename="simi.txt"
}


#variable-string
resource "local_file" "sameeksha_File_2" {
    content=var.Qualification
    filename="${path.module}/Terraform_file_2/sameksha.bar"
}


#Variable-List
resource "local_file" "sameeksha_File_3" {
    content = join("\n",var.Friends)
    filename="${path.module}/Terraform_file_2/terraform_file_3/sameksha.bar"
}


#variable-Map
resource "local_file" "Map_File" {
  filename = "Sameeksha.bar"

  content = jsonencode(var.Subject_Grades)

}


#variable-Object
resource "local_file" "Object_File" {
  filename = "${path.module}/Terraform_file_2/objectfile.bar"

  content = jsonencode(var.Book_Details)

}


#random id making
resource "random_id" "student_id" {
  byte_length = 8
}


#random password generating
resource "random_password" "account_password" {
  length           = 8
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
 
 
#random shuffle
resource "random_shuffle" "region_shuffle" {
  input        = ["us-west-1a", "us-west-1c",  "us-west-1e"]
  result_count = 3
}
 
 
#random string
resource "random_string" "Any_string" {
  length           = 8
  special          = true
  override_special = "@:"
}
 
 
#random uuid
resource "random_uuid" "uuid_Practice" {
}
 
 
#random bytes
resource "random_bytes" "Secret_code" {
  length = 64
}




