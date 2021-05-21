#!/usr/bin/env bash
cmake . -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF -DWITH_TLS=ON
make


