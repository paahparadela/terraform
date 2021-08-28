variable "pais" {
    type = string
    default = "Brasil"
    description = "Seu pais"
}

variable "idade" {
    type = number
    default = "18"
    description = "Sua idade"
}

variable "http_check" {
    type = bool
    default = true
    description = "Checagem do http"
}