参考官网https://hexo.io/zh-cn/docs/

官网方法部署等较麻烦，这里记录 hexo 搭配宝塔步骤  
npm install hexo  
hexo init <folder>
cd <folder>
npm install  
$ hexo new [layout] <title> （创建新文章，可省略 layout）  
hexo generate  
然后把生成的 public 文件夹的所有内容复制粘贴到宝塔对应网站根目录即可。
