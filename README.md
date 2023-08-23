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

3. Userの追加
```
curl -F 'image=@human1.png' -F 'name=梶本岳彦' -F 'money=100000000' -F 'account_number=0000001' http://localhost:3000/users
curl -F 'image=@human2.png' -F 'name=坂本聖' -F 'money=200000' -F 'account_number=0000002' http://localhost:3000/users
curl -F 'image=@human3.png' -F 'name=小西風舞' -F 'money=300000' -F 'account_number=0000003' http://localhost:3000/users
curl -F 'image=@human4.png' -F 'name=栁澤里久希' -F 'money=400000' -F 'account_number=0000004' http://localhost:3000/users
curl -F 'image=@human5.png' -F 'name=根本洋次郎' -F 'money=500000' -F 'account_number=0000005' http://localhost:3000/users
curl -F 'image=@human6.png' -F 'name=上田祐輝' -F 'money=600000' -F 'account_number=0000006' http://localhost:3000/users
```
