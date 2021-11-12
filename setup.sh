#!/bin/bash -eu

export PLUGIN_NAME=MyFirstPlugin
export TARGET_FRAMEWORK=net46
export UNITY_VERSION=2018.4.11
dotnet new bepinex5plugin -n "${PLUGIN_NAME}" -T "${TARGET_FRAMEWORK}" -U "${UNITY_VERSION}"
