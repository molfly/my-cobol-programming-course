       IDENTIFICATION DIVISION. 
       PROGRAM-ID. HELLO05.

      *    This program illustrates the incorrect placement of a
      *    Paragraph that is the is the target of a perform

       ENVIRONMENT DIVISION. 
       DATA DIVISION. 
       PROCEDURE DIVISION.

       PROGRAM-BEGIN.
           DISPLAY "Today's massege is:".
           PERFORM SAY-HELLO.

       SAY-HELLO.
           DISPLAY "Hello world".

       PROGRAM-DONE.
           STOP RUN.
