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


**************************2. FUNCIONES DE DESCRIPCION***********************************************
*ANALIZAR EL CONTENIDO DE UNA CADENA DE CARACTERES DEVOLVIENDO UN NUMERO POR EJEMPLO (POSICION, CANTIDAD DE APARICIONES)
*EJEMPLOS: FIND(), NUMOFCHART(), STRLEN(), COUNT()
*PARAMETROS QUE SE USAN DENTRO DE LAS FUNCIONES
*val - Input Value
*sub - Substring
*regex - Regular Expression
*case - Uppercase and Lowercase
*occ - Occurrence
*off, len - Offset and Length

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
*CUANDO SE NECESITA TRANSFORMAR UNA CADENA DE CARACTERES EN OTRA CADENA
*EJEMPLOS: REPLACE(), TO_UPPER(), TO_LOWER(), TO_MIXED(), CONDENSE(), REPEAT(), REVERSE()


    out->write( | TO_UPPER = { to_upper( lv_order_status ) } | ).

    out->write( | TO_LOWER = {  to_lower( lv_order_status ) }  | ).

    out->write( | TO_MIXED = { to_mixed( val = lv_order_status sep = ` ` case = 'X' ) } | ).
    out->write( | FROM_MIXED = { from_mixed( val = lv_order_status case = 'X' ) } | ).

    lv_order_status = shift_left( val = lv_order_status circular = 9 ).
    out->write( | shift_left circular = { lv_order_status } | ).
    lv_order_status = shift_right( val = lv_order_status circular = 9 ).
    out->write( | shift_right circular = { lv_order_status } | ).

    out->write( | substring = { substring( val = lv_order_status off = 8 len = 9 ) } | ).
    lv_order_status = reverse( val = lv_order_status ).
    out->write( | REVERSE = { lv_order_status } | ).


**************************4. FUNCIONES DE PREDICADO O CONTENIDO************************************
*TAMBIEN ANALIZA EL CONTENIDO DE UNA CADENA PERO ESTAS RETORNAN VALORES BOOLEANOS
*EJEMPLOS CONTAINS(),
    DATA : lv_pattern TYPE String VALUE '\d{3}-\d{3}-\d{4}',
           lv_phone   TYPE String VALUE '665-532-735'.


    IF contains( val = lv_phone pcre = lv_pattern ).
      out->write( | TELEFONO CON FORMATO CORRECTO | ).
    ELSE.
      out->write( | TELEFONO CON FORMATO INCORRECTO | ).
    ENDIF.

**************************5. FUNCIONES CON EXPRESIONES REGULARES***********************************
    DATA lv_email TYPE string VALUE 'DEYNVS@GMAIL.COM'.
    lv_pattern = '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b'.

    IF contains( val = lv_email pcre = lv_pattern ).
      out->write( | CORREO CON FORMATO CORRECTO | ).
    ELSE.
      out->write( | CORREO CON FORMATO INCORRECTO | ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
