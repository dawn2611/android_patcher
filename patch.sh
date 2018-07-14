#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'device/xiaomi/mido'
    'device/xiaomi/msm8953-common'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
