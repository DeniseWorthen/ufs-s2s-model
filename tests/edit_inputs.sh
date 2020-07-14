#! /usr/bin/env bash
set -eu

function edit_ice_in {
  if [[ $DUMPFREQ == h ]]; then
    DUMPFREQ_N=$(( DUMPFREQ_N*3600 ))
    DUMPFREQ="s"
  fi

  jday=$(date -d "${SYEAR}-${SMONTH}-${SDAY} ${SHOUR}:00:00" +%j)
  istep0=$(( ((10#$jday-1)*86400 + 10#$SHOUR*3600) / DT_CICE ))

  CICEGRID = "grid_cice_NEMS_mx"$OCNRES".nc"
  CICEMASK = "kmtu_cice_NEMS_mx"$OCNRES".nc"

  sed -e "s/YEAR_INIT/$SYEAR/g" \
      -e "s/ISTEP0/$istep0/g" \
      -e "s/DT_CICE/$DT_CICE/g" \
      -e "s/CICEGRID/$CICEGRID/g" \
      -e "s/CICEMASK/$CICEMASK/g" \
      -e "s/NPROC_ICE/$NPROC_ICE/g" \
      -e "s/RUNTYPE/$RUNTYPE/g" \
      -e "s/RUNID/$RUNID/g" \
      -e "s/CICE_HIST_AVG/$CICE_HIST_AVG/g" \
      -e "s/USE_RESTART_TIME/$USE_RESTART_TIME/g" \
      -e "s/DUMPFREQ_N/$DUMPFREQ_N/g" \
      -e "s/DUMPFREQ/$DUMPFREQ/g" \
      -e "s/FRAZIL_FWSALT/$FRAZIL_FWSALT/g"
}

function edit_mom_input {

  CHLCLIM = "seawifs-clim-1997-2010."$NIGLOB"x"$NJGLOB".v20180328.nc"

  sed -e "s/DT_THERM_MOM6/$DT_THERM_MOM6/g" \
      -e "s/DT_DYNAM_MOM6/$DT_DYNAM_MOM6/g" \
      -e "s/MOM6_RIVER_RUNOFF/$MOM6_RIVER_RUNOFF/g" \
      -e "s/MOM6_THERMO_SPAN/$MOM6_THERMO_SPAN/g" \
      -e "s/MOM6_REPRO_LA/$MOM6_REPRO_LA/g" \
      -e "s/NIGLOB/$NIGLOB/g" \
      -e "s/NJGLOB/$NJGLOB/g" \
      -e "s/CHLCLIM/$CHLCLIM/g" 
}

function edit_data_table {

  FRUNOFF = "INPUT/runoff.daitren.clim."$NIGLOB"x"$NJGLOB".v20180328.nc"

  sed -e "s/FRUNOFF/$FRUNOFF/g" 
}

function edit_diag_table {
  sed -e "s/YMD/$SYEAR$SMONTH$SDAY/g" \
      -e "s/ATMRES/$ATMRES/g" \
      -e "s/SYEAR/$SYEAR/g" \
      -e "s/SMONTH/$SMONTH/g" \
      -e "s/SDAY/$SDAY/g"
}
