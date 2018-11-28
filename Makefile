JP2_FILE=/vsis3/sentinel-s2-l1c/tiles/32/T/QM/2018/11/22/0/B01.jp2
COG_FILE=/vsis3/landsat-pds/c1/L8/001/003/LC08_L1GT_001003_20170601_20170602_01_RT/LC08_L1GT_001003_20170601_20170602_01_RT_B11.TIF
COG_AU=/vsis3/dea-public-data/geomedian-australia/v2.1.0/L8/x_-18/y_-25/2017/01/01/ls8_gm_nbart_-18_-25_20170101_red.tif

# Uncomment this to see more output.
# DEBUG=--debug on

build:
	docker-compose build

# Testing
formats:
	docker-compose run gdal \
		gdalinfo --formats

# Print GDAL versions
version:
	docker-compose run gdal \
		gdalinfo --version

versionk:
	docker-compose run gdal_k \
		gdalinfo --version

# GDALInfo
jp2:
	docker-compose run gdal time \
		gdalinfo $(DEBUG) $(JP2_FILE)

jp2k:
	docker-compose run gdal_k time \
		gdalinfo $(DEBUG) $(JP2_FILE)

cog:
	docker-compose run gdal time \
		gdalinfo $(DEBUG) $(COG_FILE)

cogau:
	docker-compose run gdal time \
		gdalinfo $(DEBUG) $(COG_AU)

# Get a single pixel value
jp2_pixel:
	docker-compose run gdal time \
		gdallocationinfo $(DEBUG) $(JP2_FILE) 1000 1000

jp2k_pixel:
	docker-compose run gdal_k time \
		gdallocationinfo $(DEBUG) $(JP2_FILE) 1000 1000
		
cog_pixel:
	docker-compose run gdal time \
		gdallocationinfo $(DEBUG) $(COG_FILE) 1000 1000
