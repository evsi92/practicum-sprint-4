# pymongo-api

## Как запустить

Переходим в папку sharding-repl-cache. Для удобста можно использовать README внутри нее.

Запускаем минимальную тестовую комбинацию Mongo сервера с шардированием, репликацией, кешированием и приложение на python
```shell
docker compose up -d
```

Инициализируем конфигурационный сервер

```shell
./scripts/step_1_config_server_init.sh
```

Инициализируем шард 1

```shell
./scripts/step_2_shard_1_init.sh
```

Инициализируем шард 2

```shell
./scripts/step_3_shard_2_init.sh
```

Инициализируем роутер

```shell
./scripts/step_4_router_init.sh
```

Настраиваем кеш

```shell
./scripts/step_5_redis_init.sh
```

Заполняем mongodb данными

```shell
./scripts/step_6_add_data.sh
```

## Как проверить

### Проверка с помощью скрипта

```shell
./scripts/step_7_validation.sh
```