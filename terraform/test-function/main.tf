provider "aws" {
    region = "us-east-1"  # Reemplaza con la región deseada
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-unique-bucket-name"  # Reemplaza con el nombre deseado para tu bucket
    acl    = "private"  # Opcionalmente, puedes especificar los permisos de acceso aquí
}