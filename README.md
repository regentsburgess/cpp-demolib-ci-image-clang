# C++ DemoLib CI Image - Clang

Docker image configuration and build files for a Clang/LLVM toolchain used by [C++ DemoLib's](https://github.com/regentsburgess/cpp-demolib) CI testing.

## Image Releases

See the project's [Packages](https://github.com/regentsburgess/cpp-demolib-ci-image-clang/pkgs/container/cpp-demolib-ci-image-clang) page for:

- A list of recent image tags (e.g. `latest`, `v1.0.0`)
- An image pull address (e.g. `ghcr.io/regentsburgess/cpp-demolib-ci-image-clang:latest`)

## Building and Publishing via GitHub Actions

This project's workflow ([build-publish-image.yml](.github/workflows/build-publish-image.yml)):

- Builds the image on every push to a branch with an open [pull request (PR)](https://github.com/regentsburgess/cpp-demolib-ci-image-clang/pulls).
- Publishes the image to GitHub Container Registry (GHCR) on [Releases](https://github.com/regentsburgess/cpp-demolib-ci-image-clang/releases) from `main`.

## How to Update the Image

1. Create a feature branch and PR for the update.
2. Push the feature branch changes.
3. Merge the feature branch's pull request into `main`
4. Create a release.
