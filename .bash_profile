# first we need to source the global bash_profile                                                                                                                                                           
source /usr/local/etc/.bash_profile

export PATH
#setenv PRINTER p1                                                                                                                                                                                          

alias ls='ls -CF --color -a -l -h'
alias cat='cat -n'
export EDITOR=vim
alias hur3='cd /lore/hur3'
alias build='cd /lore/hur3/Albany_57/build'
alias evaluator='cd /lore/hur3/Albany_57/src/TDM/evaluators'
alias src='cd /lore/hur3/Albany_57/src'
alias tdm='cd /lore/hur3/Albany_57/src/TDM'


if ( test -f /etc/redhat-release ); then
 source ~/.bashrc
 #setup lmod                                                                                                                                                                                                
 export PATH=/usr/share/lmod/lmod/libexec:$PATH
 #setup spack modules                                                                                                                                                                                       
 unset MODULEPATH
 module use /opt/scorec/spack/lmod/linux-rhel7-x86_64/Core/
 module use /opt/scorec/modules
 # remember to source the environment config for running Albany                                                                                                                                             
 source ~/envRhel7.sh
 module load gcc
 module load mpich
 module load simmetrix/simModeler
 module load simmetrix-simmodsuite
 module load pumi/develop-int32-shared-sim-4h5fi2k
 module load paraview
 module load totalview
 alias input="cd /lore/hur3/June_19/UpdateTcond/laser300dt0025soeed03_20s"
 alias albany="cd /lore/hur3/Albany_57/"
else

 module load git
 module load cmake
 module load gcc/4.9.2
 module load mpich3/3.1.2-thread-multiple
 module load gdb
 module load trilinos/latest
 module load simmetrix/simModeler
 module load simmetrix/simModSuite
 module load paraview
fi
