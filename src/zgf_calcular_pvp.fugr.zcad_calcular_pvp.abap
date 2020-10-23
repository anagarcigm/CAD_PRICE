FUNCTION zcad_calcular_pvp.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(NUMERO_PIEZAS) TYPE  INT1
*"     REFERENCE(PRODUCT) TYPE  ZE_CODPRODUCT
*"  EXPORTING
*"     REFERENCE(PRECIO) TYPE  ZE_IMPORTETOT
*"----------------------------------------------------------------------
  DATA: lv_price TYPE price_def.

  CLEAR precio.
  SELECT SINGLE price INTO lv_price
    FROM zcad_price
    WHERE idproduct = product.
  IF sy-subrc EQ 0.
    precio = lv_price * numero_piezas.
  ENDIF.

ENDFUNCTION.
