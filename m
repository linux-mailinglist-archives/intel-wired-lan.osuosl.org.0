Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6036989C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 02:16:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EA5881F87;
	Thu, 16 Feb 2023 01:16:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EA5881F87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676510205;
	bh=VkSxWOxU14IhNbOAnNnRToqT9KmudNBNuWf/27achag=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6UsWZCipCWiOT8I65J67T+amZVCt8ncgomjsF2vhFkYqiKRkhaCEdMn72VAtT8VQ8
	 /fsh78ZktA8UKuBpzJvNyE93ufmeirBwe66iQfBknlfd3WkUC4jPAdsWDbNaB+n2uZ
	 LnzNFnZELoTsoa4ABmMiRz44izgQAeWdDu+TSu41M4O0Zh0pM7Xgjuw9jXct5/hjDl
	 uY5m7/kPsbQe5c6YtLS+PeM9SMFyccVLu/R0wS2jJCLNgc2bwatb2lPRQOWgq2+bT3
	 gfnitPcBtsGvwcCbvJKEpBrEgOyZZtqQzv6uBWVR2kYz43mUon5rHv/JqyLn/FImH4
	 rbJ3miGw6lbvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PeE9uFtqcEsg; Thu, 16 Feb 2023 01:16:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F77681F79;
	Thu, 16 Feb 2023 01:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F77681F79
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF3AE1BF3DE
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 01:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9711981F95
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 01:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9711981F95
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQJkYZO8r5cf for <intel-wired-lan@osuosl.org>;
 Thu, 16 Feb 2023 01:16:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF41A81F87
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF41A81F87
 for <intel-wired-lan@osuosl.org>; Thu, 16 Feb 2023 01:16:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="396229237"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="396229237"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 17:16:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="619830437"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="619830437"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga003.jf.intel.com with ESMTP; 15 Feb 2023 17:16:33 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 16 Feb 2023 09:16:24 +0800
Message-Id: <20230216011624.14022-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676510198; x=1708046198;
 h=from:to:cc:subject:date:message-id;
 bh=dQwZub3mqk1B9/uN7Coavy7BchozyuGAMzGX3UdoFpw=;
 b=ZeRpq6zpTi6kTNc7+kcJaTF/LsiK6TyqGP/RBXrlSHy8XH+kemHau+sI
 A340xgXtJwrdvGQyoXKcMC2SEcS90rq5eBBI+ClS1yFh7HOstCN32zFCd
 1J2JysLzCWcgv6X6s/BzeSonk3jV0ajnniachCaJEXmV4svP4gAEeENjH
 n8N+J4mcQjpXz4+sQCmN/tegyApxTfzkPV82Wj4Qm2oD99/ARvEExhpyZ
 DxdeJWLaMdil03VWyzZeDovvERhXH3o/ZkwdNCwhpKVTFecfBcPKBRjOz
 AWfNS1/VPi8eltzBur98vh9rnamLd1MJFEmwNsO0SuUBNrGqXq9lPjMFw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZeRpq6zp
Subject: [Intel-wired-lan] [PATCH net-next v5] igc: offload queue max SDU
 from tc-taprio
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
Cc: pabeni@redhat.com, leon@kernel.org, netdev@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 muhammad.husaini.zulkifli@intel.com, davem@davemloft.net,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tan Tee Min <tee.min.tan@linux.intel.com>

Add support for configuring the max SDU for each Tx queue.
If not specified, keep the default.

Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

---
V4 -> V5: Rework based on Jakub's comment.
V3 -> V4: Rebase to the latest tree as per requested by Anthony.
V2 -> V3: Rework based on Leon Romanovsky's comment.
V1 -> V2: Rework based on Vinicius's comment.
---
---
 drivers/net/ethernet/intel/igc/igc.h      |  1 +
 drivers/net/ethernet/intel/igc/igc_hw.h   |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 33 ++++++++++++++++++++---
 3 files changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 9db93c1f97679..34aebf00a5123 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -99,6 +99,7 @@ struct igc_ring {
 
 	u32 start_time;
 	u32 end_time;
+	u32 max_sdu;
 
 	/* CBS parameters */
 	bool cbs_enable;                /* indicates if CBS is enabled */
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 88680e3d613dd..e1c572e0d4ef0 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -273,6 +273,7 @@ struct igc_hw_stats {
 	u64 o2bspc;
 	u64 b2ospc;
 	u64 b2ogprc;
+	u64 txdrop;
 };
 
 struct net_device *igc_get_hw_dev(struct igc_hw *hw);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0f31f0cfcc3e6..2c40796c151fb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1501,6 +1501,7 @@ static int igc_tso(struct igc_ring *tx_ring,
 static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 				       struct igc_ring *tx_ring)
 {
+	struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
 	bool first_flag = false, insert_empty = false;
 	u16 count = TXD_USE_COUNT(skb_headlen(skb));
 	__be16 protocol = vlan_get_protocol(skb);
@@ -1563,9 +1564,19 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	first->bytecount = skb->len;
 	first->gso_segs = 1;
 
-	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
-		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
+	if (tx_ring->max_sdu > 0) {
+		u32 max_sdu = 0;
+
+		max_sdu = tx_ring->max_sdu +
+			  (skb_vlan_tagged(first->skb) ? VLAN_HLEN : 0);
 
+		if (first->bytecount > max_sdu) {
+			adapter->stats.txdrop++;
+			goto out_drop;
+		}
+	}
+
+	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
 		/* FIXME: add support for retrieving timestamps from
 		 * the other timer registers before skipping the
 		 * timestamping request.
@@ -4920,7 +4931,8 @@ void igc_update_stats(struct igc_adapter *adapter)
 	net_stats->tx_window_errors = adapter->stats.latecol;
 	net_stats->tx_carrier_errors = adapter->stats.tncrs;
 
-	/* Tx Dropped needs to be maintained elsewhere */
+	/* Tx Dropped */
+	net_stats->tx_dropped = adapter->stats.txdrop;
 
 	/* Management Stats */
 	adapter->stats.mgptc += rd32(IGC_MGTPTC);
@@ -6039,6 +6051,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
+		ring->max_sdu = 0;
 	}
 
 	return 0;
@@ -6122,6 +6135,16 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 		}
 	}
 
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *ring = adapter->tx_ring[i];
+		struct net_device *dev = adapter->netdev;
+
+		if (qopt->max_sdu[i])
+			ring->max_sdu = qopt->max_sdu[i] + dev->hard_header_len;
+		else
+			ring->max_sdu = 0;
+	}
+
 	return 0;
 }
 
@@ -6220,8 +6243,10 @@ static int igc_tc_query_caps(struct igc_adapter *adapter,
 
 		caps->broken_mqprio = true;
 
-		if (hw->mac.type == igc_i225)
+		if (hw->mac.type == igc_i225) {
+			caps->supports_queue_max_sdu = true;
 			caps->gate_mask_per_txq = true;
+		}
 
 		return 0;
 	}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
