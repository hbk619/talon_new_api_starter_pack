tag: terminal
-
docker go "{phrase}": insert("docker exec -ti {phrase} /bin/bash")
docker build: insert("docker build .")
compose up: insert("docker-compose up")
compose build up: insert("docker-compose up --build")
compose clean up: insert("docker-compose up --build --force-recreate")
compose clean: insert("docker-compose down")