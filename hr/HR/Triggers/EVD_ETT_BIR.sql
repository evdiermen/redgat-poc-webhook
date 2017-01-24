CREATE OR REPLACE TRIGGER hr.EVD_ETT_BIR
before insert ON hr.HR_EVD_TEST2
for each row
declare
begin
  :new.abc:= 'abc';
  :new.datum_aangemaakt := sysdate;
end;
/