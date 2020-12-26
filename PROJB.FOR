PROJECT BETA (NUMBER GUESS)
*(c)2001 by Marc Christian Saribay

c     Declare variables
      INTEGER Range,Guess,Card,Initial,Number,Ctr1,Ctr2,Ask

c     Heading
      Print*,'PROJECT BETA (Number Guess)'
      Print*,'This program will guess the number in your mind'
      Print*,'Think of a number from 1 to 30'
      Print*,'(c)2001 by Marc Christian Saribay'

c     Main Program
      Range=30
      Guess=0
      Card=1
      Initial=1
10    If(Initial.LE.Range)Then
        Print*,'Card',Card
        Number=Initial
        Ctr1=1
        Ctr2=1
20      If(Range.GE.Number)Then
          If(Ctr1.LE.Initial)Then
            Print*,Number
            Number=Number+1
            Ctr1=Ctr1+1
          Else
            If(Ctr2.LE.Initial)Then
              Number=Number+1
              Ctr2=Ctr2+1
            Else
              Ctr1=1
              Ctr2=1
            Endif
          Endif
          Goto 20
        Endif
30      Print*,'Is your number in this card? (1-Yes/2-No)'
        Read*,Ask
        If(Ask.EQ.1)Then
          Guess=Guess+Initial
          Card=Card+1
          Initial=Initial*2
          Goto 10
        ElseIf(Ask.EQ.2)Then
          Card=Card+1
          Initial=Initial*2
          Goto 10
        Else
          Print*,'Please enter 1 for Yes or 2 for No'
          Goto 30
        Endif
      Else
        If(Guess.GT.Range)Then
          Print*,'Please look carefully and answer honestly!'
        Else
          Print*,'The Number is',Guess
        Endif
      Endif
      End