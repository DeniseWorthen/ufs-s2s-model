
###############################################################################
#
# Export variables to the default values
#  - first common variables, then model specific ones
#  - different machines, different defaults:
#
###############################################################################

if [ $MACHINE_ID = wcoss ]; then

  TASKS_dflt=144 ; TPN_dflt=16 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_stretch=48 ; TPN_stretch=12 ; INPES_stretch=2 ; JNPES_stretch=4
  TASKS_strnest=96 ; TPN_strnest=12 ; INPES_strnest=2 ; JNPES_strnest=4

elif [ $MACHINE_ID = wcoss_cray ]; then

  TASKS_dflt=150 ; TPN_dflt=24 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_thrd=84  ; TPN_thrd=12 ; INPES_thrd=3 ; JNPES_thrd=4
  TASKS_stretch=48 ; TPN_stretch=24 ; INPES_stretch=2 ; JNPES_stretch=4
  TASKS_strnest=96 ; TPN_strnest=24 ; INPES_strnest=2 ; JNPES_strnest=4

elif [ $MACHINE_ID = wcoss_dell_p3 ]; then

  TASKS_dflt=150 ; TPN_dflt=28 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_thrd=84  ; TPN_thrd=14 ; INPES_thrd=3 ; JNPES_thrd=4
  TASKS_stretch=48 ; TPN_stretch=28 ; INPES_stretch=2 ; JNPES_stretch=4
  TASKS_strnest=96 ; TPN_strnest=28 ; INPES_strnest=2 ; JNPES_strnest=4

  TASKS_cpl_dflt_ori=318; TPN_cpl_dflt_ori=28; INPES_cpl_dflt_ori=3; JNPES_cpl_dflt_ori=8
  THRD_cpl_dflt_ori=1; WPG_cpl_dflt_ori=6;  MPB_cpl_dflt_ori="0 143"; APB_cpl_dflt_ori="0 149"
  OPB_cpl_dflt_ori="150 269"; IPB_cpl_dflt_ori="270 317"

  TASKS_cpl_dflt=192; TPN_cpl_dflt=40; INPES_cpl_dflt=3; JNPES_cpl_dflt=8
  THRD_cpl_dflt=1; WPG_cpl_dflt=6;  MPB_cpl_dflt="0 143"; APB_cpl_dflt="0 149"
  OPB_cpl_dflt="150 179"; IPB_cpl_dflt="180 191"

  TASKS_cpl_thrd=246; TPN_cpl_thrd=14; INPES_cpl_thrd=3; JNPES_cpl_thrd=4
  THRD_cpl_thrd=2; WPG_cpl_thrd=6;  MPB_cpl_thrd="0 77";  APB_cpl_thrd="0 77"
  OPB_cpl_thrd="78 197";  IPB_cpl_thrd="198 245"

  TASKS_cpl_bmrk=480; TPN_cpl_bmrk=28; INPES_cpl_bmrk=6; JNPES_cpl_bmrk=8
  THRD_cpl_bmrk=1; WPG_cpl_bmrk=24; MPB_cpl_bmrk="0 287"; APB_cpl_bmrk="0 311"
  OPB_cpl_bmrk="312 431"; IPB_cpl_bmrk="432 479"

  TASKS_cpl_wwav=520; TPN_cpl_wwav=28; INPES_cpl_wwav=6; JNPES_cpl_wwav=8
  THRD_cpl_wwav=1; WPG_cpl_wwav=24; MPB_cpl_wwav="0 287"; APB_cpl_wwav="0 311"
  OPB_cpl_wwav="312 431"; IPB_cpl_wwav="432 479"; WPB_cpl_wwav="480 519"

elif [[ $MACHINE_ID = orion.* ]]; then

  TASKS_dflt=150 ; TPN_dflt=24 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_thrd=84  ; TPN_thrd=12 ; INPES_thrd=3 ; JNPES_thrd=4
  TASKS_stretch=48 ; TPN_stretch=12 ; INPES_stretch=2 ; JNPES_stretch=4
  TASKS_strnest=96 ; TPN_strnest=12 ; INPES_strnest=2 ; JNPES_strnest=4

  TASKS_cpl_dflt_ori=318; TPN_cpl_dflt_ori=40; INPES_cpl_dflt_ori=3; JNPES_cpl_dflt_ori=8
  THRD_cpl_dflt_ori=1; WPG_cpl_dflt_ori=6;  MPB_cpl_dflt_ori="0 143"; APB_cpl_dflt_ori="0 149"
  OPB_cpl_dflt_ori="150 269"; IPB_cpl_dflt_ori="270 317"

  TASKS_cpl_dflt=192; TPN_cpl_dflt=40; INPES_cpl_dflt=3; JNPES_cpl_dflt=8
  THRD_cpl_dflt=1; WPG_cpl_dflt=6;  MPB_cpl_dflt="0 143"; APB_cpl_dflt="0 149"
  OPB_cpl_dflt="150 179"; IPB_cpl_dflt="180 191"

  TASKS_cpl_thrd=246; TPN_cpl_thrd=40; INPES_cpl_thrd=3; JNPES_cpl_thrd=4
  THRD_cpl_thrd=2; WPG_cpl_thrd=6;  MPB_cpl_thrd="0 77";  APB_cpl_thrd="0 77"
  OPB_cpl_thrd="78 197";  IPB_cpl_thrd="198 245"

  TASKS_cpl_bmrk=480; TPN_cpl_bmrk=40; INPES_cpl_bmrk=6; JNPES_cpl_bmrk=8
  THRD_cpl_bmrk=1; WPG_cpl_bmrk=24; MPB_cpl_bmrk="0 287"; APB_cpl_bmrk="0 311"
  OPB_cpl_bmrk="312 431"; IPB_cpl_bmrk="432 479"

  TASKS_cpl_wwav=520; TPN_cpl_wwav=40; INPES_cpl_wwav=6; JNPES_cpl_wwav=8
  THRD_cpl_wwav=1; WPG_cpl_wwav=24; MPB_cpl_wwav="0 287"; APB_cpl_wwav="0 311"
  OPB_cpl_wwav="312 431"; IPB_cpl_wwav="432 479"; WPB_cpl_wwav="480 519"

  TASKS_cpl_c192=288; TPN_cpl_c192=40; INPES_cpl_c192=4; JNPES_cpl_c192=8
  THRD_cpl_c192=1; WPG_cpl_c192=12;  MPB_cpl_c192="0 191"; APB_cpl_c192="0 203"
  OPB_cpl_c192="204 263"; IPB_cpl_c192="264 287"

elif [[ $MACHINE_ID = hera.* ]]; then

  TASKS_dflt=150 ; TPN_dflt=40 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_thrd=84  ; TPN_thrd=20 ; INPES_thrd=3 ; JNPES_thrd=4
  TASKS_stretch=48 ; TPN_stretch=12 ; INPES_stretch=2 ; JNPES_stretch=4
  TASKS_strnest=96 ; TPN_strnest=12 ; INPES_strnest=2 ; JNPES_strnest=4

  TASKS_cpl_dflt_ori=318; TPN_cpl_dflt_ori=40; INPES_cpl_dflt_ori=3; JNPES_cpl_dflt_ori=8
  THRD_cpl_dflt_ori=1; WPG_cpl_dflt_ori=6;  MPB_cpl_dflt_ori="0 143"; APB_cpl_dflt_ori="0 149"
  OPB_cpl_dflt_ori="150 269"; IPB_cpl_dflt_ori="270 317"

  TASKS_cpl_dflt=192; TPN_cpl_dflt=40; INPES_cpl_dflt=3; JNPES_cpl_dflt=8
  THRD_cpl_dflt=1; WPG_cpl_dflt=6;  MPB_cpl_dflt="0 143"; APB_cpl_dflt="0 149"
  OPB_cpl_dflt="150 179"; IPB_cpl_dflt="180 191"

  TASKS_cpl_thrd=246; TPN_cpl_thrd=40; INPES_cpl_thrd=3; JNPES_cpl_thrd=4
  THRD_cpl_thrd=2; WPG_cpl_thrd=6;  MPB_cpl_thrd="0 77";  APB_cpl_thrd="0 77"
  OPB_cpl_thrd="78 197";  IPB_cpl_thrd="198 245"

  TASKS_cpl_bmrk=480; TPN_cpl_bmrk=40; INPES_cpl_bmrk=6; JNPES_cpl_bmrk=8
  THRD_cpl_bmrk=1; WPG_cpl_bmrk=24; MPB_cpl_bmrk="0 287"; APB_cpl_bmrk="0 311"
  OPB_cpl_bmrk="312 431"; IPB_cpl_bmrk="432 479"

  TASKS_cpl_wwav=520; TPN_cpl_wwav=40; INPES_cpl_wwav=6; JNPES_cpl_wwav=8
  THRD_cpl_wwav=1; WPG_cpl_wwav=24; MPB_cpl_wwav="0 287"; APB_cpl_wwav="0 311"
  OPB_cpl_wwav="312 431"; IPB_cpl_wwav="432 479"; WPB_cpl_wwav="480 519"

  TASKS_cpl_c192=288; TPN_cpl_c192=40; INPES_cpl_c192=4; JNPES_cpl_c192=8
  THRD_cpl_c192=1; WPG_cpl_c192=12;  MPB_cpl_c192="0 191"; APB_cpl_c192="0 203"
  OPB_cpl_c192="204 263"; IPB_cpl_c192="264 287"

elif [[ $MACHINE_ID = jet.* ]]; then

  TASKS_dflt=150 ; TPN_dflt=24 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_thrd=84  ; TPN_thrd=12 ; INPES_thrd=3 ; JNPES_thrd=4
  TASKS_stretch=48 ; TPN_stretch=12 ; INPES_stretch=2 ; JNPES_stretch=4
  TASKS_strnest=96 ; TPN_strnest=12 ; INPES_strnest=2 ; JNPES_strnest=4

elif [[ $MACHINE_ID = gaea.* ]]; then

  TASKS_dflt=150 ; TPN_dflt=36 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_thrd=84  ; TPN_thrd=18 ; INPES_thrd=3 ; JNPES_thrd=4
  TASKS_stretch=48 ; TPN_stretch=18 ; INPES_stretch=2 ; JNPES_stretch=4
  TASKS_strnest=96 ; TPN_strnest=18 ; INPES_strnest=2 ; JNPES_strnest=4

elif [[ $MACHINE_ID = cheyenne.* ]]; then

  TASKS_dflt=150 ; TPN_dflt=36 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_thrd=84  ; TPN_thrd=18 ; INPES_thrd=3 ; JNPES_thrd=4
  TASKS_stretch=48 ; TPN_stretch=18 ; INPES_stretch=2 ; JNPES_stretch=4
  TASKS_strnest=96 ; TPN_strnest=18 ; INPES_strnest=2 ; JNPES_strnest=4

elif [[ $MACHINE_ID = stampede.* ]]; then

  TASKS_dflt=150 ; TPN_dflt=48 ; INPES_dflt=3 ; JNPES_dflt=8
  TASKS_thrd=84  ; TPN_thrd=24 ; INPES_thrd=3 ; JNPES_thrd=4
  TASKS_stretch=48 ; TPN_stretch=12 ; INPES_stretch=2 ; JNPES_stretch=4

else

  echo "Unknown MACHINE_ID ${MACHINE_ID}"
  exit 1

fi

# Re-instantiate COMPILER in case it gets deleted by module purge
COMPILER=${NEMS_COMPILER:-intel}
# Longer default walltime for GNU and PGI
if [[ $COMPILER = gnu ]] || [[ $COMPILER = pgi ]]; then
    WLCLK_dflt=30
else
    WLCLK_dflt=30
fi

export_fv3 ()
{
export THRD=1
export WLCLK=$WLCLK_dflt
export INPES=$INPES_dflt
export JNPES=$JNPES_dflt
export TASKS=$TASKS_dflt
export TPN=$TPN_dflt
export RESTART_INTERVAL=0
export QUILTING=.true.
export WRITE_GROUP=1
export WRTTASK_PER_GROUP=6
export OUTPUT_HISTORY=.true.
export WRITE_DOPOST=.false.
export NUM_FILES=2
export FILENAME_BASE="'dyn' 'phy'"
export OUTPUT_GRID="'cubed_sphere_grid'"
export OUTPUT_FILE="'netcdf'"
export WRITE_NEMSIOFLIP=.false.
export WRITE_FSYNCFLAG=.false.
export IMO=384
export JMO=190

# Coldstart/warmstart
export WARM_START=.F.
export READ_INCREMENT=.F.
export NGGPS_IC=.T.
export EXTERNAL_IC=.T.
export MAKE_NH=.T.
export MOUNTAIN=.F.
export NA_INIT=1
# Radiation
export DO_RRTMGP=.F.
# Microphysics
export IMP_PHYSICS=11
# GFDL MP
export DNATS=1
export DO_SAT_ADJ=.T.
export LHEATSTRG=.F.
export LGFDLMPRAD=.F.
export EFFR_IN=.F.
# Thompson MP
export LRADAR=.T.
export LTAEROSOL=.T.

# GWD
export LDIAG_UGWP=.F.
export DO_UGWP=.F.
export DO_TOFD=.F.
export GWD_OPT=1

# PBL
export SATMEDMF=.F.
export ISATMEDMF=0
export HYBEDMF=.T.
export SHINHONG=.F.
export DO_YSU=.F.
export DO_MYNNEDMF=.F.
export DO_MYJPBL=.F.

# Shallow/deep convection
export IMFSHALCNV=2
export IMFDEEPCNV=2

# SFC
export DO_MYJSFC=.F.

# LSM
export LSM=1
export LSOIL_LSM=4
export LANDICE=.T.

# Ozone / stratospheric H2O
export OZ_PHYS_OLD=.T.
export OZ_PHYS_NEW=.F.
export H2O_PHYS=.F.

export CPL=.F. #TODO fv3_defaults use CPL=.false. check equivalency.
export CPLFLX=.F.
export CPLWAV=.F.
export CPLWAV2ATM=.F.
export DAYS=1
export NPX=97
export NPY=97
export NPZ=64
export NPZP=65
export NSTF_NAME=2,1,1,0,5
export FDIAG=0,1,2,3,4,5,6,7,8,9,10,11,12,15,18,21,24
export NFHOUT=3
export NFHMAX_HF=12
export NFHOUT_HF=1
export FNALBC="'global_snowfree_albedo.bosu.t126.384.190.rg.grb',"
export FNVETC="'global_vegtype.igbp.t126.384.190.rg.grb',"
export FNSOTC="'global_soiltype.statsgo.t126.384.190.rg.grb',"
export FNSMCC="'global_soilmgldas.t126.384.190.grb',"
export FNABSC="'global_mxsnoalb.uariz.t126.384.190.rg.grb',"

export ENS_NUM=1
export SYEAR=2016
export SMONTH=10
export SDAY=03
export SHOUR=00
export FHMAX=${FHMAX:-`expr $DAYS \* 24`}
export DT_ATMOS=1800
export FHCYC=24

# Stochastic physics
export DO_SPPT=.F.
export DO_SHUM=.F.
export DO_SKEB=.F.
export LNDP_TYPE=0
export N_VAR_LNDP=0
export SKEB=-999.
export SPPT=-999.
export SHUM=-999.

#IAU
export IAU_INC_FILES="''"
export IAU_DRYMASSFIXER=.false.

#Cellular automata
export DO_CA=.F.
export CA_SGS=.F.
export CA_GLOBAL=.F.
}

export_cpl ()
{
export DAYS="2"
export FHMAX="48"
export FDIAG="6"
export WLCLK=30

# default atm/ocn/ice resolution
export ATMRES='C96'
export OCNRES='100'
export ICERES='1.00'
export NX_GLB=360
export NY_GLB=320

# default resources
export TASKS=$TASKS_cpl_dflt
export TPN=$TPN_cpl_dflt
export INPES=$INPES_cpl_dflt
export JNPES=$JNPES_cpl_dflt
export THRD=$THRD_cpl_dflt
export WRTTASK_PER_GROUP=$WPG_cpl_dflt

export med_petlist_bounds=$MPB_cpl_dflt
export atm_petlist_bounds=$APB_cpl_dflt
export ocn_petlist_bounds=$OPB_cpl_dflt
export ice_petlist_bounds=$IPB_cpl_dflt

# component and coupling timesteps
export DT_ATMOS='900'
export DT_CICE=${DT_ATMOS}
export DT_DYNAM_MOM6='1800'
export DT_THERM_MOM6='3600'
export CPL_SLOW=${DT_THERM_MOM6}
export CPL_FAST=${DT_ATMOS}

# nems.configure defaults
export NEMS_CONFIGURE="nems.configure.medcmeps_atm_ocn_ice.IN"
export med_model="nems"
export atm_model="fv3"
export ocn_model="mom6"
export ice_model="cice6"
export wav_model="ww3"

export coupling_interval_slow_sec=${CPL_SLOW}
export coupling_interval_fast_sec=${CPL_FAST}

export FV3_RESTART_INTERVAL=${FHMAX}
export CPLMODE='nems_orig'
export cap_dbug_flag="0"
export use_coldstart="false"
export RUNTYPE='startup' 

# FV3 defaults
# using new oro and ics created from 1deg ocean mask on c96 tiles
# set frac_grid=.F. but use_frac_grid_input=.T.
# to repro existing tests set both frac_grid and use_frac_grid_input to .F.
# to run frac_grid, set both frac_grid and use_frac_grid_inputs to .T.
# use_frac_grid_input setting can be removed once the existing tests are dropped
export FRAC_GRID='.F.'
export use_frac_grid_input='.T.'
export SUITE_NAME="FV3_GFS_2017_coupled"
export INPUT_NML=input.mom6_ccpp.nml.IN
export FIELD_TABLE="field_table"

export FHROT='0'
export NSOUT='-1'
export FDIAG='6'
export NFHOUT='6'
#no high freq fv3 output
export NFHMAX_HF='-1'
export NFHOUT_HF='-1'

export CPLFLX='.T.'
export CPL='.true.'
export NSTF_NAME='0,0,0,0,0'

# for FV3: default values will be changed if doing a warm-warm restart
export WARM_START='.F.'
export MAKE_NH='.T.'
export NA_INIT='1'
export EXTERNAL_IC='.T.'
export NGGPS_IC='.T.'
export MOUNTAIN='.F.'

# MOM6 defaults; 1 degree
export MOM_INPUT=MOM_input_template_100
export MOM6_RESTART_SETTING='n'
export MOM6_RIVER_RUNOFF='False'
export FRUNOFF=""
export CHLCLIM="seawifs_1998-2006_smoothed_2X.nc"
# set USE_LA_LI2016 to the current default; this must be set False for restart repro 
export MOM6_REPRO_LA='True'
# set the THERMO_SPANS_COUPLING to the current default; according to Gustavo and Alper, the correct setting is "False"
export MOM6_THERMO_SPAN='True'

# CICE6 defaults; 1 degree
export NPROC_ICE='12'
export MESHICE="mesh.mx${OCNRES}.nc"
export CICEGRID="grid_cice_NEMS_mx${OCNRES}.nc"
export CICEMASK="kmtu_cice_NEMS_mx${OCNRES}.nc"
export RUNID='unknown'
export DUMPFREQ='d' 
export DUMPFREQ_N=${DAYS}
export USE_RESTART_TIME='.false.'
export RESTART_EXT='.false'
# setting to true will allow Frazil FW and Salt to be
# included in fluxes sent to ocean
export FRAZIL_FWSALT='.true.'
# default to write CICE average history files
export CICE_HIST_AVG='.true.'

export RESTART_PREFIX=''
export RESTART_SUFFIX=''
}
export_35d_run ()
{
export CNTL_DIR=""
export LIST_FILES=""
}
