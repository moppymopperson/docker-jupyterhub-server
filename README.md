# イメージのビルド
1. Dockerをインストール
2. `bash build_server_image.bash`

# サーバの立ち上げ
1. `bash start_jupyter_hub.bash`
2. localhost:8000/に移動
3. デファルトユーザ情報でログインを試す
    - username: default_user
    - password: insecurepassword

# ユーザの追加
1. dockerコンテーナでbash shellを立ち上げる
    - `docker exec -it jupyter bash`

2. Unixユーザを追加 
    - `adduser`
    - 指示に従ってユーザ名、パスワードなどを設定する