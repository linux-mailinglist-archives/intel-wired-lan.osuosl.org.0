Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9633063D5E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 13:44:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB13F814BA;
	Wed, 30 Nov 2022 12:44:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB13F814BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669812261;
	bh=wDZNFsI4+s3n31bMwN9c/boRcr+rI12r/yxBPwNNN8w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z3lU/yvOjjfa68+Jxd1C8ecQxdDebCKTIBrdcQJG6DTtvKcJPA7KgS+iT/Baqo/Zz
	 GBK+G6bx/GIRmG+BcIGvzW1Hyu7y6kd8pUhdeI2eSSy5ypAz3dQhm6Had7boYJ2d0m
	 sJ56odU0SvAp4cOv+P/VQnhyYIEdr+fPVvZiqnPeZpWIPE2OBPhZJejxSL3w6punzE
	 9Xdx0Djwbd/hGso4JWocanuIZa2KaN5lQI9L96Z9zB+ndbhUvVZ1p9z2/7ULqznsmL
	 Lyv8ZcMOGZJJSz0vzNQ4ZkX3SXaoSyYa12CUn/MRft8GfTa2gS5UNvIxazu+DbuEiI
	 bdZrZL/a1RQ1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZncSqcHC7Cnm; Wed, 30 Nov 2022 12:44:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B51B813B8;
	Wed, 30 Nov 2022 12:44:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B51B813B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F04181BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:44:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8E9E40463
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:44:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8E9E40463
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pECmWhIghlWY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 12:44:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0204440121
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0204440121
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:44:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="316538126"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="316538126"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 04:44:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="594649764"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="594649764"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by orsmga003.jf.intel.com with ESMTP; 30 Nov 2022 04:44:06 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Nov 2022 13:46:51 +0100
Message-Id: <20221130124651.3246167-5-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221130124651.3246167-1-jan.sokolowski@intel.com>
References: <20221130124651.3246167-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669812248; x=1701348248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bHypQ1d6OGj800thX259QEH/tu95dTqMgEwjrKH+OhQ=;
 b=foC9bn971wJ85JErJWA8u378Rct/ISKiTtBPU4DnCWV9HCHzc4i/h7xe
 Spjf4Dimn1zsCFzxSNVKOP65NcDvdgSZur2HlEWkT/KhDogZLa2cH+qRJ
 ZvWVxgUcsF4mHtsVjn3N4mPiCa9YH2ki3X4Bd2jHCA07prnGojBSGMlTI
 IshRJ5AaW9U6lJNDOuAULPDCf4V5qLrf/NPnFqqnjzIobpbaFnSCM62V3
 lR/ocGaoafg2vqYDVVx2DZn0jpa67vZ0ERaiW4C9t8tcgJwHSqE4bKeS6
 QrJH8IakSB+FAeIDruAAh0XliNCLjAFLCTE+DpXspEZPhDjUI/aZfK1yZ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=foC9bn97
Subject: [Intel-wired-lan] [PATCH net-next v2 4/4] i40e: remove i40e_status
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Replace uses of i40e_status to as equivalent as possible error codes.
Remove enum i40e_status as it is no longer needed

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  49 +++--
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |   3 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 120 ++++++------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  20 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   2 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.c   |   6 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    |  21 +-
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  54 +++---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  48 ++---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  52 ++---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   2 +-
 drivers/net/ethernet/intel/i40e/i40e_status.h |  43 -----
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   1 -
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 179 +++++++++---------
 16 files changed, 277 insertions(+), 329 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_status.h

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 16ffb3a041d4..b2d1a6fc5897 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
-#include "i40e_status.h"
 #include "i40e_type.h"
 #include "i40e_register.h"
 #include "i40e_adminq.h"
@@ -284,7 +283,7 @@ static int i40e_config_asq_regs(struct i40e_hw *hw)
 	/* Check one register to verify that config was applied */
 	reg = rd32(hw, hw->aq.asq.bal);
 	if (reg != lower_32_bits(hw->aq.asq.desc_buf.pa))
-		ret_code = I40E_ERR_ADMIN_QUEUE_ERROR;
+		ret_code = -EIO;
 
 	return ret_code;
 }
@@ -316,7 +315,7 @@ static int i40e_config_arq_regs(struct i40e_hw *hw)
 	/* Check one register to verify that config was applied */
 	reg = rd32(hw, hw->aq.arq.bal);
 	if (reg != lower_32_bits(hw->aq.arq.desc_buf.pa))
-		ret_code = I40E_ERR_ADMIN_QUEUE_ERROR;
+		ret_code = -EIO;
 
 	return ret_code;
 }
@@ -340,14 +339,14 @@ static int i40e_init_asq(struct i40e_hw *hw)
 
 	if (hw->aq.asq.count > 0) {
 		/* queue already initialized */
-		ret_code = I40E_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto init_adminq_exit;
 	}
 
 	/* verify input for valid configuration */
 	if ((hw->aq.num_asq_entries == 0) ||
 	    (hw->aq.asq_buf_size == 0)) {
-		ret_code = I40E_ERR_CONFIG;
+		ret_code = -EIO;
 		goto init_adminq_exit;
 	}
 
@@ -399,14 +398,14 @@ static int i40e_init_arq(struct i40e_hw *hw)
 
 	if (hw->aq.arq.count > 0) {
 		/* queue already initialized */
-		ret_code = I40E_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto init_adminq_exit;
 	}
 
 	/* verify input for valid configuration */
 	if ((hw->aq.num_arq_entries == 0) ||
 	    (hw->aq.arq_buf_size == 0)) {
-		ret_code = I40E_ERR_CONFIG;
+		ret_code = -EIO;
 		goto init_adminq_exit;
 	}
 
@@ -452,7 +451,7 @@ static int i40e_shutdown_asq(struct i40e_hw *hw)
 	mutex_lock(&hw->aq.asq_mutex);
 
 	if (hw->aq.asq.count == 0) {
-		ret_code = I40E_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto shutdown_asq_out;
 	}
 
@@ -486,7 +485,7 @@ static int i40e_shutdown_arq(struct i40e_hw *hw)
 	mutex_lock(&hw->aq.arq_mutex);
 
 	if (hw->aq.arq.count == 0) {
-		ret_code = I40E_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto shutdown_arq_out;
 	}
 
@@ -594,7 +593,7 @@ int i40e_init_adminq(struct i40e_hw *hw)
 	    (hw->aq.num_asq_entries == 0) ||
 	    (hw->aq.arq_buf_size == 0) ||
 	    (hw->aq.asq_buf_size == 0)) {
-		ret_code = I40E_ERR_CONFIG;
+		ret_code = -EIO;
 		goto init_adminq_exit;
 	}
 
@@ -626,13 +625,13 @@ int i40e_init_adminq(struct i40e_hw *hw)
 							&hw->aq.api_maj_ver,
 							&hw->aq.api_min_ver,
 							NULL);
-		if (ret_code != I40E_ERR_ADMIN_QUEUE_TIMEOUT)
+		if (ret_code != -EIO)
 			break;
 		retry++;
 		msleep(100);
 		i40e_resume_aq(hw);
 	} while (retry < 10);
-	if (ret_code != I40E_SUCCESS)
+	if (ret_code != 0)
 		goto init_adminq_free_arq;
 
 	/* Some features were introduced in different FW API version
@@ -672,7 +671,7 @@ int i40e_init_adminq(struct i40e_hw *hw)
 		hw->flags |= I40E_HW_FLAG_802_1AD_CAPABLE;
 
 	if (hw->aq.api_maj_ver > I40E_FW_API_VERSION_MAJOR) {
-		ret_code = I40E_ERR_FIRMWARE_API_VERSION;
+		ret_code = -EIO;
 		goto init_adminq_free_arq;
 	}
 
@@ -799,7 +798,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 	if (hw->aq.asq.count == 0) {
 		i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
 			   "AQTX: Admin queue not initialized.\n");
-		status = I40E_ERR_QUEUE_EMPTY;
+		status = -EIO;
 		goto asq_send_command_error;
 	}
 
@@ -809,7 +808,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 	if (val >= hw->aq.num_asq_entries) {
 		i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
 			   "AQTX: head overrun at %d\n", val);
-		status = I40E_ERR_ADMIN_QUEUE_FULL;
+		status = -ENOSPC;
 		goto asq_send_command_error;
 	}
 
@@ -840,7 +839,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 			   I40E_DEBUG_AQ_MESSAGE,
 			   "AQTX: Invalid buffer size: %d.\n",
 			   buff_size);
-		status = I40E_ERR_INVALID_SIZE;
+		status = -EINVAL;
 		goto asq_send_command_error;
 	}
 
@@ -848,7 +847,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 		i40e_debug(hw,
 			   I40E_DEBUG_AQ_MESSAGE,
 			   "AQTX: Async flag not set along with postpone flag");
-		status = I40E_ERR_PARAM;
+		status = -EINVAL;
 		goto asq_send_command_error;
 	}
 
@@ -863,7 +862,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 		i40e_debug(hw,
 			   I40E_DEBUG_AQ_MESSAGE,
 			   "AQTX: Error queue is full.\n");
-		status = I40E_ERR_ADMIN_QUEUE_FULL;
+		status = -ENOSPC;
 		goto asq_send_command_error;
 	}
 
@@ -940,9 +939,9 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 		if ((enum i40e_admin_queue_err)retval == I40E_AQ_RC_OK)
 			status = 0;
 		else if ((enum i40e_admin_queue_err)retval == I40E_AQ_RC_EBUSY)
-			status = I40E_ERR_NOT_READY;
+			status = -EBUSY;
 		else
-			status = I40E_ERR_ADMIN_QUEUE_ERROR;
+			status = -EIO;
 		hw->aq.asq_last_status = (enum i40e_admin_queue_err)retval;
 	}
 
@@ -960,11 +959,11 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
 		if (rd32(hw, hw->aq.asq.len) & I40E_GL_ATQLEN_ATQCRIT_MASK) {
 			i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
 				   "AQTX: AQ Critical error.\n");
-			status = I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR;
+			status = -EIO;
 		} else {
 			i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
 				   "AQTX: Writeback timeout.\n");
-			status = I40E_ERR_ADMIN_QUEUE_TIMEOUT;
+			status = -EIO;
 		}
 	}
 
@@ -1106,7 +1105,7 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 	if (hw->aq.arq.count == 0) {
 		i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
 			   "AQRX: Admin queue not initialized.\n");
-		ret_code = I40E_ERR_QUEUE_EMPTY;
+		ret_code = -EIO;
 		goto clean_arq_element_err;
 	}
 
@@ -1114,7 +1113,7 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 	ntu = rd32(hw, hw->aq.arq.head) & I40E_PF_ARQH_ARQH_MASK;
 	if (ntu == ntc) {
 		/* nothing to do - shouldn't need to update ring's values */
-		ret_code = I40E_ERR_ADMIN_QUEUE_NO_WORK;
+		ret_code = -EALREADY;
 		goto clean_arq_element_out;
 	}
 
@@ -1126,7 +1125,7 @@ int i40e_clean_arq_element(struct i40e_hw *hw,
 		(enum i40e_admin_queue_err)le16_to_cpu(desc->retval);
 	flags = le16_to_cpu(desc->flags);
 	if (flags & I40E_AQ_FLAG_ERR) {
-		ret_code = I40E_ERR_ADMIN_QUEUE_ERROR;
+		ret_code = -EIO;
 		i40e_debug(hw,
 			   I40E_DEBUG_AQ_MESSAGE,
 			   "AQRX: Event received with error 0x%X.\n",
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index ee394aacef4d..267f2e0a21ce 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -5,7 +5,6 @@
 #define _I40E_ADMINQ_H_
 
 #include "i40e_osdep.h"
-#include "i40e_status.h"
 #include "i40e_adminq_cmd.h"
 
 #define I40E_ADMINQ_DESC(R, i)   \
@@ -117,7 +116,7 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
 	};
 
 	/* aq_rc is invalid if AQ timed out */
-	if (aq_ret == I40E_ERR_ADMIN_QUEUE_TIMEOUT)
+	if (aq_ret == -EIO)
 		return -EAGAIN;
 
 	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 3c855e12423a..1465a4193e6c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -56,7 +56,7 @@ int i40e_set_mac_type(struct i40e_hw *hw)
 			break;
 		}
 	} else {
-		status = I40E_ERR_DEVICE_NOT_SUPPORTED;
+		status = -ENODEV;
 	}
 
 	hw_dbg(hw, "i40e_set_mac_type found mac: %d, returns: %d\n",
@@ -660,7 +660,7 @@ int i40e_init_shared_code(struct i40e_hw *hw)
 	case I40E_MAC_X722:
 		break;
 	default:
-		return I40E_ERR_DEVICE_NOT_SUPPORTED;
+		return -ENODEV;
 	}
 
 	hw->phy.get_link_info = true;
@@ -779,7 +779,7 @@ int i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr)
 	if (flags & I40E_AQC_PORT_ADDR_VALID)
 		ether_addr_copy(mac_addr, addrs.port_mac);
 	else
-		status = I40E_ERR_INVALID_MAC_ADDR;
+		status = -EINVAL;
 
 	return status;
 }
@@ -857,7 +857,7 @@ int i40e_read_pba_string(struct i40e_hw *hw, u8 *pba_num,
 	pba_size--;
 	if (pba_num_size < (((u32)pba_size * 2) + 1)) {
 		hw_dbg(hw, "Buffer too small for PBA data.\n");
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	for (i = 0; i < pba_size; i++) {
@@ -954,7 +954,7 @@ static int i40e_poll_globr(struct i40e_hw *hw,
 	hw_dbg(hw, "Global reset failed.\n");
 	hw_dbg(hw, "I40E_GLGEN_RSTAT = 0x%x\n", reg);
 
-	return I40E_ERR_RESET_FAILED;
+	return -EIO;
 }
 
 #define I40E_PF_RESET_WAIT_COUNT_A0	200
@@ -994,7 +994,7 @@ int i40e_pf_reset(struct i40e_hw *hw)
 	}
 	if (reg & I40E_GLGEN_RSTAT_DEVSTATE_MASK) {
 		hw_dbg(hw, "Global reset polling failed to complete.\n");
-		return I40E_ERR_RESET_FAILED;
+		return -EIO;
 	}
 
 	/* Now Wait for the FW to be ready */
@@ -1013,7 +1013,7 @@ int i40e_pf_reset(struct i40e_hw *hw)
 		     I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK))) {
 		hw_dbg(hw, "wait for FW Reset complete timedout\n");
 		hw_dbg(hw, "I40E_GLNVM_ULD = 0x%x\n", reg);
-		return I40E_ERR_RESET_FAILED;
+		return -EIO;
 	}
 
 	/* If there was a Global Reset in progress when we got here,
@@ -1039,10 +1039,10 @@ int i40e_pf_reset(struct i40e_hw *hw)
 		}
 		if (reg2 & I40E_GLGEN_RSTAT_DEVSTATE_MASK) {
 			if (i40e_poll_globr(hw, grst_del))
-				return I40E_ERR_RESET_FAILED;
+				return -EIO;
 		} else if (reg & I40E_PFGEN_CTRL_PFSWR_MASK) {
 			hw_dbg(hw, "PF reset polling failed to complete.\n");
-			return I40E_ERR_RESET_FAILED;
+			return -EIO;
 		}
 	}
 
@@ -1316,7 +1316,7 @@ int i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 	int status;
 
 	if (!abilities)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	do {
 		i40e_fill_default_direct_cmd_desc(&desc,
@@ -1339,12 +1339,12 @@ int i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 
 		switch (hw->aq.asq_last_status) {
 		case I40E_AQ_RC_EIO:
-			status = I40E_ERR_UNKNOWN_PHY;
+			status = -EIO;
 			break;
 		case I40E_AQ_RC_EAGAIN:
 			usleep_range(1000, 2000);
 			total_delay++;
-			status = I40E_ERR_TIMEOUT;
+			status = -EIO;
 			break;
 		/* also covers I40E_AQ_RC_OK */
 		default:
@@ -1394,7 +1394,7 @@ int i40e_aq_set_phy_config(struct i40e_hw *hw,
 	int status;
 
 	if (!config)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_phy_config);
@@ -1690,8 +1690,8 @@ int i40e_aq_set_phy_int_mask(struct i40e_hw *hw,
  *
  * Enable/disable loopback on a given port
  */
-i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,
-				     struct i40e_asq_cmd_details *cmd_details)
+int i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,
+			     struct i40e_asq_cmd_details *cmd_details)
 {
 	struct i40e_aq_desc desc;
 	struct i40e_aqc_set_lb_mode *cmd =
@@ -2310,7 +2310,7 @@ int i40e_aq_send_driver_version(struct i40e_hw *hw,
 	u16 len;
 
 	if (dv == NULL)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_driver_version);
 
@@ -2428,7 +2428,7 @@ int i40e_aq_add_veb(struct i40e_hw *hw, u16 uplink_seid,
 
 	/* SEIDs need to either both be set or both be 0 for floating VEB */
 	if (!!uplink_seid != !!downlink_seid)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_add_veb);
 
@@ -2483,7 +2483,7 @@ int i40e_aq_get_veb_parameters(struct i40e_hw *hw,
 	int status;
 
 	if (veb_seid == 0)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_get_veb_parameters);
@@ -2573,7 +2573,7 @@ i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
 	u16 buf_size;
 
 	if (count == 0 || !mv_list || !hw)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	buf_size = i40e_prepare_add_macvlan(mv_list, &desc, count, seid);
 
@@ -2606,7 +2606,7 @@ i40e_aq_add_macvlan_v2(struct i40e_hw *hw, u16 seid,
 	u16 buf_size;
 
 	if (count == 0 || !mv_list || !hw)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	buf_size = i40e_prepare_add_macvlan(mv_list, &desc, count, seid);
 
@@ -2635,7 +2635,7 @@ int i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
 	int status;
 
 	if (count == 0 || !mv_list || !hw)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	buf_size = count * sizeof(*mv_list);
 
@@ -2682,7 +2682,7 @@ i40e_aq_remove_macvlan_v2(struct i40e_hw *hw, u16 seid,
 	u16 buf_size;
 
 	if (count == 0 || !mv_list || !hw)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	buf_size = count * sizeof(*mv_list);
 
@@ -2787,7 +2787,7 @@ int i40e_aq_add_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
 	if (!(rule_type == I40E_AQC_MIRROR_RULE_TYPE_ALL_INGRESS ||
 	    rule_type == I40E_AQC_MIRROR_RULE_TYPE_ALL_EGRESS)) {
 		if (count == 0 || !mr_list)
-			return I40E_ERR_PARAM;
+			return -EINVAL;
 	}
 
 	return i40e_mirrorrule_op(hw, i40e_aqc_opc_add_mirror_rule, sw_seid,
@@ -2822,7 +2822,7 @@ int i40e_aq_delete_mirrorrule(struct i40e_hw *hw, u16 sw_seid,
 		 * not matter.
 		 */
 		if (count == 0 || !mr_list)
-			return I40E_ERR_PARAM;
+			return -EINVAL;
 	}
 
 	return i40e_mirrorrule_op(hw, i40e_aqc_opc_delete_mirror_rule, sw_seid,
@@ -2887,7 +2887,7 @@ int i40e_aq_debug_read_register(struct i40e_hw *hw,
 	int status;
 
 	if (reg_val == NULL)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_debug_read_reg);
 
@@ -3026,7 +3026,7 @@ int i40e_aq_read_nvm(struct i40e_hw *hw, u8 module_pointer,
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000) {
-		status = I40E_ERR_PARAM;
+		status = -EINVAL;
 		goto i40e_aq_read_nvm_exit;
 	}
 
@@ -3071,7 +3071,7 @@ int i40e_aq_erase_nvm(struct i40e_hw *hw, u8 module_pointer,
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000) {
-		status = I40E_ERR_PARAM;
+		status = -EINVAL;
 		goto i40e_aq_erase_nvm_exit;
 	}
 
@@ -3363,7 +3363,7 @@ int i40e_aq_discover_capabilities(struct i40e_hw *hw,
 
 	if (list_type_opc != i40e_aqc_opc_list_func_capabilities &&
 		list_type_opc != i40e_aqc_opc_list_dev_capabilities) {
-		status = I40E_ERR_PARAM;
+		status = -EINVAL;
 		goto exit;
 	}
 
@@ -3411,7 +3411,7 @@ int i40e_aq_update_nvm(struct i40e_hw *hw, u8 module_pointer,
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000) {
-		status = I40E_ERR_PARAM;
+		status = -EINVAL;
 		goto i40e_aq_update_nvm_exit;
 	}
 
@@ -3468,7 +3468,7 @@ int i40e_aq_rearrange_nvm(struct i40e_hw *hw,
 			 I40E_AQ_NVM_REARRANGE_TO_STRUCT);
 
 	if (!rearrange_nvm) {
-		status = I40E_ERR_PARAM;
+		status = -EINVAL;
 		goto i40e_aq_rearrange_nvm_exit;
 	}
 
@@ -3505,7 +3505,7 @@ int i40e_aq_get_lldp_mib(struct i40e_hw *hw, u8 bridge_type,
 	int status;
 
 	if (buff_size == 0 || !buff)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_get_mib);
 	/* Indirect Command */
@@ -3553,7 +3553,7 @@ i40e_aq_set_lldp_mib(struct i40e_hw *hw,
 
 	cmd = (struct i40e_aqc_lldp_set_local_mib *)&desc.params.raw;
 	if (buff_size == 0 || !buff)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_lldp_set_local_mib);
@@ -3622,7 +3622,7 @@ i40e_aq_restore_lldp(struct i40e_hw *hw, u8 *setting, bool restore,
 	if (!(hw->flags & I40E_HW_FLAG_FW_LLDP_PERSISTENT)) {
 		i40e_debug(hw, I40E_DEBUG_ALL,
 			   "Restore LLDP not supported by current FW version.\n");
-		return I40E_ERR_DEVICE_NOT_SUPPORTED;
+		return -ENODEV;
 	}
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_lldp_restore);
@@ -3724,7 +3724,7 @@ i40e_aq_set_dcb_parameters(struct i40e_hw *hw, bool dcb_enable,
 	int status;
 
 	if (!(hw->flags & I40E_HW_FLAG_FW_LLDP_STOPPABLE))
-		return I40E_ERR_DEVICE_NOT_SUPPORTED;
+		return -ENODEV;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_set_dcb_parameters);
@@ -3755,7 +3755,7 @@ int i40e_aq_get_cee_dcb_config(struct i40e_hw *hw,
 	int status;
 
 	if (buff_size == 0 || !buff)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_get_cee_dcb_cfg);
 
@@ -3843,7 +3843,7 @@ int i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
 	int status;
 
 	if (seid == 0)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_delete_element);
 
@@ -3917,7 +3917,7 @@ static int i40e_aq_tx_sched_cmd(struct i40e_hw *hw, u16 seid,
 		cmd_param_flag = false;
 		break;
 	default:
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	i40e_fill_default_direct_cmd_desc(&desc, opcode);
@@ -4135,7 +4135,7 @@ static int i40e_validate_filter_settings(struct i40e_hw *hw,
 		fcoe_filt_size <<= (u32)settings->fcoe_filt_num;
 		break;
 	default:
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	switch (settings->fcoe_cntx_num) {
@@ -4147,7 +4147,7 @@ static int i40e_validate_filter_settings(struct i40e_hw *hw,
 		fcoe_cntx_size <<= (u32)settings->fcoe_cntx_num;
 		break;
 	default:
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	/* Validate PE settings passed */
@@ -4165,7 +4165,7 @@ static int i40e_validate_filter_settings(struct i40e_hw *hw,
 	case I40E_HASH_FILTER_SIZE_1M:
 		break;
 	default:
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	switch (settings->pe_cntx_num) {
@@ -4181,7 +4181,7 @@ static int i40e_validate_filter_settings(struct i40e_hw *hw,
 	case I40E_DMA_CNTX_SIZE_256K:
 		break;
 	default:
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	/* FCHSIZE + FCDSIZE should not be greater than PMFCOEFMAX */
@@ -4189,7 +4189,7 @@ static int i40e_validate_filter_settings(struct i40e_hw *hw,
 	fcoe_fmax = (val & I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_MASK)
 		     >> I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_SHIFT;
 	if (fcoe_filt_size + fcoe_cntx_size >  fcoe_fmax)
-		return I40E_ERR_INVALID_SIZE;
+		return -EINVAL;
 
 	return 0;
 }
@@ -4211,7 +4211,7 @@ int i40e_set_filter_control(struct i40e_hw *hw,
 	u32 val;
 
 	if (!settings)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	/* Validate the input settings */
 	ret = i40e_validate_filter_settings(hw, settings);
@@ -4293,7 +4293,7 @@ int i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
 	int status;
 
 	if (vsi_seid == 0)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	if (is_add) {
 		i40e_fill_default_direct_cmd_desc(&desc,
@@ -4368,7 +4368,7 @@ static int i40e_aq_alternate_read(struct i40e_hw *hw,
 	int status;
 
 	if (!reg_val0)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_alternate_read);
 	cmd_resp->address0 = cpu_to_le32(reg_addr0);
@@ -4504,7 +4504,7 @@ int i40e_aq_debug_dump(struct i40e_hw *hw, u8 cluster_id,
 	int status;
 
 	if (buff_size == 0 || !buff)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
 					  i40e_aqc_opc_debug_dump_internals);
@@ -4621,7 +4621,7 @@ int i40e_read_phy_register_clause22(struct i40e_hw *hw,
 				    u16 reg, u8 phy_addr, u16 *value)
 {
 	u8 port_num = (u8)hw->func_caps.mdio_port_num;
-	int status = I40E_ERR_TIMEOUT;
+	int status = -EIO;
 	u32 command = 0;
 	u16 retry = 1000;
 
@@ -4666,7 +4666,7 @@ int i40e_write_phy_register_clause22(struct i40e_hw *hw,
 				     u16 reg, u8 phy_addr, u16 value)
 {
 	u8 port_num = (u8)hw->func_caps.mdio_port_num;
-	int status = I40E_ERR_TIMEOUT;
+	int status = -EIO;
 	u32 command  = 0;
 	u16 retry = 1000;
 
@@ -4707,7 +4707,7 @@ int i40e_read_phy_register_clause45(struct i40e_hw *hw,
 				    u8 page, u16 reg, u8 phy_addr, u16 *value)
 {
 	u8 port_num = hw->func_caps.mdio_port_num;
-	int status = I40E_ERR_TIMEOUT;
+	int status = -EIO;
 	u32 command = 0;
 	u16 retry = 1000;
 
@@ -4741,7 +4741,7 @@ int i40e_read_phy_register_clause45(struct i40e_hw *hw,
 		  (I40E_MDIO_CLAUSE45_STCODE_MASK) |
 		  (I40E_GLGEN_MSCA_MDICMD_MASK) |
 		  (I40E_GLGEN_MSCA_MDIINPROGEN_MASK);
-	status = I40E_ERR_TIMEOUT;
+	status = -EIO;
 	retry = 1000;
 	wr32(hw, I40E_GLGEN_MSCA(port_num), command);
 	do {
@@ -4781,7 +4781,7 @@ int i40e_write_phy_register_clause45(struct i40e_hw *hw,
 				     u8 page, u16 reg, u8 phy_addr, u16 value)
 {
 	u8 port_num = hw->func_caps.mdio_port_num;
-	int status = I40E_ERR_TIMEOUT;
+	int status = -EIO;
 	u16 retry = 1000;
 	u32 command = 0;
 
@@ -4817,7 +4817,7 @@ int i40e_write_phy_register_clause45(struct i40e_hw *hw,
 		  (I40E_MDIO_CLAUSE45_STCODE_MASK) |
 		  (I40E_GLGEN_MSCA_MDICMD_MASK) |
 		  (I40E_GLGEN_MSCA_MDIINPROGEN_MASK);
-	status = I40E_ERR_TIMEOUT;
+	status = -EIO;
 	retry = 1000;
 	wr32(hw, I40E_GLGEN_MSCA(port_num), command);
 	do {
@@ -4866,7 +4866,7 @@ int i40e_write_phy_register(struct i40e_hw *hw,
 							  phy_addr, value);
 		break;
 	default:
-		status = I40E_ERR_UNKNOWN_PHY;
+		status = -EIO;
 		break;
 	}
 
@@ -4905,7 +4905,7 @@ int i40e_read_phy_register(struct i40e_hw *hw,
 							 phy_addr, value);
 		break;
 	default:
-		status = I40E_ERR_UNKNOWN_PHY;
+		status = -EIO;
 		break;
 	}
 
@@ -5095,7 +5095,7 @@ int i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
 					       I40E_PHY_COM_REG_PAGE, true,
 					       I40E_PHY_LED_PROV_REG_1,
 					       &reg_val_aq, NULL);
-		if (status == I40E_SUCCESS)
+		if (status == 0)
 			*val = (u16)reg_val_aq;
 		return status;
 	}
@@ -5190,7 +5190,7 @@ int i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
 	int status;
 
 	if (!reg_val)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_rx_ctl_reg_read);
 
@@ -5630,7 +5630,7 @@ i40e_validate_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 
 	if (track_id == I40E_DDP_TRACKID_INVALID) {
 		i40e_debug(hw, I40E_DEBUG_PACKAGE, "Invalid track_id\n");
-		return I40E_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 	}
 
 	dev_cnt = profile->device_table_count;
@@ -5643,7 +5643,7 @@ i40e_validate_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 	if (dev_cnt && i == dev_cnt) {
 		i40e_debug(hw, I40E_DEBUG_PACKAGE,
 			   "Device doesn't support DDP\n");
-		return I40E_ERR_DEVICE_NOT_SUPPORTED;
+		return -ENODEV;
 	}
 
 	I40E_SECTION_TABLE(profile, sec_tbl);
@@ -5658,14 +5658,14 @@ i40e_validate_profile(struct i40e_hw *hw, struct i40e_profile_segment *profile,
 			    sec->section.type == SECTION_TYPE_RB_AQ) {
 				i40e_debug(hw, I40E_DEBUG_PACKAGE,
 					   "Not a roll-back package\n");
-				return I40E_NOT_SUPPORTED;
+				return -EOPNOTSUPP;
 			}
 		} else {
 			if (sec->section.type == SECTION_TYPE_RB_AQ ||
 			    sec->section.type == SECTION_TYPE_RB_MMIO) {
 				i40e_debug(hw, I40E_DEBUG_PACKAGE,
 					   "Not an original package\n");
-				return I40E_NOT_SUPPORTED;
+				return -EOPNOTSUPP;
 			}
 		}
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 90638b67f8dc..f81e744c0fb3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -17,7 +17,7 @@ int i40e_get_dcbx_status(struct i40e_hw *hw, u16 *status)
 	u32 reg;
 
 	if (!status)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	reg = rd32(hw, I40E_PRTDCB_GENS);
 	*status = (u16)((reg & I40E_PRTDCB_GENS_DCBX_STATUS_MASK) >>
@@ -508,7 +508,7 @@ int i40e_lldp_to_dcb_config(u8 *lldpmib,
 	u16 type;
 
 	if (!lldpmib || !dcbcfg)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	/* set to the start of LLDPDU */
 	lldpmib += ETH_HLEN;
@@ -874,7 +874,7 @@ int i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 	int ret = 0;
 
 	if (!hw->func_caps.dcb)
-		return I40E_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	/* Read LLDP NVM area */
 	if (hw->flags & I40E_HW_FLAG_FW_LLDP_PERSISTENT) {
@@ -885,7 +885,7 @@ int i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 		else if (hw->mac.type == I40E_MAC_X722)
 			offset = I40E_LLDP_CURRENT_STATUS_X722_OFFSET;
 		else
-			return I40E_NOT_SUPPORTED;
+			return -EOPNOTSUPP;
 
 		ret = i40e_read_nvm_module_data(hw,
 						I40E_SR_EMP_SR_SETTINGS_PTR,
@@ -897,7 +897,7 @@ int i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 		ret = i40e_read_lldp_cfg(hw, &lldp_cfg);
 	}
 	if (ret)
-		return I40E_ERR_NOT_READY;
+		return -EBUSY;
 
 	/* Get the LLDP AdminStatus for the current port */
 	adminstatus = lldp_cfg.adminstatus >> (hw->port * 4);
@@ -906,7 +906,7 @@ int i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 	/* LLDP agent disabled */
 	if (!adminstatus) {
 		hw->dcbx_status = I40E_DCBX_STATUS_DISABLED;
-		return I40E_ERR_NOT_READY;
+		return -EBUSY;
 	}
 
 	/* Get DCBX status */
@@ -922,7 +922,7 @@ int i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 		if (ret)
 			return ret;
 	} else if (hw->dcbx_status == I40E_DCBX_STATUS_DISABLED) {
-		return I40E_ERR_NOT_READY;
+		return -EBUSY;
 	}
 
 	/* Configure the LLDP MIB change event */
@@ -949,7 +949,7 @@ i40e_get_fw_lldp_status(struct i40e_hw *hw,
 	int ret;
 
 	if (!lldp_status)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	/* Allocate buffer for the LLDPDU */
 	ret = i40e_allocate_virt_mem(hw, &mem, I40E_LLDPDU_SIZE);
@@ -1299,7 +1299,7 @@ int i40e_dcb_config_to_lldp(u8 *lldpmib, u16 *miblen,
 			      sizeof(tlv->typelength) + length);
 	} while (tlvid < I40E_TLV_ID_END_OF_LLDPPDU);
 	*miblen = offset;
-	return I40E_SUCCESS;
+	return 0;
 }
 
 /**
@@ -1957,7 +1957,7 @@ int i40e_read_lldp_cfg(struct i40e_hw *hw,
 	u32 mem;
 
 	if (!lldp_cfg)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	ret = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 	if (ret)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index 7e8183762fd9..969120587cad 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -344,7 +344,7 @@ int i40e_ddp_load(struct net_device *netdev, const u8 *data, size_t size,
 	if (is_add) {
 		status = i40e_write_profile(&pf->hw, profile_hdr, track_id);
 		if (status) {
-			if (status == I40E_ERR_DEVICE_NOT_SUPPORTED) {
+			if (status == -ENODEV) {
 				netdev_err(netdev,
 					   "Profile is not supported by the device.");
 				return -EPERM;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 9954493cd448..755857633100 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -1309,7 +1309,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 		ret = i40e_asq_send_command(&pf->hw, desc, NULL, 0, NULL);
 		if (!ret) {
 			dev_info(&pf->pdev->dev, "AQ command sent Status : Success\n");
-		} else if (ret == I40E_ERR_ADMIN_QUEUE_ERROR) {
+		} else if (ret == -EIO) {
 			dev_info(&pf->pdev->dev,
 				 "AQ command send failed Opcode %x AQ Error: %d\n",
 				 desc->opcode, pf->hw.aq.asq_last_status);
@@ -1370,7 +1370,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 					    buffer_len, NULL);
 		if (!ret) {
 			dev_info(&pf->pdev->dev, "AQ command sent Status : Success\n");
-		} else if (ret == I40E_ERR_ADMIN_QUEUE_ERROR) {
+		} else if (ret == -EIO) {
 			dev_info(&pf->pdev->dev,
 				 "AQ command send failed Opcode %x AQ Error: %d\n",
 				 desc->opcode, pf->hw.aq.asq_last_status);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_diag.c b/drivers/net/ethernet/intel/i40e/i40e_diag.c
index 5b3519c6e362..d2cc51aaac12 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_diag.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_diag.c
@@ -28,7 +28,7 @@ static int i40e_diag_reg_pattern_test(struct i40e_hw *hw,
 			i40e_debug(hw, I40E_DEBUG_DIAG,
 				   "%s: reg pattern test failed - reg 0x%08x pat 0x%08x val 0x%08x\n",
 				   __func__, reg, pat, val);
-			return I40E_ERR_DIAG_TEST_FAILED;
+			return -EIO;
 		}
 	}
 
@@ -38,7 +38,7 @@ static int i40e_diag_reg_pattern_test(struct i40e_hw *hw,
 		i40e_debug(hw, I40E_DEBUG_DIAG,
 			   "%s: reg restore test failed - reg 0x%08x orig_val 0x%08x val 0x%08x\n",
 			   __func__, reg, orig_val, val);
-		return I40E_ERR_DIAG_TEST_FAILED;
+		return -EIO;
 	}
 
 	return 0;
@@ -126,5 +126,5 @@ int i40e_diag_eeprom_test(struct i40e_hw *hw)
 	     BIT(I40E_SR_CONTROL_WORD_1_SHIFT)))
 		return i40e_validate_nvm_checksum(hw, NULL);
 	else
-		return I40E_ERR_DIAG_TEST_FAILED;
+		return -EIO;
 }
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 04cbc217c569..124ac1da7aaa 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5692,8 +5692,8 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_eee *edata)
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
-	int status = I40E_SUCCESS;
 	__le16 eee_capability;
+	int status = 0;
 
 	/* Deny parameters we don't support */
 	if (i40e_is_eee_param_supported(netdev, edata))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
index 46f7950a0049..96ee63aca7a1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
@@ -4,7 +4,6 @@
 #include "i40e.h"
 #include "i40e_osdep.h"
 #include "i40e_register.h"
-#include "i40e_status.h"
 #include "i40e_alloc.h"
 #include "i40e_hmc.h"
 #include "i40e_type.h"
@@ -26,18 +25,18 @@ int i40e_add_sd_table_entry(struct i40e_hw *hw,
 	enum i40e_memory_type mem_type __attribute__((unused));
 	struct i40e_hmc_sd_entry *sd_entry;
 	bool dma_mem_alloc_done = false;
-	int ret_code = I40E_SUCCESS;
 	struct i40e_dma_mem mem;
+	int ret_code = 0;
 	u64 alloc_len;
 
 	if (NULL == hmc_info->sd_table.sd_entry) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_add_sd_table_entry: bad sd_entry\n");
 		goto exit;
 	}
 
 	if (sd_index >= hmc_info->sd_table.sd_cnt) {
-		ret_code = I40E_ERR_INVALID_SD_INDEX;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_add_sd_table_entry: bad sd_index\n");
 		goto exit;
 	}
@@ -121,7 +120,7 @@ int i40e_add_pd_table_entry(struct i40e_hw *hw,
 	u64 *pd_addr;
 
 	if (pd_index / I40E_HMC_PD_CNT_IN_SD >= hmc_info->sd_table.sd_cnt) {
-		ret_code = I40E_ERR_INVALID_PAGE_DESC_INDEX;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_add_pd_table_entry: bad pd_index\n");
 		goto exit;
 	}
@@ -200,13 +199,13 @@ int i40e_remove_pd_bp(struct i40e_hw *hw,
 	sd_idx = idx / I40E_HMC_PD_CNT_IN_SD;
 	rel_pd_idx = idx % I40E_HMC_PD_CNT_IN_SD;
 	if (sd_idx >= hmc_info->sd_table.sd_cnt) {
-		ret_code = I40E_ERR_INVALID_PAGE_DESC_INDEX;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_remove_pd_bp: bad idx\n");
 		goto exit;
 	}
 	sd_entry = &hmc_info->sd_table.sd_entry[sd_idx];
 	if (I40E_SD_TYPE_PAGED != sd_entry->entry_type) {
-		ret_code = I40E_ERR_INVALID_SD_TYPE;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_remove_pd_bp: wrong sd_entry type\n");
 		goto exit;
 	}
@@ -251,7 +250,7 @@ int i40e_prep_remove_sd_bp(struct i40e_hmc_info *hmc_info,
 	sd_entry = &hmc_info->sd_table.sd_entry[idx];
 	I40E_DEC_BP_REFCNT(&sd_entry->u.bp);
 	if (sd_entry->u.bp.ref_cnt) {
-		ret_code = I40E_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto exit;
 	}
 	I40E_DEC_SD_REFCNT(&hmc_info->sd_table);
@@ -276,7 +275,7 @@ int i40e_remove_sd_bp_new(struct i40e_hw *hw,
 	struct i40e_hmc_sd_entry *sd_entry;
 
 	if (!is_pf)
-		return I40E_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	/* get the entry and decrease its ref counter */
 	sd_entry = &hmc_info->sd_table.sd_entry[idx];
@@ -299,7 +298,7 @@ int i40e_prep_remove_pd_page(struct i40e_hmc_info *hmc_info,
 	sd_entry = &hmc_info->sd_table.sd_entry[idx];
 
 	if (sd_entry->u.pd_table.ref_cnt) {
-		ret_code = I40E_ERR_NOT_READY;
+		ret_code = -EBUSY;
 		goto exit;
 	}
 
@@ -325,7 +324,7 @@ int i40e_remove_pd_page_new(struct i40e_hw *hw,
 	struct i40e_hmc_sd_entry *sd_entry;
 
 	if (!is_pf)
-		return I40E_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	sd_entry = &hmc_info->sd_table.sd_entry[idx];
 	I40E_CLEAR_PF_SD_ENTRY(hw, idx, I40E_SD_TYPE_PAGED);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
index 40c101f286d1..474365bf0648 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
@@ -111,7 +111,7 @@ int i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
 
 	/* validate values requested by driver don't exceed HMC capacity */
 	if (txq_num > obj->max_cnt) {
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_init_lan_hmc: Tx context: asks for 0x%x but max allowed is 0x%x, returns error %d\n",
 			  txq_num, obj->max_cnt, ret_code);
 		goto init_lan_hmc_out;
@@ -134,7 +134,7 @@ int i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
 
 	/* validate values requested by driver don't exceed HMC capacity */
 	if (rxq_num > obj->max_cnt) {
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_init_lan_hmc: Rx context: asks for 0x%x but max allowed is 0x%x, returns error %d\n",
 			  rxq_num, obj->max_cnt, ret_code);
 		goto init_lan_hmc_out;
@@ -157,7 +157,7 @@ int i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
 
 	/* validate values requested by driver don't exceed HMC capacity */
 	if (fcoe_cntx_num > obj->max_cnt) {
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_init_lan_hmc: FCoE context: asks for 0x%x but max allowed is 0x%x, returns error %d\n",
 			  fcoe_cntx_num, obj->max_cnt, ret_code);
 		goto init_lan_hmc_out;
@@ -180,7 +180,7 @@ int i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
 
 	/* validate values requested by driver don't exceed HMC capacity */
 	if (fcoe_filt_num > obj->max_cnt) {
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_init_lan_hmc: FCoE filter: asks for 0x%x but max allowed is 0x%x, returns error %d\n",
 			  fcoe_filt_num, obj->max_cnt, ret_code);
 		goto init_lan_hmc_out;
@@ -289,30 +289,30 @@ static int i40e_create_lan_hmc_object(struct i40e_hw *hw,
 	u32 i, j;
 
 	if (NULL == info) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_create_lan_hmc_object: bad info ptr\n");
 		goto exit;
 	}
 	if (NULL == info->hmc_info) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_create_lan_hmc_object: bad hmc_info ptr\n");
 		goto exit;
 	}
 	if (I40E_HMC_INFO_SIGNATURE != info->hmc_info->signature) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_create_lan_hmc_object: bad signature\n");
 		goto exit;
 	}
 
 	if (info->start_idx >= info->hmc_info->hmc_obj[info->rsrc_type].cnt) {
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_INDEX;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_create_lan_hmc_object: returns error %d\n",
 			  ret_code);
 		goto exit;
 	}
 	if ((info->start_idx + info->count) >
 	    info->hmc_info->hmc_obj[info->rsrc_type].cnt) {
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_create_lan_hmc_object: returns error %d\n",
 			  ret_code);
 		goto exit;
@@ -324,8 +324,8 @@ static int i40e_create_lan_hmc_object(struct i40e_hw *hw,
 				 &sd_idx, &sd_lmt);
 	if (sd_idx >= info->hmc_info->sd_table.sd_cnt ||
 	    sd_lmt > info->hmc_info->sd_table.sd_cnt) {
-			ret_code = I40E_ERR_INVALID_SD_INDEX;
-			goto exit;
+		ret_code = -EINVAL;
+		goto exit;
 	}
 	/* find pd index */
 	I40E_FIND_PD_INDEX_LIMIT(info->hmc_info, info->rsrc_type,
@@ -393,7 +393,7 @@ static int i40e_create_lan_hmc_object(struct i40e_hw *hw,
 						     j, sd_entry->entry_type);
 				break;
 			default:
-				ret_code = I40E_ERR_INVALID_SD_TYPE;
+				ret_code = -EINVAL;
 				goto exit;
 			}
 		}
@@ -417,7 +417,7 @@ static int i40e_create_lan_hmc_object(struct i40e_hw *hw,
 			i40e_remove_sd_bp(hw, info->hmc_info, (j - 1));
 			break;
 		default:
-			ret_code = I40E_ERR_INVALID_SD_TYPE;
+			ret_code = -EINVAL;
 			break;
 		}
 		j--;
@@ -474,7 +474,7 @@ int i40e_configure_lan_hmc(struct i40e_hw *hw,
 		break;
 	default:
 		/* unsupported type */
-		ret_code = I40E_ERR_INVALID_SD_TYPE;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_configure_lan_hmc: Unknown SD type: %d\n",
 			  ret_code);
 		goto configure_lan_hmc_out;
@@ -530,34 +530,34 @@ static int i40e_delete_lan_hmc_object(struct i40e_hw *hw,
 	u32 i, j;
 
 	if (NULL == info) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_delete_hmc_object: bad info ptr\n");
 		goto exit;
 	}
 	if (NULL == info->hmc_info) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_delete_hmc_object: bad info->hmc_info ptr\n");
 		goto exit;
 	}
 	if (I40E_HMC_INFO_SIGNATURE != info->hmc_info->signature) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_delete_hmc_object: bad hmc_info->signature\n");
 		goto exit;
 	}
 
 	if (NULL == info->hmc_info->sd_table.sd_entry) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_delete_hmc_object: bad sd_entry\n");
 		goto exit;
 	}
 
 	if (NULL == info->hmc_info->hmc_obj) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_delete_hmc_object: bad hmc_info->hmc_obj\n");
 		goto exit;
 	}
 	if (info->start_idx >= info->hmc_info->hmc_obj[info->rsrc_type].cnt) {
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_INDEX;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_delete_hmc_object: returns error %d\n",
 			  ret_code);
 		goto exit;
@@ -565,7 +565,7 @@ static int i40e_delete_lan_hmc_object(struct i40e_hw *hw,
 
 	if ((info->start_idx + info->count) >
 	    info->hmc_info->hmc_obj[info->rsrc_type].cnt) {
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_delete_hmc_object: returns error %d\n",
 			  ret_code);
 		goto exit;
@@ -599,7 +599,7 @@ static int i40e_delete_lan_hmc_object(struct i40e_hw *hw,
 				 &sd_idx, &sd_lmt);
 	if (sd_idx >= info->hmc_info->sd_table.sd_cnt ||
 	    sd_lmt > info->hmc_info->sd_table.sd_cnt) {
-		ret_code = I40E_ERR_INVALID_SD_INDEX;
+		ret_code = -EINVAL;
 		goto exit;
 	}
 
@@ -987,29 +987,29 @@ int i40e_hmc_get_object_va(struct i40e_hw *hw, u8 **object_base,
 	int ret_code = 0;
 
 	if (NULL == hmc_info) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_hmc_get_object_va: bad hmc_info ptr\n");
 		goto exit;
 	}
 	if (NULL == hmc_info->hmc_obj) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_hmc_get_object_va: bad hmc_info->hmc_obj ptr\n");
 		goto exit;
 	}
 	if (NULL == object_base) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_hmc_get_object_va: bad object_base ptr\n");
 		goto exit;
 	}
 	if (I40E_HMC_INFO_SIGNATURE != hmc_info->signature) {
-		ret_code = I40E_ERR_BAD_PTR;
+		ret_code = -EINVAL;
 		hw_dbg(hw, "i40e_hmc_get_object_va: bad hmc_info->signature\n");
 		goto exit;
 	}
 	if (obj_idx >= hmc_info->hmc_obj[rsrc_type].cnt) {
 		hw_dbg(hw, "i40e_hmc_get_object_va: returns error %d\n",
 			  ret_code);
-		ret_code = I40E_ERR_INVALID_HMC_OBJ_INDEX;
+		ret_code = -EINVAL;
 		goto exit;
 	}
 	/* find sd index and limit */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 0ac7f7de99ca..eb70a1664f09 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5715,7 +5715,7 @@ int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset)
 	int ret;
 
 	if (!vsi)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	pf = vsi->back;
 	hw = &pf->hw;
 
@@ -7159,7 +7159,7 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 	 */
 	if (pf->hw_features & I40E_HW_NO_DCB_SUPPORT) {
 		dev_info(&pf->pdev->dev, "DCB is not supported.\n");
-		err = I40E_NOT_SUPPORTED;
+		err = -EOPNOTSUPP;
 		goto out;
 	}
 	if (pf->flags & I40E_FLAG_DISABLE_FW_LLDP) {
@@ -7469,7 +7469,7 @@ static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 	if (pf->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED)
 		non_zero_phy_type = true;
 	else if (is_up && abilities.phy_type != 0 && abilities.link_speed != 0)
-		return I40E_SUCCESS;
+		return 0;
 
 	/* To force link we need to set bits for all supported PHY types,
 	 * but there are now more than 32, so we need to split the bitmap
@@ -7520,7 +7520,7 @@ static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 
 	i40e_aq_set_link_restart_an(hw, is_up, NULL);
 
-	return I40E_SUCCESS;
+	return 0;
 }
 
 /**
@@ -8367,7 +8367,7 @@ int i40e_add_del_cloud_filter(struct i40e_vsi *vsi,
 	};
 
 	if (filter->flags >= ARRAY_SIZE(flag_table))
-		return I40E_ERR_CONFIG;
+		return -EIO;
 
 	memset(&cld_filter, 0, sizeof(cld_filter));
 
@@ -8581,7 +8581,7 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 			} else {
 				dev_err(&pf->pdev->dev, "Bad ether dest mask %pM\n",
 					match.mask->dst);
-				return I40E_ERR_CONFIG;
+				return -EIO;
 			}
 		}
 
@@ -8591,7 +8591,7 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 			} else {
 				dev_err(&pf->pdev->dev, "Bad ether src mask %pM\n",
 					match.mask->src);
-				return I40E_ERR_CONFIG;
+				return -EIO;
 			}
 		}
 		ether_addr_copy(filter->dst_mac, match.key->dst);
@@ -8609,7 +8609,7 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 			} else {
 				dev_err(&pf->pdev->dev, "Bad vlan mask 0x%04x\n",
 					match.mask->vlan_id);
-				return I40E_ERR_CONFIG;
+				return -EIO;
 			}
 		}
 
@@ -8633,7 +8633,7 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 			} else {
 				dev_err(&pf->pdev->dev, "Bad ip dst mask %pI4b\n",
 					&match.mask->dst);
-				return I40E_ERR_CONFIG;
+				return -EIO;
 			}
 		}
 
@@ -8643,13 +8643,13 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 			} else {
 				dev_err(&pf->pdev->dev, "Bad ip src mask %pI4b\n",
 					&match.mask->src);
-				return I40E_ERR_CONFIG;
+				return -EIO;
 			}
 		}
 
 		if (field_flags & I40E_CLOUD_FIELD_TEN_ID) {
 			dev_err(&pf->pdev->dev, "Tenant id not allowed for ip filter\n");
-			return I40E_ERR_CONFIG;
+			return -EIO;
 		}
 		filter->dst_ipv4 = match.key->dst;
 		filter->src_ipv4 = match.key->src;
@@ -8667,7 +8667,7 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 		    ipv6_addr_loopback(&match.key->src)) {
 			dev_err(&pf->pdev->dev,
 				"Bad ipv6, addr is LOOPBACK\n");
-			return I40E_ERR_CONFIG;
+			return -EIO;
 		}
 		if (!ipv6_addr_any(&match.mask->dst) ||
 		    !ipv6_addr_any(&match.mask->src))
@@ -8689,7 +8689,7 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 			} else {
 				dev_err(&pf->pdev->dev, "Bad src port mask 0x%04x\n",
 					be16_to_cpu(match.mask->src));
-				return I40E_ERR_CONFIG;
+				return -EIO;
 			}
 		}
 
@@ -8699,7 +8699,7 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 			} else {
 				dev_err(&pf->pdev->dev, "Bad dst port mask 0x%04x\n",
 					be16_to_cpu(match.mask->dst));
-				return I40E_ERR_CONFIG;
+				return -EIO;
 			}
 		}
 
@@ -9906,11 +9906,11 @@ static void i40e_link_event(struct i40e_pf *pf)
 	status = i40e_get_link_status(&pf->hw, &new_link);
 
 	/* On success, disable temp link polling */
-	if (status == I40E_SUCCESS) {
+	if (status == 0) {
 		clear_bit(__I40E_TEMP_LINK_POLLING, pf->state);
 	} else {
 		/* Enable link polling temporarily until i40e_get_link_status
-		 * returns I40E_SUCCESS
+		 * returns 0
 		 */
 		set_bit(__I40E_TEMP_LINK_POLLING, pf->state);
 		dev_dbg(&pf->pdev->dev, "couldn't get link state, status: %d\n",
@@ -10164,7 +10164,7 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 
 	do {
 		ret = i40e_clean_arq_element(hw, &event, &pending);
-		if (ret == I40E_ERR_ADMIN_QUEUE_NO_WORK)
+		if (ret == -EALREADY)
 			break;
 		else if (ret) {
 			dev_info(&pf->pdev->dev, "ARQ event error %d\n", ret);
@@ -12571,7 +12571,7 @@ int i40e_commit_partition_bw_setting(struct i40e_pf *pf)
 		dev_info(&pf->pdev->dev,
 			 "Commit BW only works on partition 1! This is partition %d",
 			 pf->hw.partition_id);
-		ret = I40E_NOT_SUPPORTED;
+		ret = -EOPNOTSUPP;
 		goto bw_commit_out;
 	}
 
@@ -12653,10 +12653,10 @@ static bool i40e_is_total_port_shutdown_enabled(struct i40e_pf *pf)
 #define I40E_LINK_BEHAVIOR_WORD_LENGTH		0x1
 #define I40E_LINK_BEHAVIOR_OS_FORCED_ENABLED	BIT(0)
 #define I40E_LINK_BEHAVIOR_PORT_BIT_LENGTH	4
-	int read_status = I40E_SUCCESS;
 	u16 sr_emp_sr_settings_ptr = 0;
 	u16 features_enable = 0;
 	u16 link_behavior = 0;
+	int read_status = 0;
 	bool ret = false;
 
 	read_status = i40e_read_nvm_word(&pf->hw,
@@ -15452,12 +15452,12 @@ static int i40e_pf_loop_reset(struct i40e_pf *pf)
 	int ret;
 
 	ret = i40e_pf_reset(hw);
-	while (ret != I40E_SUCCESS && time_before(jiffies, time_end)) {
+	while (ret != 0 && time_before(jiffies, time_end)) {
 		usleep_range(10000, 20000);
 		ret = i40e_pf_reset(hw);
 	}
 
-	if (ret == I40E_SUCCESS)
+	if (ret == 0)
 		pf->pfr_count++;
 	else
 		dev_info(&pf->pdev->dev, "PF reset failed: %d\n", ret);
@@ -15500,10 +15500,10 @@ static int i40e_handle_resets(struct i40e_pf *pf)
 	const int pfr = i40e_pf_loop_reset(pf);
 	const bool is_empr = i40e_check_fw_empr(pf);
 
-	if (is_empr || pfr != I40E_SUCCESS)
+	if (is_empr || pfr != 0)
 		dev_crit(&pf->pdev->dev, "Entering recovery mode due to repeated FW resets. This may take several minutes. Refer to the Intel(R) Ethernet Adapters and Devices User Guide.\n");
 
-	return is_empr ? I40E_ERR_RESET_FAILED : pfr;
+	return is_empr ? -EIO : pfr;
 }
 
 /**
@@ -15795,7 +15795,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	err = i40e_init_adminq(hw);
 	if (err) {
-		if (err == I40E_ERR_FIRMWARE_API_VERSION)
+		if (err == -EIO)
 			dev_info(&pdev->dev,
 				 "The driver for the device stopped because the NVM image v%u.%u is newer than expected v%u.%u. You must install the most recent version of the network driver.\n",
 				 hw->aq.api_maj_ver,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 17e3f26eee4a..159d7d65ea48 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -37,7 +37,7 @@ int i40e_init_nvm(struct i40e_hw *hw)
 		nvm->blank_nvm_mode = false;
 	} else { /* Blank programming mode */
 		nvm->blank_nvm_mode = true;
-		ret_code = I40E_ERR_NVM_BLANK_MODE;
+		ret_code = -EIO;
 		i40e_debug(hw, I40E_DEBUG_NVM, "NVM init error: unsupported blank mode.\n");
 	}
 
@@ -111,8 +111,8 @@ int i40e_acquire_nvm(struct i40e_hw *hw,
  **/
 void i40e_release_nvm(struct i40e_hw *hw)
 {
-	int ret_code = I40E_SUCCESS;
 	u32 total_delay = 0;
+	int ret_code = 0;
 
 	if (hw->nvm.blank_nvm_mode)
 		return;
@@ -122,7 +122,7 @@ void i40e_release_nvm(struct i40e_hw *hw)
 	/* there are some rare cases when trying to release the resource
 	 * results in an admin Q timeout, so handle them correctly
 	 */
-	while ((ret_code == I40E_ERR_ADMIN_QUEUE_TIMEOUT) &&
+	while ((ret_code == -EIO) &&
 	       (total_delay < hw->aq.asq_cmd_timeout)) {
 		usleep_range(1000, 2000);
 		ret_code = i40e_aq_release_resource(hw,
@@ -140,7 +140,7 @@ void i40e_release_nvm(struct i40e_hw *hw)
  **/
 static int i40e_poll_sr_srctl_done_bit(struct i40e_hw *hw)
 {
-	int ret_code = I40E_ERR_TIMEOUT;
+	int ret_code = -EIO;
 	u32 srctl, wait_cnt;
 
 	/* Poll the I40E_GLNVM_SRCTL until the done bit is set */
@@ -152,7 +152,7 @@ static int i40e_poll_sr_srctl_done_bit(struct i40e_hw *hw)
 		}
 		udelay(5);
 	}
-	if (ret_code == I40E_ERR_TIMEOUT)
+	if (ret_code == -EIO)
 		i40e_debug(hw, I40E_DEBUG_NVM, "Done bit in GLNVM_SRCTL not set");
 	return ret_code;
 }
@@ -168,14 +168,14 @@ static int i40e_poll_sr_srctl_done_bit(struct i40e_hw *hw)
 static int i40e_read_nvm_word_srctl(struct i40e_hw *hw, u16 offset,
 				    u16 *data)
 {
-	int ret_code = I40E_ERR_TIMEOUT;
+	int ret_code = -EIO;
 	u32 sr_reg;
 
 	if (offset >= hw->nvm.sr_size) {
 		i40e_debug(hw, I40E_DEBUG_NVM,
 			   "NVM read error: offset %d beyond Shadow RAM limit %d\n",
 			   offset, hw->nvm.sr_size);
-		ret_code = I40E_ERR_PARAM;
+		ret_code = -EINVAL;
 		goto read_nvm_exit;
 	}
 
@@ -222,7 +222,7 @@ static int i40e_read_nvm_aq(struct i40e_hw *hw,
 			    bool last_command)
 {
 	struct i40e_asq_cmd_details cmd_details;
-	int ret_code = I40E_ERR_NVM;
+	int ret_code = -EIO;
 
 	memset(&cmd_details, 0, sizeof(cmd_details));
 	cmd_details.wb_desc = &hw->nvm_wb_desc;
@@ -267,7 +267,7 @@ static int i40e_read_nvm_aq(struct i40e_hw *hw,
 static int i40e_read_nvm_word_aq(struct i40e_hw *hw, u16 offset,
 				 u16 *data)
 {
-	int ret_code = I40E_ERR_TIMEOUT;
+	int ret_code = -EIO;
 
 	ret_code = i40e_read_nvm_aq(hw, 0x0, offset, 1, data, true);
 	*data = le16_to_cpu(*(__le16 *)data);
@@ -348,7 +348,7 @@ int i40e_read_nvm_module_data(struct i40e_hw *hw,
 			i40e_debug(hw, I40E_DEBUG_ALL,
 				   "Reading nvm word failed.Error code: %d.\n",
 				   status);
-			return I40E_ERR_NVM;
+			return -EIO;
 		}
 	}
 #define I40E_NVM_INVALID_PTR_VAL 0x7FFF
@@ -358,7 +358,7 @@ int i40e_read_nvm_module_data(struct i40e_hw *hw,
 	if (ptr_value == I40E_NVM_INVALID_PTR_VAL ||
 	    ptr_value == I40E_NVM_INVALID_VAL) {
 		i40e_debug(hw, I40E_DEBUG_ALL, "Pointer not initialized.\n");
-		return I40E_ERR_BAD_PTR;
+		return -EINVAL;
 	}
 
 	/* Check whether the module is in SR mapped area or outside */
@@ -367,7 +367,7 @@ int i40e_read_nvm_module_data(struct i40e_hw *hw,
 		i40e_debug(hw, I40E_DEBUG_ALL,
 			   "Reading nvm data failed. Pointer points outside of the Shared RAM mapped area.\n");
 
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	} else {
 		/* Read from the Shadow RAM */
 
@@ -377,7 +377,7 @@ int i40e_read_nvm_module_data(struct i40e_hw *hw,
 			i40e_debug(hw, I40E_DEBUG_ALL,
 				   "Reading nvm word failed.Error code: %d.\n",
 				   status);
-			return I40E_ERR_NVM;
+			return -EIO;
 		}
 
 		offset = ptr_value + module_offset + specific_ptr +
@@ -549,7 +549,7 @@ static int i40e_write_nvm_aq(struct i40e_hw *hw, u8 module_pointer,
 			     bool last_command)
 {
 	struct i40e_asq_cmd_details cmd_details;
-	int ret_code = I40E_ERR_NVM;
+	int ret_code = -EIO;
 
 	memset(&cmd_details, 0, sizeof(cmd_details));
 	cmd_details.wb_desc = &hw->nvm_wb_desc;
@@ -614,7 +614,7 @@ static int i40e_calc_nvm_checksum(struct i40e_hw *hw,
 	/* read pointer to VPD area */
 	ret_code = __i40e_read_nvm_word(hw, I40E_SR_VPD_PTR, &vpd_module);
 	if (ret_code) {
-		ret_code = I40E_ERR_NVM_CHECKSUM;
+		ret_code = -EIO;
 		goto i40e_calc_nvm_checksum_exit;
 	}
 
@@ -622,7 +622,7 @@ static int i40e_calc_nvm_checksum(struct i40e_hw *hw,
 	ret_code = __i40e_read_nvm_word(hw, I40E_SR_PCIE_ALT_AUTO_LOAD_PTR,
 					&pcie_alt_module);
 	if (ret_code) {
-		ret_code = I40E_ERR_NVM_CHECKSUM;
+		ret_code = -EIO;
 		goto i40e_calc_nvm_checksum_exit;
 	}
 
@@ -636,7 +636,7 @@ static int i40e_calc_nvm_checksum(struct i40e_hw *hw,
 
 			ret_code = __i40e_read_nvm_buffer(hw, i, &words, data);
 			if (ret_code) {
-				ret_code = I40E_ERR_NVM_CHECKSUM;
+				ret_code = -EIO;
 				goto i40e_calc_nvm_checksum_exit;
 			}
 		}
@@ -724,7 +724,7 @@ int i40e_validate_nvm_checksum(struct i40e_hw *hw,
 	 * calculated checksum
 	 */
 	if (checksum_local != checksum_sr)
-		ret_code = I40E_ERR_NVM_CHECKSUM;
+		ret_code = -EIO;
 
 	/* If the user cares, return the calculated checksum */
 	if (checksum)
@@ -839,7 +839,7 @@ int i40e_nvmupd_command(struct i40e_hw *hw,
 	if (upd_cmd == I40E_NVMUPD_STATUS) {
 		if (!cmd->data_size) {
 			*perrno = -EFAULT;
-			return I40E_ERR_BUF_TOO_SHORT;
+			return -EINVAL;
 		}
 
 		bytes[0] = hw->nvmupd_state;
@@ -896,7 +896,7 @@ int i40e_nvmupd_command(struct i40e_hw *hw,
 			break;
 		}
 
-		status = I40E_ERR_NOT_READY;
+		status = -EBUSY;
 		*perrno = -EBUSY;
 		break;
 
@@ -904,7 +904,7 @@ int i40e_nvmupd_command(struct i40e_hw *hw,
 		/* invalid state, should never happen */
 		i40e_debug(hw, I40E_DEBUG_NVM,
 			   "NVMUPD: no such state %d\n", hw->nvmupd_state);
-		status = I40E_NOT_SUPPORTED;
+		status = -EOPNOTSUPP;
 		*perrno = -ESRCH;
 		break;
 	}
@@ -1045,7 +1045,7 @@ static int i40e_nvmupd_state_init(struct i40e_hw *hw,
 		i40e_debug(hw, I40E_DEBUG_NVM,
 			   "NVMUPD: bad cmd %s in init state\n",
 			   i40e_nvm_update_state_str[upd_cmd]);
-		status = I40E_ERR_NVM;
+		status = -EIO;
 		*perrno = -ESRCH;
 		break;
 	}
@@ -1087,7 +1087,7 @@ static int i40e_nvmupd_state_reading(struct i40e_hw *hw,
 		i40e_debug(hw, I40E_DEBUG_NVM,
 			   "NVMUPD: bad cmd %s in reading state.\n",
 			   i40e_nvm_update_state_str[upd_cmd]);
-		status = I40E_NOT_SUPPORTED;
+		status = -EOPNOTSUPP;
 		*perrno = -ESRCH;
 		break;
 	}
@@ -1174,7 +1174,7 @@ static int i40e_nvmupd_state_writing(struct i40e_hw *hw,
 		i40e_debug(hw, I40E_DEBUG_NVM,
 			   "NVMUPD: bad cmd %s in writing state.\n",
 			   i40e_nvm_update_state_str[upd_cmd]);
-		status = I40E_NOT_SUPPORTED;
+		status = -EOPNOTSUPP;
 		*perrno = -ESRCH;
 		break;
 	}
@@ -1398,7 +1398,7 @@ static int i40e_nvmupd_exec_aq(struct i40e_hw *hw,
 			   "NVMUPD: not enough aq desc bytes for exec, size %d < %d\n",
 			   cmd->data_size, aq_desc_len);
 		*perrno = -EINVAL;
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	}
 	aq_desc = (struct i40e_aq_desc *)bytes;
 
@@ -1473,7 +1473,7 @@ static int i40e_nvmupd_get_aq_result(struct i40e_hw *hw,
 		i40e_debug(hw, I40E_DEBUG_NVM, "%s: offset too big %d > %d\n",
 			   __func__, cmd->offset, aq_total_len);
 		*perrno = -EINVAL;
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 	}
 
 	/* check copylength range */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index c37abbb3cd06..f6b0aedaa63f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -1132,7 +1132,7 @@ int i40e_ptp_alloc_pins(struct i40e_pf *pf)
 
 	if (!pf->ptp_pins) {
 		dev_warn(&pf->pdev->dev, "Cannot allocate memory for PTP pins structure.\n");
-		return -I40E_ERR_NO_MEMORY;
+		return ENOMEM;
 	}
 
 	pf->ptp_pins->sdp3_2 = off;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_status.h b/drivers/net/ethernet/intel/i40e/i40e_status.h
deleted file mode 100644
index 4d2782e76038..000000000000
--- a/drivers/net/ethernet/intel/i40e/i40e_status.h
+++ /dev/null
@@ -1,43 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
-
-#ifndef _I40E_STATUS_H_
-#define _I40E_STATUS_H_
-
-/* Error Codes */
-enum i40e_status_code {
-	I40E_SUCCESS				= 0,
-	I40E_ERR_NVM				= -1,
-	I40E_ERR_NVM_CHECKSUM			= -2,
-	I40E_ERR_CONFIG				= -4,
-	I40E_ERR_PARAM				= -5,
-	I40E_ERR_UNKNOWN_PHY			= -7,
-	I40E_ERR_INVALID_MAC_ADDR		= -10,
-	I40E_ERR_DEVICE_NOT_SUPPORTED		= -11,
-	I40E_ERR_RESET_FAILED			= -15,
-	I40E_ERR_NO_AVAILABLE_VSI		= -17,
-	I40E_ERR_NO_MEMORY			= -18,
-	I40E_ERR_BAD_PTR			= -19,
-	I40E_ERR_INVALID_SIZE			= -26,
-	I40E_ERR_QUEUE_EMPTY			= -32,
-	I40E_ERR_TIMEOUT			= -37,
-	I40E_ERR_INVALID_SD_INDEX		= -45,
-	I40E_ERR_INVALID_PAGE_DESC_INDEX	= -46,
-	I40E_ERR_INVALID_SD_TYPE		= -47,
-	I40E_ERR_INVALID_HMC_OBJ_INDEX		= -49,
-	I40E_ERR_INVALID_HMC_OBJ_COUNT		= -50,
-	I40E_ERR_ADMIN_QUEUE_ERROR		= -53,
-	I40E_ERR_ADMIN_QUEUE_TIMEOUT		= -54,
-	I40E_ERR_BUF_TOO_SHORT			= -55,
-	I40E_ERR_ADMIN_QUEUE_FULL		= -56,
-	I40E_ERR_ADMIN_QUEUE_NO_WORK		= -57,
-	I40E_ERR_NVM_BLANK_MODE			= -59,
-	I40E_ERR_NOT_IMPLEMENTED		= -60,
-	I40E_ERR_DIAG_TEST_FAILED		= -62,
-	I40E_ERR_NOT_READY			= -63,
-	I40E_NOT_SUPPORTED			= -64,
-	I40E_ERR_FIRMWARE_API_VERSION		= -65,
-	I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR	= -66,
-};
-
-#endif /* _I40E_STATUS_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 388c3d36d96a..5f61546f50d8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -4,7 +4,6 @@
 #ifndef _I40E_TYPE_H_
 #define _I40E_TYPE_H_
 
-#include "i40e_status.h"
 #include "i40e_osdep.h"
 #include "i40e_register.h"
 #include "i40e_adminq.h"
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index cb7cf672f697..f79b3bbab191 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1345,14 +1345,14 @@ static int i40e_config_vf_promiscuous_mode(struct i40e_vf *vf,
 					   bool alluni)
 {
 	struct i40e_pf *pf = vf->pf;
-	int aq_ret = I40E_SUCCESS;
 	struct i40e_vsi *vsi;
+	int aq_ret = 0;
 	u16 num_vlans;
 	s16 *vl;
 
 	vsi = i40e_find_vsi_from_id(pf, vsi_id);
 	if (!i40e_vc_isvalid_vsi_id(vf, vsi_id) || !vsi)
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	if (vf->port_vlan_id) {
 		aq_ret = i40e_set_vsi_promisc(vf, vsi->seid, allmulti,
@@ -1362,7 +1362,7 @@ static int i40e_config_vf_promiscuous_mode(struct i40e_vf *vf,
 		i40e_get_vlan_list_sync(vsi, &num_vlans, &vl);
 
 		if (!vl)
-			return I40E_ERR_NO_MEMORY;
+			return -ENOMEM;
 
 		aq_ret = i40e_set_vsi_promisc(vf, vsi->seid, allmulti, alluni,
 					      vl, num_vlans);
@@ -2036,7 +2036,7 @@ static int i40e_vc_get_version_msg(struct i40e_vf *vf, u8 *msg)
 	if (VF_IS_V10(&vf->vf_ver))
 		info.minor = VIRTCHNL_VERSION_MINOR_NO_VF_CAPS;
 	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_VERSION,
-				      I40E_SUCCESS, (u8 *)&info,
+				      0, (u8 *)&info,
 				      sizeof(struct virtchnl_version_info));
 }
 
@@ -2098,14 +2098,14 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 	int ret;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_INIT)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
 	len = struct_size(vfres, vsi_res, num_vsis);
 	vfres = kzalloc(len, GFP_KERNEL);
 	if (!vfres) {
-		aq_ret = I40E_ERR_NO_MEMORY;
+		aq_ret = -ENOMEM;
 		len = 0;
 		goto err;
 	}
@@ -2158,7 +2158,7 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 			dev_err(&pf->pdev->dev,
 				"VF %d requested polling mode: this feature is supported only when the device is running in single function per port (SFP) mode\n",
 				 vf->vf_id);
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto err;
 		}
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_POLLING;
@@ -2226,7 +2226,7 @@ static int i40e_vc_config_promiscuous_mode_msg(struct i40e_vf *vf, u8 *msg)
 	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err_out;
 	}
 	if (!test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
@@ -2242,12 +2242,12 @@ static int i40e_vc_config_promiscuous_mode_msg(struct i40e_vf *vf, u8 *msg)
 	}
 
 	if (info->flags > I40E_MAX_VF_PROMISC_FLAGS) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err_out;
 	}
 
 	if (!i40e_vc_isvalid_vsi_id(vf, info->vsi_id)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err_out;
 	}
 
@@ -2314,17 +2314,17 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (!i40e_vc_isvalid_vsi_id(vf, qci->vsi_id)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (qci->num_queue_pairs > I40E_MAX_VF_QUEUES) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
@@ -2332,7 +2332,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 		for (i = 0; i < vf->num_tc; i++)
 			num_qps_all += vf->ch[i].num_qps;
 		if (num_qps_all != qci->num_queue_pairs) {
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto error_param;
 		}
 	}
@@ -2345,7 +2345,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 		if (!vf->adq_enabled) {
 			if (!i40e_vc_isvalid_queue_id(vf, vsi_id,
 						      qpi->txq.queue_id)) {
-				aq_ret = I40E_ERR_PARAM;
+				aq_ret = -EINVAL;
 				goto error_param;
 			}
 
@@ -2354,14 +2354,14 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 			if (qpi->txq.vsi_id != qci->vsi_id ||
 			    qpi->rxq.vsi_id != qci->vsi_id ||
 			    qpi->rxq.queue_id != vsi_queue_id) {
-				aq_ret = I40E_ERR_PARAM;
+				aq_ret = -EINVAL;
 				goto error_param;
 			}
 		}
 
 		if (vf->adq_enabled) {
 			if (idx >= ARRAY_SIZE(vf->ch)) {
-				aq_ret = I40E_ERR_NO_AVAILABLE_VSI;
+				aq_ret = -ENODEV;
 				goto error_param;
 			}
 			vsi_id = vf->ch[idx].vsi_id;
@@ -2371,7 +2371,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 					     &qpi->rxq) ||
 		    i40e_config_vsi_tx_queue(vf, vsi_id, vsi_queue_id,
 					     &qpi->txq)) {
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto error_param;
 		}
 
@@ -2382,7 +2382,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 		 */
 		if (vf->adq_enabled) {
 			if (idx >= ARRAY_SIZE(vf->ch)) {
-				aq_ret = I40E_ERR_NO_AVAILABLE_VSI;
+				aq_ret = -ENODEV;
 				goto error_param;
 			}
 			if (j == (vf->ch[idx].num_qps - 1)) {
@@ -2405,7 +2405,7 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 			vsi->num_queue_pairs = vf->ch[i].num_qps;
 
 			if (i40e_update_adq_vsi_queues(vsi, i)) {
-				aq_ret = I40E_ERR_CONFIG;
+				aq_ret = -EIO;
 				goto error_param;
 			}
 		}
@@ -2463,13 +2463,13 @@ static int i40e_vc_config_irq_map_msg(struct i40e_vf *vf, u8 *msg)
 	int i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (irqmap_info->num_vectors >
 	    vf->pf->hw.func_caps.num_msix_vectors_vf) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
@@ -2478,18 +2478,18 @@ static int i40e_vc_config_irq_map_msg(struct i40e_vf *vf, u8 *msg)
 		/* validate msg params */
 		if (!i40e_vc_isvalid_vector_id(vf, map->vector_id) ||
 		    !i40e_vc_isvalid_vsi_id(vf, map->vsi_id)) {
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto error_param;
 		}
 		vsi_id = map->vsi_id;
 
 		if (i40e_validate_queue_map(vf, vsi_id, map->rxq_map)) {
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto error_param;
 		}
 
 		if (i40e_validate_queue_map(vf, vsi_id, map->txq_map)) {
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto error_param;
 		}
 
@@ -2578,29 +2578,29 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	int i;
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (!i40e_vc_isvalid_vsi_id(vf, vqs->vsi_id)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (!i40e_vc_validate_vqs_bitmaps(vqs)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	/* Use the queue bit map sent by the VF */
 	if (i40e_ctrl_vf_rx_rings(pf->vsi[vf->lan_vsi_idx], vqs->rx_queues,
 				  true)) {
-		aq_ret = I40E_ERR_TIMEOUT;
+		aq_ret = -EIO;
 		goto error_param;
 	}
 	if (i40e_ctrl_vf_tx_rings(pf->vsi[vf->lan_vsi_idx], vqs->tx_queues,
 				  true)) {
-		aq_ret = I40E_ERR_TIMEOUT;
+		aq_ret = -EIO;
 		goto error_param;
 	}
 
@@ -2609,7 +2609,7 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 		/* zero belongs to LAN VSI */
 		for (i = 1; i < vf->num_tc; i++) {
 			if (i40e_vsi_start_rings(pf->vsi[vf->ch[i].vsi_idx]))
-				aq_ret = I40E_ERR_TIMEOUT;
+				aq_ret = -EIO;
 		}
 	}
 
@@ -2635,29 +2635,29 @@ static int i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (!i40e_vc_isvalid_vsi_id(vf, vqs->vsi_id)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (!i40e_vc_validate_vqs_bitmaps(vqs)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	/* Use the queue bit map sent by the VF */
 	if (i40e_ctrl_vf_tx_rings(pf->vsi[vf->lan_vsi_idx], vqs->tx_queues,
 				  false)) {
-		aq_ret = I40E_ERR_TIMEOUT;
+		aq_ret = -EIO;
 		goto error_param;
 	}
 	if (i40e_ctrl_vf_rx_rings(pf->vsi[vf->lan_vsi_idx], vqs->rx_queues,
 				  false)) {
-		aq_ret = I40E_ERR_TIMEOUT;
+		aq_ret = -EIO;
 		goto error_param;
 	}
 error_param:
@@ -2789,18 +2789,18 @@ static int i40e_vc_get_stats_msg(struct i40e_vf *vf, u8 *msg)
 	memset(&stats, 0, sizeof(struct i40e_eth_stats));
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (!i40e_vc_isvalid_vsi_id(vf, vqs->vsi_id)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	if (!vsi) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 	i40e_update_eth_stats(vsi);
@@ -2861,7 +2861,7 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 		    is_zero_ether_addr(addr)) {
 			dev_err(&pf->pdev->dev, "invalid VF MAC addr %pM\n",
 				addr);
-			return I40E_ERR_INVALID_MAC_ADDR;
+			return -EINVAL;
 		}
 
 		/* If the host VMM administrator has set the VF MAC address
@@ -2931,7 +2931,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
-		ret = I40E_ERR_PARAM;
+		ret = -EINVAL;
 		goto error_param;
 	}
 
@@ -2960,7 +2960,7 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 				dev_err(&pf->pdev->dev,
 					"Unable to add MAC filter %pM for VF %d\n",
 					al->list[i].addr, vf->vf_id);
-				ret = I40E_ERR_PARAM;
+				ret = -EINVAL;
 				spin_unlock_bh(&vsi->mac_filter_hash_lock);
 				goto error_param;
 			}
@@ -3003,7 +3003,7 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
-		ret = I40E_ERR_PARAM;
+		ret = -EINVAL;
 		goto error_param;
 	}
 
@@ -3012,7 +3012,7 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 		    is_zero_ether_addr(al->list[i].addr)) {
 			dev_err(&pf->pdev->dev, "Invalid MAC addr %pM for VF %d\n",
 				al->list[i].addr, vf->vf_id);
-			ret = I40E_ERR_INVALID_MAC_ADDR;
+			ret = -EINVAL;
 			goto error_param;
 		}
 		if (ether_addr_equal(al->list[i].addr, vf->default_lan_addr.addr))
@@ -3024,7 +3024,7 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 	/* delete addresses from the list */
 	for (i = 0; i < al->num_elements; i++)
 		if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
-			ret = I40E_ERR_INVALID_MAC_ADDR;
+			ret = -EINVAL;
 			spin_unlock_bh(&vsi->mac_filter_hash_lock);
 			goto error_param;
 		}
@@ -3082,13 +3082,13 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	}
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vfl->vsi_id)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	for (i = 0; i < vfl->num_elements; i++) {
 		if (vfl->vlan_id[i] > I40E_MAX_VLANID) {
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			dev_err(&pf->pdev->dev,
 				"invalid VF VLAN id %d\n", vfl->vlan_id[i]);
 			goto error_param;
@@ -3096,7 +3096,7 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	}
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	if (vsi->info.pvid) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
@@ -3147,13 +3147,13 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vfl->vsi_id)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	for (i = 0; i < vfl->num_elements; i++) {
 		if (vfl->vlan_id[i] > I40E_MAX_VLANID) {
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto error_param;
 		}
 	}
@@ -3161,7 +3161,7 @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	if (vsi->info.pvid) {
 		if (vfl->num_elements > 1 || vfl->vlan_id[0])
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 		goto error_param;
 	}
 
@@ -3202,7 +3202,7 @@ static int i40e_vc_iwarp_msg(struct i40e_vf *vf, u8 *msg, u16 msglen)
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
 	    !test_bit(I40E_VF_STATE_IWARPENA, &vf->vf_states)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
@@ -3231,13 +3231,13 @@ static int i40e_vc_iwarp_qvmap_msg(struct i40e_vf *vf, u8 *msg, bool config)
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
 	    !test_bit(I40E_VF_STATE_IWARPENA, &vf->vf_states)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto error_param;
 	}
 
 	if (config) {
 		if (i40e_config_iwarp_qvlist(vf, qvlist_info))
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 	} else {
 		i40e_release_iwarp_qvlist(vf);
 	}
@@ -3268,7 +3268,7 @@ static int i40e_vc_config_rss_key(struct i40e_vf *vf, u8 *msg)
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vrk->vsi_id) ||
 	    vrk->key_len != I40E_HKEY_ARRAY_SIZE) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3299,13 +3299,13 @@ static int i40e_vc_config_rss_lut(struct i40e_vf *vf, u8 *msg)
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
 	    !i40e_vc_isvalid_vsi_id(vf, vrl->vsi_id) ||
 	    vrl->lut_entries != I40E_VF_HLUT_ARRAY_SIZE) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
 	for (i = 0; i < vrl->lut_entries; i++)
 		if (vrl->lut[i] >= vf->num_queue_pairs) {
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto err;
 		}
 
@@ -3332,14 +3332,14 @@ static int i40e_vc_get_rss_hena(struct i40e_vf *vf, u8 *msg)
 	int len = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 	len = sizeof(struct virtchnl_rss_hena);
 
 	vrh = kzalloc(len, GFP_KERNEL);
 	if (!vrh) {
-		aq_ret = I40E_ERR_NO_MEMORY;
+		aq_ret = -ENOMEM;
 		len = 0;
 		goto err;
 	}
@@ -3368,7 +3368,7 @@ static int i40e_vc_set_rss_hena(struct i40e_vf *vf, u8 *msg)
 	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 	i40e_write_rx_ctl(hw, I40E_VFQF_HENA1(0, vf->vf_id), (u32)vrh->hena);
@@ -3393,7 +3393,7 @@ static int i40e_vc_enable_vlan_stripping(struct i40e_vf *vf, u8 *msg)
 	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3419,7 +3419,7 @@ static int i40e_vc_disable_vlan_stripping(struct i40e_vf *vf, u8 *msg)
 	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3507,7 +3507,7 @@ static int i40e_validate_cloud_filter(struct i40e_vf *vf,
 			dev_err(&pf->pdev->dev,
 				"VF %d not trusted, make VF trusted to add advanced mode ADq cloud filters\n",
 				vf->vf_id);
-			return I40E_ERR_CONFIG;
+			return -EIO;
 		}
 	}
 
@@ -3560,9 +3560,9 @@ static int i40e_validate_cloud_filter(struct i40e_vf *vf,
 		}
 	}
 
-	return I40E_SUCCESS;
+	return 0;
 err:
-	return I40E_ERR_CONFIG;
+	return -EIO;
 }
 
 /**
@@ -3646,7 +3646,7 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 	int i, ret;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3654,7 +3654,7 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		dev_info(&pf->pdev->dev,
 			 "VF %d: ADq not enabled, can't apply cloud filter\n",
 			 vf->vf_id);
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3662,7 +3662,7 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		dev_info(&pf->pdev->dev,
 			 "VF %d: Invalid input, can't apply cloud filter\n",
 			 vf->vf_id);
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3777,7 +3777,7 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 	int i, ret;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err_out;
 	}
 
@@ -3785,7 +3785,7 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		dev_info(&pf->pdev->dev,
 			 "VF %d: ADq is not enabled, can't apply cloud filter\n",
 			 vf->vf_id);
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err_out;
 	}
 
@@ -3793,7 +3793,7 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		dev_info(&pf->pdev->dev,
 			 "VF %d: Invalid input/s, can't apply cloud filter\n",
 			 vf->vf_id);
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err_out;
 	}
 
@@ -3886,7 +3886,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 	u64 speed = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3894,7 +3894,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 	if (vf->spoofchk) {
 		dev_err(&pf->pdev->dev,
 			"Spoof check is ON, turn it OFF to enable ADq\n");
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3902,7 +3902,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 		dev_err(&pf->pdev->dev,
 			"VF %d attempting to enable ADq, but hasn't properly negotiated that capability\n",
 			vf->vf_id);
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3911,7 +3911,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 		dev_err(&pf->pdev->dev,
 			"VF %d trying to set %u TCs, valid range 1-%u TCs per VF\n",
 			vf->vf_id, tci->num_tc, I40E_MAX_VF_VSI);
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3923,7 +3923,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 				"VF %d: TC %d trying to set %u queues, valid range 1-%u queues per TC\n",
 				vf->vf_id, i, tci->list[i].count,
 				I40E_DEFAULT_QUEUES_PER_VF);
-			aq_ret = I40E_ERR_PARAM;
+			aq_ret = -EINVAL;
 			goto err;
 		}
 
@@ -3934,7 +3934,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 		dev_err(&pf->pdev->dev,
 			"No queues left to allocate to VF %d\n",
 			vf->vf_id);
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	} else {
 		/* we need to allocate max VF queues to enable ADq so as to
@@ -3949,7 +3949,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 	if (speed == SPEED_UNKNOWN) {
 		dev_err(&pf->pdev->dev,
 			"Cannot detect link speed\n");
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -3962,7 +3962,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 					"Invalid max tx rate %llu specified for VF %d.",
 					tci->list[i].max_tx_rate,
 					vf->vf_id);
-				aq_ret = I40E_ERR_PARAM;
+				aq_ret = -EINVAL;
 				goto err;
 			} else {
 				vf->ch[i].max_tx_rate =
@@ -3978,7 +3978,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 	/* reset the VF in order to allocate resources */
 	i40e_vc_reset_vf(vf, true);
 
-	return I40E_SUCCESS;
+	return 0;
 
 	/* send the response to the VF */
 err:
@@ -3997,7 +3997,7 @@ static int i40e_vc_del_qch_msg(struct i40e_vf *vf, u8 *msg)
 	int aq_ret = 0;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 		goto err;
 	}
 
@@ -4012,13 +4012,13 @@ static int i40e_vc_del_qch_msg(struct i40e_vf *vf, u8 *msg)
 	} else {
 		dev_info(&pf->pdev->dev, "VF %d trying to delete queue channels but ADq isn't enabled\n",
 			 vf->vf_id);
-		aq_ret = I40E_ERR_PARAM;
+		aq_ret = -EINVAL;
 	}
 
 	/* reset the VF in order to allocate resources */
 	i40e_vc_reset_vf(vf, true);
 
-	return I40E_SUCCESS;
+	return 0;
 
 err:
 	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DISABLE_CHANNELS,
@@ -4052,21 +4052,16 @@ int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
 
 	/* Check if VF is disabled. */
 	if (test_bit(I40E_VF_STATE_DISABLED, &vf->vf_states))
-		return I40E_ERR_PARAM;
+		return -EINVAL;
 
 	/* perform basic checks on the msg */
 	ret = virtchnl_vc_validate_vf_msg(&vf->vf_ver, v_opcode, msg, msglen);
 
 	if (ret) {
-		i40e_vc_send_resp_to_vf(vf, v_opcode, I40E_ERR_PARAM);
+		i40e_vc_send_resp_to_vf(vf, v_opcode, -EINVAL);
 		dev_err(&pf->pdev->dev, "Invalid message from VF %d, opcode %d, len %d\n",
 			local_vf_id, v_opcode, msglen);
-		switch (ret) {
-		case VIRTCHNL_STATUS_ERR_PARAM:
-			return -EPERM;
-		default:
-			return -EINVAL;
-		}
+		return ret;
 	}
 
 	switch (v_opcode) {
@@ -4159,7 +4154,7 @@ int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
 		dev_err(&pf->pdev->dev, "Unsupported opcode %d from VF %d\n",
 			v_opcode, local_vf_id);
 		ret = i40e_vc_send_resp_to_vf(vf, v_opcode,
-					      I40E_ERR_NOT_IMPLEMENTED);
+					      -EOPNOTSUPP);
 		break;
 	}
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
