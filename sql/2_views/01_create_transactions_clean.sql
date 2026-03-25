CREATE OR REPLACE VIEW `final-project-dla.raw_data.transactions_clean` AS
SELECT
  household_key,
  basket_id,
  product_id,
  DAY,
  sales_value,
  quantity,
  store_id,
  retail_disc,
  coupon_disc,
  coupon_match_disc
FROM `final-project-dla.raw_data.transaction_data_raw`
WHERE sales_value > 0
  AND quantity > 0;
