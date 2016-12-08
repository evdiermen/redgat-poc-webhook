CREATE OR REPLACE function hr.f_boolean_ned (bol in varchar2)
return varchar is

-- boolean ned zet het engelse "Y"es om in het nederlandse "J"a

  l_bol varchar2(1) := NULL;

begin

  if bol = 'Y' then
     l_bol := 'J';
  elsif bol = 'N' then
     l_bol := 'N';
  else
     l_bol := NULL;
  end if;

  return l_bol;
-- exceptions need to be handled in calling program!
end;
/