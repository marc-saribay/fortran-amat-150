SIXTH PROGRAM (TRAVEL TIME OF ELECTRONS FROM CATHODE TO ANODE)
!(c)2001 by Marc Christian Saribay (I-1L)
!Compile Date: July 17, 2001

      REAL Q,M,V,R1,R2,Z,TIME,X             !Declare variables
      PRINT*,'This is my sixth program'
      Q=(1.60206)**(-19)                  !Define constant values
      M=(9.1083)**(-31)                       
10    PRINT*,'Enter the value of voltage'
      READ*,V
      PRINT*,'Enter the value of the radius of the inner tube (cathode)'
      READ*,R1
      PRINT*,'Enter the value of the radius of the outer tube (anode)'
      READ*,R2
      Z=LOG(R2/R1)                        !Compute for Z and time
      X=SQRT((2*M)/(Q*V))
      TIME=X*R1*Z*(1+(Z/3)+((Z**2)/10)+((Z**3)/42)+((Z**4)/216))
      PRINT*,'The value of voltage is',V,'V'
      PRINT*,'The value of the radius of cathode is',R1,'mm'
      PRINT*,'The value of the radius of anode is',R2,'mm'
      PRINT*,'The travel time is',TIME,' seconds'
20    PRINT*,'Retry? (1-Yes, 2-No)'
      READ*,RETRY
      IF(RETRY.EQ.1)THEN
        GOTO 10
      ELSEIF(RETRY.EQ.2)THEN
        GOTO 30
      ELSE
        PRINT*,'Invalid Entry'
        GOTO 20
      ENDIF
30    PRINT*,'Thank you for using my program!'
      END