#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2025 Aminda Suomalainen <suomalainen@aminda.eu>
#
# SPDX-License-Identifier: CC0-1.0

# Pass the original filename as an argument to this script and it will do the
# rest!

magick "$1" -resize "250x250" -quality 100 "250.jpeg"
magick "$1" -resize "128x128" -quality 100 "128.jpeg"
magick "$1" -resize "90x90" -quality 100 "90.jpeg"
