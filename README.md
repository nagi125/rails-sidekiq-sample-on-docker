# README

## 概要
Sidekiq動作確認用のサンプル

## 確認方法
コンテナ立ち上げ
```
$ docker-compose build
$ docker-compose up
```

Railsコンテナに入る
```
$ docker container exec -it rails /bin/bash
```

ジョブの登録と実行
```
# rails c
> HelloWorker.perform_async
```

コンテナのログに下記のように出力されれば成功です
```
worker    | xxxxx INFO: start
worker    | Hello World!
worker    | xxxxx INFO: done: 0.34 sec
```