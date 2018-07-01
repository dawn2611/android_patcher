#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/base'
    'packages/apps/Settings'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
