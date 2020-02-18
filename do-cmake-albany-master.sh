#!/bin/sh

export ALB_64BIT_INT=OFF
export ALB_EPETRA=ON
export ALB_ENABLE_SCOREC=ON
export ALB_ENABLE_LCM=ON
export ALB_ENABLE_LAME=OFF
export ALB_ENABLE_HYDRIDE=ON
export ALB_ENABLE_QCAD=ON
export ALB_ENABLE_MOR=ON
export ALB_ENABLE_ASCR=OFF
export ALB_ENABLE_AERAS=ON
export ALB_ENABLE_ATO=ON
export ALB_ENABLE_GOAL=ON
export ALB_ENABLE_AMP=OFF
export ALB_ENABLE_LANDICE=ON
export ALB_ENABLE_AlbanyCI=OFF
export ALB_DEBUG=OFF
#export ALB_ENABLE_CHECK_FPE=ON
export ALB_ENABLE_CHECK_FPE=OFF
export ALB_ENABLE_SPECULATIVE=OFF
export ALB_ENABLE_SG_MP=OFF
export ALB_ENABLE_PERF_TESTS=ON
export TRILINOS_INSTALL_DIR=/space/Trilinos/install
export ALB_LAME_INC_DIR=/projects/albany/src/lame-4.24.1/include
export ALB_LAME_LIB_DIR=/projects/albany/src/lame-4.24.1/build
#export ALB_CXX_FLAGS="-ftemplate-depth=1024"
export ALB_VERBOSE=OFF

cmake \
      -D ALBANY_TRILINOS_DIR:FILEPATH="$TRILINOS_INSTALL_DIR" \
      -D ENABLE_LCM:BOOL=${ALB_ENABLE_LCM} \
      -D ENABLE_AERAS:BOOL=${ALB_ENABLE_AERAS} \
      -D ENABLE_QCAD:BOOL=${ALB_ENABLE_QCAD} \
      -D ENABLE_HYDRIDE:BOOL=${ALB_ENABLE_HYDRIDE} \
      -D ENABLE_LCM_SPECULATIVE:BOOL=${ALB_ENABLE_SPECULATIVE} \
      -D ENABLE_LAME:BOOL=${ALB_ENABLE_LAME} \
      -D CMAKE_VERBOSE_MAKEFILE:BOOL=${ALB_VERBOSE} \
      -D ENABLE_DEBUGGING:BOOL=${ALB_DEBUG} \
      -D ENABLE_CHECK_FPE:BOOL=${ALB_ENABLE_CHECK_FPE} \
      -D ENABLE_SCOREC:BOOL=${ALB_ENABLE_SCOREC} \
      -D ENABLE_LANDICE:BOOL=${ALB_ENABLE_LANDICE} \
      -D ENABLE_ATO:BOOL=${ALB_ENABLE_ATO} \
      -D ENABLE_AMP:BOOL=${ALB_ENABLE_AMP} \
      -D ENABLE_GOAL:BOOL=${ALB_ENABLE_GOAL} \
      -D ENABLE_MOR:BOOL=${ALB_ENABLE_MOR} \
      -D ENABLE_ALBANY_CI:BOOL=${ALB_ENABLE_AlbanyCI} \
      -D ENABLE_ASCR:BOOL=${ALB_ENABLE_ASCR} \
      -D ENABLE_SG_MP:BOOL=${ALB_ENABLE_SG_MP} \
      -D ENABLE_PERFORMANCE_TESTS:BOOL=${ALB_ENABLE_PERF_TESTS} \
      -D LAME_INCLUDE_DIR:FILEPATH="$ALB_LAME_INC_DIR" \
      -D LAME_LIBRARY_DIR:FILEPATH="$ALB_LAME_LIB_DIR" \
      -D ALBANY_CTEST_TIMEOUT:INTEGER=70 \
      -D ENABLE_64BIT_INT:BOOL=${ALB_64BIT_INT} \
      -D ENABLE_ALBANY_EPETRA:BOOL=${ALB_EPETRA} \
\
..

#      -D ALBANY_CXX_FLAGS:STRING=${ALB_CXX_FLAGS} \