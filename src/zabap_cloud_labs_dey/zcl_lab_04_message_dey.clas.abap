CLASS zcl_lab_04_message_dey DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_04_message_dey IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


***************************2. FUNCIONES DE DESCRIPCION*******************************************
    DATA : lv_order_status TYPE String VALUE 'Purchase Completed Successfully',
           lv_char_number  TYPE i.
*   1. FUNCION STRLEN() = LONGITUD DE UN STRING (PUEDE TOMAR EN CUENTA LOS ESPACIOS AL FINAL)
    lv_char_number = strlen( lv_order_status ).
    out->write( | STRLEN() = { lv_char_number } | ).

*   2. FUNCION NUMOFCHAR() = LONGITUD DE UN STRING (NO TOMA EN CUENTA LOS ESPACIOS AL FINAL)
    lv_char_number = numofchar( lv_order_status ).
    out->write( | NUMOFCHAR() = { lv_char_number } | ).

*   3. FUNCION FIND SUBSTRING PARA ENCONTRAR LA PRIMERA OCURRENCIA DE UN SUBSTRING E IGNORANDO MAYUSCULAS Y MINUSCULAS
    FIND SUBSTRING 'A' IN lv_order_status MATCH COUNT lv_char_number IGNORING CASE.
    out->write( | FIND SUBSTRING = { lv_char_number } | ).

*   4. FUNCION FIND  ALL OCCURRENCES PARA ENCONTRAR TODAS LAS OCURRENCIAS DE UN SUBSTRING CONTANDO LA CANTIDAD DE APARICIONES E IGNORANDO MAYUSCULAS Y MINUSCULAS
    FIND ALL OCCURRENCES OF 'A' IN lv_order_status MATCH COUNT lv_char_number IGNORING CASE.
    out->write( | FIND ALL OCCURRENCES { lv_char_number } | ).

*   5. FUNCION FIND() ENCONTRAR TODAS LAS OCURRENCIAS DE UN SUBSTRING CONTANDO LA CANTIDAD DE APARICIONES E IGNORANDO MAYUSCULAS Y MINUSCULAS
    lv_char_number = find( val = lv_order_status sub = 'Exit' case = ' ' ).
    out->write( | FIND() = { lv_char_number } | ).

    IF contains( val = lv_order_status sub = 'Exit' ).
      out->write( | Si tiene el substring EXIT | ).
    ELSE.
      out->write( | No tiene el substring EXIT | ).
    ENDIF.

**************************3. FUNCIONES DE PROCESAMIENTO********************************************

    lv_order_status = to_upper( lv_order_status ).
    out->write( | TO_UPPER = { lv_order_status } | ).
    lv_order_status = to_lower( lv_order_status ).
    out->write( | TO_LOWER = { lv_order_status }  | ).
    lv_order_status = to_mixed( val = lv_order_status sep = ` ` case = 'X').
    out->write( | TO_MIXED = { lv_order_status } | ).


**************************4. FUNCIONES DE CONTENIDO************************************************
  DATA : LV_PATTERN TYPE String VALUE '\d{3}-\d{3}-\d{4}',
         LV_PHONE  TYPE String VALUE '665-532-735'.


**************************5. FUNCIONES CON EXPRESIONES REGULARES***********************************
    DATA lv_email TYPE string VALUE 'Agregar cualquier correo'.



  ENDMETHOD.
ENDCLASS.
