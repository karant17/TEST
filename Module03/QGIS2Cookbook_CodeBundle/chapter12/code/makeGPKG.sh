# Convert a File Geodatabase to Spatialite
ogr2ogr -f SQLite naturalearthsample.sqlite naturalearthsample.gdb -skip-failures -nlt PROMOTE_TO_MULTI -dsco SPATIALITE=YES

# Convert a File Geodatabase to a Geopackage
ogr2ogr -f GPKG naturalearthsample.gpkg naturalearthsample.gdb

# Add one layer to an existing Geopackage
ogr2ogr -f GPKG naturalearthsample.gpkg nameofshapefile.shp

# Convert a Geopackge to Spatialite
ogr2ogr -f SQLite naturalearthsample.sqlite naturalearthsample.gpkg -skip-failures -nlt PROMOTE_TO_MULTI -dsco SPATIALITE=YES

# Convert Spatialite to Geopackage
ogr2ogr -f GPKG naturalearthsample.gpkg naturalearthsample.sqlite
