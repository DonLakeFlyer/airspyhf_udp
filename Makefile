all:
	sudo apt install libairspyhf-dev
	rm -rf build
	cmake -Bbuild -H.
	cmake --build build
