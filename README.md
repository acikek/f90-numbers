```sh
gfortran numbers.f90 -o numbers
./numbers
```

Input an integer and enjoy the display.

## Notes

This program aims to demonstrate:

* Allocatable, dynamic, do-while implied array creation
* How an array can be passed through a subroutine and then put on display

This is **not** the optimal approach.
The included subroutine is built to take an array with any numbers and any amount.
