ISUCON5 Qualify
===

wercker
---
https://app.wercker.com/yudetomato/isucon6-qualify/

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
