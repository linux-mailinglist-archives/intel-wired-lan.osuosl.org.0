Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD5D652479
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 17:15:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23FF3409D6;
	Tue, 20 Dec 2022 16:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23FF3409D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671552922;
	bh=pYPEl/6mYXmz7gWbLm8lXErI10BhMrjSCitvwkrfV7Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AqyXYTQa8PJvC9g3dqf3sw0TPnCewVvtwyABjeDC3coU0AfJXgHZJ4wjAuLsysAO2
	 /cYl71ftgKbwpBaXWXIPIwAk3r4IZuohD2zbg4VdpBcSVaeGwTTbrqU+FIz1J6K9C+
	 /ESB5B6iMVSP6+YLdzchGSUy6ZYlx9XJGaA6LcmjcSZux6BBAik22gZSErsKzmScOZ
	 cmOBK/MUZcwf6dTgGFPaDnxWyZM90S3y5KSpmO8xtSwbSxawxKvgVkVMdAdPHKU2oT
	 Dxmhca5bIHA7vlHWRKo0XwInxSqK9MbfahjYhO9YJQ02yUyPIdKeNsqFoce1fo2+zs
	 JkA+5vIYc2vzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LymxCIFUoXig; Tue, 20 Dec 2022 16:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECC63409E1;
	Tue, 20 Dec 2022 16:15:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECC63409E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 056571BF378
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 16:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBCE640319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 16:15:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBCE640319
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NuX7w5FZLcUd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 16:15:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B16F2401FC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B16F2401FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 16:15:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="307329293"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="307329293"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 08:14:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="896516449"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="896516449"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by fmsmga006.fm.intel.com with ESMTP; 20 Dec 2022 08:14:46 -0800
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Dec 2022 11:05:06 -0500
Message-Id: <20221220160506.173628-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671552914; x=1703088914;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m273kv2ilXFilktYCQKl3KGiUTEbPtcWxXqFqceFvoo=;
 b=KBoyBQvY4m251l5FsERIZ9k2+VrxrU+LLYxj4U0Zi+DPsX4QQPxdtgIi
 5JtKTZ2BUm3rJHz7HXoep58bzL24Avsd3rL2IYtaq9vwtrNO8qK09u6rE
 Ikogt/sTELpTwEXH8jtYe8HzEaNTBU4E0GlPk1epnLanz+YSkIQxW7K/o
 AdvoYZl5bBjsa4w/xQl4dnEIpoyMyRL5P5p7lPC3FE+8X7ZS5ugmCPkPJ
 4QboxHbtJr/uQRWJFfSSe81+GPdstU3hOv4TjFhuO2GVQo+AlNS0brftM
 E1A++tdtotcPavj8C0CT+IZX0m67pzoyCGBZ4pnfBdX+6XmwbuvigUZQ8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KBoyBQvY
Subject: [Intel-wired-lan] [PATCH net v1] ice: Reset stats on queue change
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

Commit 288ecf491b16 ("ice: Accumulate ring statistics over reset")
implemented functionality for interface statistics to persist over reset.
This avoided the case where a reset happens in the background, statistics
set to zero, and the user checks ring statistics expecting them to be
populated.

In the case of changing the number of queues, statistics should reset.
This is because old data should clear after parameter reconfiguration.

Fix this by resetting statistics when the number of queues changes.

Fixes: 288ecf491b16 ("ice: Accumulate ring statistics over reset")
Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 65 ++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 703f73e54561..ce791d90800d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1683,6 +1683,67 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
 	return -ENOMEM;
 }
 
+/**
+ * ice_reset_tx_ring_stats - Reset all Tx ring stats of a given ring
+ * @tx_ring: the ring whose stats needs to be cleared
+ */
+static void ice_reset_tx_ring_stats(struct ice_tx_ring *tx_ring)
+{
+	struct ice_ring_stats *ring_stats;
+
+	ring_stats = tx_ring->ring_stats;
+	if (!ring_stats)
+		return;
+
+	memset(&ring_stats->stats, 0,
+	       sizeof(ring_stats->stats));
+	memset(&ring_stats->tx_stats, 0,
+	       sizeof(ring_stats->tx_stats));
+	ring_stats->tx_stats.prev_pkt = -1;
+}
+
+/**
+ * ice_reset_rx_ring_stats - Reset all Rx ring stats of a given ring
+ * @rx_ring: the ring whose stats needs to be cleared
+ */
+static void ice_reset_rx_ring_stats(struct ice_rx_ring *rx_ring)
+{
+	struct ice_ring_stats *ring_stats;
+
+	ring_stats = rx_ring->ring_stats;
+	if (!ring_stats)
+		return;
+
+	memset(&ring_stats->stats, 0,
+	       sizeof(ring_stats->stats));
+	memset(&ring_stats->rx_stats, 0,
+	       sizeof(ring_stats->rx_stats));
+}
+
+/**
+ * ice_vsi_reset_stats - Reset all stats of a given VSI
+ * @vsi: the VSI whose stats needs to be cleared
+ */
+static void ice_vsi_reset_stats(struct ice_vsi *vsi)
+{
+	int i;
+
+	if (vsi->type == ICE_VSI_CHNL)
+		return;
+
+	memset(&vsi->net_stats, 0, sizeof(vsi->net_stats));
+	memset(&vsi->eth_stats, 0, sizeof(vsi->eth_stats));
+	memset(&vsi->eth_stats_prev, 0, sizeof(vsi->eth_stats_prev));
+
+	ice_for_each_txq(vsi, i)
+		ice_reset_tx_ring_stats(vsi->tx_rings[i]);
+
+	ice_for_each_rxq(vsi, i)
+		ice_reset_rx_ring_stats(vsi->rx_rings[i]);
+
+	vsi->stat_offsets_loaded = false;
+}
+
 /**
  * ice_vsi_manage_rss_lut - disable/enable RSS
  * @vsi: the VSI being changed
@@ -3608,6 +3669,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	if (ice_vsi_realloc_stat_arrays(vsi, prev_txq, prev_rxq))
 		goto err_vectors;
 
+	/* Reset stats if queues changed */
+	if (vsi->num_txq != prev_txq || vsi->num_rxq != prev_rxq)
+		ice_vsi_reset_stats(vsi);
+
 	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
 	kfree(coalesce);
 
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
