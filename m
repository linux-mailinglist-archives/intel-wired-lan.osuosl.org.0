Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FC262CECC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 00:35:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EF9441851;
	Wed, 16 Nov 2022 23:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EF9441851
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668641733;
	bh=skIBTpGwHml4t+z1cyAUd3fZCnwR7W8PBsVdevWznw0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mX8mkMXCCoNBKV8XQQAJlowDnA3ds1VqpeqbrXTUe46V6b3ZfoPMqAkTXwXFU8QDY
	 jgot7JGXWBaLS4QXTp4a5pb27e5uhYASm30o9UjnoJKrQbZa/kpwr3nS+7aWvy3KrC
	 9h4AwHNbVZVTQnc6MqI509LHjKDPqb1YU3F7kZ1nS3vg1hikC+Ne71eJ86qUrfSgDn
	 GCED2JsHzuY4PLwPY5bO+LZEaC4pJNAIDRFIrnclciWlkAmS461OMDYWu4SOgofUkE
	 navcchMYLCPmVXyB2G0Hdgx99dD+Zf7nUGOGyxs82gQfrycuDAeijgHNeWeRRZKvfV
	 X/Ly/bGPz39Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8mCMHNvu--jG; Wed, 16 Nov 2022 23:35:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 779E64181D;
	Wed, 16 Nov 2022 23:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 779E64181D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C29AB1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 23:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A36A24181D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 23:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A36A24181D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jW_ZkBReqI-6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 23:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AF5541821
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5AF5541821
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 23:35:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="296062450"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="296062450"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 15:35:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="814275817"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="814275817"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by orsmga005.jf.intel.com with ESMTP; 16 Nov 2022 15:35:20 -0800
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Nov 2022 18:26:44 -0500
Message-Id: <20221116232645.8218-2-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20221116232645.8218-1-benjamin.mikailenko@intel.com>
References: <20221116232645.8218-1-benjamin.mikailenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668641721; x=1700177721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P82SnH8JxbPsJ20kwrMIj9QpRlGMunnVmoBF1bXrTLo=;
 b=k9xo9tTNbJXPgf+BmxUgL+ys0jsav24V3yBYDh6F2hmBM5uzscz92wfw
 BUW/cXqWnkd329DxYBJn7R6hhNeOB5brPsO2XysyDB9xwlROe0+eFbTn0
 +taeb///1xl5tcd/4Or7Nm1V7KpaaEyaJJCUAjresTFI3GgcTPCFLq6yl
 WBGB78GISI0gvF1nv4AlOO5FYHOuw946nXkmWBxuA4Yqx49XRih7oRHbc
 WK8YqGLKB2jPrPpqeohsgTJQAzQnVLXE6K+MFtpQzvr+zWmY0f67jR9Qo
 Ew8vGSLxNHpx2I85wgE5OEO4jLty8mL3FFO4AlGajrxxYXf8h+DwWkG1G
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k9xo9tTN
Subject: [Intel-wired-lan] [net-next,
 v6 1/2] ice: Accumulate HW and Netdev statistics over reset
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Resets happen with or without user interaction. For example, incidents
such as TX hang or a reconfiguration of parameters will result in a reset.
During reset, hardware and software statistics were set to zero. This
created an issue for the user where a reset happens in the background,
statistics set to zero, and the user checks statistics expecting them to
be populated.

To ensure this doesn't happen, keep accumulating stats over reset.

1. Remove function calls which reset hardware and netdev statistics.
2. Do not rollover statistics in ice_stat_update40 during reset.

Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  3 ++
 drivers/net/ethernet/intel/ice/ice_lib.c     |  7 +++++
 drivers/net/ethernet/intel/ice/ice_main.c    | 30 +++++++++++++++++---
 4 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f88ee051e71c..74d40a766664 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -373,6 +373,7 @@ struct ice_vsi {
 
 	/* VSI stats */
 	struct rtnl_link_stats64 net_stats;
+	struct rtnl_link_stats64 net_stats_prev;
 	struct ice_eth_stats eth_stats;
 	struct ice_eth_stats eth_stats_prev;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index add90e75f05c..01da9389de84 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -874,6 +874,9 @@ void ice_update_dcb_stats(struct ice_pf *pf)
 	prev_ps = &pf->stats_prev;
 	cur_ps = &pf->stats;
 
+	if (ice_is_reset_in_progress(pf->state))
+		pf->stat_prev_loaded = false;
+
 	for (i = 0; i < 8; i++) {
 		ice_stat_update32(hw, GLPRT_PXOFFRXC(port, i),
 				  pf->stat_prev_loaded,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 938ba8c215cb..a5945319b62e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1795,11 +1795,15 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
 {
 	struct ice_eth_stats *prev_es, *cur_es;
 	struct ice_hw *hw = &vsi->back->hw;
+	struct ice_pf *pf = vsi->back;
 	u16 vsi_num = vsi->vsi_num;    /* HW absolute index of a VSI */
 
 	prev_es = &vsi->eth_stats_prev;
 	cur_es = &vsi->eth_stats;
 
+	if (ice_is_reset_in_progress(pf->state))
+		vsi->stat_offsets_loaded = false;
+
 	ice_stat_update40(hw, GLV_GORCL(vsi_num), vsi->stat_offsets_loaded,
 			  &prev_es->rx_bytes, &cur_es->rx_bytes);
 
@@ -3279,6 +3283,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 			goto err_vectors;
 
 		ice_vsi_map_rings_to_vectors(vsi);
+
+		vsi->stat_offsets_loaded = false;
 		if (ice_is_xdp_ena_vsi(vsi)) {
 			ret = ice_vsi_determine_xdp_res(vsi);
 			if (ret)
@@ -3315,6 +3321,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		if (ret)
 			goto err_vectors;
 
+		vsi->stat_offsets_loaded = false;
 		break;
 	case ICE_VSI_CHNL:
 		if (test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1f27dc20b4f1..de3b94e89066 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6412,6 +6412,7 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
  */
 static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 {
+	struct rtnl_link_stats64 *net_stats, *stats_prev;
 	struct rtnl_link_stats64 *vsi_stats;
 	u64 pkts, bytes;
 	int i;
@@ -6451,10 +6452,28 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 
 	rcu_read_unlock();
 
-	vsi->net_stats.tx_packets = vsi_stats->tx_packets;
-	vsi->net_stats.tx_bytes = vsi_stats->tx_bytes;
-	vsi->net_stats.rx_packets = vsi_stats->rx_packets;
-	vsi->net_stats.rx_bytes = vsi_stats->rx_bytes;
+	net_stats = &vsi->net_stats;
+	stats_prev = &vsi->net_stats_prev;
+
+	/* clear prev counters after reset */
+	if (vsi_stats->tx_packets < stats_prev->tx_packets ||
+	    vsi_stats->rx_packets < stats_prev->rx_packets) {
+		stats_prev->tx_packets = 0;
+		stats_prev->tx_bytes = 0;
+		stats_prev->rx_packets = 0;
+		stats_prev->rx_bytes = 0;
+	}
+
+	/* update netdev counters */
+	net_stats->tx_packets += vsi_stats->tx_packets - stats_prev->tx_packets;
+	net_stats->tx_bytes += vsi_stats->tx_bytes - stats_prev->tx_bytes;
+	net_stats->rx_packets += vsi_stats->rx_packets - stats_prev->rx_packets;
+	net_stats->rx_bytes += vsi_stats->rx_bytes - stats_prev->rx_bytes;
+
+	stats_prev->tx_packets = vsi_stats->tx_packets;
+	stats_prev->tx_bytes = vsi_stats->tx_bytes;
+	stats_prev->rx_packets = vsi_stats->rx_packets;
+	stats_prev->rx_bytes = vsi_stats->rx_bytes;
 
 	kfree(vsi_stats);
 }
@@ -6516,6 +6535,9 @@ void ice_update_pf_stats(struct ice_pf *pf)
 	prev_ps = &pf->stats_prev;
 	cur_ps = &pf->stats;
 
+	if (ice_is_reset_in_progress(pf->state))
+		pf->stat_prev_loaded = false;
+
 	ice_stat_update40(hw, GLPRT_GORCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.rx_bytes,
 			  &cur_ps->eth.rx_bytes);
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
