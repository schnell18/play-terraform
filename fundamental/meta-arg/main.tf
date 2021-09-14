resource "local_file" "pet" {
  filename = each.value
  for_each = var.filename
}

variable "filename" {
  type = set(string)
  default = [
    "/tmp/pet1.txt",
    "/tmp/pet2.txt",
    "/tmp/pet3.txt",
    "/tmp/pet4.txt",
    "/tmp/pet5.txt"
  ]
}

# output "pets" {
#   value = local_file.pet
# }
