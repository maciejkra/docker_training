# docker_training

Uruchomienie pierwszego kontenera :)
```
docker run docker/whalesay cowsay boo
```

###Podstawowe komendy:
Sciagniecie obrazu
```
docker pull IMAGE
```

Wylistowanie obrazów
```
docker images list
```

Uruchomienie obrazu
```
docker run -it IMAGE komenda
```

Wylistowanie kontenerow
```
docker ps
```

Podlaczenie sie do dzialajacego kontenera
```
docker exec -it CONTAINER bash
```

Kopiowanie danych
```
docker cp CONTAINER:SRC_PATH DEST_PATH
```

Przekierowanie portow
```
docker run -it -p 80:80 IMAGE
```

Budowanie obrazu
```
docker build -t NAZWA:tag .
```
