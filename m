Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6ED2BBB3D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:46:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 646EF2E12C;
	Sat, 21 Nov 2020 00:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BvNmcZrgg9-m; Sat, 21 Nov 2020 00:46:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 788DE2E143;
	Sat, 21 Nov 2020 00:46:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E27771BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D70092E142
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fIMMBbF-UFVT for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 609452E112
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
IronPort-SDR: 3y1CHy0YbvTmLgEzX+S1gdDJK/ERmSk5olYpNXj2Yq05XJYS9m9SkYlUHNeDTQ440SW/9st14w
 nIBW1I2Y/Wxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="168053545"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="168053545"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:34 -0800
IronPort-SDR: 8GORfD6zrzXPgA5RF47vzdXZtrzekhGtsMBTuxiOHo+zyCV1vt14aGbFqiyuer9N9JwswPV1AV
 80ydxtt09rUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520162"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:31 -0800
Message-Id: <20201121003938.48514-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 07/14] ice: improve AF_XDP single
 socket performance
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

From: Piotr Raczynski <piotr.raczynski@intel.com>

Recent commit "ice: Fix AF_XDP multi queue TX scaling issue"
improved multi socket performance dramatically,
however a regression was introduced into single socket
TX performance. This change helps to regain some of the
single socket performance with no noticeable reggression
on scaling. With Current implementation, for most ring
lengths, the driver will send the whole ring of packets at
a time which limits performance since then driver will
not send any packets until all descriptors are done.

Add some send budget limiting dependent on ring length.
During measurement it seems that limiting AF_XDP send
budget to ring_len/4 yields the best balance and performance.

Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 793e39e30d4c..3c76e42b15b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -687,9 +687,9 @@ bool ice_clean_tx_irq_zc(struct ice_ring *xdp_ring)
 {
 	u16 next_rs_idx = xdp_ring->next_rs_idx;
 	u16 ntc = xdp_ring->next_to_clean;
+	u16 frames_ready = 0, send_budget;
 	struct ice_tx_desc *next_rs_desc;
 	struct ice_tx_buf *tx_buf;
-	u16 frames_ready = 0;
 	u32 total_bytes = 0;
 	u32 xsk_frames = 0;
 	u16 i;
@@ -740,7 +740,9 @@ bool ice_clean_tx_irq_zc(struct ice_ring *xdp_ring)
 	if (xsk_uses_need_wakeup(xdp_ring->xsk_pool))
 		xsk_set_tx_need_wakeup(xdp_ring->xsk_pool);
 
-	return ice_xmit_zc(xdp_ring, ICE_DESC_UNUSED(xdp_ring));
+	send_budget = ICE_DESC_UNUSED(xdp_ring);
+	send_budget = min_t(u16, send_budget, xdp_ring->count >> 2);
+	return ice_xmit_zc(xdp_ring, send_budget);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
