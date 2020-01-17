base_dir="/g/data2/uc0/kxs900/symlink_test/data_catalogue"

#rr7 example cases
symlink_dir[0]="climate_reanalysis/CFSR/v1"
target_dir[0]="/g/data/rr7/CFSR/CFSR"

symlink_dir[1]="climate_reanalysis/NCEP-NCAR_Reanalysis/v1"
target_dir[1]="/g/data/rr7/NCEP/NCEP"

symlink_dir[2]="climate_observations/CRU/TS/v3.00"
target_dir[2]="/g/data/rr7/CRU"

#qv56 examples
symlink_dir[3]="climate_reanalysis/ana4MIPs"
target_dir[3]="/g/data/qv56/replicas/ana4MIPs/reanalysis/"

symlink_dir[4]="climate_observations/obs4MIPs"
target_dir[4]="/g/data/qv56/replicas/obs4MIPs/observations"

#ub4 ERA-Interim
symlink_dir[5]="climate_reanalysis/ECMWF/ERA-Interim/v2.0"
target_dir[5]="/g/data/ub4/erai/netcdf"

# CMIP5 symlinks
symlink_dir[6]="ESGF/CMIP5-era/CMIP5/combined"
target_dir[6]="/g/data/rr3/publications/CMIP5/output1"
symlink_dir[7]="ESGF/CMIP5-era/CMIP5/combined"
target_dir[7]="/g/data/al33/replicas/CMIP5/combined"

#other CMIP5-era mips
symlink_dir[8]="ESGF/CMIP5-era/CORDEX"
target_dir[8]="/g/data/rr3/publications/CORDEX"
symlink_dir[9]="ESGF/CMIP5-era/GeoMIP"
target_dir[9]="/g/data/rr3/publications/GeoMIP"
symlink_dir[10]="ESGF/CMIP5-era/PMIP3"
target_dir[10]="/g/data/rr3/publications/PMIP3"

#CMIP6 symlinks
symlink_dir[11]="ESGF/CMIP6-era/CMIP6"
target_dir[11]="/g/data/oi10/replicas/CMIP6"

#rs0 example case
symlink_dir[12]="GA_earth_observations/Data/"
target_dir[12]="/g/data/rs0/datacube/002"

#fk4 example case
symlink_dir[13]="GA_earth_observations/Derived/"
target_dir[13]="/g/data/fk4/datacube/002"

#wx7 example case
symlink_dir[14]="GA_earth_observations/Ancillary_and_validation_data"
target_dir[14]="/g/data/wx7/Australian_ASTER_Geosciences_Map_Project"

for index in ${!symlink_dir[*]}; do
    mkdir -p $base_dir/${symlink_dir[$index]}
    ln -s ${target_dir[$index]}/* $base_dir/${symlink_dir[$index]}/
done
