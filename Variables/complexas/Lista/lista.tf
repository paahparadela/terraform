variable "nomes" {
    type = list(string)
    default = ["Ana", "Mario", "Luiza", "Jorge", "Leticia"]
    description = "Nomes de pessoas"
}

output "lista" {
    value = var.nomes
}
