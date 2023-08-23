# 環境構築

### api(Rails)側
1. gemfileを更新した状態でbuild
```
docker compose build
```

2. dbの作成
```
docker compose run api rails db:create
```
