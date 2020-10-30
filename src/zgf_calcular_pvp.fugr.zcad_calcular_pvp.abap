FUNCTION zcad_calcular_pvp.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(NUMERO_PIEZAS) TYPE  INT1
*"     REFERENCE(PRODUCT) TYPE  ZE_CODPRODUCT
*"     REFERENCE(SAVE_STOCK) TYPE  CHAR1 OPTIONAL
*"  EXPORTING
*"     REFERENCE(PRECIO) TYPE  ZE_IMPORTETOT
*"     REFERENCE(CONTROL_STOCK) TYPE  SY-SUBRC
*"----------------------------------------------------------------------
  DATA: lv_price TYPE price_def,
        lv_stock TYPE ze_stock.

  CLEAR: precio, control_stock.

  IF save_stock EQ abap_true.

    SELECT SINGLE stock INTO lv_stock
      FROM zcad_stock
      WHERE idproduct = product.

    SUBTRACT numero_piezas FROM lv_stock.
    UPDATE zcad_stock SET stock = lv_stock
    WHERE idproduct = product.
    IF sy-subrc NE 0.
      control_stock = '4'.
    ENDIF.
  ELSE.
    SELECT SINGLE price INTO lv_price
      FROM zcad_price
      WHERE idproduct = product.
    IF sy-subrc EQ 0.
      precio = lv_price * numero_piezas.

      SELECT SINGLE stock INTO lv_stock
         FROM zcad_stock
         WHERE idproduct = product.

      IF sy-subrc EQ 0 AND
          lv_stock >= numero_piezas.
        control_stock = '0'.
      ELSE.
        control_stock = '4'.
        EXIT.
      ENDIF.
    ENDIF.

  ENDIF.

ENDFUNCTION.
