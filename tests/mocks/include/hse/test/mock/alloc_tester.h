/* SPDX-License-Identifier: Apache-2.0 OR MIT
 *
 * SPDX-FileCopyrightText: Copyright 2015 Micron Technology, Inc.
 */

#ifndef MOCK_ALLOC_TESTER_H
#define MOCK_ALLOC_TESTER_H

struct mtf_test_info;

typedef void(mapi_alloc_tester_run_fn)(struct mtf_test_info *, unsigned, unsigned);

typedef void(mapi_alloc_tester_clean_fn)(struct mtf_test_info *);

int
mapi_alloc_tester(
    struct mtf_test_info *      lcl_ti,
    mapi_alloc_tester_run_fn *  run,
    mapi_alloc_tester_clean_fn *clean);

#endif
