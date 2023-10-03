CREATE TABLE invoice (
  customer_bk STRING COMMENT 'Id that identify the Account or Client or Point of Consumption (PoC) across all tables',
  product_bk STRING COMMENT 'Id that identify Product across all tables',
  invoice_date DATE COMMENT 'Invoice status is closed or invoiced and date used to match with baseline',
  items_volume DOUBLE COMMENT 'Total volume in HL of that transaction. If we have free goods, then we should subtract free good volume',
  items_subtotal DOUBLE COMMENT 'Gross sales income less discounts less excise tax')
USING delta
TBLPROPERTIES (
  'delta.minReaderVersion' = '1',
  'delta.minWriterVersion' = '2')


