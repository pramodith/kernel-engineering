# kernel-engineering
A repo for learning kernel-engineering/gpu-programming

## Setup

```bash
make setup
```

## Notebooks

| Notebook | Description |
|----------|-------------|
| [Control Divergence](notebooks/control_divergence.ipynb) | Explores warp divergence in GPU kernels — what happens when threads within a warp take different branches, how it serializes execution, and benchmarks the performance cost. |
| [TF32 Precision & Performance](notebooks/tf32_precision_and_performance.ipynb) | Demonstrates TensorFloat-32 (TF32) on Ampere+ GPUs — compares matmul precision (TF32 vs FP32 vs FP16 vs FP64), shows TF32 has FP16's precision but FP32's range, and benchmarks the throughput speedup. |