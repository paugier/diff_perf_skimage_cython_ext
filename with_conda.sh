conda create -n venv_ski_diff_perf scikit-image -c conda-forge -y
conda activate venv_ski_diff_perf
pip install transonic

python bench_greyreconstruct_reconstruction_loop.py
python bench_greyreconstruct_reconstruction_loop.py
# 4.27e-05 s