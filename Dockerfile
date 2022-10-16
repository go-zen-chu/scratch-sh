FROM scratch
COPY ./files/sh /bin/sh
COPY ./files/libc.so.6 /lib/x86_64-linux-gnu/libc.so.6
COPY ./files/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2
CMD ["/bin/sh"]
