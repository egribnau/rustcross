ARCHS := x86_64-unknown-linux-gnu \
         armv7-unknown-linux-gnueabihf \
         arm-unknown-linux-gnueabihf

.PHONY: all ${ARCHS}

all: ${ARCHS} ; echo "$@ success"

${ARCHS}: % :
	cd $* && \
	docker build -f Dockerfile-1.12   -t rustcross/$*:1.12   . && \
        docker build -f Dockerfile-latest -t rustcross/$*:latest .
        
