ISUCON5 Qualify
===
[![wercker status](https://app.wercker.com/status/90b871de364e62e1b0aea9fa90608958/m/master "wercker status")](https://app.wercker.com/project/byKey/90b871de364e62e1b0aea9fa90608958)

local
---
### 本番データの準備
```
# サーバ上で実行
sudo tar czvf mysqldir.tar.gz /var/lib/mysql/

# ローカルで実行
scp isucon5:mysqldir.tar.gz local/mysqldir
cd local/mysqldir
tar xzvf mysqldir.tar.gz
```

`local/mysqldir/var/lib/mysql` というディレクトリ構成になれば正しい。
