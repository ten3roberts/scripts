#!/bin/bash
cmake . -DCMAKE_EXPORT_COMPILE_COMMANDS=1
cmake . && make
