  METHOD zpurchase_req_he_get_entityset.
SELECT
  Banfn
  Bnfpo
  Bsart
  Bstyp
  Bsakz
  Loekz
  Statu
  Estkz
  Frgkz
  Frgzu
  Frgst
  Ekgrp
  Ernam
  Erdat
  Afnam
  Txz01
  Matnr
  Ematn
  Werks
  Lgort
  Bednr
  Matkl
  Reswk
  Menge
  Meins
  Bumng
      FROM eban
      INTO CORRESPONDING FIELDS OF TABLE et_entityset.

**TRY.
*CALL METHOD SUPER->ZPURCHASE_REQ_HE_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  ENDMETHOD.