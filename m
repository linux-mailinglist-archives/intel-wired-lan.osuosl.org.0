Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BB98529C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:23:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE84260AF6;
	Tue, 13 Feb 2024 07:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OtCFWwBCjuZg; Tue, 13 Feb 2024 07:23:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1369F60AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809036;
	bh=GhrpkwKaUoDAUdj5c+/xbIfXNQ0nu+e5TcZzMKHXcx0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N7laiDh4LzhTHUZZ3KOqTwP8WveV8xiWaD4Thq98W4INJjeDWVSoKakWupSdQCaQ5
	 ljotn+ENpyKWapt1WCD+0+yZ/qJvVkSHS7YAtAz+2lHMB2huQvhynEKES/pD7zvi7T
	 R/5o/NKclYrevbfmDAvckYu8vweAd0RhHkH//s/SnqgUcytlqGkLlPUYtiQ1qpUQ+T
	 XkdeboZOKCXgPX+0vG4+nZU6QhOrTHB+Z1XtfNOnpXZBQThEwAR7obujOkWkzxRfY/
	 QuupFSxHZgXwm7+74nPdxBFoqWNJ2GlYdDedWYeV703IvIH50IcQhXOqQFcqadlRoc
	 EWyGX7YW8PNbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1369F60AEF;
	Tue, 13 Feb 2024 07:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF5D21BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C899760B1E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xIMU3udLMdt8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:23:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DB0EC60B0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB0EC60B0D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB0EC60B0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27248086"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="27248086"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:23:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7385518"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 12 Feb 2024 23:23:43 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:27:23 +0100
Message-ID: <20240213072724.77275-15-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809033; x=1739345033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IKRDd4c9n0D05np4WJ9MCwT9oT2BcvovW06HjCsW9Yg=;
 b=lNUXfkA9XbgL69X7wvwXnU+sDXv2AJySQ2OoRRKQzPXoXXyOwYzTob58
 xE1gOJVYU0mAZ11X5z3Eb0NoQ0q4FkZyr1R1HzfSgbXabJrQAAHd2wbTa
 zAcqvFQw0x3C2NIAvzvFx/+FT0vSknHwnxGvndMtDaW4Pk8m9HiOP3JsO
 uKX1PufUbayaquWUdtnNf1TQSrjMi5eFGCZ8XOYaolMgkbCfRua+2oUFv
 APypFOX0tQIp+KrIgID3IFzW/r+cSKYMRFHGOCj4uiFi0CSvHD+0A6gpb
 npsngsV5vbolnRzYK10ZDP8URImJ9akghECL3tlrAjG1QZO4D+nBbcrjj
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lNUXfkA9
Subject: [Intel-wired-lan] [iwl-next v1 14/15] ice: basic support for VLAN
 in subfunctions
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement add / delete vlan for subfunction type VSI.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |  1 +
 .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.c  | 21 +++++++++++++++++++
 .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.h  | 13 ++++++++++++
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |  4 ++++
 4 files changed, 39 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index d56a7165df95..6f350d8624d7 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -32,6 +32,7 @@ ice-y := ice_main.o	\
 	 ice_devlink.o	\
 	 devlink/ice_devlink_port.o	\
 	 ice_sf_eth.o	\
+	 ice_sf_vsi_vlan_ops.o \
 	 ice_ddp.o	\
 	 ice_fw_update.o \
 	 ice_lag.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
new file mode 100644
index 000000000000..3d7e96721cf9
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2023, Intel Corporation. */
+
+#include "ice_vsi_vlan_ops.h"
+#include "ice_vsi_vlan_lib.h"
+#include "ice_vlan_mode.h"
+#include "ice.h"
+#include "ice_sf_vsi_vlan_ops.h"
+
+void ice_sf_vsi_init_vlan_ops(struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops;
+
+	if (ice_is_dvm_ena(&vsi->back->hw))
+		vlan_ops = &vsi->outer_vlan_ops;
+	else
+		vlan_ops = &vsi->inner_vlan_ops;
+
+	vlan_ops->add_vlan = ice_vsi_add_vlan;
+	vlan_ops->del_vlan = ice_vsi_del_vlan;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h b/drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h
new file mode 100644
index 000000000000..8c44eafceea0
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2023, Intel Corporation. */
+
+#ifndef _ICE_SF_VSI_VLAN_OPS_H_
+#define _ICE_SF_VSI_VLAN_OPS_H_
+
+#include "ice_vsi_vlan_ops.h"
+
+struct ice_vsi;
+
+void ice_sf_vsi_init_vlan_ops(struct ice_vsi *vsi);
+
+#endif /* _ICE_SF_VSI_VLAN_OPS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
index 7aae7fdcfcdb..8c7a9b41fb63 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.c
@@ -3,6 +3,7 @@
 
 #include "ice_pf_vsi_vlan_ops.h"
 #include "ice_vf_vsi_vlan_ops.h"
+#include "ice_sf_vsi_vlan_ops.h"
 #include "ice_lib.h"
 #include "ice.h"
 
@@ -77,6 +78,9 @@ void ice_vsi_init_vlan_ops(struct ice_vsi *vsi)
 	case ICE_VSI_VF:
 		ice_vf_vsi_init_vlan_ops(vsi);
 		break;
+	case ICE_VSI_SF:
+		ice_sf_vsi_init_vlan_ops(vsi);
+		break;
 	default:
 		dev_dbg(ice_pf_to_dev(vsi->back), "%s does not support VLAN operations\n",
 			ice_vsi_type_str(vsi->type));
-- 
2.42.0

