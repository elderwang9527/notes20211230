![](./img/2022-01-11-10-08-22.png)
solidity vscode 格式化，需要添加这段到 settings.json。
```
  "editor.formatOnSave": true,
  "solidity.formatter": "prettier", // This is the default so it might be missing.
  "[solidity]": {
    "editor.defaultFormatter": "JuanBlanco.solidity"
  }

```
