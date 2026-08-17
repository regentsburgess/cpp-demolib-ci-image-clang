# syntax=docker/dockerfile:1

FROM debian:trixie-slim

ARG CMAKE_MINIMUM_VERSION=3.30

LABEL org.opencontainers.image.title="DemoLib Clang CI toolchain" \
      org.opencontainers.image.description="Clang/LLVM 19, CMake, and Ninja for DemoLib CI" \
      org.opencontainers.image.source="https://github.com/regentsburgess/cpp-demolib-ci-image" \
      org.opencontainers.image.licenses="MIT"

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        ca-certificates \
        clang-19 \
        clang-format-19 \
        clang-tidy-19 \
        cmake \
        git \
        libclang-rt-19-dev \
        ninja-build \
        llvm-19 \
    && dpkg --compare-versions "$(cmake --version | awk 'NR == 1 { print $3 }')" ge "${CMAKE_MINIMUM_VERSION}" \
    && rm -rf /var/lib/apt/lists/*

ENV CC=clang-19 \
    CXX=clang++-19

RUN "$CC" --version \
    && "$CXX" --version \
    && clang-format-19 --version \
    && clang-tidy-19 --version \
    && llvm-cov-19 --version \
    && llvm-profdata-19 --version \
    && llvm-symbolizer-19 --version \
    && cmake --version \
    && ninja --version
