-- Apostila_08
-- 1.1 Faça um programa que gere um valor inteiro e o exiba
DO $$
DECLARE
	n1 INTEGER;
BEGIN
	n1 := (random() * 10000):: int;
	RAISE NOTICE '%', n1;
END $$;
