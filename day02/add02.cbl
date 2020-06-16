       IDENTIFICATION DIVISION. 
       PROGRAM-ID. ADD02.
       ENVIRONMENT DIVISION. 
       DATA DIVISION.

       WORKING-STORAGE SECTION. 

       01  FUNCTION-NUMBER   PICTURE IS 99.
       01  SECOND-NUMBER     PICTURE IS 99.
       01  THE-RESULT        PICTURE IS 999.

       PROCEDURE DIVISION.
       
       PROGRAM-BEGIN.
      * Modify add02.cbl from Listing 2.5 to display a message that 
           DISPLAY "Enter the first number.".

           ACCEPT FUNCTION-NUMBER.

           DISPLAY "Enter the second number.".

           ACCEPT SECOND-NUMBER.

           COMPUTE THE-RESULT = FUNCTION-NUMBER + SECOND-NUMBER.

           DISPLAY "The result is " THE-RESULT.


       PROGRAM-DONE.
           STOP RUN.
