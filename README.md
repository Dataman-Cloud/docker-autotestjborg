# docker-autotestjborg
自动化测试jborg

## 使用方法

```
PYBOT_VARIABLES="
         --variable SERVER:$SRY_SERVER \
         --variable USERID:$USERID \
         --variable PROJECTID:$PROJECTID \
         --variable cluster_name:$SRY_HATEST_CLUSTER_NAME \

docker run -it $AUTOTESTBORG_IMAGE pybot $PYBOT_VARIABLES --include app valid_app_manage.txt

```
其中 valid_app_manage.txt 为测试app用例文件，可以替换为其它
