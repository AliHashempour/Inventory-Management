-- phase -7
create assertion stock_constraint check (not exists (select stock
 from spare_parts
 where stock = 0));

create assertion order_same_car check (not exists (select VIN , COUNT(VIN)
 from car_orders 
 group by VIN
 having count(VIN) > 1));