CLASS zcl_material_information_c26_5 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_material_art
      IMPORTING
        i_rm34          TYPE string
        matnr               TYPE i_product-product
      RETURNING
        VALUE(material_art) TYPE i_product-producttype.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_material_information_c26_5 IMPLEMENTATION.

 METHOD get_material_art.
    DATA material TYPE i_product.
    DATA production_date TYPE datn.
    DATA bool_tmp TYPE ABAP_BOOLEAN .


    PRODUCTION_DATE = cl_abap_context_info=>get_system_date( ).

    SELECT SINGLE FROM i_product FIELDS producttype WHERE product = @matnr INTO CORRESPONDING FIELDS OF @material .
    material_art = material-producttype.

  ENDMETHOD.

ENDCLASS.
