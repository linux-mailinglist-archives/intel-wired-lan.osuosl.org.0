Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DC860FC02
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Oct 2022 17:31:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D68B0409E7;
	Thu, 27 Oct 2022 15:31:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D68B0409E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666884715;
	bh=rMSOgVTqs3cRgg/Cqvi3tR0x2AklLmJlx35orcF8VSU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xI23RsxwHR5wvu93gES7518ct3p/sTvTugA56RuPaLzDpJK4IfJsO3gQ7gcjYRfLt
	 6+/vciGcuNFJdBbJ7j+O0q/hI4EbaCEJPa92Z+6cVJijx3YXpgKgFbtUeNY1mBI6WT
	 E4j19G3pwWU0wRnaz7oYPJ7r/c9OX9u3PGLSRUtlq8MYERVp6bmnLMsJv2OONNMtsh
	 vHSxHOC+iv9prYLTmkf2DylMxJkmXX1LQiyvBtA39n/2/4w3KgM2Okntfb1UrrK5Iw
	 tcZy3hLCiripp8UpIotT+3+C2nZZyvBWFTu/lXMeqX4TPxBN7+sFTA6NA8fNDugPS/
	 79Ss0EBOW2r1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O_lfQvq0xeOQ; Thu, 27 Oct 2022 15:31:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5590D40994;
	Thu, 27 Oct 2022 15:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5590D40994
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 463801BF318
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7C15400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7C15400EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ge1iG0n84kkn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Oct 2022 15:31:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C9BF4017C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C9BF4017C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 15:31:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="309344583"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="309344583"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 08:31:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="583593785"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="583593785"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by orsmga003.jf.intel.com with ESMTP; 27 Oct 2022 08:31:43 -0700
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Oct 2022 11:24:00 -0400
Message-Id: <20221027152401.30801-2-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
References: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666884704; x=1698420704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=npA0HfkpgvAuIJSYjaFaQJ4DauFyJXjXtREYC0Fa2ok=;
 b=a7fXqniJNFaIIxKqXO8Q9UA0Uz84UQosUXJNJxSlmVBMIXExtf2jfgoY
 P2Ijuszou/glhQx8spuyQ30cAXe6LX8K6Bt1MnIgl1Nka0t4dsTqtKFyA
 qeM5xjM1KQkUBN/sLa/lVF8OqqO78/8hhfVtxbw2y4H0kkDKqDkB5IwZa
 FZB82ck23kKLJWnRopgtWyhaE6cDgbP4NBk+DtBIrtPB13yJ9/DzsyzM4
 trDWxIjGLzuJjDabtBirycfKIsdRFHy1g95lS2GC+kPP1ae1pZnFCSZT0
 F5/gjE4ytYriP26Do2/GMtp5AAx16swNu3NhejsQSMfHStBJPqcpMijSt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a7fXqniJ
Subject: [Intel-wired-lan] [net-next,
 v3 1/2] ice: Accumulate HW and Netdev statistics over reset
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
index 001500afc4a6..e0ed2f1cc434 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -358,6 +358,7 @@ struct ice_vsi {
 
 	/* VSI stats */
 	struct rtnl_link_stats64 net_stats;
+	struct rtnl_link_stats64 net_stats_prev;
 	struct ice_eth_stats eth_stats;
 	struct ice_eth_stats eth_stats_prev;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 5e6d168bac48..4f3a848f4e99 100644
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
index 189160dacad9..ac893ce39e5e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6487,6 +6487,7 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
  */
 static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 {
+	struct rtnl_link_stats64 *net_stats, *stats_prev;
 	struct rtnl_link_stats64 *vsi_stats;
 	u64 pkts, bytes;
 	int i;
@@ -6526,10 +6527,28 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 
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
@@ -6591,6 +6610,9 @@ void ice_update_pf_stats(struct ice_pf *pf)
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
