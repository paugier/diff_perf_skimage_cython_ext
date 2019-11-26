DIR_ENV=/tmp/venv_ski_diff_perf

rm -rf $DIR_ENV
python -m virtualenv $DIR_ENV
. $DIR_ENV/bin/activate

pip install scikit-image transonic

python bench_greyreconstruct_reconstruction_loop.py
python bench_greyreconstruct_reconstruction_loop.py
