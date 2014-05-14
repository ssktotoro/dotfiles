# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and funcitons
 #. /home/hep/share/.hep_bash_profile

# -------------------------- Aliases ---------------------------------------- #
if [ -f $SETUPDIR/jloyal_aliases.sh ]; then
    source $SETUPDIR/jloyal_aliases.sh 
fi

# -------------------------- Command Prompt ---------------------------------- #
if [ -f $SETUPDIR/jloyal_prompt.sh ]; then
    source $SETUPDIR/jloyal_prompt.sh 
fi

# set the appropriate ls color coding
eval "$(dircolors $HOME/.dir_colors)"

# -------------------------- Environmental Variables ------------------------- #

# PATH
#SPECIFICPATH=$HOME/tagging/tagging-performance/scripts/ # path for this computer
PATH=$PATH:$HOME/bin:./:$SPECIFICPATH
export PATH

# Text Editors
export SVN_EDITOR="vi"

# Python
export PYTHONPATH=$HOME/scripts/python/rootmodules:$ROOTSYS/lib:$PYTHONPATH

# c++ (boost)
#export BOOST_DIR= #$HOME/cpp/boost_1_50_0
#export BOOST_BUILD_PATH= #$BOOST_DIR/tools/build/v2
#PATH=$BOOST_DIR/tools/build/v2:$PATH
#CPLUS_INCLUDE_PATH=$BOOST_DIR:$CPLUS_INCLUDE_PATH

# ATLAS SW
export ATLAS_LOCAL_ROOT_BASE=/lustre/home/client/hep/share/app/atlas/ATLASLocalRootBase
#export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source $ATLAS_LOCAL_ROOT_BASE/user/atlasLocalSetup.sh

# ROOT shit...
#export ROOTSYS=/share/cern/root
#export LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH
#export PATH=$HOME/scripts/startup:$PATH
#export GCCXMLPATH=/cvmfs/atlas.cern.ch/repo/sw/software/i686-slc5-gcc43-opt/17.0.4/LCGCMT/LCGCMT_60d/InstallArea/i686-slc5-gcc43-opt/bin/gccxml:$GCCXMLPATH
#export GCCXMLPATH=/cvmfs/atlas.cern.ch/repo/sw/software/i686-slc5-gcc43-opt/16.6.5/LCGCMT/LCGCMT_59a/InstallArea/i686-slc5-gcc43-opt/bin/gccxml

# svn variables
export SVNOFF=svn+ssh://svn.cern.ch/reps/atlasoff
export SVNGRP=svn+ssh://svn.cern.ch/reps/atlasgrp
export SVNGROUPS=svn+ssh://svn.cern.ch/reps/atlasgroups
export SVNPHYS=svn+ssh://svn.cern.ch/reps/atlasphys
export SVNPERF=svn+ssh://svn.cern.ch/reps/atlasperf
export SVNINST=svn+ssh://svn.cern.ch/reps/atlasinst/Institutes
export SVNUSR=svn+ssh://svn.cern.ch/reps/atlasusr/jloyal
export SVNROOT=svn+ssh://svn.cern.ch/reps/atlasoff

# directory variables
#export HCC_DATA=/group/atlas/data/users/jdl67
#export SNOWMASS_DATA=/group/atlas/data/D3PDs/SnowmassSUSYCompressed/

# KINIT
export KRB5_CONFIG=$HOME/kerberos/krb5.conf
