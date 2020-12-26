PROJECT ELEVEN (Bisection Method)
*Program to implement the Bisection method to find roots of a function
*(c)2001 by Marc Christian Saribay (I-1L)
*Comile Date: September 11, 2001

c     Declare variables
      REAL A,B,X,F,E,M(200)

c     Statement Function
      F(X)=(2**(-X))*SIN(X)

c     Initialize Values
      E=0.0001         !Epsilon value (Termination purpose)
      I=1              !Initial Value of I

c     Heading
      PRINT*,'PROJECT 11: Bisection Method'
      PRINT*,'(c)2001 by Marc Christian Saribay (I-1L)'

c     Ask for Inputs (A and B)
      PRINT*,'Enter A (lower bound)'
      READ*,A
      PRINT*,'Enter B (upper bound)'
      READ*,B
      GOTO 20

c     Program Analysis
10    IF(ABS(M(I)-M(I-1)).GE.E)THEN
20      IF((F(A)*F(B)).LE.0)THEN
          M(I)=((B-A)/2.0)+A
          IF((F(A)*F(M(I))).LE.0)THEN
            B=M(I)     !Bound shifting
            I=I+1
            GOTO 10
          ELSE
            A=M(I)     !Bound shifting
            I=I+1
            GOTO 10
          ENDIF
        ELSE
          PRINT*,'***RESULT: No root found!'
          GOTO 30
        ENDIF
      ELSE
      PRINT*,'***RESULT: An approximate root value found!'
        PRINT*,'The root is',F(M(I))   !Display root
      ENDIF
30    END