Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5699EC37DAD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 22:07:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7D0884598;
	Wed,  5 Nov 2025 21:07:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3nd-I7I7Ys1v; Wed,  5 Nov 2025 21:07:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBF8084592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762376838;
	bh=SFmOxDC1XmOQkIqpOwlpIaJWZ2WTWCvdefpYrNx18Og=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SAgvjbID0DhSjZaoEsePGxZH6hplfL4iPn3ZzepvaXUdhCg3cuF69mKE0gEGFHcDZ
	 HsvfwKpJeQg4H8FN/3vZYAMM2wh9d61IL1N76W94MktSRNIgrjzqF9CD/wcinjPpUY
	 lkA3prAk7uiQG3rvJfJ8Bbb4cIc/aqe6R6IGkQPFnYRYZGXqnJJvvGD9i161I+FPdv
	 lM28VKxQpKFiZk2Ov7gfiTukmrNH6Y7IHUchrXU/nIjK6c0oD0knCJ6GIRiLnV4rIB
	 eFf2vFG0OE+3GW77vsQUOZ21hQkdU2mXwSblfFiY9UYtUXV6WvSDufaroWDrNpbfWv
	 mEAtKUBCzRCdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBF8084592;
	Wed,  5 Nov 2025 21:07:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C5BAB2A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E71D8458C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GpJHZjO07Eej for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9177384576
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9177384576
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9177384576
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
X-CSE-ConnectionGUID: wrF4PmssRg+RFUxH69bmKQ==
X-CSE-MsgGUID: niQRRqsHRP2BDLH5sqmN2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75114375"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75114375"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
X-CSE-ConnectionGUID: qKtUDBLQRuqwpU1PgQolPA==
X-CSE-MsgGUID: HM/ECcWmTxSV4sivYoZHIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187513290"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 05 Nov 2025 13:06:36 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-jk-refactor-queue-stats-v2-4-8652557f9572@intel.com>
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
In-Reply-To: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
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
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzuPfW9PBIP+B9+8Vh1S8rTff+l9u8p5bzRxVnGcx/EJ
 rwy7j7WUcrCIMbFICumyKLgELLyuvGEMK03znIwc1iZQIYwcHEKwESW9TAyfHgicjAx4sKjos2x
 4cps/9arf9ERj5zzbmEXj0U/T8HKAwz/VLh+Kq54+XRnWbuE618hmy6OJ548mxzeVxWZPfq1/9s
 6VgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762376835; x=1793912835;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=iqxIG0ZzVgcJVaH4z2Ckbzsoowt78usB4UinxMgSWn0=;
 b=m6LUlynCG4ctGBIPYIGay1MbdkAiO6zoZkgqCaBodSPjQCc/SUmKcAn6
 98QyeFgWFbaxW69gBpyRhkZsoyxkxrghV3Rf7x3Llx3LzSDL8C1aM/0Pe
 BWO6jSMiT67sTZKz6trq3RchNx+APCRmVJaRIedRGjSyqc+XLoM9hGreB
 Fo3DCGOi6AfU3+pIVgkiEl0YZ2XsRvFl89ZSFPD8mpfH91cInxOL/hrRV
 Gc1x5+c1krhXGlVsO4lH4riw6E99gvEXj1fj16NPDZDRlfYkN0OS/Q7tp
 MZs0eXGxukjzOMQaZXR4IrMzCeMCWEsEBpAgoGAaAToK74wJ6i4n6qC08
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m6LUlynC
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/9] ice: move prev_pkt from
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

