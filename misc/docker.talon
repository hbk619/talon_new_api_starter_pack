tag: terminal
-
docker go <phrase>: insert("docker exec -ti {phrase} /bin/bash")
docker build:
    insert("docker build .")
    key(enter)
docker list:
    insert("docker ps")
    key(enter)
docker list all:
    insert("docker ps -a")
    key(enter)
docker logs$:
    insert ("docker logs")
docker logs <phrase>:
    insert ("docker logs {phrase}")
compose up:
    insert("docker-compose up")
    key(enter)
compose build up:
    insert("docker-compose up --build")
    key(enter)
compose clean up:
    insert("docker-compose up --build --force-recreate")
    key(enter)
compose clean:
    insert("docker-compose down")
    key(enter)