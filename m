Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 364482BBB2E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:45:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB18786E76;
	Sat, 21 Nov 2020 00:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O4Jw4qt9UCDu; Sat, 21 Nov 2020 00:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFC6A86E7F;
	Sat, 21 Nov 2020 00:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C0691BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68CA5868B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KtXvryS191jw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E1FBA86E7F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
IronPort-SDR: 6e96NIxh4GZCoDLOAE+z+DDJcCSAcpYz7hJ6S9aGe8LT0TuMOwLZN0gVFlAPNTuGWasuzr06NA
 8VnW+CfaliYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="170782302"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="170782302"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:45:33 -0800
IronPort-SDR: 0l8G4T+id8LI+JmTbzgMDnw+SKvdoa6gWZI0xJ2dIPJdiZ8EZM4L0KXYCBaZ7eQuHs8QDYyA6M
 41O4VhVXxiXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369396471"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2020 16:45:29 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:38:35 -0800
Message-Id: <20201121003835.48424-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 6/6] ice: Fix state bits on LLDP mode switch
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

From: Dave Ertman <david.m.ertman@intel.com>

DCBX_CAP bits were not being adjusted when switching
between SW and FW controlled LLDP.

Adjust bits to correctly indicate which mode the
LLDP logic is in.

Fixes: b94b013eb626 ("ice: Implement DCBNL support")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 2 --
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c  | 4 ++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 7 +++++++
 3 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a0723831c4e4..fc022daba022 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -442,9 +442,7 @@ struct ice_pf {
 	struct ice_hw_port_stats stats_prev;
 	struct ice_hw hw;
 	u8 stat_prev_loaded:1; /* has previous stats been loaded */
-#ifdef CONFIG_DCB
 	u16 dcbx_cap;
-#endif /* CONFIG_DCB */
 	u32 tx_timeout_count;
 	unsigned long tx_timeout_last_recovery;
 	u32 tx_timeout_recovery_level;
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 842d44b63480..8c133a8be6ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -160,6 +160,10 @@ static u8 ice_dcbnl_setdcbx(struct net_device *netdev, u8 mode)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 
+	/* if FW LLDP agent is running, DCBNL not allowed to change mode */
+	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
+		return ICE_DCB_NO_HW_CHG;
+
 	/* No support for LLD_MANAGED modes or CEE+IEEE */
 	if ((mode & DCB_CAP_DCBX_LLD_MANAGED) ||
 	    ((mode & DCB_CAP_DCBX_VER_IEEE) && (mode & DCB_CAP_DCBX_VER_CEE)) ||
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 8515a3a7515f..1cfa7332888d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -8,6 +8,7 @@
 #include "ice_fltr.h"
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
+#include <net/dcbnl.h>
 
 struct ice_stats {
 	char stat_string[ETH_GSTRING_LEN];
@@ -1238,6 +1239,9 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			status = ice_init_pf_dcb(pf, true);
 			if (status)
 				dev_warn(dev, "Fail to init DCB\n");
+
+			pf->dcbx_cap &= ~DCB_CAP_DCBX_LLD_MANAGED;
+			pf->dcbx_cap |= DCB_CAP_DCBX_HOST;
 		} else {
 			enum ice_status status;
 			bool dcbx_agent_status;
@@ -1280,6 +1284,9 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			if (status)
 				dev_dbg(dev, "Fail to enable MIB change events\n");
 
+			pf->dcbx_cap &= ~DCB_CAP_DCBX_HOST;
+			pf->dcbx_cap |= DCB_CAP_DCBX_LLD_MANAGED;
+
 			ice_nway_reset(netdev);
 		}
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
