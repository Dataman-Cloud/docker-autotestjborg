image_name=`cat image_name.txt`
docker run -it $image_name pybot --include ha valid_node_manage.txt
