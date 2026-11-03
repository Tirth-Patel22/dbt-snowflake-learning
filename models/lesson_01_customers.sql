WITH customers (customer_id,customer_name,email,is_active) as (
    select *
    from values
    (1,'Rahul','rahul@gmail.com',true),
    (2,'Priya','priya@gmail.com',false),
    (3,'Amit','amit@gmail.com',true),
    (4,'Neha','neha@gmail.com',true)
)

select cast(customer_id as numeric(10,0)) as customer_id,customer_name,email from customers where is_active = true