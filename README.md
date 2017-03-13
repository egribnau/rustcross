# rustcross
Dockerized cross compilation for Rust.

## This repo
This repository has Dockerfiles to cross-compile Rust programs to different architecture. The Docker Hub has these images as prebuilt images.

## Usage
To create a release build using cargo, run this command in your Rust root directory (where you normally run 'cargo ...'):

    docker run --rm -v ${PWD}:/work rustcross/__TARGET__:__VERSION__ cargo build --release --target=__TARGET__
    
Where __TARGET__ is:
- x86_64-unknown-linux-gnu
- armv7-unknown-linux-gnueabihf
- arm-unknown-linux-gnueabihf

and where __VERSION__ is:
- latest (currently v1.12)
- 1.12

These versions correspond to Rust versions. 

If you are working with one of the ARM targets, you need to tell cargo to use a custom linker when compiling your code, so create `.cargo/config` and put the following inside:

```
[target.__TARGET__]
linker = "arm-linux-gnueabihf-gcc"
```

Where __TARGET__ is:
- armv7-unknown-linux-gnueabihf
- arm-unknown-linux-gnueabihf

## Source
These images were created from the cross-build images in https://github.com/dockcross/dockcross.
