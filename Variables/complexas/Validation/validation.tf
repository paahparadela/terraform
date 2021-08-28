variable "ami_id" {
    type = string
    description = "Informe o ID da Amazon Image"

    validation {
      condition = length(var.ami_id) > 4 && substr(var.ami_id, 0, 4) == "ami-"
      error_message = "O valor da image_id nao e valido."
    }
}

output "ami_id" {
  value = var.ami_id
  description = "Image ID Fornecido"
}