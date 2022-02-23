Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B784C05F0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:27:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 614A160F1A;
	Wed, 23 Feb 2022 00:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5nBDAVbaUc5; Wed, 23 Feb 2022 00:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30D7F60BAD;
	Wed, 23 Feb 2022 00:27:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 338831BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20EDE405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O5dJSwd_Jiv1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 058B74026A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576040; x=1677112040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IACmYh+PQZm4XllzIbNX+347HtR5IsZ0T3CAysUxSnM=;
 b=mRYv49Jv3RRYDqeyK25+mPMa8OA1hto1oZ56FX3yPOT2+H2/KUGYYqLw
 8120dOWXh5K5JXwucNka6Q9Yh86Kmb3KAXNRsHXKvYECbq5p7p1iPuZ3g
 5zcj4Ybh/TGyAvmcQ7vGUibp/OIi+jktQ00BK9JLN/ftRbZzX3nrogWX4
 doCCpe0A9Rz+uoUjXNfQQQdwGLFdGozA3L7+Nf6eP2K3iwhicdhvn+e4L
 wRkAPeqpF5PX4p7Dn7SzORPtq3loeZkrDQKTeG4GdMkBnTZloQPa69kU9
 wmqrJO3UGsVXoYcF/418NWwvuHXHFzRAYbgeNgRwFnREIFm0dLHnNaZ9u Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468966"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468966"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505727998"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:49 -0800
Message-Id: <20220223002712.2771809-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 02/25] ice: rename
 ice_virtchnl_pf.c to ice_sriov.c
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

The ice_virtchnl_pf.c and ice_virtchnl_pf.h files are where most of the
code for implementing Single Root IOV virtualization resides. This code
includes support for bringing up and tearing down VFs, hooks into the
kernel SR-IOV netdev operations, and for handling virtchnl messages from
VFs.

In the future, we plan to support Scalable IOV in addition to Single
Root IOV as an alternative virtualization scheme. This implementation
will re-use some but not all of the code in ice_virtchnl_pf.c

To prepare for this future, we want to refactor and split up the code in
ice_virtchnl_pf.c into the following scheme:

 * ice_vf_lib.[ch]

   Basic VF structures and accessors. This is where scheme-independent
   code will reside.

 * ice_virtchnl.[ch]

   Virtchnl message handling. This is where the bulk of the logic for
   processing messages from VFs using the virtchnl messaging scheme will
   reside. This is separated from ice_vf_lib.c because it is distinct
   and has a bulk of the processing code.

 * ice_sriov.[ch]

   Single Root IOV implementation, including initialization and the
   routines for interacting with SR-IOV based netdev operations.

 * (future) ice_siov.[ch]

   Scalable IOV implementation.

As a first step, lets assume that all of the code in
ice_virtchnl_pf.[ch] is for Single Root IOV. Rename this file to
ice_sriov.c and its header to ice_sriov.h

Future changes will further split out the code in these files following
the plan outlined here.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile                     | 2 +-
 drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
 drivers/net/ethernet/intel/ice/ice_base.c                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_repr.c                   | 2 +-
 .../ethernet/intel/ice/{ice_virtchnl_pf.c => ice_sriov.c}   | 0
 .../ethernet/intel/ice/{ice_virtchnl_pf.h => ice_sriov.h}   | 6 +++---
 drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c        | 2 +-
 7 files changed, 8 insertions(+), 8 deletions(-)
 rename drivers/net/ethernet/intel/ice/{ice_virtchnl_pf.c => ice_sriov.c} (100%)
 rename drivers/net/ethernet/intel/ice/{ice_virtchnl_pf.h => ice_sriov.h} (99%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 451098e25023..816e81832b7f 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -38,7 +38,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_virtchnl_fdir.o	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
-	ice_virtchnl_pf.o
+	ice_sriov.o
 ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
 ice-$(CONFIG_TTY) += ice_gnss.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 6c41edd99410..0fd15b45ce23 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -66,7 +66,7 @@
 #include "ice_flow.h"
 #include "ice_sched.h"
 #include "ice_idc_int.h"
-#include "ice_virtchnl_pf.h"
+#include "ice_sriov.h"
 #include "ice_vf_mbx.h"
 #include "ice_ptp.h"
 #include "ice_fdir.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index a3094470d31d..136d7911adb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -5,7 +5,7 @@
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
-#include "ice_virtchnl_pf.h"
+#include "ice_sriov.h"
 
 static bool ice_alloc_rx_buf_zc(struct ice_rx_ring *rx_ring)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index f8db3ca521da..e0be27657569 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -4,7 +4,7 @@
 #include "ice.h"
 #include "ice_eswitch.h"
 #include "ice_devlink.h"
-#include "ice_virtchnl_pf.h"
+#include "ice_sriov.h"
 #include "ice_tc_lib.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
rename to drivers/net/ethernet/intel/ice/ice_sriov.c
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
similarity index 99%
rename from drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
rename to drivers/net/ethernet/intel/ice/ice_sriov.h
index 3938204feeaf..18a2dd537f9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (c) 2018, Intel Corporation. */
 
-#ifndef _ICE_VIRTCHNL_PF_H_
-#define _ICE_VIRTCHNL_PF_H_
+#ifndef _ICE_SRIOV_H_
+#define _ICE_SRIOV_H_
 #include "ice.h"
 #include "ice_virtchnl_fdir.h"
 #include "ice_vsi_vlan_ops.h"
@@ -434,4 +434,4 @@ static inline bool ice_vf_is_port_vlan_ena(struct ice_vf __always_unused *vf)
 	return false;
 }
 #endif /* CONFIG_PCI_IOV */
-#endif /* _ICE_VIRTCHNL_PF_H_ */
+#endif /* _ICE_SRIOV_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
index b16f946185f2..5ecc0ee9a78e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
@@ -6,7 +6,7 @@
 #include "ice_vlan_mode.h"
 #include "ice.h"
 #include "ice_vf_vsi_vlan_ops.h"
-#include "ice_virtchnl_pf.h"
+#include "ice_sriov.h"
 
 static int
 noop_vlan_arg(struct ice_vsi __always_unused *vsi,
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
