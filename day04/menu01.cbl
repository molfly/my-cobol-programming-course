       IDENTIFICATION DIVISION. 
       PROGRAM-ID. MENU01.
      *--------------------------------------------------
      * THIS PROGRAM DISPLAYS A THREE CHOICE MENU OF 
      * MESSAGES THAT CAN BE DISPLAYED. 
      * THE USER ENTERS THE CHOICE, 1, 2 OR 3, AND 
      * THE APPROPRIATE MESSAGE IS DISPLAYED. 
      * AN ERROR MESSAGE IS DISPLAYED IF AN INVALID 
      * CHOICE IS MADE.
      *-------------------------------------------------- 
       ENVIRONMENT DIVISION. 
       DATA DIVISION. 
       WORKING-STORAGE SECTION.

       01  MENU-PICK            PIC 9.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           PERFORM GET-THE-MENU-PICK.

           PERFORM DO-THE-MENU-PICK.

       PROGRAM-DONE.
           STOP RUN.

      * LEVEL 2 ROUTINES
       GET-THE-MENU-PICK.

           PERFORM DISPLAY-THE-MENU.
           PERFORM GET-THE-PICK.

       DO-THE-MENU-PICK.
           IF MENU-PICK < 1 OR 
              MENU-PICK > 3
               DISPLAY "Invalid selection".

           IF MENU-PICK = 1
              DISPLAY "One for the money.".

           IF MENU-PICK = 2
              DISPLAY "Two for the show.".

           IF MENU-PICK = 3
              DISPLAY "The to get ready.".

      * LEVEL 3 ROUTINES
       DISPLAY-THE-MENU.
           DISPLAY "Please enter the number of the message".
           DISPLAY "that you wish to display.".
      * Display a blank line
           DISPLAY " ".
           DISPLAY "1. First Message".
           DISPLAY "2. Second Message".
           DISPLAY "3. Third Message".
      * Display a blank line
           DISPLAY " ".
           DISPLAY "Your selection (1-3)?".

       GET-THE-PICK.
           ACCEPT MENU-PICK.
    