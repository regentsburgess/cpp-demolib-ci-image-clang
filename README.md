<<<<<<< HEAD
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
=======
# C++ DemoLib CI Image — Clang

Docker image based on Debian containing Clang/LLVM, CMake, and Ninja for [C++ DemoLib's](https://github.com/regentsburgess/cpp-demolib) CI testing.

## Building via GitHub Actions

The workflow at [`.github/workflows/docker.yml`](./github/workflows/build-publish-image.yml) builds the root `Dockerfile` for every push to a branch or tag.

- **Branch pushes:** build and validate the image without publishing it.
- **Tag pushes:** build the image. A tag is published to `ghcr.io/<repository-owner>/cpp-demolib-ci-image-clang:<tag>` only when its commit is reachable from `main`; tags created solely from a feature branch are never published.

The workflow fetches the full Git history and uses `git merge-base --is-ancestor "$GITHUB_SHA" origin/main` to make this ancestry decision. A tag may therefore publish a historical commit from `main`; it does not need to point to its current tip.

For example, publishing version `v1.0.0`:

```sh
git tag v1.0.0
git push origin v1.0.0
```

The repository's Actions `GITHUB_TOKEN` is used to publish; no additional registry secret is required. Ensure the workflow has permission to write packages (the workflow requests `packages: write`).
>>>>>>> b5164b6 (Pushing to test GH workflow.)
