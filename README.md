# Sistema-de-Notificacao-de-Notas-de-Provas
Projeto da matéria Desenvolvimento de Sistemas Distribuídos

Criação de um sistema de notificação de notas de provas e trabalhos para alunos.

# Como rodar
- Instale o docker na sua máquina (no caso de estar usando o Windows será necessário baixar o wsl e o docker versão desktop)
- Clone este repositório
- No terminal digite `cd Sistema_de_Notificacao_de_Notas_de_Provas`
- Agora digite o comando `docker-compose -f Sistema_de_Notificacao_de_Notas_de_Provas\Sistema_de_Notificacao_de_Notas_de_Provas\Sistema_de_Notificacao\docker-compose.yaml up --build`
- No seu browser acesse o localhost: `localhost/`

# Em caso de problemas
- Verifique se os dois containers estão rodando com `docker ps` no seu terminal ou verifique pelo docker desktop na aba Containers. A saída deve ser algo como <blockquote>
CONTAINER ID   IMAGE         COMMAND                  CREATED         STATUS         PORTS                    NAMES
e31ef76eb437   backend_app   "/entrypoint.sh"         4 minutes ago   Up 4 seconds   0.0.0.0:8000->8000/tcp   sistema_de_notificacao-web-1
a6d3a75d43e0   postgres:15   "docker-entrypoint.s…"   4 minutes ago   Up 4 seconds   0.0.0.0:5433->5432/tcp   sistema_de_notificacao-db-1</blockquote>
- Verifique se os containers estão na mesma rede `docker network inspect sistema_de_notificacao_default`. A saída deve ser: 
```
 [
    {
        "Name": "sistema_de_notificacao_default",
        "Id": "c63aa40dd0192ed6a0a6a151a5aa399d59aa43987924882db0e42d9dd06e2ca6",
        "Created": "2024-11-19T11:52:55.641406617Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "a6d3a75d43e043589883ba9a9b71b4453483632a7fbc1c403f22816270a5ace1": {
                "Name": "sistema_de_notificacao-db-1",
                "EndpointID": "ccecff7fb364d2f088d546445c6ae86a5856c5aae1f16a26de699778fcb12b62", 
                "MacAddress": "02:42:ac:12:00:02",
                "IPv4Address": "172.18.0.2/16",
                "IPv6Address": ""
            },
            "e31ef76eb4379f1e7f8a1ce9399c7bbb543114ca99f63bc6d8c1f5b871ff0fa8": {
                "Name": "sistema_de_notificacao-web-1",
                "EndpointID": "503f19d42034c12f13c77d9418c72a203ffc580669e85a46e94df9230c27788f", 
                "MacAddress": "02:42:ac:12:00:03",
                "IPv4Address": "172.18.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {
            "com.docker.compose.network": "default",
            "com.docker.compose.project": "sistema_de_notificacao",
            "com.docker.compose.version": "2.29.7"
        }
    }
]
```
