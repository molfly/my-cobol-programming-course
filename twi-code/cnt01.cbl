       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CNT01.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT MYFILE-FL1 ASSIGN TO       FILEDATCLT
                  ORGANIZATION  IS SEQUENTIAL
                  ACCESS MODE   IS SEQUENTIAL
                  FILE STATUS   IS FILEDATCLT-STATUS.


       DATA DIVISION. 
       FILE SECTION.
       FD  FILEDATCLT-FILE
           DATA RECORD    IS FILEDATCLT-REC                   
           01  FILEDATCLT-STATUS.
           05  FILEDATCLT-STATUS-L     pic X.
           05  FILEDATCLT-STATUS-R     pic X.
           01  FILEDATCLT-EOF          pic X       value 'N'.
           01  FILEDATCLT-OPEN-FLAG    pic X       value 'C'.
           01 RecordCount              PIC 99999 VALUE 0.
       WORKING-STORAGE SECTION.  

       PROCEDURE DIVISION.
           PERFORM FILEDATCLT-STATUS 
           VARYING RecordCount FROM 1 BY 1 UNTIL FILEDATCLT-EOF 

           DISPLAY "Total record count is= ", RecordCount 
           STOP RUN.
