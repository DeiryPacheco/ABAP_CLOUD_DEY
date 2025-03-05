CLASS zcl_convenciones_de_nombres DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_convenciones_de_nombres IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

******En ABAP, las convenciones de nombres son fundamentales para garantizar que el código sea comprensible, legible y fácil de mantener,
******   especialmente en proyectos grandes y equipos múltiples. Aquí te detallo algunas de las principales convenciones utilizadas en SAP ABAP:
******
******1. **Convenciones de Prefijos para Variables**
******   Los prefijos indican el tipo de datos de la variable y su ámbito de uso. Las convenciones más comunes son:
******
******   - **`lv_`**: Local variable (variable local)
******     Ejemplo: `lv_counter`, `lv_amount`
******
******   - **`gv_`**: Global variable (variable global)
******     Ejemplo: `gv_total_sales`
******
******   - **`ev_`**: Exporting parameter (parámetro de exportación)
******     Ejemplo: `ev_result`
******
******   - **`iv_`**: Importing parameter (parámetro de importación)
******     Ejemplo: `iv_customer_id`
******
******   - **`cv_`**: Changing parameter (parámetro de cambio)
******     Ejemplo: `cv_status`
******
******   - **`mv_`**: Modification variable (variable de modificación)
******     Ejemplo: `mv_message`
******
******   - **`lv_`**: Local variable (variable local)
******     Ejemplo: `lv_sum`
******
******2. **Convenciones de Nombres de Funciones y Métodos**
******   Los métodos y funciones deben tener nombres descriptivos que indiquen claramente su propósito. Se suele usar el siguiente estilo:
******
******   - **`z_`**: Prefijo para funciones o programas personalizados, ya que "Z" o "Y" se utilizan para objetos de desarrollo en SAP que son personalizados (no estándar).
******     Ejemplo: `ZGET_USER_DATA`
******
******   - **`get_`**: Para funciones o métodos que recuperan datos.
******     Ejemplo: `get_employee_details()`
******
******   - **`set_`**: Para funciones o métodos que modifican datos.
******     Ejemplo: `set_customer_address()`
******
******   - **`check_`**: Para funciones o métodos que realizan comprobaciones.
******     Ejemplo: `check_order_status()`
******
******3. **Convenciones de Nombres de Tablas y Estructuras**
******   Las tablas internas y estructuras deben tener nombres descriptivos y deben seguir ciertas convenciones de prefijo. Por ejemplo:
******
******   - **`it_`**: Para tablas internas.
******     Ejemplo: `it_customers`
******
******   - **`et_`**: Para tablas de exportación.
******     Ejemplo: `et_orders`
******
******   - **`st_`**: Para estructuras.
******     Ejemplo: `st_employee_data`
******
******4. **Uso de Tipos de Datos**
******   En ABAP, es recomendable ser específico con los tipos de datos para mejorar la legibilidad y el mantenimiento del código.
******
******   - **`CHAR`** para cadenas de caracteres de longitud fija.
******   - **`STRING`** para cadenas de caracteres de longitud variable.
******   - **`INT` o `I`** para enteros.
******   - **`DEC`** para números decimales.
******   - **`DATE` y `TIME`** para fechas y horas.
******
******5. **Convenciones de Comentarios**
******   - **Comentarios de cabecera**: Es importante incluir comentarios en el inicio de cada programa, función, método, clase o módulo explicando su propósito, entradas, salidas y cualquier detalle importante.
******   - **Comentarios de línea**: Usar comentarios en líneas individuales para describir bloques o líneas específicas de código que puedan ser complejas o no triviales.
******
******   Ejemplo de comentario de cabecera:
******   ```ABAP
******   *----------------------------------------------------------
******   * Programa: Z_USER_UPDATE
******   * Descripción: Actualiza la información de usuario en SAP.
******   * Parámetros de entrada: iv_user_id (ID de usuario)
******   * Parámetros de salida: ev_result (Resultado de la operación)
******   *----------------------------------------------------------
******   ```
******
******6. **Convenciones de Nombres para Clases**
******   Si estás trabajando con la programación orientada a objetos (OOP), se recomienda seguir ciertas convenciones también:
******
******   - **`ZCL_`**: Prefijo para clases personalizadas.
******     Ejemplo: `ZCL_ORDER_PROCESSING`
******
******   - **`ZIF_`**: Prefijo para interfaces personalizadas.
******     Ejemplo: `ZIF_PAYMENT_METHOD`
******
******   - **`ZCO_`**: Prefijo para componentes de clases, como controladores.
******     Ejemplo: `ZCO_USER_CONTROLLER`
******
******7. **Uso de Funciones Estándar de SAP**
******   Se debe preferir el uso de funciones estándar de SAP cuando sea posible. Esto asegura la consistencia con el sistema y reduce el riesgo de errores y problemas de mantenimiento.
******
******8. **Manejo de Excepciones**
******   Las excepciones deben ser manejadas correctamente, con bloques `TRY...ENDTRY` y el uso de clases de excepciones específicas de SAP cuando sea necesario.
******
******9. **Uso de Form y Reportes**
******   Para los programas de reporte, se recomienda el uso de **`WRITE`** para mostrar resultados en la pantalla y seguir la estructura estándar de SAP.
******
******   En resumen, al escribir código en ABAP, las convenciones son esenciales para asegurar la calidad, legibilidad y mantenibilidad del código, así como para alinearse con las mejores prácticas establecidas por la comunidad y los estándares de SAP.

  DATA(lv_product) = 'ABAP'.
    out->write( | DECLARACION EN LINEA = { lv_product } | ).

  ENDMETHOD.

ENDCLASS.
