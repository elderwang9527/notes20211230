## 220904  
  
### 这节主要讲 balance 和 assets 两个 pallet  
  
### 0525e  
  
关键词：balance 的 set，get，reserve，transfer，slash，账号清理，existential deposit（最小 balance），inbalance？？？？（所有账户拥有的数量和总发行数量不一致，用 inbalacne 这类型来表示不一致的情况），positive inbalance（所有账号余额大于总发行量），nagetive inbalance。lock。    
实现时把这些方法进行了分类，每个方法的集做成 trait  
  
### 1040e  
  
balance 等的定义代码，作业可能会用到，关键词：pallet::constant，常量。transfer，set_balance,new_free ole_free, new_reserved old_reserved, force_transfer,transfer_keep_alive,transfer_all, force_unreserve,  
  
### 1233e  
  
event, error，storage 定义：关键词：genesisbuild，accountdata，total， before 744line of substrate/frame/balances/src/lib.rs  
  
### 1421e  
  
before 1107line of substrate/frame/balances/src/lib.rs  
  
### 1800e  
  
before 1742  
  
### 2000e  
  
介绍完了 substrate/frame/balances/src/lib.rs  
  
### 2000 以后  
  
介绍 assets，管理多个 fungible asset，发行，转账，冻结等。自己的理解，b 学习 alance 类似以太坊管理主币相关的代码，assets 类似管理各种 erc20 币的代码。需要时再学习。  
