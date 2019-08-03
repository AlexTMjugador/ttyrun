# ttyrun
Runs a command in the first TTY device a user logged in, just like if the user typed it. In the background, it inserts simulated keypresses using the TIOCSTI ioctl.

### Usage
By default, ttyrun is located in /usr/bin/ttyrun, and is executable by every user (although normally only root has the necessary permissions to write to a TTY device). When it is launched, ttyrun uses the output of the who command to look for the first user logged in to a TTY, and executes a specified command on it if it finds any. ttyrun accepts two command line arguments to customize this behavior:

* _-c command_: specifies the command to run on the TTY. This is passed as an argument to a `/bin/sh -c` call.
* _-u user_: finds the first TTY that _user_ logged in to, and uses that. If not specified, ttyrun will use the first TTY any user logged in to.

### Building and packaging
This program is only composed of shell scripts, so no compilation is necessary. It should work in any GNU/Linux box that has a POSIX shell and the needed dependencies.

However, it is distributed as a .deb package that is generated with a Makefile. To create the ttyrun .deb package, you only need to make changes to the installed files, and then run:

```console
$ make
```

# Installation
You can get the official .deb package from the [releases page](https://github.com/AlexTMjugador/ttyrun/releases). Installing the package is pretty straightforward:

```console
# dpkg -i ttyrun_1.0-1.deb
```

If dpkg complains about missing dependencies, make sure you install them first.
