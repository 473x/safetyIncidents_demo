# Binder runs this pre-built, frozen image instead of rebuilding the
# environment from requirements.txt/runtime.txt (which are kept for the record
# and for future re-freezes). Built 2026-08-29 from commit 1d5be17 by the
# "Build and push Binder image" workflow (.github/workflows/build-image.yml).
#
# To update the environment: delete this Dockerfile, edit requirements.txt /
# runtime.txt, push a freeze-* tag, then restore this file pointing at the new
# image tag (the commit SHA shown in the workflow run / GHCR package page).
FROM ghcr.io/473x/safetyincidents_demo:1d5be17a9004
