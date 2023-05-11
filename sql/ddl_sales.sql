CREATE TABLE homesales_demo.home_sales_brooklyn.brooklyn_sales (
    borough STRING,
    neighborhood STRING,
    building_class_category STRING,
    tax_class STRING,
    block BIGINT,
    lot BIGINT,
    easement STRING,
    building_class STRING,
    address STRING,
    apartment_number STRING,
    zip_code BIGINT,
    residential_units BIGINT,
    commercial_units BIGINT,
    total_units BIGINT,
    land_sqft DOUBLE,
    gross_sqft DOUBLE,
    year_built BIGINT,
    tax_class_at_sale BIGINT,
    building_class_at_sale STRING,
    sale_price DOUBLE,
    sale_date DATE,
    year_of_sale BIGINT,
    CD STRING,
    CT2010 STRING,
    CB2010 STRING,
    SchoolDist STRING,
    Council STRING,
    ZipCode STRING,
    FireComp STRING,
    PolicePrct STRING,
    HealthCent STRING,
    HealthArea STRING,
    SanitBoro STRING,
    SanitDistr STRING,
    SanitSub STRING,
    ZoneDist1 STRING,
    ZoneDist2 STRING,
    ZoneDist3 STRING,
    ZoneDist4 STRING,
    Overlay1 STRING,
    Overlay2 STRING,
    SPDist1 STRING,
    SPDist2 STRING,
    SPDist3 STRING,
    LtdHeight STRING,
    SplitZone STRING,
    BldgClass STRING,
    LandUse STRING,
    Easements STRING,
    OwnerType STRING,
    OwnerName STRING,
    LotArea STRING,
    BldgArea STRING,
    ComArea STRING,
    ResArea STRING,
    OfficeArea STRING,
    RetailArea STRING,
    GarageArea STRING,
    StrgeArea STRING,
    FactryArea STRING,
    OtherArea STRING,
    AreaSource STRING,
    NumBldgs STRING,
    NumFloors STRING,
    UnitsRes STRING,
    UnitsTotal STRING,
    LotFront STRING,
    LotDepth STRING,
    BldgFront STRING,
    BldgDepth STRING,
    Ext STRING,
    ProxCode STRING,
    IrrLotCode STRING,
    LotType STRING,
    BsmtCode STRING,
    AssessLand STRING,
    AssessTot STRING,
    ExemptLand STRING,
    ExemptTot STRING,
    YearBuilt STRING,
    YearAlter1 STRING,
    YearAlter2 STRING,
    HistDist STRING,
    Landmark STRING,
    BuiltFAR STRING,
    ResidFAR STRING,
    CommFAR STRING,
    FacilFAR STRING,
    BoroCode STRING,
    BBL STRING,
    CondoNo STRING,
    Tract2010 STRING,
    XCoord STRING,
    YCoord STRING,
    ZoneMap STRING,
    ZMCode STRING,
    Sanborn STRING,
    TaxMap STRING,
    EDesigNum STRING,
    APPBBL STRING,
    APPDate STRING,
    PLUTOMapID STRING,
    FIRM07_FLA STRING,
    PFIRM15_FL STRING,
    Version STRING,
    MAPPLUTO_F STRING,
    SHAPE_Leng STRING,
    SHAPE_Area STRING,
    _c0 INT,
    _c1 INT,
    _c2 STRING,
    _c3 STRING,
    _c4 STRING,
    _c5 INT,
    _c6 INT,
    _c7 STRING,
    _c8 STRING,
    _c9 STRING,
    _c10 STRING,
    _c11 INT,
    _c12 INT,
    _c13 INT,
    _c14 INT,
    _c15 DOUBLE,
    _c16 DOUBLE,
    _c17 INT,
    _c18 INT,
    _c19 STRING,
    _c20 DOUBLE,
    _c21 DATE,
    _c22 INT,
    _c23 STRING,
    _c24 STRING,
    _c25 STRING,
    _c26 STRING,
    _c27 STRING,
    _c28 STRING,
    _c29 STRING,
    _c30 STRING,
    _c31 STRING,
    _c32 STRING,
    _c33 STRING,
    _c34 STRING,
    _c35 STRING,
    _c36 STRING,
    _c37 STRING,
    _c38 STRING,
    _c39 STRING,
    _c40 STRING,
    _c41 STRING,
    _c42 STRING,
    _c43 STRING,
    _c44 STRING,
    _c45 STRING,
    _c46 STRING,
    _c47 STRING,
    _c48 STRING,
    _c49 STRING,
    _c50 STRING,
    _c51 STRING,
    _c52 STRING,
    _c53 STRING,
    _c54 STRING,
    _c55 STRING,
    _c56 STRING,
    _c57 STRING,
    _c58 STRING,
    _c59 STRING,
    _c60 STRING,
    _c61 STRING,
    _c62 STRING,
    _c63 STRING,
    _c64 STRING,
    _c65 STRING,
    _c66 STRING,
    _c67 STRING,
    _c68 STRING,
    _c69 STRING,
    _c70 STRING,
    _c71 STRING,
    _c72 STRING,
    _c73 STRING,
    _c74 STRING,
    _c75 STRING,
    _c76 STRING,
    _c77 STRING,
    _c78 STRING,
    _c79 STRING,
    _c80 STRING,
    _c81 STRING,
    _c82 STRING,
    _c83 STRING,
    _c84 STRING,
    _c85 STRING,
    _c86 STRING,
    _c87 STRING,
    _c88 STRING,
    _c89 STRING,
    _c90 STRING,
    _c91 STRING,
    _c92 STRING,
    _c93 STRING,
    _c94 STRING,
    _c95 STRING,
    _c96 STRING,
    _c97 STRING,
    _c98 STRING,
    _c99 STRING,
    _c100 STRING,
    _c101 STRING,
    _c102 STRING,
    _c103 STRING,
    _c104 STRING,
    _c105 STRING,
    _c106 STRING,
    _c107 STRING,
    _c108 STRING,
    _c109 STRING,
    _c110 STRING
) USING delta COMMENT 'Created by the file upload UI' TBLPROPERTIES (
    'delta.checkpoint.writeStatsAsJson' = 'false',
    'delta.checkpoint.writeStatsAsStruct' = 'true',
    'delta.minReaderVersion' = '1',
    'delta.minWriterVersion' = '2'
);