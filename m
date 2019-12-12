Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEDA11D75F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 20:44:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B20125175;
	Thu, 12 Dec 2019 19:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2CwWryuQJEY; Thu, 12 Dec 2019 19:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5A0F4251E1;
	Thu, 12 Dec 2019 19:44:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 864091BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 763D8888C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92Rd-aOMviDb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 19:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA08F888C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 19:44:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="296698860"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 11:44:35 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2019 03:13:05 -0800
Message-Id: <20191212111307.33566-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S35 13/15] ice: add extra check for null
 rx descriptor
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

From: Mitch Williams <mitch.a.williams@intel.com>

In the case where the hardware gives us a null rx descriptor, it is
theoretically possible that we could call one of our skb-construction
functions with no data pointer, which would cause a panic.

In real life, this will never happen - we only get null RX
descriptors as the final descriptor in a chain of otherwise-valid
descriptors. When this happens, the skb will be extant and we'll just
call ice_add_rx_frag(), which can deal with empty data buffers.

Unfortunately, Coverity does not have intimate knowledge of our
hardware, so we must add a check here.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index b77514bbd7ba..fd17ace6b226 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1071,13 +1071,16 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		ice_put_rx_buf(rx_ring, rx_buf);
 		continue;
 construct_skb:
-		if (skb)
+		if (skb) {
 			ice_add_rx_frag(rx_ring, rx_buf, skb, size);
-		else if (ice_ring_uses_build_skb(rx_ring))
-			skb = ice_build_skb(rx_ring, rx_buf, &xdp);
-		else
+		} else if (likely(xdp.data)) {
+			if (ice_ring_uses_build_skb(rx_ring))
+				skb = ice_build_skb(rx_ring, rx_buf, &xdp);
+			else
+				skb = ice_construct_skb(rx_ring, rx_buf, &xdp);
+		} else {
 			skb = ice_construct_skb(rx_ring, rx_buf, &xdp);
-
+		}
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->rx_stats.alloc_buf_failed++;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
