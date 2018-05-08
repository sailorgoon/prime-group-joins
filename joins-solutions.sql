-- Get all customers and their addresses.
SELECT
    "customers"."first_name",
    "customers"."last_name",
    "addresses"."street",
    "addresses"."city",
    "addresses"."state",
    "addresses"."zip" 
FROM
    "customers"
    JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";

-- Get all orders and their line items.
SELECT
    "orders"."order_date",
    "orders"."total",
    "orders"."address_id",
    "line_items"."unit_price",
    "line_items"."quantity",
    "line_items"."order_id"
FROM
    "orders"
    JOIN "line_items" ON "orders"."id" = "line_items"."order_id";

-- Which warehouses have cheetos?
SELECT
	* FROM "warehouse_product"
	WHERE "warehouse_product"."product_id" = 5;

-- Which warehouses have diet pepsi?
SELECT
	* FROM "warehouse_product"
	WHERE "warehouse_product"."product_id" = 6;

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "addresses"."street", "orders"."address_id",
COUNT ("address_id") 
FROM "orders"
JOIN "addresses" ON "addresses"."id" = "orders"."address_id"
GROUP BY "addresses"."street", "orders"."address_id";

-- How many customers do we have?
SELECT COUNT(*) FROM "customers";

-- How many products do we carry?
SELECT COUNT(*) FROM "products";

-- What is the total available on-hand quantity of diet pepsi?