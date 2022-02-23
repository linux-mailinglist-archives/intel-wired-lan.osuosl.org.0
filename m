Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2536F4C05F2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:27:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE9CA405EF;
	Wed, 23 Feb 2022 00:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G1F7TNwGOxbv; Wed, 23 Feb 2022 00:27:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C6BD40207;
	Wed, 23 Feb 2022 00:27:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E5291BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 849B7405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kMSDs7omKhjG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B33C440207
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576039; x=1677112039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yhpOhsmpGsyZi4EWP8XAXycdcSpKGEM/5LmQQAl79V4=;
 b=XYUCVEmZvaSdUeHfoKAH+xoOfhoZhiJysC5pWqElO6y8vCx2dFyZ1Qc1
 sRMaKJy8DcIwEl+y78GT7j/d+nfdn8o6ylp85zigajYkc1pGlP94J2PM+
 P4FyWnzezxJdM7p7SoLayFTOVkmHpCyTFThbgAOpezNGUo2d/IjMFX9pn
 FGDBtoqz8lxek2OJ8vshJo0xrV2WBsRc2hSbKXrNWYfomOAjwzDMHuIQW
 PgD0T/HYBz298ZzlWYwCOzQ56RLPEAQGzZ3obEZp1D9tAd8/ZUTksTf+2
 k3mhSMAIUeWf3Z1Ip/sw6BxKUt2l+h/5CfPqRENDuHQnqf3RL+3e2c7cr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468964"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468964"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505727996"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:48 -0800
Message-Id: <20220223002712.2771809-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 01/25] ice: rename ice_sriov.c to
 ice_vf_mbx.c
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

The ice_sriov.c file primarily contains code which handles the logic for
mailbox overflow detection and some other utility functions related to
the virtualization mailbox.

The bulk of the SR-IOV implementation is actually found in
ice_virtchnl_pf.c, and this file isn't strictly SR-IOV specific.

In the future, the ice driver will support an additional virtualization
scheme known as Scalable IOV, and the code in this file will be used
for this alternative implementation.

Rename this file (and its associated header) to ice_vf_mbx.c, so that we
can later re-use the ice_sriov.c file as the SR-IOV specific file.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile                     | 2 +-
 drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
 .../net/ethernet/intel/ice/{ice_sriov.c => ice_vf_mbx.c}    | 2 +-
 .../net/ethernet/intel/ice/{ice_sriov.h => ice_vf_mbx.h}    | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)
 rename drivers/net/ethernet/intel/ice/{ice_sriov.c => ice_vf_mbx.c} (99%)
 rename drivers/net/ethernet/intel/ice/{ice_sriov.h => ice_vf_mbx.h} (95%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 44b8464b7663..451098e25023 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -36,7 +36,7 @@ ice-y := ice_main.o	\
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_virtchnl_allowlist.o \
 	ice_virtchnl_fdir.o	\
-	ice_sriov.o		\
+	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_virtchnl_pf.o
 ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 32ebce1fbeef..6c41edd99410 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -67,7 +67,7 @@
 #include "ice_sched.h"
 #include "ice_idc_int.h"
 #include "ice_virtchnl_pf.h"
-#include "ice_sriov.h"
+#include "ice_vf_mbx.h"
 #include "ice_ptp.h"
 #include "ice_fdir.h"
 #include "ice_xsk.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
similarity index 99%
rename from drivers/net/ethernet/intel/ice/ice_sriov.c
rename to drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index 52c6bac41bf7..fc8c93fa4455 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2018, Intel Corporation. */
 
 #include "ice_common.h"
-#include "ice_sriov.h"
+#include "ice_vf_mbx.h"
 
 /**
  * ice_aq_send_msg_to_vf
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
similarity index 95%
rename from drivers/net/ethernet/intel/ice/ice_sriov.h
rename to drivers/net/ethernet/intel/ice/ice_vf_mbx.h
index 68686a3fd7e8..582716e6d5f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (c) 2018, Intel Corporation. */
 
-#ifndef _ICE_SRIOV_H_
-#define _ICE_SRIOV_H_
+#ifndef _ICE_VF_MBX_H_
+#define _ICE_VF_MBX_H_
 
 #include "ice_type.h"
 #include "ice_controlq.h"
@@ -49,4 +49,4 @@ ice_conv_link_speed_to_virtchnl(bool __always_unused adv_link_support,
 }
 
 #endif /* CONFIG_PCI_IOV */
-#endif /* _ICE_SRIOV_H_ */
+#endif /* _ICE_VF_MBX_H_ */
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
