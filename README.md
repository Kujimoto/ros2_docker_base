# Dashing with x11
ros2 dashingの開発ベース用環境です。自分用に作っているので不具合への対応はできないと思ってください。
公式のDockerイメージをベースにros-gazeboなど基本的なパッケージをインストールし、xでGUIを使用できるよう設定しています。
また、手軽に試せるシミュレーション環境としてturtlebot3のドライバもインストールしてあります。

## 使い方
- ビルド
任意のディレクトリにこのレポジトリをクローンしてきてdocker-composeでビルド
```sh
git clone https://
cd dashing_env
sudo docker-compose build
```
ビルドにはそれなりの時間がかかると思います。成功したら、
```sh
sudo docker-compose up -d
# id確認
sudo docker ps
CONTAINER ID        IMAGE                         COMMAND                  CREATED             STATUS              PORTS               NAMES
*******        ros2_gazebo_tutorial:latest   "/ros_entrypoint.sh …"   7 seconds ago       Up 5 seconds  

USER% sudo docker exec -it "container id" /bin/bash
# docker上の環境でbash起動
# ROS2の環境設定スクリプト
root@USER% source /opt/ros/dashing/setup.bash
```

gazeboのチュートリアルやhttp://gazebosim.org/tutorials?tut=ros2_installing&cat=connect_ros#Introduction
TURTLEBOT3のシミュレーション立ち上げができるはず

