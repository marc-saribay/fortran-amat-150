PROJECT TWELVE (Solving Factorial Problems using Function Subprogram)
*Program to compute for N!/(K!(N-K!)) using Function Subprogram
*(c)2001 by Marc Christian Saribay - AMAT150 (I-1L)
*Compile Date: September 18, 2001 (Fortran Code)

c     Main Program
*     PROGRAM FACTORIAL

c     Declare variables
      REAL N,K,L,FACTORIAL,NUM,DEN1,DEN2,SOLN
      INTEGER RETRY, ERRORCTR

c     Heading
      PRINT*,'******************************************************'
      PRINT*,'* Project 12: Factorial Problem                      *'
      PRINT*,'* (c)2001 by Marc Christian Saribay - AMAT150 (I-1L) *'
      PRINT*,'* Compile Date: September 18, 2001 (Fortran Code)    *'
      PRINT*,'******************************************************'

c     Initialize Error Counter
      ERRORCTR=0

c     Read Inputs
10    PRINT*
      PRINT*,'To solve for N!/K!(N-K!)'
      PRINT*
      PRINT*,'Enter a value for N'
      READ*,N         
      PRINT*,'Enter a value for K'
      READ*,K

c     Process Inputs
      NUM=FACTORIAL(N)
      DEN1=FACTORIAL(K)
      DEN2=N-DEN1
      SOLN=NUM/(DEN1*DEN2)

c     Display Process
      PRINT*
      PRINT*,'N!          =',NUM
      PRINT*,'K!          =',DEN1
      PRINT*,'N-K!        =',DEN2
      PRINT*
      PRINT*,'The answer is'
      PRINT*,'N!/K!(N-K!) =',SOLN

c     Retry Program
20    PRINT*
      PRINT*,'Enter another values? (1-Yes/2-No)'
      READ*,RETRY
      IF(RETRY.EQ.1)THEN
        GOTO 10
      ELSEIF(RETRY.EQ.2)THEN
        GOTO 30
      ELSE
        IF(ERRORCTR.LT.2)THEN
          PRINT*,'***Please answer (1 for Yes) or (2 for No)'
          ERRORCTR=ERRORCTR+1
          GOTO 20
        ELSE
          PRINT*,'***COME ON, STOP FOOLING ME AROUND!' !//just for fun
          ERRORCTR=0
          GOTO 20
        ENDIF
      ENDIF

c     Program End
30    PRINT*
      PRINT*,'Thanks for using my PROJECT 12!'
      END

        
cc    Function Subprogram
      FUNCTION FACTORIAL(X)         !//Function to Compute Factorial

cc      Declare variables
        REAL X
        INTEGER I

cc      Factorial Computation
        FACTORIAL=1
        IF(X.EQ.0)THEN              !//0! is given
          FACTORIAL=1
        ELSEIF(X.LT.0)THEN          !//-A! is given, A is any real no
          DO I=2, X, -1
            FACTORIAL=FACTORIAL*I   
          ENDDO
        ELSE                        !//A! is given, A is any real no
          DO I=2, X
            FACTORIAL=FACTORIAL*I
          ENDDO
        ENDIF
      RETURN
      END