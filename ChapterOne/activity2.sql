USE cape_codd;
SELECT SKU, SKU_Description, WarehouseID = WarehouseID , WarehouseCity, WarehouseState FROM INVENTORY, WAREHOUSE WHERE WarehouseCity = "Atlanta" OR "Bangor" OR "Chicago";
SELECT SKU, SKU_Description, WarehouseID, WarehouseCity, WarehouseState IN ('Atlanta','Bangor','Chicago'); -- FROM INVENTORY, WAREHOUSE;