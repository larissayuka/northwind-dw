with
    fonte_categorias as (
        select 
            cast(category_id as int) as id_categoria
            , cast(category_name as string) as nome_categotia
            , cast(description as string) as descricao_categotia
            --, picture
        from {{ source('erp', 'categories') }}
    )

select *
from fonte_categorias