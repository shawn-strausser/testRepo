PROGRAM HFI_RF
!  Purpose:
!    Computes the singlet yield for a system with one anisotropic HFI.
!
IMPLICIT NONE

!  Declare the variables used in this program
INTEGER, PARAMETER :: DOne = 2 ** 2 ! what is this? I'm not sure.
INTEGER, PARAMETER :: DSix = 2 ** 3 ! what is this?
INTEGER, PARAMETER :: pi = 3.1415926

! INTEGER :: j, k, m, n doesn't seem necessary since variables 
		 ! beginning with j, k, m, n are assumed to be integers in Fortran90

INTEGER tloop ! what is this?
INTEGER maxtloop ! what is this?
INTEGER thHFloop ! what is this?

DOUBLE PRECISION theta, phi ! angles for static field
DOUBLE PRECISION thetaOsc, phiOsc ! angles for oscillating field 
DOUBLE PRECISION tau, freq


DOUBLE COMPLEX ID2(2, 2)
DOUBLE COMPLEX sx(2, 2), sy(2, 2), sz(2, 2)
DOUBLE COMPLEX ix(2, 2), iy(2, 2), iz(2, 2)

!-------------------------------------------------
!	Defining Matrices
!-------------------------------------------------
!	identity matrices
!------------------------
ID2(1, 1) = (1.0d0, 0.0d0)
ID2(1, 2) = (0.0d0, 0.0d0)
ID2(2, 1) = (0.0d0, 0.0d0)
ID2(2, 2) = (1.0d0, 0.0d0)
!------------------------
!	Spin 1/2 matrices
!------------------------
sx(1, 1) = (0.0d0, 0.0d0)
sx(1, 2) = (0.5d0, 0.0d0)
sx(2, 1) = (0.5d0, 0.0d0)
sx(2, 2) = (0.0d0, 0.0d0)

sy(1, 1) = (0.0d0, 0.0d0)
sy(1, 2) = (0.0d0, -0.5d0)
sy(2, 1) = (0.0d0, 0.5d0)
sy(2, 2) = (0.0d0, 0.0d0)

sz(1, 1) = (0.5d0, 0.0d0)
sz(1, 2) = (0.0d0, 0.0d0)
sz(2, 1) = (0.0d0, 0.0d0)
sz(2, 2) = (-0.5d0, 0.0d0)

DO n = 1, 2
   DO m = 1, 2
      ix(m, n) = sx(m, n)
	iy(m, n) = sy(m, n)
	iz(m, n) = sz(m, n)
	END DO
END DO
	
WRITE (*, *) ix(1, 1)

STOP
END PROGRAM

