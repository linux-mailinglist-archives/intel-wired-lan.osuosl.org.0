Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DAD14A8FB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2020 18:32:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1F4185190;
	Mon, 27 Jan 2020 17:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgdmDYJfIq6C; Mon, 27 Jan 2020 17:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7A2485124;
	Mon, 27 Jan 2020 17:32:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98ACA1BF283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9314284828
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3BiIkvXmlReN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 17:32:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 162D184806
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 09:32:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="427350644"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jan 2020 09:32:09 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Jan 2020 00:59:17 -0800
Message-Id: <20200127085927.13999-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
References: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 05/15] ice: Add DCBNL ops required to
 configure ETS in CEE for SW DCB
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

From: Avinash JD <avinash.dayanand@intel.com>

Couple of DCBNL ops are required for configuring ETS in SW DCB CEE mode. If
these functions are not added, it'll break the CEE functionality.

Signed-off-by: Avinash JD <avinash.dayanand@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 43 +++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index a45e8abef8f3..912467add847 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -541,6 +541,30 @@ ice_dcbnl_get_pg_tc_cfg_rx(struct net_device *netdev, int prio,
 	*pgid = pi->local_dcbx_cfg.etscfg.prio_table[prio];
 }
 
+/**
+ * ice_dcbnl_set_pg_tc_cfg_rx
+ * @netdev: relevant netdev struct
+ * @prio: corresponding user priority
+ * @prio_type: the traffic priority type
+ * @pgid: the PG ID
+ * @bw_pct: BW percentage for corresponding BWG
+ * @up_map: prio mapped to corresponding TC
+ *
+ * lldpad requires this function pointer to be non-NULL to complete CEE config.
+ */
+static void
+ice_dcbnl_set_pg_tc_cfg_rx(struct net_device *netdev,
+			   int __always_unused prio,
+			   u8 __always_unused prio_type,
+			   u8 __always_unused pgid,
+			   u8 __always_unused bw_pct,
+			   u8 __always_unused up_map)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+
+	dev_dbg(ice_pf_to_dev(pf), "Rx TC PG Config Not Supported.\n");
+}
+
 /**
  * ice_dcbnl_get_pg_bwg_cfg_rx - Get CEE PG BW Rx config
  * @netdev: pointer to netdev struct
@@ -560,6 +584,23 @@ ice_dcbnl_get_pg_bwg_cfg_rx(struct net_device *netdev, int __always_unused pgid,
 	*bw_pct = 0;
 }
 
+/**
+ * ice_dcbnl_set_pg_bwg_cfg_rx
+ * @netdev: the corresponding netdev
+ * @pgid: corresponding TC
+ * @bw_pct: BW percentage for given TC
+ *
+ * lldpad requires this function pointer to be non-NULL to complete CEE config.
+ */
+static void
+ice_dcbnl_set_pg_bwg_cfg_rx(struct net_device *netdev, int __always_unused pgid,
+			    u8 __always_unused bw_pct)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+
+	dev_dbg(ice_pf_to_dev(pf), "Rx BWG PG Config Not Supported.\n");
+}
+
 /**
  * ice_dcbnl_get_cap - Get DCBX capabilities of adapter
  * @netdev: pointer to netdev struct
@@ -806,6 +847,8 @@ static const struct dcbnl_rtnl_ops dcbnl_ops = {
 	.getpermhwaddr = ice_dcbnl_get_perm_hw_addr,
 	.setpgtccfgtx = ice_dcbnl_set_pg_tc_cfg_tx,
 	.setpgbwgcfgtx = ice_dcbnl_set_pg_bwg_cfg_tx,
+	.setpgtccfgrx = ice_dcbnl_set_pg_tc_cfg_rx,
+	.setpgbwgcfgrx = ice_dcbnl_set_pg_bwg_cfg_rx,
 	.getpgtccfgtx = ice_dcbnl_get_pg_tc_cfg_tx,
 	.getpgbwgcfgtx = ice_dcbnl_get_pg_bwg_cfg_tx,
 	.getpgtccfgrx = ice_dcbnl_get_pg_tc_cfg_rx,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
