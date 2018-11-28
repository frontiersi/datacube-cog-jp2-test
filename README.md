# Compare COG and JP2 Range Requests

All tests were run from Australia to Europe (Sentinel 2) or the US (Landsat 8).

See the Makefile for specific implementation.

| Reader | gdalinfo (s) | one pixel (s) |
|:-:	|:-:	|:-:	|
| JP2 (OpenJPG) | 6.59 | 45.03 |
| JP2 (Kakadu) | 8.90 | 35.43 |
| COG | 5.72  | 5.26 |