## 分隔线样式

https://www.imooc.com/wiki/markdownlesson/markdownhorizontalrules.html  
![](./img/2022-04-17-16-36-01.png)

## vscode 设置用户代码片段，以及单独为 markdown 设置代码片段

https://zhuanlan.zhihu.com/p/357377511  
https://www.php.cn/tool/vscode/481117.html

Ctrl+Shift+P 打开命令面板，输入>Preferences: Configure User Snippets，选择首选项：配置用户代码片段，然后会弹出面板：用户已经创建的代码片段（针对特定语言的（.json），或者是全局的（.code-snippets）），然后照例子添加即可。
add，mac 下是 cmd shift p，不是输入>Preferences: Configure User Snippets 而是搜索 Configure User Snippets

![](./img/2022-04-23-23-18-13.png)
如果是 markdown 语法，还需在 settings.json（文件，首选项，设置，点击如图）里设置:

```
"[markdown]":{

    "editor.quickSuggestions": true

}
```

![](./img/2022-09-08-11-02-21.png)  
add220908，这种全局方法似乎对其它语言如 rust 无效，可如图点击，之后选择单独语言设置。  
或直接命令行 code ~/Library/Application\ Support/Code/User/snippets/rust.json
