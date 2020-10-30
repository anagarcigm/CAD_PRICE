*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 28.10.2020 at 13:40:44
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZCAD_STOCK......................................*
DATA:  BEGIN OF STATUS_ZCAD_STOCK                    .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCAD_STOCK                    .
CONTROLS: TCTRL_ZCAD_STOCK
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZCAD_STOCK                    .
TABLES: ZCAD_STOCK                     .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
