Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F57B8D7F34
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 11:46:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47FB2414A2;
	Mon,  3 Jun 2024 09:46:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 04gWScnYz0_Q; Mon,  3 Jun 2024 09:46:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EF4E41489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717407983;
	bh=eGgI/gTpNwQQ6kM0uawWXVVWMTaUwoTlVHCyCC4RQ9w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5McF9nLJ20uiIpyBR985teuLzzdKUFH+d8mJk3u8vjc3UaNHCx9jxtu6ysHBJFasl
	 1Xe3s1lysOR6/XPRFJ+FdYv034TJKi5b81DsqL226Epdx1ImWMrXovaH3e+McLWsqM
	 flOb7SMQF79pGw0WVw6oGVbY+GOGEpSVf9acJso2i9KB2doW2LLwMfqU1IpBXHrnFJ
	 eTn39pcROqk2bc2/MwJFG/F364Hg96O8/kDHR9xCxeb/fGENVSxA2AL/xKyxzzD9lV
	 unrxy6HSueIBugWzahH9Aw8YFBm3NntjTR5ic3muGUBK7gzBEeznaW/rPVkf6eWws2
	 qeggKFeM5hoeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EF4E41489;
	Mon,  3 Jun 2024 09:46:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB29B1BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3F7B4051B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xkB5NVDsCJuL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 09:46:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB2FA4050B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB2FA4050B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB2FA4050B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:20 +0000 (UTC)
X-CSE-ConnectionGUID: QBH9yCzARwi33+gSXgJxIg==
X-CSE-MsgGUID: KXB86tkeStmavKhEXjbS1g==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="17732758"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="17732758"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 02:46:21 -0700
X-CSE-ConnectionGUID: kVrsRuwdTOO7rGrlRUgJEg==
X-CSE-MsgGUID: Tok+EnPwSNemK4nJJExRnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="37448281"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa007.jf.intel.com with ESMTP; 03 Jun 2024 02:46:17 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jun 2024 11:50:24 +0200
Message-ID: <20240603095025.1395347-15-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
References: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717407981; x=1748943981;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r4iGRCYTbbuic2zyU6ZXrLVnh2/GNV94oxDChKZ9j2Q=;
 b=HP1+X/C/TVyAWpy5BGG7XKNhAfDDsm6YneQ7zjOIykJEkYk43/8e5XRN
 rQ0OzFDjGUckcUTVNJ3RzXmEalHGyhKvIXmZuOAwHJvLJdW50zrPNif+x
 YNS88XTEOSJ+1/2akWA04G2AzD1IN/K3yM7GQYdBYgdkVELfLFA1/rmfi
 18O0C9EyLNhYaYML5JJGi0zjia9xWC3m/xMGrEPuOMBZBAv/WU0TJQkPI
 wCDl3s02XU4gF13pXuPxkH+GlJvDy1aqt4Lj7ie44Tsm0G091dEHfo0RF
 NZkloEjh699THEiJJSW+7dAVCHock7YOhieSm2bYz+suU5P++f7k/GKB8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HP1+X/C/
Subject: [Intel-wired-lan] [iwl-next v4 14/15] ice: basic support for VLAN
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement add / delete vlan for subfunction type VSI.

Reviewed-by: Simon Horman <horms@kernel.org>
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
index 4d987f5dcdc1..f5ff5fba0c3a 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -32,6 +32,7 @@ ice-y := ice_main.o	\
 	 devlink/devlink.o	\
 	 devlink/devlink_port.o \
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

