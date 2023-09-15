Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707FE7A227B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 17:35:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 761104196F;
	Fri, 15 Sep 2023 15:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 761104196F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694792137;
	bh=UcXkDUSS8ZAeFB4jmJGJ/YEIMECbSRaiZMQKosijOYY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=epcIQV+/gprhBZU2wD4ISMn9anPxuvjkNwdoSCSxgwNwln12lQn9ihovWZCW5kkeE
	 4H85DzCyQO8rKO5d30LoY0NQiI/iChD5GL7Bijswu5KEWEof1f+7keeC0m3QhhpK3B
	 PnTj6H2DUtySrHrazkYvGUrWtn7FU7hM6EbJizXeFXdulbRsfec8F4GrB0X8Jbkg0m
	 ns09Z3BrzPMTMzGaVog7N1I3fCFO5xhSwDUyeDcl3rXfykbdf3Lc+2DfxA0ZQFHAbf
	 nSOgHFWbXhDuS9V5Pk2xfvQ6Ymht7LCapoPaigtIMC+qXFUi3TNd//GMM736kpA/qD
	 C4k6ju13c9hkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kS5oe0O8oVnR; Fri, 15 Sep 2023 15:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F509401DF;
	Fri, 15 Sep 2023 15:35:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F509401DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 546BC1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B60542125
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B60542125
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfMUOwRFknHF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 15:35:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBF61420A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBF61420A2
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="359532759"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="359532759"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="860200030"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="860200030"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 15 Sep 2023 08:35:10 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C339E33E83;
 Fri, 15 Sep 2023 16:35:09 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Sep 2023 17:35:19 +0200
Message-ID: <20230915153518.464595-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694792129; x=1726328129;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ABqV9ynyGVyNaVHUBL1ZgG1XUHjB1KwuGDghn1MvkhM=;
 b=ktaTS+kLVbBSJOkWLVQoKLBbsYPwpullOIcDhPu6L2RJs+qrLW7r2jKn
 sMwAwdMGDAPMy7pDennvA8srBkUySbcL7gwZwa05XjWipBcVqYkRibEsL
 si5RBcIkQAP3Z323sF9nM5fels35sAEu7xb/+PDP28YFsIkIyXSmjj429
 A7HHqLyUCyJnmZg8EasiTxKfiMd3hj9V/2d5iaodZymJirSOe4p8YM/3o
 3oxHNGdQhQoU0M+3tISy7RTdKq5B4jcVJWB1pv4R6dmjwD4Ipk/lpAb17
 uUSVSc50Yu7GeUXDPNZepKJfcimTI93snw3kAHWBBH2OrIhmmVBgq+Uq9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ktaTS+kL
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: block default rule setting
 on LAG interface
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

When one of the LAG interfaces is in switchdev mode, setting default rule
can't be done.

The interface on which switchdev is running has ice_set_rx_mode() blocked
to avoid default rule adding (and other rules). The other interfaces
(without switchdev running but connected via bond with interface that
runs switchdev) can't follow the same scheme, because rx filtering needs
to be disabled when failover happens. Notification for bridge to set
promisc mode seems like good place to do that.

Fixes: bb52f42acef6 ("ice: Add driver support for firmware changes for LAG")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 32 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lag.h |  1 +
 drivers/net/ethernet/intel/ice/ice_lib.c |  6 +++++
 3 files changed, 39 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 4f39863b5537..7b1256992dcf 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2093,3 +2093,35 @@ void ice_lag_rebuild(struct ice_pf *pf)
 	}
 	mutex_unlock(&pf->lag_mutex);
 }
+
+/**
+ * ice_lag_is_switchdev_running
+ * @pf: pointer to PF structure
+ *
+ * Check if switchdev is running on any of the interfaces connected to lag.
+ */
+bool ice_lag_is_switchdev_running(struct ice_pf *pf)
+{
+	struct ice_lag *lag = pf->lag;
+	struct net_device *tmp_nd;
+
+	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) || !lag)
+		return false;
+
+	rcu_read_lock();
+	for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
+		struct ice_netdev_priv *priv = netdev_priv(tmp_nd);
+
+		if (!netif_is_ice(tmp_nd) || !priv || !priv->vsi ||
+		    !priv->vsi->back)
+			continue;
+
+		if (ice_is_switchdev_running(priv->vsi->back)) {
+			rcu_read_unlock();
+			return true;
+		}
+	}
+	rcu_read_unlock();
+
+	return false;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index 18075b82485a..facb6c894b6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -62,4 +62,5 @@ void ice_lag_move_new_vf_nodes(struct ice_vf *vf);
 int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
 void ice_lag_rebuild(struct ice_pf *pf);
+bool ice_lag_is_switchdev_running(struct ice_pf *pf);
 #endif /* _ICE_LAG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 201570cd2e0b..7bf9b7069754 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3575,6 +3575,12 @@ int ice_set_dflt_vsi(struct ice_vsi *vsi)
 
 	dev = ice_pf_to_dev(vsi->back);
 
+	if (ice_lag_is_switchdev_running(vsi->back)) {
+		dev_dbg(dev, "VSI %d passed is a part of LAG containing interfaces in switchdev mode, nothing to do\n",
+			vsi->vsi_num);
+		return 0;
+	}
+
 	/* the VSI passed in is already the default VSI */
 	if (ice_is_vsi_dflt_vsi(vsi)) {
 		dev_dbg(dev, "VSI %d passed in is already the default forwarding VSI, nothing to do\n",
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
