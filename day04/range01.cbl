       IDENTIFICATION DIVISION. 
       PROGRAM-ID. RANGE01. 
      *-----------------------------------------------
      * ASKS USER FOR A NUMBER BETWEEN 10 AND 100 
      * EXCLUSIVE AND PRINTS A MESSAGE IF THE ENTRY 
      * IS IN RANGE. 
      *-----------------------------------------------
       ENVIRONMENT DIVISION. 
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       
       01  THE-NUMBER           PIC 999. 
       
       PROCEDURE DIVISION. 
       PROGRAM-BEGIN. 
       
           PERFORM GET-THE-NUMBER. 
           
           PERFORM CHECK-THE-NUMBER.
            
       PROGRAM-DONE. 
           STOP RUN. 
           
       GET-THE-NUMBER. 
           DISPLAY "Enter a number greater than 10". 
           DISPLAY "and less than 100. (011-099)". 
           ACCEPT THE-NUMBER. 
            
       CHECK-THE-NUMBER. 
           IF THE-NUMBER > 10 AND 
               THE-NUMBER < 100 
                DISPLAY "The number is in range.".
           