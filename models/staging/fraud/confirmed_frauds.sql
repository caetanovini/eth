{{ config(group = 'fraud_risk', access='private') }}

select *
from {{ ref('stg_transactions_enriched')}}
where 
    from_address in (
        '0x014523f2A626F0E3dBc241B8e9A4C14c507a6360', 
        '0x0F6666bC699aec39b846E898473e9CAec5a6b821'
    )