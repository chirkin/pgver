
CREATE SCHEMA myfunc;

-------------------------------------------------------------------------------
CREATE FUNCTION myfunc.test()
  RETURNS text
  LANGUAGE sql
AS $function$
SELECT 'success';
$function$;
-------------------------------------------------------------------------------
