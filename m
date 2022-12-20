Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 552E16526A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 19:56:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7165813EF;
	Tue, 20 Dec 2022 18:56:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7165813EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671562566;
	bh=qGtM4azAE4W9T4uaH5J3HaubDlThWfCfrQhLw6KRNrw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=z0ttC0hHD+C9d2j9fIZQ9gx4erueZrYYkWhgIuQX8uNk/2OdstQ/bAD9gzFl+ksRN
	 LTha80k5QssdIPUvuSupya3XKa53jhYr8YYi9ihdADOpaTHeh10swCurhCKoIFsDVS
	 bd4wE4cEyviaoeZOK+djqcFChq9QElOtdy4g82aI7JtGh/zSPy9pgtRWDH9KhMD+kS
	 8BW2bkyNWmaq/nDuGN96Tmzmw238QSJvyHWRsDG8tAUhq/jKeG33/MgEQkrriJ7Wi2
	 vD0Ch49B7ik5oSfGFxdQ08GQtzbGxpj220dP/wAnts6ti1ulG1lgEwEXku5T6IzZOU
	 JNxMVWhmsRHcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LoedimkVmVDz; Tue, 20 Dec 2022 18:56:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2E0981758;
	Tue, 20 Dec 2022 18:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2E0981758
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 300291BF36A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 18:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16CBA813EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 18:56:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16CBA813EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KIyErMhxIXn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 18:55:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 359D6813BA
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 359D6813BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 18:55:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="381916615"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="381916615"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 10:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="651132559"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="651132559"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by orsmga002.jf.intel.com with ESMTP; 20 Dec 2022 10:55:58 -0800
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Dec 2022 13:46:18 -0500
Message-Id: <20221220184618.174143-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671562559; x=1703098559;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iHNZIGhJHj755ZAwXzCanW6DgA5hM4BJqv4wNbKFgj0=;
 b=jql6GCNgo9kAqiKlp5Md6QcchNZZSWlg7HYWwZeZj4p4yTD+UHJPjKF9
 amJYn7qfTWYAUQHSSYAyJZER3mpSVFW4UgX3nVi+tYpcyRU+809BFeUYl
 IqPOBsLo0u6SQEHjEFAIu2EQmLcfi3xInVgH6jFX5fkASrz1AUMqJDoRE
 K9t4XFv9G/qhta4rUk+V715zilvEm5w1qVLPUlYOaVQTn2SOi0ZcIB0wu
 6Xkr8tMUZNq3C2OeWfy3uAISk3lgA58UdexIoqXEDBPnJl6fJ1j/TdpR+
 m3x/lQVF8hhIqGnH9tCtZefEctPB1P+oewvBRf/c2/EfkykTdE8PMA01+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jql6GCNg
Subject: [Intel-wired-lan] [PATCH net v2] ice: Reset stats on queue change
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
This avoided the case where a reset happens in the background (for example
a tx hang occourred triggering a reset), statistics set to zero, and the
user checks ring statistics expecting them to be populated.

In the case of changing queues (for example "ethtool -L ethX combined 5"),
this change caused statistics in the remaining queues (0-4) to persist. In
this case, statistics should reset.

Fix this by clearing statistics when the number of queues changes.

Fixes: 288ecf491b16 ("ice: Accumulate ring statistics over reset")
Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
---
v2: Edited commit message

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
