### History
- 2018/07/23 : Install docker on Ubuntu 18.04 of Hansung notebook  
- 2018/07/23: To recover the errneous file of /etc/suoders, reboot the recover mode and do select the network mode, and next root shell, and next edit the sudoers file.

- 2018/07/22: To mount c drive in docker,
```
$ sudo mount --bind /mnt/c /c
$ findmnt
```

- 2018/07/20: To download the web path without upper paths
```
$ wget -r --no-parent http://www.itec.aau.at/ftp/datasets
```

- 2018/07/13: To replace old docker.io package to the new docker-ce,
```
sudo mv /var/lib/dpkg/info/docker.* /tmp/
sudo dpkg --remove --force-remove-reinstreq docker.io
sudo apt-get remove docker.io
sudo apt-get autoremov && sudo apt-get autoclean

closed and reopened bash (WSL)
sudo apt-get install docker-ce
```
- 2018/07/13: 
   Encounter the problem of not executing the docker image of tensorflow/serving without a notary service
```
export DOCKER_HOST='tcp://0.0.0.0:2375'
export DOCKER_CONTENT_TRUST=1
export DOCKER_CONTENT_TRUST_SERVER=https://notary.docker.io
```

- 2018/07/13:
   If you use lshw command to check the hardware status on WSL, no information will appear.
```
$ sudo lshw -C display | grep product
```

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
Now, Tensorflow 1.9.0 is installed without GPU support.  

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

