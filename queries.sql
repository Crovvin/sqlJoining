SELECT * FROM owners own FULL OUTER JOIN vehicles veh ON own.id=veh.owner_id;

SELECT first_name, last_name, COUNT(owner_id) FROM owners own 
    JOIN vehicles veh ON own.id=veh.owner_id GROUP BY (first_name, last_name) 
    ORDER BY first_name;

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) 
    FROM owners own JOIN vehicles veh ON own.id=veh.owner_id GROUP BY (first_name, last_name) 
    HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 ORDER BY first_name 
