# speedrack

# dev instructions
```docker-compose up```

```mysql -h 127.0.0.1 -uroot -p -e "create database alcohol"```

```mysql -h 127.0.0.1 -uroot -p < alch_sprack.sql```

```docker exec -ti <app container id> bash```
  - ```python manage.py migrate```
  - ```python manage.py createsuperuser```
