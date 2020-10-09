Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241D5288084
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 04:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A660187621;
	Fri,  9 Oct 2020 02:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KvdjZ6wUCMlL; Fri,  9 Oct 2020 02:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 341628763B;
	Fri,  9 Oct 2020 02:54:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E0571BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A8A787632
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TbhWQzaMxPbu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA2968762D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:53:59 +0000 (UTC)
IronPort-SDR: i2PHxZFAAA0RmyoPUlTRhT9PnRkZ+KA2Q2Jdl8q3hnmHUKnrc3gJRlU4Pp0vP23lbWe0TeeoWB
 zdp1Acc11hCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="229621312"
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; d="scan'208";a="229621312"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 19:53:58 -0700
IronPort-SDR: dx/enRNEYc4WlfqrYLgyioB6lUgdZl6tbUhmVHwVweFdH+Oj9bXGYy7Quye55zqvuWql3j29sT
 a8GmGWecD74Q==
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; d="scan'208";a="528740716"
Received: from simonejo-mobl1.amr.corp.intel.com ([10.212.226.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 19:53:58 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Oct 2020 19:53:44 -0700
Message-Id: <20201009025349.4037-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201009025349.4037-1-andre.guedes@intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 4/9] igc: Introduce
 igc_get_rx_frame_truesize() helper
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

The RX frame truesize calculation is scattered throughout the RX code.
This patch creates the helper function igc_get_rx_frame_truesize() and
uses it where applicable.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 29 ++++++++++++++---------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5015c39a82ba..850e2bbd9773 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1521,6 +1521,22 @@ static void igc_rx_buffer_flip(struct igc_rx_buffer *buffer,
 #endif
 }
 
+static unsigned int igc_get_rx_frame_truesize(struct igc_ring *ring,
+					      unsigned int size)
+{
+	unsigned int truesize;
+
+#if (PAGE_SIZE < 8192)
+	truesize = igc_rx_pg_size(ring) / 2;
+#else
+	truesize = ring_uses_build_skb(ring) ?
+		   SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
+		   SKB_DATA_ALIGN(IGC_SKB_PAD + size) :
+		   SKB_DATA_ALIGN(size);
+#endif
+	return truesize;
+}
+
 /**
  * igc_add_rx_frag - Add contents of Rx buffer to sk_buff
  * @rx_ring: rx descriptor ring to transact packets on
@@ -1555,12 +1571,7 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 				     unsigned int size)
 {
 	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
-				SKB_DATA_ALIGN(IGC_SKB_PAD + size);
-#endif
+	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
 	struct sk_buff *skb;
 
 	/* prefetch first cache line of first page */
@@ -1585,11 +1596,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 					 unsigned int size)
 {
 	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(size);
-#endif
+	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
 	unsigned int headlen;
 	struct sk_buff *skb;
 
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
