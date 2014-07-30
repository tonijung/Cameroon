Heat Waves at Conception and LL Outcomes
================================================

* Version 1.0
* Date: July 30, 2014
* Contact: Joshua Wilde (corresponding author, [jkwilde@usf.edu](mailto:jkwilde@usf.edu)) and Toni Jung ([tmjung@ucdavis.edu](mailto:tmjung@ucdavis.edu))

This document details how to recreate the monthly mean temperature and monthly total precipitation variables used in <br />
**Wilde, J., B. Apouey, and T. Jung. 2014. "Heat Waves at Conception and Later Life Outcomes."**

## Contents
* `00.README_Delaware.md` - ReadMe markdown document which explains everything **revise**
* `01.CreatePath.bat` - Windows Batch File which creates the folder paths in `C:\temp\`
* `02.GenerateData.bat` - Windows Batch File which executes files `03 - 09`
* `03.getUDel.py` - Python script used to download the University of Delaware datasets
* `04.getShapefiles.py` - Python script used to download the GADM and IPUMS shapefiles
* `05.createAfrica.py` - Python script used to the Sub-Saharan Africa dataset to be used in conjunction with DHS data.
* `06.netCDFanalysis_IPUMS.py` - Python script which uses the `ArcPy` module to generate UDel variables for IPUMS regions.
* `07.netCDFanalysis_GADM.py` - Python script which uses the `ArcPy` module to generate UDel variables for GADM regions.
* `08.dbf2csv.py` - Python script used to convert output the `.dbf` from `07` and `08` into Stata friendly `.csv` files.
* `09.csv2dta.do` - Stata .`do` file used to create final dataset: `UDel_IPUMS.dta` and `UDel_DHS.dta`
* `IPUMS_country_list.txt` - List of IPUMS countries used.

## Minimum System Requirements
* Windows XP or later
   * [ArcGIS 10.1 or 10.0](http://www.esri.com/software/arcgis/arcgis-for-desktop)
   * [Python 2.7](http://www.python.org/download/releases/2.7/)
   * [Stata 12](http://www.stata.com/)
* For UNIX support, contact Toni Jung.

## Data needed
[University of Delaware Air Temperature and Precipitation](http://www.esrl.noaa.gov/psd/data/gridded/data.UDel_AirT_Precip.html)

* Monthly global gridded high resolution statation (land) data for Air Temperature and Precipitation for [1900,2010]
   * Air Temperature Monthly Mean V3.01 `air.mon.mean.v301.nc`
   * Precipitation Monthly Total V3.01 `precip.mon.total.v301.nc`

GIS Shapefiles

* For our paper, GADM was used for Sub-Saharan African countries and IPUMS was used for all other countries. We also used administrative level 1 and the WGS84 datum. For any country shapefile that was not in WGS84, we reprojected the NetCDF raster to WGS84 in the `netCDFanalysis` scripts.
* [Global Adminiatrative Areas (GADM) GIS](http://www.gadm.org/country)
* [IPUMS-International GIS Boundary Files](https://international.ipums.org/international/gis.shtml)

## Set Up
The path for this project is `C:/temp/`. Note that if you wish to complete this project in a different location, you will need to update the directories in all of the subsequent scripts.

1. Download the `UDel-master.zip` file and unzip into the `C:\` drive.
2. Double click on the `01.CreatePath.bat` batch file and click on `Run`.
3. In `02.GenerateData.bat` update the location of the Python and Stata executables if needed in lines `2`, `5`, `14`, `21`, `22`, `26`, `29`, and `33`. The default is `C:\Python27\ArcGIS10.1\python.exe` for Python and `C:\Program Files (x86)\Stata12\StataSE-64.exe` for Stata.
4. Once the paths are updated, double click on `02.GenerateData.bat` and click on `Run`.
5. The final datasets are `C:\temp\UDel_IPUMS.dta` and `C:\temp\UDel_DHS.dta` respectively. 


## To Do
1. **change "GADM" to "DHS" and explain why**
2. Expand on the "contents" section
3. `09.csv2dta.do` & add GADM regions
4. on the server test the `africa.shp` on `netCDFanalysisGADM.py`
