all:		uboot-env

install:	uboot-env
	$(CP) uboot-env $INSTALL/sbin
	$(CP) uboot-env.conf $INSTALL/etc

uboot-env:	uboot-env.c
	$(CROSS_COMPILE)gcc -Os -o uboot-env uboot-env.c