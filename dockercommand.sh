docker run \
  -it \
  --name data-copier \
  --rm \
  --network data-copier-nw \
  -v /Users/ravi/research/data/retail_db_json \
  -e BASE_DIR=/retail_db_json \
  -e DB_HOST=a6e0a1054068 \
  -e DB_PORT=5432 \
  -e DB_NAME=retail_db \
  -e DB_USER=retail_user \
  -e DB_PASS=itversity \
  data-copier python /data-copier/app/app.py departments,categories


  docker run -it --name data-copier --rm --network data-copier-nw -v /Users/ravi/research/data/retail_db_json:/retail_db_json -e BASE_DIR=/retail_db_json -e DB_HOST=a6e0a1054068 -e DB_PORT=5432 -e DB_NAME=retail_db -e DB_USER=retail_user -e DB_PASS=itversity data-copier python /data-copier/app/app.py departments,categories