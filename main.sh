cython --cplus -3 caller.pyx
gcc -fPIC -shared caller.cpp -o libcaller.so -I /usr/include/python3.8 -lpython3.8
gcc main.cpp -o main -I /usr/include/python3.8 -L. -lstdc++ -lcaller -lpython3.8
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
./main
