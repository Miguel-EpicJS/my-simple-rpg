all:
	cd src/BasicPerson/obj && g++ ../*.cpp -c
	cd src/Battle/obj && g++ ../*.cpp -c
	cd src/ && g++ main.cpp BasicPerson/obj/*.o Battle/obj/*.o -o main
	cd src/ && ./main
gen-obj:
	cd src/BasicPerson/obj && g++ ../*.cpp -c
	cd src/Battle/obj && g++ ../*.cpp -c
compile:
	cd src/ && g++ main.cpp BasicPerson/obj/*.o Battle/obj/*.o -o main
run:
	cd src/ && ./main
remove-all:
	rm src/main
	rm src/BasicPerson/obj/*
	rm src/Battle/obj/*
remove-obj:
	rm src/BasicPerson/obj/*
	rm src/Battle/obj/*
remove-main:
	rm src/main