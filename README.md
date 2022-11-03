# phddns-docker

花生壳内网穿透 docker版本

目前已经更新到官网最新版本 5.2.0

1. 使用方法

    ```shell
    docker run -it --net=host --name phddns --mac-address AA:BB:CC:DD:EE:FF mars119/phddns 
    ```

    > mac地址自己替换下，随机生成或者用自己的物理网卡地址都可以，避免冲突

2. 运行完就能看见配置信息

    ```shell
    +--------------------------------------------------+
    |             Oray PeanutHull Linux 5.2.0          |
    +--------------------------------------------------+
    |  SN: xxxxxxxxxxxxxxx    Default password: admin  |
    +--------------------------------------------------+
    |    Remote Management Address http://b.oray.com   |
    +--------------------------------------------------+
    ```

3. 去 <http://b.oray.com> 登录绑定，SN码就是上面的，默认密码是admin

## 后台运行

1. 运行 `docker run -d --net=host --name phddns mars119/phddns`

2. 查看日志 `docker logs -f phddns`

## docker-compose 文件

- 创建 **docker-compose.yaml** 文件

    ```yaml
    version: "3"
    services:

        phddns:
            image: mars119/phddns
            container_name: phddns
            restart: always
            mac_address: AA-BB-CC-DD-EE-FF
            # network_mode: host
    ```

- 后台运行 `docker-compose up -d`

## http 日志查看

see: <https://github.com/lichengwu/phddns-docker/pull/5>
