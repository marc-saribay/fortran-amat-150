FOURTH PROGRAM

      PRINT*,'THIS IS MY FOURTH PROGRAM'
      PRINT*,'ENTER VALUE OF N'
      READ*,N
      COUNT=1
10    IF(COUNT.LE.N)THEN
        PRINT*,'ENTER VALUE OF X'
        READ*,X
        SUM=SUM+X
        IF(COUNT.EQ.N)THEN
          AVE=SUM/N
          PRINT*,AVE
        ELSE
          COUNT=COUNT+1
          GOTO 10
        ENDIF
      ENDIF
      END