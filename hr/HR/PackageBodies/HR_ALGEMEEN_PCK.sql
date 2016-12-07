CREATE OR REPLACE PACKAGE BODY hr.hr_algemeen_pck
IS
   FUNCTION waarden_verschillen (p_waarde1   IN VARCHAR2,
                                 p_waarde2   IN VARCHAR2)
   RETURN BOOLEAN
   IS
   /* ===========================================================================================
   Wehkamp 2016
   Doel: waarden met elkaar vergelijken rekening houdend met NULL-waarden

   Datum        Auteur      Wijzigingen
   08-11-2016   TvG         Creatie
   28-11-2016   JD          Dummy modify
   07-12-2016   EvD         Niks
  =============================================================================================*/
   BEGIN
      RETURN (   (p_waarde1 != p_waarde2)
              OR (p_waarde1 IS NULL AND p_waarde2 IS NOT NULL)
              OR (p_waarde1 IS NOT NULL AND p_waarde2 IS NULL));
   END waarden_verschillen;
   
END hr_algemeen_pck;
/