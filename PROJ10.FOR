PROJECT TEN
*Program to locate the position of the smallest element
*(c)2001 by Marc Christian Saribay (I-1L)
*Compile Date: August 28, 2001

c      Declare variables
       INTEGER I,N,POS
       REAL A(100),SMALL

c      Main Program
       PRINT*,'PROJECT 10 (Location of Smallest Element)'
       PRINT*,'(c)2001 by Marc Christian Saribay (I-1L)'
10     PRINT*,'Enter number of elements'
       READ*,N
       IF((N.GE.1).AND.(N.LE.100))THEN
         PRINT*,'Number of Elements = ',N
         DO I=1,N
           PRINT*,'Enter Element ',I,' of ',N
           READ*,A(I)
         ENDDO
         SMALL=A(1)
         POS=1
         DO I=1,N-1
           IF(SMALL.GT.A(I+1))THEN
             SMALL=A(I+1)
             POS=I+1
           ENDIF
         ENDDO
         DO I=1,N
           IF(SMALL.EQ.A(I))THEN
             PRINT*,'Element ',I,' contains the smallest element',SMALL
           ENDIF
         ENDDO
       ELSE
         PRINT*,'Please enter a value from 1 to 100'
         GOTO 10
       ENDIF
       END