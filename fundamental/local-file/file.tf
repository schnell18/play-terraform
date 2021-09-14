resource "local_file" "pet" {
  filename = "/tmp/pets.txt"
  file_permission = "644"
  content = "We love pets"
}
