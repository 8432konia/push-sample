```
# 起動方法
cd /to/path/push-sample
docker build -t push-image .
docker run -d -p 80:80 --name push-container push-image

# 停止方法
docker stop push-container
docker rm push-container
```