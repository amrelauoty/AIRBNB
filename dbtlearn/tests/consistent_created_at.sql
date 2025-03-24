SELECT 
    * 
FROM 
    {{ref("dim_listings_cleansed")}} H
JOIN {{ ref("fct_reviews") }}  R
ON R.listing_id = H.listing_id
where H.created_at >= R.review_date