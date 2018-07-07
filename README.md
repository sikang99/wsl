Setting Linux Environment for Windows 10
===

### Information for setting
* [Windows Subsystem for Linux Documentation](https://docs.microsoft.com/ko-kr/windows/wsl/about)
* [Setting up Ubuntu (WSL) for Linux GUI Apps](http://token2shell.com/howto/x410/setting-up-wsl-for-linux-gui-apps/)
* [Updating WSL](http://wsl-guide.org/en/latest/update.html)


### X-Window Server for Windows
* [VcXsrv Windows X Server](https://sourceforge.net/projects/vcxsrv/) : Free
* [X410](http://token2shell.com/x410/) : Paid


### Docker for Windows
* [Docker Community Edition for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows)
* 2018/06/19 [Docker command line in WSL](http://codingrandomly.com/2018/06/docker-command-line-wsl/)
* 2018/06/11 [[번역] Docker 컨테이너를 Windows Bash에서 구동하기](https://blog.yeon.me/goto/1192)
* 2018/01/30 [Hands-On with WSL: Running Graphical Apps](https://virtualizationreview.com/articles/2018/01/30/hands-on-with-wsl-graphical-apps.aspx)
		- Xming, Cygwin X and vcXsrv
* 2017/10/27 [Installing the Docker client on Windows Subsystem for Linux (Ubuntu)](https://medium.com/@sebagomez/installing-the-docker-client-on-ubuntus-windows-subsystem-for-linux-612b392a44c4)



### Open Source
* [Microsoft/WSL](https://github.com/Microsoft/WSL)
* [kpocza/LoWe](https://github.com/kpocza/LoWe) - Linux on Windows extender



### History

- 2018/07/06:
   Solved the problem of not executing the visual studio code on wsl

	Start dbus daemon
```
$ sudo mkdir -p /run/dbus
$ sudo dbus-daemon --system
```
	Replace installed PulseAudio with WSL-based one
```
$ sudo apt purge libpulse0
$ sudo add-apt-repository ppa:therealkenc/wsl-pulseaudio
$ sudo apt-get update
```

- 2018/07/02:
  Install gopernote for Juypter notebook
```
$ sudo apt install libzmq5-dev
$ go get github.com/gopherdata/gophernotes
```

- 2018/06/30:
  A docker client on WSL Linux has successfully connected to the docker server on Windows 10
```
$ docker -H tcp://0.0.0.0:2375 images
$ export DOCKER_HOST='tcp://0.0.0.0:2375'
$ docker version
Client:
 Version:      1.13.1
 API version:  1.26
 Go version:   go1.6.2
 Git commit:   092cba3
 Built:        Thu Nov  2 20:40:23 2017
 OS/Arch:      linux/amd64

Server:
 Version:      18.03.1-ce
 API version:  1.37 (minimum version 1.12)
 Go version:   go1.9.5
 Git commit:   9ee9f40
 Built:        Thu Apr 26 07:22:38 2018
 OS/Arch:      linux/amd64
 Experimental: false
```
- 2018/06/29:
  Visual Studio code(/usr/bin/code) has not executed silently on WSL. What's the problem?

- 2018/06/28:
  [go1.11beta1](https://golang.org/dl/) was installed and tested for WebAssembly samples. ```js.Global.Get()``` should be changed ```js.Global().Get()```.

