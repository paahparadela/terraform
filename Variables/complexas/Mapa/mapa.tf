variable "instances_types" {
    type = map(string)
    default = {"sa-east-1": "t2.nano", "us-east-1": "t3.micro", "ap-south-1": "t2.small"}
    description = "Instancias"
}

output "instances_types" {
    value = var.instances_types
}
