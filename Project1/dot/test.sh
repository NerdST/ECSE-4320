#!/bin/bash

./dot_scalar --sweep --csv=dot_scalar_lin.csv
./dot_simd --sweep --csv=dot_simd_lin.csv
./dot_scalar --float64 --sweep --csv=dot_scalar_float64_lin.csv
./dot_simd --float64 --sweep --csv=dot_simd_float64_lin.csv
./dot_scalar --unaligned --sweep --csv=dot_scalar_unaligned_lin.csv
./dot_simd --unaligned --sweep --csv=dot_simd_unaligned_lin.csv
./dot_scalar --stride=2 --sweep --csv=dot_scalar_stride2_lin.csv
./dot_simd --stride=2 --sweep --csv=dot_simd_stride2_lin.csv