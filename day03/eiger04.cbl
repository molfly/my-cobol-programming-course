       IDENTIFICATION DIVISION. 
       PROGRAM-ID. EIGER04.
       ENVIRONMENT DIVISION. 
       DATA DIVISION. 

       WORKING-STORAGE SECTION. 

       01  THE-MESSAGE       PIC X(50).
       01  THE-NUMBER        PIC 9(2).
       01  A-SPACE           PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

      *    Initialize the space variable
           MOVE " " TO A-SPACE.
      *    Start THE-NUMBER at 0
           MOVE 0 TO THE-NUMBER.

      *    Set up and display line 1
           MOVE "The once was a lady from Eiger,"
              TO THE-MESSAGE.
           PERFORM ADD-NUMBER-AND-DISPLAY.
           
      * Set up and Display line 2
           MOVE "Who smiled and rode forth on a tiger."
                 TO THE-MESSAGE.
           PERFORM ADD-NUMBER-AND-DISPLAY.

      * Set up and display line 3 
           MOVE "They returned from the ride" TO THE-MESSAGE. 
           PERFORM ADD-NUMBER-AND-DISPLAY.           

      * Set up and display line 4
           MOVE "With the lady inside,"  TO THE-MESSAGE.
           PERFORM ADD-NUMBER-AND-DISPLAY.

      * Set up and display line 5
           MOVE "And the smile on the face of the tiger."
              TO THE-MESSAGE.
           PERFORM ADD-NUMBER-AND-DISPLAY.

       PROGRAM-DONE.
           STOP RUN.

       ADD-NUMBER-AND-DISPLAY.
           ADD 1 TO THE-NUMBER.
           DISPLAY 
                 THE-NUMBER 
                 A-SPACE 
                 THE-MESSAGE.
