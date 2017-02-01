CREATE OR REPLACE PACKAGE hr.hr_algemeen_pck
IS
   /* ===========================================================================================
   Wehkamp 2016

   Datum        Auteur        Wijzigingen
   08-11-2016   T. v. Gelder  Creatie
   =============================================================================================*/

   FUNCTION waarden_verschillen (p_waarde1   IN VARCHAR2,
                                 p_waarde2   IN VARCHAR2)
   RETURN BOOLEAN;
   
   procedure hello_wehkamp;

END hr_algemeen_pck;
/