# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

A learning repository for GPU kernel engineering and GPU programming. Work is organized as Jupyter notebooks in `notebooks/`, using NVIDIA CUTLASS DSL (CuTe) and PyTorch for writing and benchmarking CUDA kernels from Python.

## Setup

```bash
make setup    # installs uv (if needed), runs uv sync --dev
```

Uses `uv` for package management. Python 3.13. Virtual environment lives in `.venv/`.

## Key Dependencies

- **nvidia-cutlass / nvidia-cutlass-dsl** — CuTe DSL for writing GPU kernels in Python (`cutlass.cute`)
- **torch** — tensor allocation, CUDA device management, correctness checks
- **triton** — used for `triton.testing.do_bench` benchmarking utility

## Architecture

- `notebooks/` — Jupyter notebooks, each exploring a specific GPU programming concept (e.g., control divergence, warp behavior). Notebooks contain both kernel code and benchmarks.
- Kernels are written using CuTe DSL decorators: `@cute.kernel` for device code, `@cute.jit` for host launch functions.
- Benchmarking pattern: `triton.testing.do_bench` with warmup/rep for reliable GPU timings, typically sweeping across multiple input sizes.

## Running Notebooks

Notebooks are the primary development artifact. Run them in Jupyter or execute cells via an ipython/jupyter CLI. Kernels require a CUDA-capable GPU.
