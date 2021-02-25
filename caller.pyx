from libcpp.string cimport string
include "great_module.pyx"

cdef public string call_great_function(string text):
    cdef string s = great_function(text)
    return s
