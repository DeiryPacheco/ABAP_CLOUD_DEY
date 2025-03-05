CLASS zcl_lab_03_datatypes_dey DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_03_datatypes_dey IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: mv_char      TYPE c LENGTH 10 VALUE '12345',      "Cadena de 10 caracteres
          mv_num       TYPE i,                              "Número entero
          mv_float     TYPE f,                              "Número con decimales

          mv_trunc     TYPE i,                              "Número entero
          mv_round     TYPE i,                              "Número entero

          mv_date_1    TYPE d,                              "Fecha
          mv_date_2    TYPE d,                              "Fecha
          mv_days      TYPE i,                              "Número entero
          mv_time      TYPE t,                              "Hora

          mv_timestamp TYPE utclong.

*  1. CONVERSION DE TIPO

    	mv_num = mv_char.
    	mv_float = mv_char.
    	out->write( | CONVERSION DE CHART A ENTERO = { mv_num } | ).
    	out->write( | CONVERSION DE CHART A FLOAT = { mv_float } | ).
    		
*  2. TRUNCAMIENTO Y REDONDEO
    mv_float = '123.45'.
    	mv_trunc = mv_float.
    	mv_float += '0.5'.
    	mv_round = mv_float.
    out->write( | TRUNCAMIENTO DE FLOAT A ENTERO = { mv_trunc } | ).
    out->write( | REDONDEO DE FLOAT A ENTERO = { mv_round } | ).

*  3. TIPOS EN DECLARACIONES EN LINEA

    DATA(lv_product) = 'ABAP'.
    out->write( | DECLARACION EN LINEA = { lv_product } | ).

*  4. CONVERSIONES DE TIPO FORZADO

    mv_num = CONV i( mv_char ).
    out->write( | CONVERSIONES DE TIPO FORZADO = { mv_num } | ).

*  5. CALCULO DE FECHA Y HORA

    mv_date_1 = '20250101'.
    mv_date_2 = '20250131'.
    mv_days = mv_date_2 - mv_date_1.

    out->write( | FECHA 1 = { mv_date_1 } | ).
    out->write( | FECHA 2 = { mv_date_2 } | ).
    out->write( | DIAS DE DIFERENCIA ENTRE FECHA 1 Y 2 = { mv_days } | ).
    out->write( | FECHA 1 EN FORMATO DDMMAAAA = { mv_date_1+6(2) }{ mv_date_1+4(2) }{ mv_date_1+0(4) } | ).
    out->write( | FECHA 2 EN FORMATO DDMMAAAA = { mv_date_2+6(2) }{ mv_date_2+4(2) }{ mv_date_2+0(4) } | ).

*  6. CAMPOS TIMESTAMP

    mv_timestamp = utclong_current( ).

    CONVERT UTCLONG mv_timestamp
    TIME ZONE cl_abap_context_info=>get_user_time_zone( )
    INTO DATE mv_date_2
    TIME mv_time.

    out->write( | UTCLONG = { mv_timestamp } | ).
    out->write( | FECHA DE UTCLONG = { mv_date_2 } | ).
    out->write( | HORA DE UTCLONG = { mv_time } | ).

    mv_date_2 -= 2.
    out->write( | FECHA DE UTCLONG MENOS 2 DIAS = { mv_date_2 } | ).


  ENDMETHOD.
ENDCLASS.
