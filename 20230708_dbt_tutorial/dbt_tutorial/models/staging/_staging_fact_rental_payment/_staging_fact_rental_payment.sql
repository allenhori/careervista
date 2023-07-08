-- _staging_fact_rental_payment.sql
{{ 
  config(
    materialized='table'
  ) 
}}

with base as (
select
  r.rental_id,
  r.rental_date,
  r.customer_id,
  i.film_id,
  p.payment_date,
  p.amount
from {{ source('pagila', 'rental') }} as r
join {{ source('pagila', 'payment') }} as p
  on r.rental_id = p.rental_id
join {{ source('pagila', 'inventory') }} as i
  on r.inventory_id = i.inventory_id
)
select *
from base
where amount > 0
