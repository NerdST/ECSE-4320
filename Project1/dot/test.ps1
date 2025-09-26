# Run the following command in Git Bash on Windows
# ./saxpy_scalar.exe --sweep --csv=saxpy_scalar_win.csv
# ./saxpy_simd.exe --sweep --csv=saxpy_simd_win.csv
# ./saxpy_scalar.exe --float64 --sweep --csv=saxpy_scalar_float64_win.csv
# ./saxpy_simd.exe --float64 --sweep --csv=saxpy_simd_float64_win.csv
# ./saxpy_scalar.exe --unaligned --sweep --csv=saxpy_scalar_unaligned_win.csv
# ./saxpy_simd.exe --unaligned --sweep --csv=saxpy_simd_unaligned_win.csv
# ./saxpy_scalar.exe --stride=2 --sweep --csv=saxpy_scalar_stride2_win.csv
# ./saxpy_simd.exe --stride=2 --sweep --csv=saxpy_simd_stride2_win.csv
# Run dot instead
.\dot_scalar.exe --sweep --csv=dot_scalar_win.csv
.\dot_simd.exe --sweep --csv=dot_simd_win.csv
.\dot_scalar.exe --float64 --sweep --csv=dot_scalar_float64_win.csv
.\dot_simd.exe --float64 --sweep --csv=dot_simd_float64_win.csv
.\dot_scalar.exe --unaligned --sweep --csv=dot_scalar_unaligned_win.csv
.\dot_simd.exe --unaligned --sweep --csv=dot_simd_unaligned_win.csv
.\dot_scalar.exe --stride=2 --sweep --csv=dot_scalar_stride2_win.csv
.\dot_simd.exe --stride=2 --sweep --csv=dot_simd_stride2_win.csv