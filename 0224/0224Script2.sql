SELECT * FROM PRODUCT ORDER BY PRICE DESC 

SELECT * FROM PRODUCT ORDER BY COMPANY

SELECT name, price FROM PRODUCT WHERE id = '100'

SELECT name, company FROM PRODUCT WHERE PRICE = '5000'

SELECT name, img FROM PRODUCT p WHERE ID = '100' AND PRICE = '1000'

SELECT COMPANY , NAME FROM PRODUCT p WHERE COMPANY = 'c100'

SELECT NAME, PRICE FROM PRODUCT p WHERE COMPANY = 'c100' OR COMPANY = 'c200'

UPDATE PRODUCT SET CONTENT = '품절' WHERE PRICE = '5000'

UPDATE PRODUCT SET img = 'o.png', PRICE = '10000' WHERE ID = '100' OR ID = '102'

UPDATE PRODUCT SET COMPANY = 'apple', NAME = 'appleshoes' WHERE ID = '101'

DELETE FROM PRODUCT WHERE NAME = 'shoes1' OR ID = '107'

DELETE FROM PRODUCT WHERE COMPANY = 'c100'

DELETE FROM PRODUCT

DROP TABLE PRODUCT

SELECT * FROM PRODUCT p 