ALTER TABLE developers
  ADD salary INT UNSIGNED NOT NULL;

UPDATE developers
SET salary = cast(rand() *  1000 * id  AS UNSIGNED  );


