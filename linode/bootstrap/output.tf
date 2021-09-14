output "root_password" {   
  description = "Root password, KEEP IT SECRET"
  value = random_password.root_pass.result
  sensitive = true
}
