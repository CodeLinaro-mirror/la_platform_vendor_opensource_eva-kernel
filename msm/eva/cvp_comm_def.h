/* SPDX-License-Identifier: GPL-2.0-only */
/*
 * Copyright (c) 2020-2021, The Linux Foundation. All rights reserved.
 */

#ifndef _MSM_COMM_DEF_H_
#define _MSM_COMM_DEF_H_

#include <linux/types.h>

enum op_mode {
	OP_NORMAL,
	OP_DRAINING,
	OP_FLUSH,
	OP_INVALID,
};

enum queue_state {
	QUEUE_INIT,
	QUEUE_ACTIVE = 1,
	QUEUE_START,
	QUEUE_STOP,
	QUEUE_INVALID,
};

#ifdef CONFIG_EVA_WAIPIO
#define CVP_SYNX_ENABLED 1
#define CVP_MMRM_ENABLED 1
#define CVP_FASTRPC_ENABLED 1
/*
 * Enable EVA minidump paths only when providers are built-in.
 * If minidump/va-minidump are modules, external modpost for msm-eva
 * may not see their symbol versions, causing unresolved symbols.
 */
#if defined(CONFIG_QCOM_MINIDUMP) && defined(CONFIG_QCOM_VA_MINIDUMP)
#define CVP_MINIDUMP_ENABLED 1
#endif
#endif

#endif
