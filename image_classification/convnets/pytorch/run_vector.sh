. /ssd003/projects/aieng/envs/mila_benchmark/bin/activate

export CPU_COUNT="$SLURM_CPUS_PER_TASK"
export SUITE_NAME="BenchmarkTest"
dir="results-$(date '+%Y-%m-%d.%H:%M:%S')"
mkdir -p $dir
# change the -b to saturate GPU
python conv_simple.py  /scratch/ssd002/datasets/imagenet256 --repeat 100 -b 32 -j 4 --report "$dir" --number 50 --arch resnet50
