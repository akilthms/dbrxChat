CREATE TABLE products (
  box_tot STRING COMMENT '#  Consumption Units ',
  brand_cd STRING COMMENT 'ID that identify Brand',
  brand_family_nm STRING COMMENT 'Main brand name for family e.g. Club Colombia, Presidente, Castle, Budweiser',
  brand_nm STRING COMMENT 'Sub brand or variety',
  brand_origin_typ STRING COMMENT 'Identification if the product is imported, local, etc',
  category_cd STRING COMMENT 'The code of category of the product',
  category_nm STRING COMMENT 'higher level clusters: mp, beer, nabs, spirits, tobacco, returnables, other',
  container_returnable_flg STRING COMMENT 'Container (consumption unit) info: The container is returnable or not',
  container_uom STRING COMMENT 'Container (consumption unit) info: unit of measurement of the size',
  container_volume_un STRING COMMENT 'Container (consumption unit) info:  The volume in ml or oz for a single unit within the sku - the volumetric of 1 can or bottle e.g. 330ml, 12Oz etc',
  dt_reference_ts STRING COMMENT 'The last date that each record was created/updated at the source system.',
  family_brand_cd STRING COMMENT 'ID that identify the family brand',
  marketplace_flg STRING COMMENT 'mp or abi.  This is an indicator whether the product is an abi product (including 3rd party sku"s where abi is the sole distributor in the country) or marketplace product',
  package_cd STRING COMMENT 'ID that identify the package code',
  package_ds STRING COMMENT 'Usually contains the pack volumetric and pack type (can, rb, nrb etc.) of a single unit inside the sku',
  package_material_cd STRING COMMENT 'ID that identify package material ',
  package_material_typ STRING COMMENT 'Indicates type of material of the primary packaging e.g. glass, aliminium',
  package_tot STRING COMMENT '# of consumption units per consumer unit (6 pack of bottlers, etc)',
  package_typ STRING COMMENT 'Indicates the type of package direct with liquid e.g. can,  draught, bottle, etc',
  package_type_cd STRING COMMENT 'ID that identify container type ',
  pallet_un STRING COMMENT 'Identification of how many SKUs are on each pallet',
  price_segment_cd STRING COMMENT 'The code of price segmentation ',
  price_segment_nm STRING COMMENT 'Local Market Price Segmentation (Value, Core, Premium, Super Premium)',
  product_bk STRING COMMENT 'Id that identify Product across all tables',
  product_erp_cd STRING COMMENT 'Id that identify Product from ERP',
  product_nm STRING COMMENT 'The long name for the sku which usually includes brand, sub-brand, pack volumetric, pack type (can, rb, nrb) and wrap quantity (6,12,24,30 pack etc)',
  product_status_flg STRING COMMENT 'Product can be Active or Inactive',
  product_update_at_dtm STRING COMMENT 'Date on which product was last updated',
  product_volume_hl STRING COMMENT '# HL / Physical Case',
  src_region_nm STRING COMMENT 'ABI Region Name (AFR, NAZ, EUR, APAC, SAZ, MAZ).',
  src_sys_nm STRING COMMENT 'Source system name. ',
  src_country_cd STRING COMMENT 'Related to the ISO Code of the Country. Use the Alpha-2 code that is an international country code identification - https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes )',
  subcategory_cd STRING COMMENT 'The code of subcategory of the product',
  subcategory_nm STRING COMMENT 'category names e.g. light beer, full strength beer, malts, water, soft drinks, energy drinks etc')
USING delta
TBLPROPERTIES (
  'delta.minReaderVersion' = '1',
  'delta.minWriterVersion' = '2')