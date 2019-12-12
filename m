Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC23811D754
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 520E1888C8;
	Thu, 12 Dec 2019 19:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qfDHa6iF4mso; Thu, 12 Dec 2019 19:44:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 215D5888C3;
	Thu, 12 Dec 2019 19:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 957A31BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A5668843F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lsAzwlwKw2et for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BDED6881A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698854"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:34 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:12:59 -0800
Message-Id: <20191212111307.33566-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 07/15] ice: Return error on not
 supported ethtool -C parameters
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

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

Check for all unused parameters, if ethtool sent one of them,
print info about that and return error.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 50 ++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a421c616604c..6ecac824c31c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3587,6 +3587,53 @@ ice_set_q_coalesce(struct ice_vsi *vsi, struct ethtool_coalesce *ec, int q_num)
 	return 0;
 }
 
+/**
+ * ice_is_coalesce_param_invalid - check for unsupported coalesce parameters
+ * @netdev: pointer to the netdev associated with this query
+ * @ec: ethtool structure to fill with driver's coalesce settings
+ *
+ * Print netdev info if driver doesn't support one of the parameters
+ * and return error. When any parameters will be implemented, remove only
+ * this parameter from param array.
+ */
+static int
+ice_is_coalesce_param_invalid(struct net_device *netdev,
+			      struct ethtool_coalesce *ec)
+{
+	struct ice_ethtool_not_used {
+		u32 value;
+		const char *name;
+	} param[] = {
+		{ec->stats_block_coalesce_usecs, "stats-block-usecs"},
+		{ec->rate_sample_interval, "sample-interval"},
+		{ec->pkt_rate_low, "pkt-rate-low"},
+		{ec->pkt_rate_high, "pkt-rate-high"},
+		{ec->rx_max_coalesced_frames, "rx-frames"},
+		{ec->rx_coalesce_usecs_irq, "rx-usecs-irq"},
+		{ec->rx_max_coalesced_frames_irq, "rx-frames-irq"},
+		{ec->tx_max_coalesced_frames, "tx-frames"},
+		{ec->tx_coalesce_usecs_irq, "tx-usecs-irq"},
+		{ec->tx_max_coalesced_frames_irq, "tx-frames-irq"},
+		{ec->rx_coalesce_usecs_low, "rx-usecs-low"},
+		{ec->rx_max_coalesced_frames_low, "rx-frames-low"},
+		{ec->tx_coalesce_usecs_low, "tx-usecs-low"},
+		{ec->tx_max_coalesced_frames_low, "tx-frames-low"},
+		{ec->rx_max_coalesced_frames_high, "rx-frames-high"},
+		{ec->tx_max_coalesced_frames_high, "tx-frames-high"}
+	};
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(param); i++) {
+		if (param[i].value) {
+			netdev_info(netdev, "Setting %s not supported\n",
+				    param[i].name);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * __ice_set_coalesce - set ITR/INTRL values for the device
  * @netdev: pointer to the netdev associated with this query
@@ -3603,6 +3650,9 @@ __ice_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
+	if (ice_is_coalesce_param_invalid(netdev, ec))
+		return -EINVAL;
+
 	if (q_num < 0) {
 		int v_idx;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
