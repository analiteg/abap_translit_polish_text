CLASS zcl_translit_polish DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_translit_polish IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Step 1 - Create Instance (singleton)
    DATA(mo_route) = lcl_translit=>create_instance( ).
    " Step 2 - Get Text
    DATA lv_polish_text TYPE string.
    lv_polish_text = 'Szkoła Podstawowa Nr 29 im. Synów Pułku Zespół Szkół Ogólnokształcących Mistrzostwa Sportowego Nr 2 w Białymstoku'.

    TRY.
        out->write( mo_route->translit_polish( lv_polish_text ) ).
      CATCH cx_root INTO DATA(exc).
        out->write( exc->get_text( ) ).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
