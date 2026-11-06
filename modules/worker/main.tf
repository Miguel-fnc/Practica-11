resource "cloudflare_workers_script" "myworker" {
  account_id  = var.account_id
  script_name = var.worker_name
  main_module = "worker.js"
  content     = file("worker.js")

  compatibility_date = "2025-10-28"
}

resource "cloudflare_workers_script_subdomain" "myworker" {
  account_id  = var.account_id
  script_name = cloudflare_workers_script.myworker.script_name
  enabled     = true
}

data "cloudflare_worker" "myworker" {
  account_id = var.account_id
  worker_id  = cloudflare_workers_script.myworker.id
}