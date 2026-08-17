# C++ DemoLib CI Images

Configuration and building of Docker images to support [C++ DemoLib's](https://github.com/regentsburgess/cpp-demolib) CI testing.

## Current Images

- `ghcr.io/regentsburgess/cpp-demolib-ci-image:gcc-14-r2`
- `ghcr.io/regentsburgess/cpp-demolib-ci-image:clang-19-r2`

## Building via GitHub Actions

Images are intended to be built and published via GitHub Actions - it's not required but it's convenient for those that don't have a local Docker setup.

To build the images:

1. Clone this project.
2. Switch to a non-`main` branch (e.g. `git switch -c new_branch_name`) - pushing directly to `main` is disabled for this repo.
3. Change the Dockerfiles and `.github/workflows/build-publish-images.yml` as needed.
   1. The tags (e.g. `gcc-14-r2`) are defined in `build-publish-images.yml`.  
4. Push the non-main branch.  GitHub should build, but not publish the images - a test run.
5. Merge the pull request.  Merging to `main` should build and then published the images to to GHCR.
