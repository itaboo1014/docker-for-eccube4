# docker-for-eccube4

## 概要
### EC-CUBE4系向けのdocker環境です。

## セットアップ
### EC-CUBE4公式のリポジトリをcloneします。
```
# sshの場合
git clone git@github.com:EC-CUBE/ec-cube.git

# httpsの場合
git clone https://github.com/EC-CUBE/ec-cube.git
```

### 本リポジトリをcloneします。
```
# sshの場合
git@github.com:itaboo1014/docker-for-eccube4.git

# httpsの場合
https://github.com/itaboo1014/docker-for-eccube4.git
```

### EC-CUBE公式のリポジトリに本リポジトリのファイルをコピー&上書きします。
```
cp docker-for-eccube4/docker-compose.yml docker-for-eccube4/docker-sync.yml docker-for-eccube4/Dockerfile docker-for-eccube4/entrypoint.sh ec-cube
```

### DBイメージの選択
docker-compose.yml の5~7行目を編集する必要があります。
```
cd ec-cube
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

- リポジトリに移動しビルドします。
```
docker-sync start
HOST_UID=$(id -u) docker-compose up --build
```

## 参考
- https://www.geel-web.jp/php/docker-eccube4-improve/
