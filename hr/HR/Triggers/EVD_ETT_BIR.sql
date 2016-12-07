CREATE OR REPLACE trigger hr.evd_ett_bir
before insert on hr.hr_evd_test2 
for each row
declare
begin
  :new.abc:= 'abc';
end;
/