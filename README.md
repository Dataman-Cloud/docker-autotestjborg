# docker-autotestjborg
自动化测试jborg

## 使用方法


```
docker run --rm -i \
	offlineregistry.dataman-inc.com:5000/library/centos7-docker-autotestjborg:$tag \
	pybot \
	--variable SERVER:http://192.168.1.214:81 \
	--variable USERID:autotest \
	--variable PROJECTID:pidautotest \
	--variable cluster_name:clusterautotest \
	--include app valid_app_manage.txt
```

### 参数说明:
- 镜像tag
	- tag: 对应docker-autotestjborg 项目代码tag
- pybot参数
	- SERVER: 数人云服务地址
	- USERID: 用户id
	- PROJECTID: 项目id
	- cluster_name: 集群名称
	--include app valid_app_manage.txt  测试应用管理，可以替换为其它


## 配合offlinesry使用方法(推荐)

复制docker-autotestjborg代码到安装机/data目录

检查修改config.cfg

执行
```
./auto_test_app.sh
```

