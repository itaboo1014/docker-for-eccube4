# docker-for-eccube4

## 概要
### EC-CUBE4系向けのdocker環境です。

## セットアップ
- EC-CUBE4公式のリポジトリをcloneします。
```
# sshの場合
git clone git@github.com:EC-CUBE/ec-cube.git

# httpsの場合
git clone https://github.com/EC-CUBE/ec-cube.git
```

- 本リポジトリをcloneします。
```
# sshの場合
git@github.com:itaboo1014/docker-for-eccube4.git

# httpsの場合
https://github.com/itaboo1014/docker-for-eccube4.git
```

- EC-CUBE公式のリポジトリに本リポジトリのファイルをコピー&上書きします。
```
cp docker-for-eccube4/docker-compose.yml docker-for-eccube4/docker-sync.yml docker-for-eccube4/Dockerfile docker-for-eccube4/entypoint.sh ec-cube
```

- リポジトリに移動しビルドします。
```
cd ec-cube
docker-sync start
HOST_UID=$(id -u) docker-compose up -d --build
```

## 参考
- https://www.geel-web.jp/php/docker-eccube4-improve/
