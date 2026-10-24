CLASS lhc_PurchaseOrder DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR PurchaseOrder RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR PurchaseOrder RESULT result.

ENDCLASS.

CLASS lhc_PurchaseOrder IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
   " Check if the UI layer is asking if 'create' is allowed
    IF requested_authorizations-%create = if_abap_behv=>auth-allowed.

      " Workable solution: Force the authorization status to ALLOWED
      result-%create = if_abap_behv=>auth-allowed.

    ENDIF.
  ENDMETHOD.

ENDCLASS.
