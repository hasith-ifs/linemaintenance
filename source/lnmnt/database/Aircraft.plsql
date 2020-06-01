-----------------------------------------------------------------------------
--
--  Logical unit: Aircraft
--  Component:    LNMNT
--
--  IFS Developer Studio Template Version 3.0
--
--  Date    Sign    History
--  ------  ------  ---------------------------------------------------------
-----------------------------------------------------------------------------

layer Core;

-------------------- PUBLIC DECLARATIONS ------------------------------------


-------------------- PRIVATE DECLARATIONS -----------------------------------


-------------------- LU SPECIFIC IMPLEMENTATION METHODS ---------------------

@Override
PROCEDURE Insert___ (
   objid_      OUT    VARCHAR2,
   objversion_ OUT    VARCHAR2,
   newrec_     IN OUT aircraft_tab%ROWTYPE,
   attr_       IN OUT VARCHAR2 )
IS
   aircraft_id NUMBER;
    CURSOR get_key_set IS 
      SELECT AIRCRAFT_ID_SEQ.NEXTVAL 
      FROM dual;
BEGIN
   OPEN  get_key_set;
      FETCH get_key_set INTO aircraft_id;
      CLOSE get_key_set;
      Client_SYS.Add_To_Attr('AIRCRAFT_ID',aircraft_id,attr_);
      super(objid_, objversion_, newrec_, attr_);
END Insert___;




-------------------- LU SPECIFIC PRIVATE METHODS ----------------------------


-------------------- LU SPECIFIC PROTECTED METHODS --------------------------


-------------------- LU SPECIFIC PUBLIC METHODS -----------------------------

