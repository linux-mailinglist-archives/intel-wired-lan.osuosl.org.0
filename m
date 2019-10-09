Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7537ED1BE1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:40:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E49B868A8;
	Wed,  9 Oct 2019 22:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vEVrf1T2Sr-3; Wed,  9 Oct 2019 22:40:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C80AF87C56;
	Wed,  9 Oct 2019 22:40:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACD481BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A361086A0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ryJO9uMm3q8s for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1865584553
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="197052264"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 09 Oct 2019 15:40:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:51 -0700
Message-Id: <20191009140953.14087-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
References: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S31 13/15] ice: Get rid of
 ice_cleanup_header
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

From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>

ice_cleanup_hdrs() has been stripped of most of its content, it only serves
as a wrapper for eth_skb_pad(). We can get rid of it altogether and
simplify the codebase.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 27 ++---------------------
 1 file changed, 2 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8e3a69d3884d..96b13421e449 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -944,27 +944,6 @@ static void ice_put_rx_buf(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
 	rx_buf->skb = NULL;
 }
 
-/**
- * ice_cleanup_headers - Correct empty headers
- * @skb: pointer to current skb being fixed
- *
- * Also address the case where we are pulling data in on pages only
- * and as such no data is present in the skb header.
- *
- * In addition if skb is not at least 60 bytes we need to pad it so that
- * it is large enough to qualify as a valid Ethernet frame.
- *
- * Returns true if an error was encountered and skb was freed.
- */
-static bool ice_cleanup_headers(struct sk_buff *skb)
-{
-	/* if eth_skb_pad returns an error the skb was freed */
-	if (eth_skb_pad(skb))
-		return true;
-
-	return false;
-}
-
 /**
  * ice_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
@@ -1124,10 +1103,8 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		if (ice_test_staterr(rx_desc, stat_err_bits))
 			vlan_tag = le16_to_cpu(rx_desc->wb.l2tag1);
 
-		/* correct empty headers and pad skb if needed (to make valid
-		 * ethernet frame
-		 */
-		if (ice_cleanup_headers(skb)) {
+		/* pad the skb if needed, to make a valid ethernet frame */
+		if (eth_skb_pad(skb)) {
 			skb = NULL;
 			continue;
 		}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
