variable "usuarios" {
    type = map(object({
        email = string
        departamento = string
    })
    )
    default = {
        "Vinicius": {
            email = "vinicius@gmail.com",
            departamento = "Operacoes de TI"
        }
        "Joao": {
            email = "joao@gmail.com",
            departamento = "RH"
        }
    }
    description = "Usuarios"
}

output "Usuarios" {
    value = var.usuarios
}

output "Vinicius" {
    value = var.usuarios["Vinicius"]
}

output "Vinicius_Email" {
    value = var.usuarios["Vinicius"].email
}