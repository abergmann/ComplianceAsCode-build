#!/bin/bash

cd ~/ComplianceAsCode-content/build
git pull
cmake .. -DSSG_PRODUCT_CHROMIUM=OFF \
	 -DSSG_PRODUCT_DEBIAN8=OFF \
	 -DSSG_PRODUCT_EAP6=OFF \
	 -DSSG_PRODUCT_EXAMPLE=OFF \
	 -DSSG_PRODUCT_FEDORA=OFF \
	 -DSSG_PRODUCT_FIREFOX=OFF \
	 -DSSG_PRODUCT_FUSE6=OFF \
	 -DSSG_PRODUCT_JRE=OFF \
	 -DSSG_PRODUCT_OCP3=OFF \
	 -DSSG_PRODUCT_OL7=OFF \
	 -DSSG_PRODUCT_OL8=OFF \
	 -DSSG_PRODUCT_OPENSUSE=OFF \
	 -DSSG_PRODUCT_RHEL6=OFF \
	 -DSSG_PRODUCT_RHEL7=OFF \
	 -DSSG_PRODUCT_RHEL8=OFF \
	 -DSSG_PRODUCT_RHOSP13=OFF \
	 -DSSG_PRODUCT_RHV4=OFF \
	 -DSSG_PRODUCT_SLE11=OFF \
	 -DSSG_PRODUCT_SLE12=ON \
	 -DSSG_PRODUCT_UBUNTU1404=OFF \
	 -DSSG_PRODUCT_UBUNTU1604=OFF \
	 -DSSG_PRODUCT_UBUNTU1804=OFF \
	 -DSSG_PRODUCT_WRLINUX=OFF \
	 -DSSG_PRODUCT_WRLINUX8=OFF \
	 -DSSG_PRODUCT_WRLINUX1019=OFF
make
cp -v ssg-*.xml ~/out/

