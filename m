Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97185A9E7EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 363E8406A2;
	Mon, 28 Apr 2025 06:03:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tRzQm4lm--LE; Mon, 28 Apr 2025 06:03:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CE9340BA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820231;
	bh=IBJypLtOIrpfm1GIInSXM3ONzm81orzETWjGmoPhWJo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p8RN5mLu6o/C6dw8YTMIIKiH/nryPmDMHUzBS7LXCEm5aSGMDafgNoPNk3xBHgptF
	 dwdgigFnoFfEEoXik/aw/wn3o73tF4YkfOYODu5zZonhiQHo98H3xokrJ1eu2I5NL0
	 8dTphwyRK/BkJ05LvLE4RvnGtOpeb7H4DMqDRsdiyygadB5QDqqqC/jOlQP8RJ7LS1
	 qUpzNGjJoG/D2+IPR7nyfk2MWYXax7p3JQioT2mIRYNJ8O7d/VG6wjfjyYJ6CyVPhi
	 cEB860AqHMTUPYcaC0kP78JQZ3Evsdh93KD7yzdOqepKiw4GlPHxT+Lo1fGcMeN/Z4
	 +0ERU3GaZNmjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CE9340BA2;
	Mon, 28 Apr 2025 06:03:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CCB33194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEDF360B8C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZIxalkMbvofK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0A97E60B7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A97E60B7B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A97E60B7B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:48 +0000 (UTC)
X-CSE-ConnectionGUID: VLrYojt+S1Wz+/0V1R6xKg==
X-CSE-MsgGUID: lg5ZOFSxTPWkWEfmsFJbYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064661"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064661"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:49 -0700
X-CSE-ConnectionGUID: F7tjRAGxQDiikAtPK2RcmA==
X-CSE-MsgGUID: y568pPn3TvKc3yU2DWeY7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340843"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:45 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 28 Apr 2025 02:02:24 -0400
Message-Id: <20250428060225.1306986-8-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820230; x=1777356230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MOwqhJoT14poSfgYv5P8L6wv7hHxXBT7mgCaHursR+w=;
 b=mUj8jtOVBCI7Qru/7j2+YsGXHQyKEorsHDnL80aanqlu2oZIAYNUxi2E
 I28osuwa+y3fYhRw9H4rq6Cft+/yzGQAofO7cVitYhOJci6P5mM2OW3TE
 0F57Gm7WZ/4LaC6yL9pRPyil694x+DZppaTsQR6Sdc6hiWP5Nkm2sLY0+
 7S5jlX80BymwIDzwFiRSeZaDgYxDINu1Pz3bVLA0gFD3eEU5HUYV0Zra/
 TGyX2crd8gSicJ1Xmkui5pbOWhMUOIP74UaewrKPcdnbutJvfzOf+JU2Q
 QN6UeZY7Boup2NQ9oUsX8kinw0vNbLYpKWM+Til7P5qsIm/+2D+jr1zNL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mUj8jtOV
Subject: [Intel-wired-lan] [PATCH iwl-next v1 7/8] igc: add preemptible
 queue support in mqprio
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

igc already supports enabling MAC Merge for FPE. This patch adds
support for preemptible queues in mqprio.

Tested preemption with mqprio by:
1. Enable FPE:
   ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled on
2. Enable preemptible queue in mqprio:
   mqprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
   queues 1@0 1@1 1@2 1@3 \
   fp P P P E

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 9 ++-------
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 9 +++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h  | 1 +
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c6e2cfd630df..6b14b0d165f0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6755,6 +6755,7 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 
 	if (!mqprio->qopt.num_tc) {
 		adapter->strict_priority_enable = false;
+		igc_fpe_clear_preempt_queue(adapter);
 		netdev_reset_tc(adapter->netdev);
 		goto apply;
 	}
@@ -6782,13 +6783,6 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 		return -EOPNOTSUPP;
 	}
 
-	/* Preemption is not supported yet. */
-	if (mqprio->preemptible_tcs) {
-		NL_SET_ERR_MSG_MOD(mqprio->extack,
-				   "Preemption is not supported yet");
-		return -EOPNOTSUPP;
-	}
-
 	igc_save_mqprio_params(adapter, mqprio->qopt.num_tc,
 			       mqprio->qopt.offset);
 
@@ -6808,6 +6802,7 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 		adapter->queue_per_tc[i] = i;
 
 	mqprio->qopt.hw = TC_MQPRIO_HW_OFFLOAD_TCS;
+	igc_fpe_save_preempt_queue(adapter, mqprio);
 
 apply:
 	return igc_tsn_offload_apply(adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 897813eb2175..9dd45c6252bf 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -159,6 +159,15 @@ void igc_fpe_init(struct igc_adapter *adapter)
 	ethtool_mmsv_init(&adapter->fpe.mmsv, adapter->netdev, &igc_mmsv_ops);
 }
 
+void igc_fpe_clear_preempt_queue(struct igc_adapter *adapter)
+{
+	for (int i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		tx_ring->preemptible = false;
+	}
+}
+
 static u32 igc_fpe_map_preempt_tc_to_queue(const struct igc_adapter *adapter,
 					   unsigned long preemptible_tcs)
 {
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index f2e8bfef4871..a95b893459d7 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -17,6 +17,7 @@ enum igc_txd_popts_type {
 DECLARE_STATIC_KEY_FALSE(igc_fpe_enabled);
 
 void igc_fpe_init(struct igc_adapter *adapter);
+void igc_fpe_clear_preempt_queue(struct igc_adapter *adapter);
 void igc_fpe_save_preempt_queue(struct igc_adapter *adapter,
 				const struct tc_mqprio_qopt_offload *mqprio);
 u32 igc_fpe_get_supported_frag_size(u32 frag_size);
-- 
2.34.1

