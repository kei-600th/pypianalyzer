# pypianalyzer

* pythonライブラリのダウンロードを分析するツール作成予定

## 開発者向けコメント

* アプリを起動する時には以下のコマンドを使用してください。

~~~
docker-compose exec app bash
poetry run python app.py
~~~

* エラーが発生してコンテナごと終了してしまうのを防ぐため現状のdocker構成にしています

* 一通り開発が進んだらコンテナ立ち上げと同時にアプリを起動する設定にしましょう。