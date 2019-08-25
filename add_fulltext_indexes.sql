CREATE FULLTEXT INDEX ppi_name_idx ON ppi_position_import(ppi_name);
CREATE FULLTEXT INDEX tch_property_value_idx ON technical_details(tch_property_value);
CREATE FULLTEXT INDEX tdf_name_idx ON technical_details_fields(tdf_name);
CREATE FULLTEXT INDEX mod_name_idx ON positions_models(mod_name);