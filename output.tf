#output of variable Name
output "String_Output" {
    value=var.Name
}


#output of resouce random_id
output "student_id"{
    value=random_id.student_id.id
}


#output of resouce random_password
output "Institute_Password"{
    value=random_password.account_password.result
    sensitive=true
}


#output of resouce random_shuffle
output "region_shuffle"{
    value=random_shuffle.region_shuffle.result
}


#output of resouce random_string
output "String_random"{
    value=random_string.Any_string.id
}


#output of resouce random_uuid
output "uuid_Practice"{
    value=random_uuid.uuid_Practice.id
}


#output of resouce random_bytes
output "random_bytes"{
    value=random_bytes.Secret_code.hex
    sensitive = true
}


#output of variable Age
output "Age_Output"{
    value=var.Age
}


#output of variable Book_details
output "Book_details"{
    value=var.Book_Details
}


#output of variable Subject_Grades
output "Grade_details"{
    value=var.Subject_Grades
}


#output of variable Friends
output "Friends_details"{
    value=var.Friends
}


#output of variable Qualification
output "Qualification_details"{
    value=var.Qualification
}