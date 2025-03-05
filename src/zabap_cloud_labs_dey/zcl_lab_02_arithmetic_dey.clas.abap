CLASS zcl_lab_02_arithmetic_dey DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_02_arithmetic_dey IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lv_base_rate            TYPE i VALUE 20,
          lv_corp_area_rate       TYPE i VALUE 10,
          lv_medical_service_rate TYPE i VALUE 15,
          lv_total_rate           TYPE i,

          lv_maintenance_rate     TYPE i VALUE 30,
          lv_margin_rate          TYPE i VALUE 10,

          lv_package_weight       TYPE i VALUE 2,
          lv_cost_per_kg          TYPE i VALUE 3,
          lv_multi_rate           TYPE i,

          lv_total_weight         TYPE i VALUE 38,
          lv_num_packages         TYPE i VALUE 4,
          lv_applied_rate         TYPE p LENGTH 8 DECIMALS 2,

          lv_total_cost           TYPE i VALUE 17,
          lv_discount_threshold   TYPE i VALUE 4,
          lv_result               TYPE p LENGTH 4 DECIMALS 2,

          lv_total_cost2          TYPE i VALUE 19,
          lv_remainder            TYPE p LENGTH 4 DECIMALS 2,

          lv_weight               TYPE i VALUE 5,
          lv_expo                 TYPE i,
          lv_square_root          TYPE i VALUE 20.


*   1. SUMA / SENTENCIA ADD

    lv_total_rate = lv_base_rate + lv_corp_area_rate + lv_medical_service_rate.

    ADD 5 TO lv_total_rate.

    out->write( | SUMA = { lv_total_rate } | ).

*   2. RESTA / SENTENCIA SUBTRACT

    lv_base_rate = lv_maintenance_rate - lv_margin_rate.

    SUBTRACT 4 FROM lv_base_rate.

    out->write( | RESTA = { lv_base_rate } | ).

*   3. MULTIPLICACION / SENTENCIA MULTIPLY

    lv_multi_rate = lv_package_weight * lv_cost_per_kg.

    MULTIPLY lv_multi_rate BY 2.

    out->write( | MULTIPLICACION = { lv_multi_rate } | ).

*   4. DIVISION / SENTENCIA DIVIDE

    lv_applied_rate = lv_total_weight / lv_num_packages.

    DIVIDE lv_applied_rate BY 3.

    out->write( | DIVISION = { lv_applied_rate } | ).

*   5. DIVISION SIN RESTO / SENTENCIA DIV

    lv_result = lv_total_cost DIV lv_discount_threshold.

    out->write( | DIVISION SIN RESTO = { lv_result } | ).

*   6. RESTO DE DIVISION / SENTENCIA MOD

    lv_remainder = lv_total_cost2 MOD lv_discount_threshold.

    out->write( | RESTO DE DIVISION = { lv_remainder } | ).

*   7. EXPONENCIACION

    lv_expo = lv_weight ** 2.

    out->write( | EXPONENCIACION = { lv_expo } | ).

*   8. RAIZ CUADRADA / SENTENCIA SQRT

    lv_square_root = sqrt( lv_expo ).

    out->write( | RAIZ CUADRADA = { lv_square_root } | ).

  ENDMETHOD.
ENDCLASS.
