PROJECT ELEVEN (Temperature Conversion)
*Program to convert degrees Celsius to Farenheit and vice versa
*(c)2001 by Marc Christian Saribay (I-1L)
*Compile Date: September 11, 2001

c     Declare variables
      REAL C,F,C2F,F2C
      INTEGER Choice

c     Statement Functions
      C2F(C)=(C*9)/5+32
      F2C(F)=(F-32)*5/9

c     Main Program
      PRINT*,'PROJECT 11: Temperature Conversion'
      PRINT*,'(c)2001 by Marc Christian Saribay (I-1L)'
10    PRINT*
      PRINT*,'Please enter the number of your choice'
      PRINT*,'1 - Celsuis to Farenheit conversion'
      PRINT*,'2 - Farenheit to Celsius conversion'
      PRINT*,'3 - End Program'
      READ*,Choice
      IF(Choice.EQ.1)THEN
20      PRINT*,'Enter a number (Celsius)'
        READ*,C
        PRINT*,C,'C =',C2F(C),'F'
      ELSEIF(Choice.EQ.2)THEN
30      PRINT*,'Enter a number (Farenheit)'
        READ*,F
        PRINT*,F,'F =',F2C(F),'C'
      ELSEIF(Choice.EQ.3)THEN
        GOTO 50
      ELSE
        PRINT*,'***Please choose from 1 to 3'
        GOTO 10
      ENDIF
      GOTO 10
50    PRINT*,'Thanks for using my program!'
      END