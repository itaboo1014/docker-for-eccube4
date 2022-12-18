# Docker for EC-CUBE 4

EC-CUBE 4 向けのDocker環境を提供するプロジェクトです。

前提として

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

## はじめに

前提として [Docker Desktop](https://www.docker.com/products/docker-desktop/) をインストールして下さい。

## ECCUBEのソースを配置

EC-CUBEのバージョンを指定し、ソースコードをダウンロードします。

：例 EC-CUBE 4.2.0 の場合
```
make ECCUBE4.2.0
```
対応しているバージョンは下記の通りです。
```
ECCUBE4.2.0
ECCUBE4.1.2
ECCUBE4.1.1
ECCUBE4.1.0
ECCUBE4.0.6-p1
ECCUBE4.0.6
ECCUBE4.0.5-p1
ECCUBE4.0.5
ECCUBE4.0.4
ECCUBE4.0.3
```

## PHPのバージョンを選択

使用するPHPのバージョンを指定します。

※[システム要件](https://doc4.ec-cube.net/quickstart/requirement)を参考に
EC-CUBEの各バージョンに対応したPHPを選択して下さい。

：例 PHP 8.1 の場合
```
make PHP8.1
```
対応しているバージョンは下記の通りです。
```
PHP8.1
PHP8.0
PHP7.4
PHP7.3
PHP7.2
PHP7.1
```

## データベースの選択

使用するデータベースとバージョンを指定します。

※[システム要件](https://doc4.ec-cube.net/quickstart/requirement)を参考に
EC-CUBEの各バージョンに対応したデータベースとバージョンを選択して下さい。

：例 MySQL 8.0 の場合
```
make MySQL8.0
```
対応しているデータベースとバージョンは下記の通りです。
```
MySQL8.0
MySQL5.7
PostgreSQL14
PostgreSQL13
PostgreSQL12
PostgreSQL11
PostgreSQL10
PostgreSQL9
```

## イメージビルド＆コンテナの立ち上げ
アプリケーションのイメージを作成します。
```
docker-compose build app
```
全てのコンテナを立ち上げます。
```
docker-compose up
```

## 初期化

下記コマンドで作成した環境を初期化することができます。
```
make Initialization
```
内部の処理は下記の通りです。
- コンテナの停止＆削除
- `eccube`ディレクトリの削除
- `docker-compose.yml`の削除
- `Dockerfile`の削除

## ブラウジング

| Front       | Browsing              |
|:------------|:----------------------|
| ECCUBE      | http://localhost      |
| phpMyAdmin  | http://localhost:8080 |
| MailCatcher | http://localhost:1080 |