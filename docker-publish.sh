#!/bin/bash

# -----------------------------------------------------------------------------
# Clientverse - Online CRM
#
# @package     Clientverse
# @author      A.Tselegidis <alextselegidis@gmail.com>
# @copyright   Copyright (c) Alex Tselegidis
# @license     https://opensource.org/licenses/GPL-3.0 - GPLv3
# @link        https://clientverse.org
# -----------------------------------------------------------------------------

##
# Publish a docker image tag for a Clientverse release.
#
# Usage:
#
#  ./docker-publish.sh <version>
#
# Example:
#
#   ./docker-publish.sh 1.5.0
#

DEFAULT_VERSION=1.5.0

VERSION="${1:-$DEFAULT_VERSION}"

docker buildx build --push --platform linux/amd64,linux/arm64 -t alextselegidis/clientverse:${VERSION} --build-arg VERSION=${VERSION} .
