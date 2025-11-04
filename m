Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B55C2EB0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 02:07:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0D7A60BA9;
	Tue,  4 Nov 2025 01:07:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QyuPROX-a4Xl; Tue,  4 Nov 2025 01:07:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D89E60BA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762218444;
	bh=SFmOxDC1XmOQkIqpOwlpIaJWZ2WTWCvdefpYrNx18Og=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5g/pWHLKr2IpRIz7G9A6vmFPQaSGJ95VkeGnB5o5ZG/lHGpaW/dPWML73MG0DCMMR
	 Xp1s87gn7Y0ZsKkPf0IfWKGcEpcK/nuOEBDnNKE2VGdFK6mdlpkH3S2QBmfbQNLs6m
	 jJp6HD3eGu1LWaUPR3VcA6/GkPY7410f0rxA+k3nmj7AvIs66S5ZB20eIwc7d4i9Bt
	 KtDzzUBxMDISbBe1kMCta7Qff3Fe1VBd82hnxi2xXLXfjOp8jIgEPIswPfssbG72td
	 bOSNK3XVdUVsYGjsVXfvxr1tsTkT/dMJ64X4GekgaThsutWrguQ3yeyvv7SNG1a96Q
	 LvIqFJuKyCs5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D89E60BA6;
	Tue,  4 Nov 2025 01:07:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 60B14942
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0FB140361
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hz0MC5P3w_z7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4843F40363
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4843F40363
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4843F40363
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-CSE-ConnectionGUID: xninvPpSSUS68CIkxPSDYg==
X-CSE-MsgGUID: 6ajsjs8PSFKV5jtm5uNQJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64190639"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64190639"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:18 -0800
X-CSE-ConnectionGUID: 1qn23d05Q5eRLMcO1Eui5g==
X-CSE-MsgGUID: Ilh4N4/KS8KGrX3tWgXupQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217828762"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:16 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 03 Nov 2025 17:06:49 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-jk-refactor-queue-stats-v1-4-164d2ed859b6@intel.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=3185;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=iqxIG0ZzVgcJVaH4z2Ckbzsoowt78usB4UinxMgSWn0=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzOwIPZ9n/0ROUjDHlZZ0xvj/EULkxdoSwj5cD7dcYvi
 5QkG9mOUhYGMS4GWTFFFgWHkJXXjSeEab1xloOZw8oEMoSBi1MAJqJ6h5Fh4tZUm4b4DY+iSnkM
 7m7lsOrp7Fx6VWz99kZ3yzer1Vx6GP6Hz5cqNLn6ZG1I7APmhcm5k091C//m+iD272ejo2rW1Yf
 8AA==
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762218441; x=1793754441;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=iqxIG0ZzVgcJVaH4z2Ckbzsoowt78usB4UinxMgSWn0=;
 b=A4GmDgke1Abig7oJXFIaf1q9vDYrq0yXjrN6lZc6Tf1py9AIeITqsOzA
 +pj0ocW4gUmS245EGJtQSZDMfVWHHd2d9bwH+FaZh1u5wa0+vZJnXSmKA
 EvaZnAofcRF+wYx0xsdE4yhdq7ka3u2lADQ+A3eGBoX/1//jZL/YTmUQE
 OtZG+NF+RLyhNrbKfQjuZ7kZAKbUtlXimyT7D4vTs8Jv142tzWcVD3b6m
 CGQQN97vbILHby80b6Ba/DtEvSPI3jXH7P72DEf1vTv6q9ofp7GHskArB
 xoABoyDLMY3eDbZpAjfHaZPcYwWwUbMkeqnljODFpgZk4o3JETHdnrdrg
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A4GmDgke
Subject: [Intel-wired-lan] [PATCH iwl-next 4/9] ice: move prev_pkt from
 ice_txq_stats to ice_tx_ring
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

The prev_pkt field in ice_txq_stats is used by ice_check_for_hung_subtask
as a way to detect potential Tx hangs due to missed interrupts.

The value is based on the packet count, but its an int and not really a
"statistic". The value is signed so that we can use -1 as a "no work
pending" value. A following change is going to refactor the stats to all
use the u64_stat_t type and accessor functions. Leaving prev_pkt as the
lone int feels a bit strange.

Instead, move it out of ice_txq_stats and place it in the ice_tx_ring. We
have 8 bytes still available in the 3rd cacheline, so this move saves a
small amount of memory. It also shouldn't impact the Tx path heavily since
its only accessed during initialization and the hang subtask.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h | 3 ++-
 drivers/net/ethernet/intel/ice/ice_main.c | 6 +++---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 5350eb832ee5..f1fe1775baed 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -138,7 +138,6 @@ struct ice_txq_stats {
 	u64 restart_q;
 	u64 tx_busy;
 	u64 tx_linearize;
-	int prev_pkt; /* negative if no pending Tx descriptors */
 };
 
 struct ice_rxq_stats {
@@ -354,6 +353,8 @@ struct ice_tx_ring {
 
 	u32 txq_teid;			/* Added Tx queue TEID */
 
+	int prev_pkt; /* negative if no pending Tx descriptors */
+
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 645a2113e8aa..df5da7b4ec62 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -160,7 +160,7 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 			 * pending work.
 			 */
 			packets = ring_stats->stats.pkts & INT_MAX;
-			if (ring_stats->tx_stats.prev_pkt == packets) {
+			if (tx_ring->prev_pkt == packets) {
 				/* Trigger sw interrupt to revive the queue */
 				ice_trigger_sw_intr(hw, tx_ring->q_vector);
 				continue;
@@ -170,8 +170,8 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 			 * to ice_get_tx_pending()
 			 */
 			smp_rmb();
-			ring_stats->tx_stats.prev_pkt =
-			    ice_get_tx_pending(tx_ring) ? packets : -1;
+			tx_ring->prev_pkt =
+				ice_get_tx_pending(tx_ring) ? packets : -1;
 		}
 	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index ad76768a4232..30073ed9ca99 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -499,7 +499,7 @@ int ice_setup_tx_ring(struct ice_tx_ring *tx_ring)
 
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
-	tx_ring->ring_stats->tx_stats.prev_pkt = -1;
+	tx_ring->prev_pkt = -1;
 	return 0;
 
 err:

-- 
2.51.0.rc1.197.g6d975e95c9d7

