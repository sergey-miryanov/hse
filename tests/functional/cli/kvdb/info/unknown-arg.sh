#!/usr/bin/env bash

# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# SPDX-FileCopyrightText: Copyright 2021 Micron Technology, Inc.

. common.subr

trap cleanup EXIT

output=$(cmd -e hse kvdb info --does-not-exist 2>&1)

echo "$output" | cmd grep -F "hse kvdb info: invalid option '--does-not-exist', use -h for help"
