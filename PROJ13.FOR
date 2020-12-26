PROJECT 13 (Numerical Integration)
*Program to estimate the area of the given function using 4 methods.
*(c)2001 by Marc, Daniel & Jimson (AMAT150 I-1L)
*Compile Date: September 25, 2001

*     PROGRAM MAIN()
c     Declare variables
      INTEGER METHOD,N0
      REAL A0,B0,AREA,DELTAX0

c     Heading
      PRINT*,'************************************'
      PRINT*,'* NUMERICAL INTEGRATION v1.00      *'
      PRINT*,'* Program Authors:                 *'
      PRINT*,'*   Marc Christian Saribay         *'
      PRINT*,'*   Daniel A¤oso                   *'
      PRINT*,'*   Jimson Serrano                 *'
      PRINT*,'*   (AMAT150 I-1L)                 *'
      PRINT*,'* Date Created: September 25, 2001 *'
      PRINT*,'************************************'
    
c     Display Options
      PRINT*
      PRINT*,'This program will estimate the area of the given function'
      PRINT*,'NUMERICAL INTEGRATION METHODS'
      PRINT*,'1 - Rectangular Method'
      PRINT*,'2 - Midpoint Method'
      PRINT*,'3 - Trapezoidal Rule'
      PRINT*,'4 - Simpsons Rule'
      PRINT*,'Which method will you use?'
      PRINT*,'(Choose from 1-4, Enter 5 to Exit)'

c     Process
40    READ*,METHOD
      IF((METHOD.GE.1).AND.(METHOD.LE.5))THEN
        IF(METHOD.EQ.5)THEN
          GOTO 20
        ELSE
30        PRINT*,'Enter A (Lower bound)'
          READ*,A0
          PRINT*,'Enter B (Upper bound)'
          READ*,B0
          PRINT*,'Enter N (Number of Subintervals)'
          READ*,N0
          IF((A0.GE.0).AND.(A0.LT.B0).AND.(N0.GT.0))THEN
            DELTAX0=(B0-A0)/N0
            IF(METHOD.EQ.1)THEN
              CALL RECTANGULAR(A0,B0,N0,DELTAX0,AREA)
            ELSEIF(METHOD.EQ.2)THEN
              CALL MIDPOINT(A0,B0,N0,DELTAX0,AREA)
            ELSEIF(METHOD.EQ.3)THEN
              CALL TRAPEZOIDAL(A0,B0,N0,DELTAX0,AREA)
            ELSEIF(METHOD.EQ.4)THEN
10            IF(MOD(N0,2.0).EQ.0)THEN
                CALL SIMPSONS(A0,B0,N0,DELTAX0,AREA)
              ELSE
                PRINT*,'Please enter even number for N'
                READ*,N0
                GOTO 10
              ENDIF
            ENDIF
          ELSE
            PRINT*,'Please satisfy the following conditions:'
            PRINT*,'A must be greater than or equal to 0'
            PRINT*,'B must be greater than A'
            PRINT*,'N must be greater than 0'
            GOTO 30
          ENDIF
        ENDIF
      ELSE
        PRINT*,'Please choose from 1-5'
        GOTO 40
      ENDIF
      PRINT*,'The estimated area is',AREA 
20    END

**    SUBROUTINES

      SUBROUTINE RECTANGULAR(A,B,N,DELTAX,AREA)
cc    Declare variables
      INTEGER N,I
      REAL A,B,AREA,DELTAX,XSUBI,MIDDLE
      EXTERNAL FOFX

cc    Process
      PRINT*,'RECTANGULAR METHOD'
      XSUBI=A
      DO I=1,N
        XSUBI=XSUBI+DELTAX
        MIDDLE=MIDDLE+(FOFX(XSUBI))
      ENDDO
      AREA=DELTAX*MIDDLE
      RETURN
      END

      SUBROUTINE MIDPOINT(A,B,N,DELTAX,AREA)
cc    Declare variables
      INTEGER N,I
      REAL A,B,AREA,DELTAX,XSUBI,XSUBIP1,MIDDLE
      EXTERNAL FOFX

cc    Process
      PRINT*,'MIDPOINT METHOD'
      XSUBI=A
      DO I=1,N
        XSUBIP1=XSUBI+DELTAX
        MIDDLE=MIDDLE+((FOFX(XSUBI)+FOFX(XSUBIP1))/2)
        XSUBI=XSUBIP1
      ENDDO
      AREA=DELTAX*MIDDLE
      RETURN
      END

      SUBROUTINE TRAPEZOIDAL(A,B,N,DELTAX,AREA)
cc    Declare variables
      INTEGER N,I
      REAL A,B,AREA,DELTAX,XSUBI,MIDDLE
      EXTERNAL FOFX

cc    Process
      PRINT*,'TRAPEZOIDAL RULE'
      XSUBI=A
      DO I=1,N-1
        XSUBI=XSUBI+DELTAX
        MIDDLE=MIDDLE+(2*FOFX(XSUBI))
      ENDDO
      AREA=(DELTAX/2)*(FOFX(A)+MIDDLE+FOFX(B))
      RETURN
      END

      SUBROUTINE SIMPSONS(A,B,N,DELTAX,AREA)
cc    Declare variables
      INTEGER N,I
      REAL A,B,AREA,DELTAX,XSUBI,MIDDLE
      EXTERNAL FOFX

cc    Process
      PRINT*,'SIMPSONS RULE'
      XSUBI=A
      DO I=1,N-1
        XSUBI=XSUBI+DELTAX
        IF(MOD(I,2.0).EQ.0)THEN
          MIDDLE=MIDDLE+(2*FOFX(XSUBI))
        ELSE
          MIDDLE=MIDDLE+(4*FOFX(XSUBI))
        ENDIF
      ENDDO
      AREA=(DELTAX/3)*(FOFX(A)+MIDDLE+FOFX(B))
      RETURN
      END
      
***   FUNCTION SUBPROGRAM

      FUNCTION FOFX(X)
ccc   Declare varibles
      REAL FOFX,X

ccc   Process
      FOFX=(2**(-X))*(EXP(SIN(X)))
      RETURN
      END