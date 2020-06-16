       IDENTIFICATION DIVISION. 
       PROGRAM-ID. HELLO05A.

      *    This program illustrates the incorrect placement of a
      *    Paragraph that is the is the target of a perform

       ENVIRONMENT DIVISION. 
       DATA DIVISION. 
       PROCEDURE DIVISION.

       PROGRAM-BEGIN.
           DISPLAY "Today's massege is:".
           PERFORM SAY-HELLO.
           PERFORM SAY-HELLO.


       PROGRAM-DONE.
           STOP RUN.

       SAY-HELLO.
           DISPLAY "Hello world".
