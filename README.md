# scratch-sh

Docker scratch and /bin/sh that's it

## How to build image with Mac & lima

```bash
$ limactl start default
$ limactl shell default

# inside lima vm
$ mkdir /tmp/lima/files
## copy binary & shared object from lima vm
$ cp /bin/sh /tmp/lima/files
$ cp /lib/x86_64-linux-gnu/libc.so.6 /tmp/lima/files
$ cp /lib64/ld-linux-x86-64.so.2 /tmp/lima/files
$ exit

$ mv /tmp/lima/files .
$ lima nerdctl build -t scratch-sh:latest .
```
