# docker_container.web:
resource "docker_container" "web" {
    command           = [
        "nginx",
        "-g",
        "daemon off;",
    ]
    cpu_shares        = 0
    dns               = []
    dns_opts          = []
    dns_search        = []
    entrypoint        = [
        "/docker-entrypoint.sh",
    ]
    group_add         = []
    env = []
    hostname          = "1440f1fe2f7c"
    
    image             = "sha256:c316d5a335a5cf324b0dc83b3da82d7608724769f6454f6d9a621f3ec2534a5a"
    init              = false
    
    
    ipc_mode          = "private"
    
    log_driver        = "json-file"
    log_opts          = {}
    max_retry_count   = 0
    memory            = 0
    memory_swap       = 0
    name              = "hashicorp-learn"
    
    network_mode      = "default"
    privileged        = false
    publish_all_ports = false
    read_only         = false
    restart           = "no"
    rm                = false
    security_opts     = []
    shm_size          = 64
    stdin_open        = false
    storage_opts      = {}
    sysctls           = {}
    tmpfs             = {}
    tty               = false

    ports {
        external = 8081
        internal = 80
        ip       = "0.0.0.0"
        protocol = "tcp"
    }
}