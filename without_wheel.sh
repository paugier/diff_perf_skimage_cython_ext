DIR_ENV=/tmp/venv_ski_diff_perf_nowheel

rm -rf $DIR_ENV
python -m virtualenv $DIR_ENV
. $DIR_ENV/bin/activate

pip install numpy transonic
pip install scikit-image --no-binary scikit-image

python bench_greyreconstruct_reconstruction_loop.py
python bench_greyreconstruct_reconstruction_loop.py
