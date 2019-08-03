VERSION=1.0-1

ttyrun_$(VERSION).deb: src/*
	dpkg-deb --build src ttyrun_$(VERSION).deb
