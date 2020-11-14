#!/usr/bin/env bash
set -eu
# This steps are based on "Development Setup" in CONTRIBUTING.md
# @see https://github.com/pypa/pipenv/blob/a44b9828bd9a4b780bd0404fa133e544da576436/CONTRIBUTING.md#development-setup-dev-setup

# Don't install myself, it's good for testing, but not a good for part of development tools.
# If developing Pipenv is broken, development task will stop.
# pip3 install -e .
# pipenv install --dev
exec "${@}"