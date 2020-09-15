##---This is the compile file to compile OSU benchmarks using mvapich2-gdr library

##---Load module---
module load autoload cuda/10.1 profile/advanced mvapich2-gdr/2.3.4--xl--16.1.1--binary

##---get the code---
wget http://mvapich.cse.ohio-state.edu/download/mvapich/osu-micro-benchmarks-5.6.2.tar.gz
tar zxvf ./osu-micro-benchmarks-5.6.2.tar.gz

##---cd the folder---
cd osu-micro-benchmarks-5.6.2/

##---configures---
./configure CC=mpicc CXX=mpicxx
make -j 4

##---Done!
