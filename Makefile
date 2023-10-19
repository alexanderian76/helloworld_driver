obj-m += hello.o


all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

remove:
	sudo rmmod hello
install:
	sudo insmod ./hello.ko