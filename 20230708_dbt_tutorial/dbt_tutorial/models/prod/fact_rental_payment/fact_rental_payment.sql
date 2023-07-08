-- fact_rental_payment.sql

select *
from {{ ref("_staging_fact_rental_payment") }}
