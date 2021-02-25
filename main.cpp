//main.cpp
#include <iostream>
#include <string>
#include <Python.h>
#include "caller.h"

int main(int argc, char *argv[]) {
    PyImport_AppendInittab("caller", PyInit_caller);
    Py_Initialize();
    PyImport_ImportModule("caller");

    std::cout << call_great_function("Hello 你好 1") << std::endl;

    Py_Finalize();
    return 0;
}
