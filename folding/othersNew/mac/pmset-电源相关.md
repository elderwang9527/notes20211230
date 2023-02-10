## 230210

### https://zhuanlan.zhihu.com/p/37479145

#### 让盒盖后仍能正常运行程序（还未测试）

sudo pmset -a autopoweroff 0 && sudo pmset -a hibernatemode 0 && sudo pmset -a standby 0 && sudo rm /var/vm/sleepimage  
（想恢复到正常时，sudo pmset restoredefaults，恢复到默认）

以上 4 项逐条修改后，结果如下 ↓

利：重启、睡眠、均不会产生内存镜像文件，内存会在你盒盖时不断电，也不会复制内存文件到硬盘

即：你的电脑再也无法深度睡眠

弊：电池会因为内存不断电而持续放电，初步保守统计满电可待 7 天（仅供参考）

且 因电池电量用完，会导致内存内数据丢失，接通电源情况未测试，请谨慎保存数据

且 因电池电量用完，会导致内存内数据丢失，接通电源情况未测试，请谨慎保存数据

且 因电池电量用完，会导致内存内数据丢失，接通电源情况未测试，请谨慎保存数据

#### 其它信息

在终端输入：pmset -g custom 这个命令可以显示系统所有的电源设置 (只用 pmset -g 会显示一些额外信息，如 sleep 1 (sleep prevented by sharingd, powerd)，显示了 sleep 被一些进程阻止，pmset -g custom 则不会显示)

lidwake: 当屏幕掀开的时候唤醒 Mac，1 是开启 0 是关闭 (这个自己测试中未显示)

autopoweroff: 如果 Mac 处于睡眠状态经过指定的时间后，自动把内存数据写入硬盘，并切断所有部件的电源，进入休眠状态，1 是开启 0 是关闭。

autopoweroffdelay:启用 autopoweroff 功能的时间，也就是上面说的那个“指定的时间”，单位是秒

standby:功能跟 autopoweroff 一样，不过仅在 hibernatemode 为 3 的时候起作用，1 是开启 0 是关闭。

standbydelay:启用 standby 功能的时间，单位也是秒

ttyskeepawake:远程用户正在活动时防止 Mac 进入睡眠，1 是开启 0 是关闭

---

hibernatemode:睡眠模式：

0-老式睡眠模式。睡眠期间内存加电，禁用 safesleep（安全睡眠），超快速唤醒。

1-休眠模式。内存中的数据将写入到磁盘上，系统在所谓的“睡眠”时将完全关闭，因为需要读取先前保存在硬盘中的内存数据，所以唤醒较慢。

3-睡眠模式（2005 年秋季之后机器默认采用的）睡眠过程中，内存保持通电状态，同时内存数据在进入睡眠模式之前同样要写入到硬盘。万一没有外接电源并且电池也完全没电了的话，系统将自动进入休眠模式。

5-和模式 1 一样。但这是为了那些使用安全虚拟内存的用户
System Preferences -> Security（系统设置-安全）。

7-和模式 3 一样。但同样是为了那些使用安全虚拟内存的用户。

---

darkwakes:这个就是 Power Nap，你可以在系统偏好设置里选择开或关，跟在这里设置是一样的，1 是开启 0 是关闭 （没看懂）

hibernatefile:内存镜像存放的地址，这个也可以更改，不过路径必需是 root 下的路径

displaysleep:Mac 闲置多长时间后进入显示器睡眠。单位是分钟，这个时间不能长于 sleep 下设置的时间

sleep:Mac 闲置多长时间后进入睡眠，这个系统偏好设置里也有，单位是分钟

acwake:电源改变时唤醒，也就是插上或者拔掉外置电源时唤醒 Mac，1 是开启 0 是关闭

halfdim:显示器睡眠时使显示器亮度改变为当前亮度的一半，1 是开启 0 是关闭。如果关闭这个功能的话，显示器睡眠会直接关掉显示器。

lessbright:使用电池时使显示器亮度暗一点，系统偏好设置里也有这个，1 是开启 0 是关闭

disksleep:Mac 闲置多长时间后关闭硬盘。这个系统偏好里也有，只不过换了一个字眼—如果可能，使硬盘进入睡眠—勾上这个的话系统就会自动根据 sleep 的时间设一个合适的时间。单位是秒，这个时间不能长于 sleep 下设置的时间

womp:网络远程唤醒，1 是开启 0 是关闭

networksleep:这个设置影响 Mac 在睡眠的过程中如何提供网络共享服务，不太清楚是什么，最好就不要动。

### https://sspai.com/post/61379

<img src='./img/2023-02-10-01-47-25.png' height=333px></img>

#### 重点

在进行外部供电的时候，我希望 MacBook 是处于一个 「时刻准备着」 的状态（参考 iMac ），因此我希望我的 Mac 能清醒更久，并且永不 「睡眠」。因此我会作出以下设置：

永不睡眠：

hibernatemode 设置成 0，让外部电源持续给内存供电。
关闭 standyby 和 autopoweroff 模式，阻止 MacBook 睡眠。
详细设置：

// 120 分钟后进入休眠，延长清醒时间
sudo pmset -c sleep 120
// 显示器休眠时间：30 分钟
sudo pmset -c displaysleep 30
// 硬盘休眠时间：60 分钟
sudo pmset -c disksleep 60
// 内存供电，内存镜像不写入硬盘
sudo pmset -c hibernatemode 0
// 关闭 standby 模式
sudo pmset -c standby 0
// 关闭 autopoweroff
sudo pmset -c autopoweroff 0
// 休眠时持续联网
sudo pmset -c tcpkeepalive 1
🔋 电池供电下的 pmset 设置

电池供电时的设置
在通过电池供电的时候，我希望 Mac 能耗电少一些，同时「睡眠」后唤醒速度不太慢。因此我会作出以下设置：

hibernatemode 为 3，将镜像数据既写入内存又写入硬盘，同时对内存只供电一段时间。
standby 的电量阈值设置成 75%，当电量低于 75% stanby 的计时器就使用 standbydelaylow 作为休眠倒计时。
tcpkeepalive 设置成 0, 休眠时电脑将会断网，以节省电量。但此时无法进行下载工作，FindMy 也无法定位。
proximitywake 设置成 0, 关闭被同一网络下的同 iCloud 设备唤醒

详细设置：

// 20 分钟后进入休眠
sudo pmset -b sleep 20
// 向硬盘写入镜像，同时内存供电
sudo pmset -b hibernatemode 3
// 显示器休眠时间：15 分钟
sudo pmset -b displaysleep 15
// 硬盘休眠时间：30 分钟
sudo pmset -b disksleep 30
// 休眠时断网
sudo pmset -b tcpkeepalive 0
// 高电量下 standby: 4 小时
sudo pmset -b standbydelayhigh 14400
// 低电量下 standby: 2 小时
sudo pmset -b standbydelaylow 7200
// standby 电量阈值：75%
sudo pmset -b highstandbythreshold 75
// 开盖唤醒
sudo pmset -b lidwake 1
// 关闭被同一 iCloud 下的设备唤醒
sudo pmset -b acwake 0
