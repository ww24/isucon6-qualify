ISUCON6 Qualify
===
[![wercker status](https://app.wercker.com/status/90b871de364e62e1b0aea9fa90608958/m/master "wercker status")](https://app.wercker.com/project/byKey/90b871de364e62e1b0aea9fa90608958)

local
---
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

### 依存解決 (build)
```
cd webapp/go
GOPATH=$(pwd) make all
```

### つくる
```
cd local
docker-compose up
```

open http://localhost:5000/

profiler: http://localhost:5000/debug/pprof/

### こわす
```
docker-compose stop
docker-compose rm -f
```
