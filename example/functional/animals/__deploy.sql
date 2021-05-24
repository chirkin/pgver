--
-- animal view functional
--

--------------------------------------------------------------------------------
CREATE VIEW data.animals AS
  SELECT upper(name) AS name
    FROM _data.animal;
--------------------------------------------------------------------------------
