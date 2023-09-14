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


-- 1.4 Faça um programa que fere três valores reais a,b e c e mostre o valor de delta
DO $$
DECLARE
	A NUMERIC (6,2);
	B NUMERIC (6,2);
	C NUMERIC (6,2);
	delta NUMERIC (6,2);
BEGIN
	a := random()*10;
	b := random()*10;
	c := random()*10;
	delta := b^2 - 4*a*c;
	RAISE NOTICE 'O valor de delta calculado a partir de a,b e c é: %', delta;
END $$

-- 1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor e a raiz quadrada de seu sucessor
DO $$
DECLARE
	n1 INTEGER;
	raiz_cubica INTEGER;
	raiz_quadrada INTEGER;
	
	nc INTEGER;
	nq INTEGER;
BEGIN
	n1 := random()*10;
	nc := n1 - 1;
	nq := n1 + 1;
	raiz_cubica := ||/nc;
	raiz_quadrada := |/nq;
	RAISE NOTICE 'O número gerado foi: %', n1;
	RAISE NOTICE 'A raiz cúbica do seu antecessor é: %', raiz_cubica;
	RAISE NOTICE 'A raiz quadrada do seu sucessor é: %', raiz_quadrada;
END $$



-- 1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deveexibir o valor total do terreno.
DO $$
DECLARE
	comprimento NUMERIC (4,2);
	largura NUMERIC (4,2);
	area NUMERIC (4,2);
	preco NUMERIC (4,2);
	valor_total NUMERIC (4,2);
	limite_inferior NUMERIC  := 60;
	limite_superior NUMERIC  := 70;
BEGIN
	comprimento := random();
	largura := random();
	area := comprimento*largura;
	preco := floor(limite_inferior + random() * (limite_superior - limite_inferior +1)) :: NUMERIC;
	valor_total := area*preco;
	RAISE NOTICE 'As medidas do comprimento: %', comprimento;
	RAISE NOTICE 'E as medidas da largura:%', largura;
	RAISE NOTICE 'O valor da sua área é: %', area;
	RAISE NOTICE 'O preço por metro quadrado é: %', preco;
	RAISE NOTICE 'O valor total do terreno é: %', valor_total;
END $$


-- 1.7 escreva um programa que gere um inteiro que represnta o ano de nascimento de uma pessoa no intervalo[1980,2000] e gere um inteiro que representa o ano atual no intervalo[2010,2020]. o programa  deve exibir a idadde da ppessoa em anos. desconsidere detalhes envolvendo dias , anos, meses , anos bissextos.
DO
$$
DECLARE
    ano_nscto INTEGER;
    ano_atual INTEGER;
    idade INTEGER;
    li INTEGER:= 1980;
    ls INTEGER:= 2000;
    liaa INTEGER:= 2010;
    lsaa INTEGER:= 2020;
    
BEGIN
     ano_nscto := FLOOR (li + random() *(ls - li + 1))::INT;
     ano_atual := FLOOR (liaa + random() *(lsaa - liaa + 1))::INT;
     idade := ano_atual - ano_nscto;
     RAISE NOTICE 'o ano de nascimento é: %',ano_nscto;
     RAISE NOTICE 'o ano atual é: %',ano_atual;
     RAISE NOTICE 'o idade do individuo é: % anos',idade;
END
$$
