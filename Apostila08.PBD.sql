-- Apostila_08
-- 1.1 Faça um programa que gere um valor inteiro e o exiba
DO $$
DECLARE
	n1 INTEGER;
BEGIN
	n1 := (random() * 10000):: int;
	RAISE NOTICE '%', n1;
END $$;

-- 1.2 Faça um programa que gere um valor real e o exiba
DO $$
DECLARE
	n1 NUMERIC (4,2);
BEGIN
	n1 := (random() * 10);
	RAISE NOTICE '%', n1;
END $$;

-- 1.3 Faça um programa que gere um valor real no intervalo [20, 30] que representa uma temperatura em graus Celsius. Faça a conversão para Fahrenheit e exiba
DO $$
DECLARE 
	n1 NUMERIC (4,2);
	limite_inferior NUMERIC := 20;
	limite_superior NUMERIC := 30;
	inicial NUMERIC := 0;
	numero NUMERIC (5,2);
	F NUMERIC (4,2);
BEGIN
	n1 := FLOOR(limite_inferior + random() *(limite_superior - limite_inferior + 1))::NUMERIC;
    inicial := random();
    numero := n1 + inicial;
    F = (n1 * 1.8)+32;
	RAISE NOTICE 'o numero gerado foi: % %',   numero , 'ºC';
	RAISE NOTICE 'A conversão desse valor para Fahrenheit é: %', F;
END $$
