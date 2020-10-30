*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 29.10.2020 at 10:58:34
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZCAD_PRICE......................................*
DATA:  BEGIN OF STATUS_ZCAD_PRICE                    .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZCAD_PRICE                    .
CONTROLS: TCTRL_ZCAD_PRICE
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZCAD_PRICE                    .
TABLES: ZCAD_PRICE                     .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
