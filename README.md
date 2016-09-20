ISUCON6 Qualify
===
[![wercker status](https://app.wercker.com/status/90b871de364e62e1b0aea9fa90608958/m/master "wercker status")](https://app.wercker.com/project/byKey/90b871de364e62e1b0aea9fa90608958)

local
---
初期状態のコードをローカルで試したい方は `initial` branch を checkout してください。

### 本番データの準備
```
# サーバ上で実行
sudo tar czvf mysqldir.tar.gz /var/lib/mysql/

# ローカルで実行
scp isucon6:mysqldir.tar.gz local/mysqldir
cd local/mysqldir
tar xzvf mysqldir.tar.gz
```

`local/mysqldir/var/lib/mysql` というディレクトリ構成になれば正しい。

※追記: MySQL のデータを `local/mysqldir/mysqldir.tar.gz` に置いておいたので、展開して __MySQL 5.7.15__ で読むと動きます。

### つくる
```
cd local
docker-compose up
```

open [http://localhost:8000/](http://localhost:8000/)

profiler: [http://localhost:8000/debug/pprof/](http://localhost:8000/debug/pprof/)

### こわす
```
docker-compose stop
docker-compose rm -f
```
