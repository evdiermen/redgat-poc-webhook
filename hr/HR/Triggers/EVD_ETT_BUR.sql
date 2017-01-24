CREATE OR REPLACE TRIGGER hr.EVD_ETT_BUR
before update ON hr.HR_EVD_TEST2
for each row
declare
begin
  :new.datum_gewijzigd := sysdate;
end;
/