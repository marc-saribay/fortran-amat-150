SEVENTH PROGRAM
*Program to convert numeric grade into alphabet grade for N grade inputs
*(c)2001 by Marc Christian Saribay (I-1L)
*Compile Date: July 31, 2001

c     Declare all variables
      CHARACTER GRADE*2                         
      INTEGER N, COUNTER
      REAL X

c     Main Program
      PRINT*,'This is my seventh program'
10    PRINT*,'How many grades will be entered?'
      READ*,N
      COUNTER=1
      IF(N.GE.1)THEN
20      IF(COUNTER.LE.N)THEN
          PRINT*,'Enter grade'
          READ*,X
          IF((X.LE.100).AND.(X.GE.95))THEN
            GRADE='A'
          ELSEIF((X.LT.95).AND.(X.GE.90))THEN
            GRADE='A-'
          ELSEIF((X.LT.90).AND.(X.GE.85))THEN
            GRADE='B'
          ELSEIF((X.LT.85).AND.(X.GE.80))THEN
            GRADE='B-'
          ELSEIF((X.LT.80).AND.(X.GE.75))THEN
            GRADE='C'
          ELSEIF((X.LT.75).AND.(X.GE.70))THEN
            GRADE='D'
          ELSEIF((X.LT.70).AND.(X.GE.65))THEN
            GRADE='E'
          ELSEIF(X.LT.65)THEN
            GRADE='F'
          ELSE
            PRINT*,'Grade out of range'
            GOTO 20
          ENDIF
          PRINT*,X,' = ',GRADE
          COUNTER=COUNTER+1
          GOTO 20
        ENDIF
      ELSE
        PRINT*,'Please enter a value greater than 0'
        GOTO 10
      ENDIF
      PRINT*,'Thank you for using my program!'
      END