# docker-for-eccube4

## 概要
### EC-CUBE4系向けのdocker環境です。
| 画面 | URL |
| ---- | --- |
| フロント | localhost:8080 |
| phpMyAdmin | localhost:8888 |

## セットアップ

### 本リポジトリをcloneします。
```
# sshの場合
git@github.com:itaboo1014/docker-for-eccube4.git

# httpsの場合
https://github.com/itaboo1014/docker-for-eccube4.git
```

### EC-CUBE4公式のリポジトリを eccube というディレクトリ名でcloneします。
```
cd docker-for-eccube4

# sshの場合
git clone git@github.com:EC-CUBE/ec-cube.git eccube

# httpsの場合
git clone https://github.com/EC-CUBE/ec-cube.git eccube
```

### DBイメージの選択
docker-compose.yml の5~7行目を編集する必要があります。
```
vim docker-compose.yml
```
- Apple Silicon 以外の場合
```
image: mysql:5.7 # 変更
# image: mariadb:10.3
# platform: linux/amd64
```

- Apple Silicon の場合 (mariaDB)<br>
Apple Silicon はdocker公式のMySQLイメージがサポートされていないため互換性のあるmariaDBを使用してください。
```
# image: mysql:5.7
image: mariadb:10.3 # 変更
# platform: linux/amd64
```

- Apple Silicon の場合 (MySQL)<br>
Apple Silicon でも platform: linux/amd64 を指定することでエミュレートしMySQLを使用することができます。
```
image: mysql:5.7 # 変更
# image: mariadb:10.3
platform: linux/amd6 # 変更4
```

- ビルドします。
```
HOST_UID=$(id -u) docker-compose up --build
```

### インストール
- デフォルトでは .env.dist が .env としてコピーされるため一度 .env ファイルを削除する。
- localhost:8080 にアクセスするとインストール画面が表示されます。
- インストール後 .env ファイルを修正して開発モードに変更してください。（開発モードにしないとファイルを変更してもキャッシュが更新されないため、毎度キャッシュクリアをする必要があります。）
```
APP_ENV=dev # 変更
APP_DEBUG=1 # 変更
```

## 参考
- https://www.geel-web.jp/php/docker-eccube4-improve/
