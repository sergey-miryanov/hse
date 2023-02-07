#!/usr/bin/env bash

# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# SPDX-FileCopyrightText: Copyright 2021 Micron Technology, Inc.

. common.subr

trap cleanup EXIT

output=$(cmd hse kvdb info -h)

echo "$output" | cmd grep -F "Usage: hse kvdb info [options] <kvdb_home>"
echo "$output" | cmd grep -F "Options:"
