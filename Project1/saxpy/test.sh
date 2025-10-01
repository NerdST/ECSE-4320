#!/bin/bash

./saxpy_scalar --sweep --csv=saxpy_scalar_lin.csv
./saxpy_simd --sweep --csv=saxpy_simd_lin.csv
./saxpy_scalar --float64 --sweep --csv=saxpy_scalar_float64_lin.csv
./saxpy_simd --float64 --sweep --csv=saxpy_simd_float64_lin.csv
./saxpy_scalar --unaligned --sweep --csv=saxpy_scalar_unaligned_lin.csv
./saxpy_simd --unaligned --sweep --csv=saxpy_simd_unaligned_lin.csv
./saxpy_scalar --stride=2 --sweep --csv=saxpy_scalar_stride2_lin.csv
./saxpy_simd --stride=2 --sweep --csv=saxpy_simd_stride2_lin.csv