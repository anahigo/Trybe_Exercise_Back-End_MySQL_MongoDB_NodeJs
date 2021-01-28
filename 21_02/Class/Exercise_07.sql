-- Exercise_01
SELECT * FROM hotel.Books;
SELECT * FROM hotel.Books_Lent; 

SELECT id, title FROM hotel.Books AS B
WHERE NOT EXISTS(
  SELECT * FROM hotel.Books_Lent
  WHERE B.id = book_id
);

-- Exercise_02
SELECT * FROM hotel.Books;
SELECT * FROM hotel.Books_Lent; 

SELECT id, title 
FROM hotel.Books AS B
WHERE EXISTS(
  SELECT * FROM hotel.Books_Lent
  WHERE B.Id = book_id AND B.title like '%lost%'
);

-- Exercise_03
SELECT name
FROM hotel.customers AS C
WHERE NOT EXISTS(
    SELECT *
    FROM carsales
    WHERE customerid = C.customerid
);

-- Exercise_04
SELECT cus.name, car.name
FROM cars AS car
INNER JOIN customers AS cus
WHERE EXISTS(
    SELECT *
    FROM hotel.carsales
    WHERE CustomerID = cus.CustomerId
    AND carID = car.ID
);