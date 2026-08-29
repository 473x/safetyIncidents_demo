# Binder runs this pre-built, frozen image instead of rebuilding the
# environment from requirements.txt/runtime.txt (which are kept for the record
# and for future re-freezes). Built 2026-08-29 from commit 1d5be17 by the
# "Build and push Binder image" workflow (.github/workflows/build-image.yml).
#
# To update the environment: delete this Dockerfile, edit requirements.txt /
# runtime.txt, push a freeze-* tag, then restore this file pointing at the new
# image tag (the commit SHA shown in the workflow run / GHCR package page).
FROM ghcr.io/473x/safetyincidents_demo:1d5be17a9004

# Overlay the current repo content so notebook/data edits take effect without
# re-freezing the environment (the frozen image bakes in the repo as of its
# build commit). 1000 is the jovyan user in repo2docker images.
COPY --chown=1000:1000 . .
