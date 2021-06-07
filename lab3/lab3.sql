--1
-- basket.id by cust email

SELECT buyer.email, buyer.last_name, buyer.first_name, basket.id
FROM buyer
INNER JOIN basket ON buyer.id=basket.id
;

--2
-- Product name from cust

SELECT buyer.last_name, buyer.first_name, products.name
FROM buyer
INNER JOIN products ON buyer.id=products.id
;

--3
-- company of product  

SELECT products_id, product.name, company.name
FROM product
INNER JOIN company ON product.id=company.id
;

--4
-- basket cost and product id by cust    

SELECT buyer.last_name, buyer.first_name, basket.cost, basket.products_id, product.id 
FROM buyer
INNER JOIN basket ON buyer.id=basket.id
INNER JOIN product ON basket.products_id=products.id
;

--5
-- buyer by basket id and cost  

SELECT buyer.last_name, buyer.first_name, basket.id
FROM basket
INNER JOIN buyer ON basket.id=buyer.id
INNER JOIN buyer ON basket.cost=buyer.id
;

--6
-- company from cost of product    

SELECT products_id, product.name, products.cost, company.id
FROM product
INNER JOIN company ON product.id=company.id
INNER JOIN company ON product.cost=company.id
;

--7
-- location of cust by basket cost  

SELECT buyer.last_name, buyer.first_name, basket.cost, buyer.region
FROM basket
INNER JOIN buyer ON basket.id=buyer.id
;

--8
-- company by product id

SELECT product.id, company.id
FROM product
INNER JOIN company ON product.id=company.products_id
;

--9
-- buyer from produc name and company

SELECT product.name, company.id, buyer.last_name, buyer.first_name
FROM company
INNER JOIN buyer ON company.products_id=buyer.id
INNER JOIN buyer ON products.name=buyer.id
;


--10
-- buyer name from las name and email

SELECT buyer.email, buyer.last_name< buyer.first_name
FROM buyer
INNER JOIN basket ON buyer.id=basket.id
;






