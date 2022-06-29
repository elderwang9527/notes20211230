## brew update 报错 "fatal: Could not resolve HEAD to a revision"

brew update --verbose 网上教程，无效  
brew doctor，之后根据提示执行如： git -C $(brew --repo homebrew/core) checkout master 即可。        


