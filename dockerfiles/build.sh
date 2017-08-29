name=library/centos7-autotestjborg
#tag=`date +%Y%m%d%H%M`
opts="--no-cache"
docker build -f Dockerfile_pybot -t demoregistry.dataman-inc.com/library/pybot .

cat > Dockerfile_runtime << EOF 
FROM demoregistry.dataman-inc.com/library/pybot

COPY BORSP_api /BORSP_api

WORKDIR /BORSP_api

CMD ["pybot", "--include", "ha", "valid_cluster_manage.txt"]
EOF

docker build $opts -f Dockerfile_runtime -t $name .

echo "$name" > image_name.txt
