Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E7171E1F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:56:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0263685BC6;
	Tue, 23 Jul 2019 17:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8DV5tCduBkKh; Tue, 23 Jul 2019 17:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90D2F85BB5;
	Tue, 23 Jul 2019 17:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F26791BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EFD3320133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-+-ZH6reqnT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 2DB3C2033F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="180816345"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 23 Jul 2019 10:56:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:27:52 -0700
Message-Id: <20190723092759.3614-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
References: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S24 05/12] ice: Fix RSS LUT table when
 setting Rx channels
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

From: Brett Creeley <brett.creeley@intel.com>

Currently there are multiple problems involved with setting Rx channels
in regards to the RSS LUT. First, if the user set the indirection table
manually through ethtool, changing the Rx channels will blindly use the
user set value. Second when increasing the number of Rx channels the RSS
table size is doing of minimum of the last RSS table width and the newly
requested one, this is causing the previously set RSS table width to be
used.

Fix these issues by adding the function ice_pf_set_dflt_rss_lut() that
is called when changing the number of Rx channels. This function updates
the RSS LUT to the default configuration for the PF any time the user
has changed the number of Rx channels.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 64 ++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ba29aede99ad..35aa4a3f59df 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3154,6 +3154,67 @@ ice_get_channels(struct net_device *dev, struct ethtool_channels *ch)
 	ch->tx_count = vsi->num_txq;
 }
 
+/**
+ * ice_pf_set_dflt_rss_lut - set default RSS LUT with requested RSS size
+ * @pf: PF to reconfigure RSS LUT on
+ * @req_rss_size: requested range of queue numbers for hashing
+ *
+ * Set the PF's RSS parameters, configure the RSS LUT based on these, and then
+ * clear the previous vsi->rss_lut_user because it is assumed to be invalid at
+ * this point.
+ */
+static int ice_pf_set_dflt_rss_lut(struct ice_pf *pf, int req_rss_size)
+{
+	struct device *dev = &pf->pdev->dev;
+	struct ice_hw *hw = &pf->hw;
+	enum ice_status status;
+	struct ice_vsi *vsi;
+	int err = 0;
+	u8 *lut;
+
+	if (!req_rss_size)
+		return -EINVAL;
+
+	vsi = ice_find_vsi_by_type(pf, ICE_VSI_PF);
+	if (!vsi)
+		return -EINVAL;
+
+	lut = devm_kzalloc(dev, vsi->rss_table_size, GFP_KERNEL);
+	if (!lut)
+		return -ENOMEM;
+
+	/* set RSS LUT parameters */
+	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
+		vsi->rss_size = 1;
+	} else {
+		struct ice_hw_common_caps *caps = &hw->func_caps.common_cap;
+
+		vsi->rss_size = min_t(int, req_rss_size,
+				      BIT(caps->rss_table_entry_width));
+	}
+
+	/* create/set RSS LUT */
+	ice_fill_rss_lut(lut, vsi->rss_table_size, vsi->rss_size);
+	status = ice_aq_set_rss_lut(hw, vsi->idx, vsi->rss_lut_type, lut,
+				    vsi->rss_table_size);
+	if (status) {
+		dev_err(dev, "Cannot set RSS lut, err %d aq_err %d\n",
+			status, hw->adminq.sq_last_status);
+		err = -EIO;
+	}
+
+	/* get rid of invalid user configuration */
+	if (vsi->rss_lut_user) {
+		netdev_info(vsi->netdev,
+			    "Rx queue count changed, clearing user modified RSS LUT, re-run ethtool [-x|-X] to [check|set] settings if needed\n");
+		devm_kfree(dev, vsi->rss_lut_user);
+		vsi->rss_lut_user = NULL;
+	}
+
+	devm_kfree(dev, lut);
+	return err;
+}
+
 /**
  * ice_set_channels - set the number channels
  * @dev: network interface device structure
@@ -3189,6 +3250,9 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 
 	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
 
+	if (new_rx)
+		return ice_pf_set_dflt_rss_lut(pf, new_rx);
+
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
