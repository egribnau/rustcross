all:
	cd armv7-unknown-linux-gnueabihf && docker build -f Dockerfile-1.12 -t rustcross/linux-armv7:1.12 .
	cd armv7-unknown-linux-gnueabihf && docker build -f Dockerfile-latest -t rustcross/linux-armv7:latest .
