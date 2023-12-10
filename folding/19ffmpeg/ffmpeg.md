## Mac 电脑上安装 FFmpeg 的指南

## 231210

https://www.python100.com/html/93874.html

```
Mac电脑上安装FFmpeg的指南
更新：2023-05-19 16:23
对于影视制作人员或是视频爱好者而言，FFmpeg是一款非常重要的工具。它可以用于视频转码、剪辑、转换、视频处理等等。本文将从多个方面详细介绍如何在Mac电脑上安装并使用FFmpeg。

一、安装Homebrew
安装Homebrew是安装FFmpeg的基础操作。Homebrew是一个在macOS上非常流行的开源包管理器，它可以通过命令行安装众多软件包，包括FFmpeg。

1、首先打开终端（Terminal）应用程序，终端可以在应用程序->实用工具里找到。然后，在终端输入以下命令来安装Homebrew：

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
2、在安装过程中，Homebrew会逐一提示你步骤。等待安装完成后，可以通过运行以下命令来检查Homebrew是否安装成功：

brew -v
如果命令返回Homebrew的版本号，则说明Homebrew安装成功。

二、安装FFmpeg
一旦安装了Homebrew，我们就可以使用它来轻松安装FFmpeg。以下是安装FFmpeg的步骤：

1、在终端中运行以下命令，以安装FFmpeg：

brew install ffmpeg
2、等待安装过程结束。安装完成后，您可以通过运行以下命令来检查FFmpeg是否成功安装：

ffmpeg -version
如果命令返回FFmpeg的版本号及相关信息，则说明FFmpeg成功安装。

三、使用FFmpeg
1. 视频转码
转码是FFmpeg最常见的用途之一。以下是一些基本的转码示例：

转换视频格式：

ffmpeg -i input.mp4 output.avi
改变视频的大小：

ffmpeg -i input.mp4 -vf scale=640:360 output.mp4
提取视频的音频：

ffmpeg -i input.mp4 -vn -acodec copy output.aac
2. 视频剪辑
剪辑是FFmpeg应用的另一个常见用途，以下是一些基本的视频剪辑示例：

从30秒处开始剪辑：

ffmpeg -i input.mp4 -ss 00:00:30.0 -c copy output.mp4
从30秒处开始剪辑到1分30秒：

ffmpeg -i input.mp4 -ss 00:00:30.0 -t 00:01:00.0 -c copy output.mp4
从视频中抽取指定时长的片断：

ffmpeg -i input.mp4 -ss 00:00:10 -t 00:00:30 -c copy output.mp4
3. 视频处理
除了转码和剪辑，FFmpeg还提供了一些强大的视频处理功能，以下是一些示例：

加水印：

ffmpeg -i input.mp4 -i watermark.png -filter_complex "overlay=10:10" output.mp4
改变视频角度：

ffmpeg -i input.mp4 -vf "transpose=1" output.mp4
提取关键帧：

ffmpeg -i input.mp4 -vf "select=eq(pict_type\,I)" -vsync vfr output.mp4
四、总结
在Mac电脑上安装FFmpeg并不复杂，只需要安装Homebrew并运行一些命令即可。FFmpeg提供了许多强大的功能，包括视频转码、剪辑、处理等，可以让您更轻松地处理和修改视频。希望这份指南能够帮助您更好地了解如何在Mac电脑上安装和使用FFmpeg。
```
