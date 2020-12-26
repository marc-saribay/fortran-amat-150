PROGRAM TO COMPUTE THE AREA OF A TRIANGLE
!(c)2001 by Marc Christian Saribay (I-1L)
!Compile Date: July 10, 2001 

      PRINT*,'This is my fifth program'
5     PRINT*,'Choose kind of input (1-vertices, 2-sides)'
      READ*,INPUT
      IF(INPUT.EQ.1)THEN
        PRINT*,'Enter 1st coordinate'
        READ*,X1,Y1
        PRINT*,'Enter 2nd coordinate'
        READ*,X2,Y2
        PRINT*,'Enter 3rd coordinate'
        READ*,X3,Y3
      ELSEIF(INPUT.EQ.2)THEN
        PRINT*,'Enter 1st side'
        READ*,A
        PRINT*,'Enter 2nd side'
        READ*,B
        PRINT*,'Enter 3rd side'
        READ*,C
        GOTO 10
      ELSE
        PRINT*,'Choose 1 or 2 only!'
        GOTO 5
      ENDIF
      A=SQRT((X1-X2)**2+(Y1-Y2)**2)     
      B=SQRT((X1-X3)**2+(Y1-Y3)**2)     
      C=SQRT((X2-X3)**2+(Y2-Y3)**2)
10    S=(A+B+C)/2
      AREA=SQRT(S*(S-A)*(S-B)*(S-C))
      PRINT*,'The area of the triangle is',AREA
      END