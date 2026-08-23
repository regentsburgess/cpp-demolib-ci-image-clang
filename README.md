# C++ DemoLib CI Image - Clang

Configuration and building of a Docker image with a Clang/LLVM toolchain to support [C++ DemoLib's](https://github.com/regentsburgess/cpp-demolib) CI testing.

The project's workflow builds the image on every push and publishes the image on releases from `main`.

See the [Releases page](https://github.com/regentsburgess/cpp-demolib-ci-image-clang/releases) for a list of images.

## Building via GitHub Actions

1. Clone this project.
2. Create a feature branch for your changes. Pushing directly to `main` is disabled for this repo.
3. Change the image's [Dockerfile](./Dockerfile) as needed.
4. Push the feature branch. The workflow will build, but not publish, the image.
5. Create a pull request and merge the feature branch into main.
6. Create a release. The workflow will build and publish an image with a tag that matches the release tag.
