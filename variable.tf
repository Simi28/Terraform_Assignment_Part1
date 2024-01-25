#string type
variable "Name" {
    type=string
    description="This variable is for name"
    default="Unknown"
}


#string type
variable "Qualification" {
    type=string
    description="This variable is for the Qualification of the candidate"
    default="Master's Degree"
}


#string type
variable "hobbies" {
    type=string
    description="This variable is for the Hobbies of the candidate"
    default="Reading"
}


#list type
variable "Friends" {
    type=list(string)
    description = "This variable is for showing the list of the candidate"
    default = [ "Sejal","Harshita","Kritika","shreya" ]

}


#Map type
variable "Subject_Grades" {
  description = "An example map variable"
  type        = map(string)
  default     = {
    AI = 98,
    Python = 90,
    Java = 84
  }
}


#object type
variable "Book_Details" {
  type = object({
    name = string
    price=number
  })
  default = {
    name    = "The all he'll ever be"
    price    = 800
    
  }
}


#number type
variable "Age" {
    type=number
    description = "This variable we have used for the age"
    default = 18
  
}