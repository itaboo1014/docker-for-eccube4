# Docker for EC-CUBE 4

EC-CUBE 4 向けのDocker環境を提供するプロジェクトです。

当プロジェクトのサポート内容は下記の通りです。

| 分類       | ソフトウェア | バージョン            |
|:----------|:-----------|:--------------------|
| WebServer | Apache     | 2.4.x               |
| PHP       | PHP        | 7.1~7.4 or 8.0~8.1  |
| Database  | PostgreSQL | 9.x~14.x            |
| Database  | MySQL      | 5.7 or 8.0          |
| Database  | SQLite     | not supported       |

使用できるソフトウェアのバージョンはマイナーバージョンによって異なります。
詳細は公式ドキュメントの[システム要件](https://doc4.ec-cube.net/quickstart/requirement)をご確認ください。


# HOW TO USE

ECCUBE 4.2.0 の環境を作成したい際は下記のコマンドを実行して下さい。

```
make ECCUBE4.2.0
docker-compose build app
docker-compose up
```

| Front       | Browsing              |
|:------------|:----------------------|
| ECCUBE      | http://localhost      |
| phpMyAdmin  | http://localhost:8080 |
| MailCatcher | http://localhost:1080 |