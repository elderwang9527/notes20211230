react snippet 插件在 js 文件中无法联想 html 代码片段，则在 settings.json 中输入：

```
  "typescript.disableAutomaticTypeAcquisition": true,
  "editor.suggest.snippetsPreventQuickSuggestions": false,
  "emmet.preferences": {},
  "emmet.includeLanguages": {
    "javascript": "javascriptreact"
  }
```
![](./img/2022-02-10-15-52-16.png)
![](./img/2022-02-10-15-48-56.png)
