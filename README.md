Setting Linux Environment for Windows 10
===

#### Information for setting
- [Setting up Ubuntu (WSL) for Linux GUI Apps](http://token2shell.com/howto/x410/setting-up-wsl-for-linux-gui-apps/)
- [Updating WSL](http://wsl-guide.org/en/latest/update.html)


#### X-Window Server for Windows
* [VcXsrv Windows X Server](https://sourceforge.net/projects/vcxsrv/) : Free
* [X410](http://token2shell.com/x410/) : Paid


#### Docker for Windows
* [Docker Community Edition for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows)

* 2018/06/11 [[번역] Docker 컨테이너를 Windows Bash에서 구동하기](https://blog.yeon.me/goto/1192)
* 2017/10/27 [Installing the Docker client on Windows Subsystem for Linux (Ubuntu)](https://medium.com/@sebagomez/installing-the-docker-client-on-ubuntus-windows-subsystem-for-linux-612b392a44c4)


#### History

- 2018/06/30:
  docker client on WSL Linux has successfully connected to docker server on Windows 10
  ```
  docker -H tcp://0.0.0.0:2375 images
  ```
- 2018/06/29:
  Visual Studio code has not executed silently on WSL

