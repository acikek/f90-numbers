program numbers
  implicit none

  integer, allocatable :: arr(:)
  integer :: n, i
  logical :: has_input = .false.

  100 if (has_input) then
    print "(a)", "Not a number."
  end if

  write(*, "(a)", advance="no") "Input a number: "
  has_input = .true.
  read(*, *, err=100) n

  allocate(arr(n))
  arr = [(i, i = 1, n)]

  print "(a, i0, a)", "Numbers from 1 to ", n, ":"
  call print_int_arr(arr)
  write(*, "(a)", advance="no") "Press ENTER to exit."

  read(*, *) ! Await input to exit program

contains
  subroutine print_int_arr(arr)
    implicit none

    integer, dimension(:), intent(in) :: arr

    integer :: i, arr_size
    character(2) :: append

    append = ", "
    arr_size = size(arr)

    do i = 1, arr_size
      if (i == arr_size) then
        append = ""
      end if

      write(*, "(i0, a)", advance="no") arr(i), append
    end do

    write(*, "(a)") new_line("a")
  end subroutine print_int_arr
end program numbers