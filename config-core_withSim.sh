cmake .. \
  -DCMAKE_C_COMPILER="mpicc" \
  -DCMAKE_CXX_COMPILER="mpicxx" \
  -DSIM_MPI="mpich3.1.2" \
  -DENABLE_ZOLTAN=ON \
  -DCMAKE_INSTALL_PREFIX="../install" \
  -DIS_TESTING=True \
  -DMESHES="/lore/hur3/core/pumi-meshes" \
  -DENABLE_SIMMETRIX=True \
