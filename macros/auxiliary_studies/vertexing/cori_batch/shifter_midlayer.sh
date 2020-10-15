#!/bin/bash

dir="/project/projectdirs/alice/ftorales/"
outdir="/project/projectdirs/alice/ftorales/Singularity/AllSi/macros/auxiliary_studies/vertexing"
if [[ ! -e $outdir/AllSi_midlayer_study ]]; then
    mkdir $outdir/AllSi_midlayer_study
fi

source $dir/Singularity/cvmfs/sphenix.sdcc.bnl.gov/x8664_sl7/opt/sphenix/core/bin/sphenix_setup.sh -n
export MYINSTALL=$dir/Singularity/install
source $dir/Singularity/cvmfs/sphenix.sdcc.bnl.gov/x8664_sl7/opt/sphenix/core/bin/setup_local.sh $MYINSTALL

cd $dir/Singularity/AllSi/macros/auxiliary_studies/vertexing/
root -b -q "Fun4All_G4_middle_layer_matBud.C($2,$3,$4,$5,$9,$6,$7,$8,\"$outdir/AllSi_midlayer_study/out_vtx_$1_$3$4$5_p_$6_$7_GeV_B_$8T_MidLayer$9\")"

rm -rf $outdir/AllSi_midlayer_study/out_vtx_$1_$3$4$5_p_$6_$7_GeV_B_$8T_MidLayer$9_G4LBLVtx.root
