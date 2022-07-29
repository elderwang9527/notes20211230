## 官网

http://iscute.cn/chfs

## 教程

http://iscute.cn/chfs

## ubuntu20 使用脚本

wget http://iscute.cn/tar/chfs/2.0/chfs-linux-amd64-2.0.zip  
sudo apt install unzip  
unzip chfs-linux-amd64-2.0.zip  
sudo chmod u+rxw chfs  
chfs --port=1234

add，以上产生的是内网链接，外部无法访问，如需外网访问，可使用宝塔，网站，创建或点击具体网站，反向代理，添加反向代理，目标 url 输入 localhost:????。发送域名处不输入任何内容。最终就可通过当前域名访问此 chfs。如不想通过域名而是 ip:port 访问，则创建网站时输入 ip:port。之后按相同操作即可。

add,通过新的 ubuntu vps，无宝塔的环境启动后，直接可以通过 Ip：port 访问，不需要反向代理。暂不确定原因。
