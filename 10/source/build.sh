#!/bin/sh


if [ ! -d ../build ]; then
	mkdir ../build/
fi

cd ../build/
cmake ../source/
make