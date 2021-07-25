# phddns-docker
### 花生壳内网穿透 docker版本

1. 运行方法
``` 
docker run -it --net=host --name phddns mars119/phddns
```

2. 运行完就能看见配置信息
```
 +--------------------------------------------------+
 |             Oray PeanutHull Linux 5.1.0          |
 +--------------------------------------------------+
 |  SN: xxxxxxxxxxxxxxx    Default password: admin  |
 +--------------------------------------------------+
 |    Remote Management Address http://b.oray.com   |
 +--------------------------------------------------+
```
3. 去 http://b.oray.com 登录绑定，SN码就是上面的，默认密码是admin
