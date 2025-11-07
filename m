Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A89EC41F65
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 00:32:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFFDE80FAE;
	Fri,  7 Nov 2025 23:32:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lN4VEteyl-K3; Fri,  7 Nov 2025 23:32:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1745980F95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762558351;
	bh=zykjRBBgVArsGpRQS8N30520KUW4u7gKg9vv7davodQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5dSyqUw+aVLReGdUlR1lzQXOh8U8mRdryNWi1sdiljU/hWbnEsWG/FQRjz/1nrENw
	 Q0x074UEn8vJZUGdHS1DnJAOKpZSoZV1bZCeGp6CvPEmPqccfNJuPuenRiOz+MXQPt
	 V3lQz4L8p3/TE8OGOWcicTjhmOC5FQg9iZV803U9mfgCj3rfeSYPHaBWxsA7qTkaBN
	 FpmHY9Dy7QyroZKmOubghbql3d4jN8fJSYobO48EOL7ZoSn33OckBGy/83hR4XviR8
	 67fCnoWzd6wOoLF3slrlLAU5+C5F54SkiPQwKFjqkw2kLoV9uj1T3Hn6IwBn7skAm4
	 WKM8bnVW2cT3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1745980F95;
	Fri,  7 Nov 2025 23:32:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E27225D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB03880EAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fqv9T4LUArJS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 23:32:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CAE6B80EB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAE6B80EB3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAE6B80EB3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
X-CSE-ConnectionGUID: C82TaDLFQdOdgLJo/EaqDg==
X-CSE-MsgGUID: L5b+Z1tSR4yaAG4aT6UEag==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64628782"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="64628782"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:19 -0800
X-CSE-ConnectionGUID: X1Jz6P6+QnC/9JajreVC9g==
X-CSE-MsgGUID: 39NSDriBRAG8dhb5D5ZBMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218815425"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:20 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 07 Nov 2025 15:31:48 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-jk-refactor-queue-stats-v3-4-771ae1414b2e@intel.com>
References: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
In-Reply-To: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=3251;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=tUnAhVFPbmYtB6CUSdKwMPo5GP2v7i8VAuMKVaANP+c=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhky+xsYXBrlHQ0///Br/r7TuQVXFfN2TZUrph3fnCepri
 lx6tzSio5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgIksZmD4Ky8tIHaSOfTD9yC7
 HOlVZzjXG3Ckz35UvHkTq5TWa+GDvAz/fV+aHDuyW2xt1mdz8/6tBwusF5inv/jP+TOJde766OB
 F3AA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762558343; x=1794094343;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=tUnAhVFPbmYtB6CUSdKwMPo5GP2v7i8VAuMKVaANP+c=;
 b=aZIL3XZIZo58D7FkUbtgwiICx+n9Koo95Xp9ggrXoPJrdnkP/Utr0HyI
 UMMYgx0piuT+EhFec51Po+ckRyMkWUEH0d5km46bhHmOGMxL7m+R2IdyQ
 ImflBt/iLa6/+0ika24ten79zi1QohgDfVFUiVFG1PEfypU+jGMhbrBP+
 c9S3+Jlhn+sZgi7OxFvuOrOJ2NVcOebkwnqBYTmpwkABMpMyW4ZxzxJM4
 iafyvdbKJf9UQTPJ4XE5/zjt2EVBgFeKSH5sjEvGQwG8RBHyqekyNPw20
 MgBbDyH+CFsdiCCTRkbJUjnoGbQDAq904WS6wbYtAS7RxvYSciXCZ7tJL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aZIL3XZI
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/9] ice: move prev_pkt from
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

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.h | 3 ++-
 drivers/net/ethernet/intel/ice/ice_main.c | 6 +++---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 78fed538ea0f..aa0b74e45bba 100644
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

