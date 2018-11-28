JP2_FILE=/vsis3/sentinel-s2-l1c/tiles/32/T/QM/2018/11/22/0/B01.jp2
COG_FILE=/vsis3/landsat-pds/c1/L8/001/003/LC08_L1GT_001003_20170601_20170602_01_RT/LC08_L1GT_001003_20170601_20170602_01_RT_B11.TIF

# Uncomment this to see more output.
DEBUG=--debug on

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
	time docker-compose run gdal \
		gdalinfo $(DEBUG) $(JP2_FILE)

jp2k:
	time docker-compose run gdal_k \
		gdalinfo $(DEBUG) $(JP2_FILE)

cog:
	time docker-compose run gdal \
		gdalinfo $(DEBUG) $(COG_FILE)

# Get a single pixel value
jp2_pixel:
	time docker-compose run gdal \
		gdallocationinfo $(DEBUG) $(JP2_FILE) 1000 1000

jp2k_pixel:
	time docker-compose run gdal_k \
		gdallocationinfo $(DEBUG) $(JP2_FILE) 1000 1000
		
cog_pixel:
	time docker-compose run gdal \
		gdallocationinfo $(DEBUG) $(COG_FILE) 1000 1000
