# Compare COG and JP2 Range Requests

All tests were run from Australia to Europe (Sentinel 2) or the US (Landsat 8).

See the Makefile for specific implementation.

| Reader | gdalinfo (s) | one pixel (s) |
|:-:	|:-:	|:-:	|
| JP2 (OpenJPG) | 4.18 | 53.26 |
| JP2 (Kakadu) | 6.94| 27.71 |
| COG | 3.77  | 3.16 |