# kernel-engineering
A repo for learning kernel-engineering/gpu-programming

## Setup

```bash
make setup
```

## Notebooks

| Notebook | Description |
|----------|-------------|
| [Control Divergence](notebooks/control_divergence.ipynb) | Explores warp divergence in GPU kernels: what happens when threads within a warp take different branches, how it serializes execution, and benchmarks the performance cost. |
| [TF32 Precision & Performance](notebooks/tf32_precision_and_performance.ipynb) | Demonstrates TensorFloat32 (TF32) on Ampere+ GPUs. Compares matmul precision (TF32 vs FP32 vs FP16 vs FP64), shows TF32 has FP16's precision but FP32's range, and benchmarks the throughput speedup. |
| [GPU Memory Hierarchy & Data Movement](notebooks/cute_data_transfer.ipynb) | Walks through the GPU memory hierarchy (RMEM, SMEM, GMEM) using CuTe DSL. Covers GMEM/RMEM scalar and vectorized copies, GMEM to SMEM via `cp.async`, commit groups, copy atoms, and PTX analysis of each path. |