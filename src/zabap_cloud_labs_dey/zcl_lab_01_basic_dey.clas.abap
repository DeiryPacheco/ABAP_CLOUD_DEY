CLASS zcl_lab_01_basic_dey DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_basic_dey IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


*C (Character): Utilizado para almacenar cadenas de caracteres. La longitud puede variar, pero se especifica al definir el tipo de dato.
*N (Numeric Text): Almacena caracteres numéricos (0-9) como texto, sin valor numérico.
*D (Date): Almacena fechas en el formato YYYYMMDD.
*T (Time): Almacena horas en el formato HHMMSS.
*I (Integer): Entero de 4 bytes, usado para almacenar números enteros.
*F (Floating Point): Para números de coma flotante, permitiendo la representación de valores decimales.
*P (Packed Number): Usado para valores numéricos empaquetados, incluyendo decimales. Especifica la longitud y los decimales.


   CONSTANTS: mc_PRICE TYPE f VALUE '10.5',
               mc_name  TYPE string VALUE 'DEIRY'.

    "Tipo de datos elementales
    DATA: mv_purchase_date TYPE d,
          mv_purchase_time TYPE t.

    mv_purchase_date = cl_abap_context_info=>get_system_date( ).
    mv_purchase_time = cl_abap_context_info=>get_system_time( ).
    out->write( | { mv_purchase_date DATE = USER } | ).
    out->write( | { mv_purchase_time TIME = USER } | ).

    DATA: mv_price TYPE f VALUE mc_PRICE,
          mv_tax   TYPE i VALUE 16.
    out->write( | { mv_price } | ).
    out->write( | { mv_tax } | ).

    DATA: mv_increase  TYPE decfloat16 VALUE '20.5',
          mv_discounts TYPE decfloat34 VALUE mc_PRICE.
    out->write( | { mv_increase } | ).
    out->write( | { mv_discounts } | ).

    DATA: mv_type     TYPE c LENGTH 10 VALUE 'PC',
          mv_shipping TYPE p LENGTH 8 DECIMALS 2 VALUE '40.36'.
    out->write( | { mv_type } | ).
    out->write( | { mv_shipping } | ).

    DATA: mv_id_code TYPE n LENGTH 4 VALUE '1110',
          mv_qr_code TYPE x LENGTH 5 VALUE 'F5CF'.
    out->write( | { mv_id_code } | ).
    out->write( | { mv_qr_code } | ).

    TYPES: BEGIN OF mty_customer,                   "DEFINICION DE TIPO ESTRUCTURADO
             id       TYPE i,
             customer TYPE c LENGTH 15,
             age      TYPE i,
           END OF mty_customer.

    DATA ls_customer TYPE mty_customer.             "INSTANCIA DE TIPO ESTRUCTURADO
    ls_customer = VALUE #( id = 1234 customer = mc_name age = 31 ).
    out->write( | { ls_customer-id } { ls_customer-customer } { ls_customer-age } | ).

    DATA ms_employees TYPE /dmo/employee_hr.
    ms_employees = VALUE #( first_name = mc_name last_name = 'PACHECO' salary = 1500 ).
    out->write( | { ms_employees-first_name } { ms_employees-last_name } { ms_employees-salary } | ).


    DATA: mv_product  TYPE string VALUE 'LAPTOP',
          mv_bar_code TYPE xSTRING VALUE '121210121211'.
    out->write( | { mv_product } | ).
    out->write( | { mv_bar_code } | ).

    DATA(lv_product) = mv_product.
    DATA(lv_bar_code) = mv_bar_code.
    out->write( | { lv_product } | ).
    out->write( | { lv_bar_code } | ).


  ENDMETHOD.
ENDCLASS.
