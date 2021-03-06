Setting Linux Environment for Windows 10
===

### Information for setting
* [Windows Subsystem for Linux Documentation](https://docs.microsoft.com/ko-kr/windows/wsl/about)
* [Setting up Ubuntu (WSL) for Linux GUI Apps](http://token2shell.com/howto/x410/setting-up-wsl-for-linux-gui-apps/)
* [Updating WSL](http://wsl-guide.org/en/latest/update.html)
* 2018/06/11 [Why You Should Use Windows Subsystem for Linux](https://virtualizationreview.com/articles/2018/06/11/why-you-should-use-windows-subsystem-for-linux.aspx)
* 2018/06/16 [Linux on Windows 10 (WSL)](https://www.eshlomo.us/linux-on-windows-10-wsl-intro/)
* 2018/05/13 [Building Linux Workspace on Windows 10 via WSL](http://xcorpion.tech/2018/05/13/Building-Linux-Workspace-on-Windows-10-via-WSL/)
* 2018/01/10 [Windows10에서 Linux 개발환경 구축](http://crynut84.github.io/2018/01/10/building-dev-env-using-wsl/)
* 2017/10/20 [WSL(Windows Subsystem for Linux) 사용기 및 ArchLinux로의 전환](https://tech.ssut.me/2017/10/20/install-archlinux-on-windows-subsystem-for-linux/)
* 2017/10/12 [Windows 10에서 리눅스용 프로그램 설치하고 실행하기](https://medium.com/@rkttu/windows-10%EC%97%90%EC%84%9C-%EB%A6%AC%EB%88%85%EC%8A%A4%EC%9A%A9-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8-%EC%84%A4%EC%B9%98%ED%95%98%EA%B3%A0-%EC%8B%A4%ED%96%89%ED%95%98%EA%B8%B0-2cb0d7892d12)
* [Fedora Environment on Windows Subsystem for Linux](https://www.variantweb.net/pub/fedora-wsl.pdf)
* 2017/09/29 [Configuring a pretty and usable terminal emulator for WSL](https://blog.ropnop.com/configuring-a-pretty-and-usable-terminal-emulator-for-wsl/)


### X-Window Server for Windows
* [Chocolatey](https://chocolatey.org/) - The package manager for Windows
* [VcXsrv Windows X Server](https://sourceforge.net/projects/vcxsrv/) : Free
* [X410](http://token2shell.com/x410/) : Paid
* [MobaXterm](https://mobaxterm.mobatek.net/) - Enhanced terminal for Windows with X11 server, tabbed SSH client, network tools and much more
* [wsltty](https://github.com/mintty/wsltty/releases) : 1.9.0.2
* 2018/06/30 [Linux Graphical Applications on Windows](https://ariya.io/2018/06/linux-graphical-applications-on-windows)
* 2018/01/30 [Hands-On with WSL: Running Graphical Apps](https://virtualizationreview.com/articles/2018/01/30/hands-on-with-wsl-graphical-apps.aspx)
		- Xming, Cygwin X and vcXsrv


### Docker for Windows
* [Docker Community Edition for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows)
* 2018/06/19 [Docker command line in WSL](http://codingrandomly.com/2018/06/docker-command-line-wsl/)
* 2018/06/11 [[번역] Docker 컨테이너를 Windows Bash에서 구동하기](https://blog.yeon.me/goto/1192)
* 2017/10/27 [Installing the Docker client on Windows Subsystem for Linux (Ubuntu)](https://medium.com/@sebagomez/installing-the-docker-client-on-ubuntus-windows-subsystem-for-linux-612b392a44c4)
* 2017/05/07 [Setting Up Docker for Windows and WSL to Work Flawlessly](https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly)


### Utilities for Windows
* [MSYS2](https://www.msys2.org/)
* [Cygwin](https://www.cygwin.com/)


### Open Source : [Github](https://github.com)
* [Microsoft/WSL](https://github.com/Microsoft/WSL) - Issues found on WSL
* [kpocza/LoWe](https://github.com/kpocza/LoWe) - Linux on Windows extender
* [paradoxxxzero/butterfly](https://github.com/paradoxxxzero/butterfly) - A web terminal based on websocket and tornado
* [powerline/fonts](https://github.com/powerline/fonts) - Patched fonts for Powerline users
* [mintty/wsltty](https://github.com/mintty/wsltty) - Mintty as a terminal for Bash on Ubuntu on Windows/WSL
* [ethanhs/WSL-Programs](https://github.com/ethanhs/WSL-Programs) - A community powered list of programs that work (and those that don't) on the Windows subsystem for Linux


### History
- 2018/07/12:
  Install some packages before compiling Tensorflow
```
$ sudo apt install python-numpy python-dev python-pip python-wheel
$ sudo apt install python3-numpy python3-dev python3-pip python3-wheel
$ sudo apt install swig
```
For golang, just do the following, it is simply to use and test.  
   [Installing TensorFlow for Go](https://www.tensorflow.org/install/install_go)  
   [Understanding Tensorflow using Go](https://pgaleone.eu/tensorflow/go/2017/05/29/understanding-tensorflow-using-go/)  
- 2018/07/11:
  To upgrade node to the latest version, 
```
$ sudo npm install -g n
$ sudo n latest or $ sudo n 10.6.0
```
   If the above method is failed, do this.
```
$ curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
$ sudo apt-get install -y nodejs
$ sudo apt update && sudo apt upgrade
$ sudo npm i -g npm
```

- 2018/07/10:
  When you see the message "Another Instance of Code ...", restart your windows 10
```
$ sudo apt update
$ sudo apt install code
$ sudo apt install code-insiders	# developer version
$ sudo service dbus start
```
```
$ sudo apt install p7zip
$ 7za x <filename.zip>
```

- 2018/07/09
  [Installed yarn package](https://yarnpkg.com/lang/en/docs/install/#debian-stable): 1.7.0
  and [node-wasm](https://www.npmjs.com/package/node-wasm) package, 
    [yusinto/node-wasm](https://github.com/yusinto/node-wasm/) example
 ```
$ sudo apt install yarn
$ yarn add node-wasm
```

- 2018/07/07: 
   Installed some packages for Linux

```
$ sudo apt install ubuntu-desktop
$ sudo apt install xubuntu-desktop

$ sudo apt install -y falkon
```

- 2018/07/06:
   Solved the problem of not executing the visual studio code on wsl

	Start dbus daemon
```
$ sudo mkdir -p /run/dbus
$ sudo dbus-daemon --system
```
	Replace installed PulseAudio with WSL-based one when you encounter the pthread error.
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

