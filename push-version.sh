#!/usr/bin/env bash
set -euxo pipefail

VERSION=${1}

if [[ $VERSION != v* ]]; then
    VERSION="v${VERSION}"
fi

git tag "${VERSION}" || true
git push origin main || true
git push origin "${VERSION}"
