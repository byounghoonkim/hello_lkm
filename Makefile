obj-m += hello_lkm.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean


info:
	modinfo hello_lkm.ko


test:
	@insmod hello_lkm.ko && echo "OK - insmod" || echo "Failed - insmod"
	@(lsmod | grep hello_lkm) && echo "OK - lsmod" || echo "Failed - lsmod"
	@rmmod hello_lkm.ko && echo "OK - rmmod" || echo "Failed - rmmod"
