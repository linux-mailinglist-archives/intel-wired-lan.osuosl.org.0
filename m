Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7302D7BBA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Dec 2020 17:59:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30D5F86C1A;
	Fri, 11 Dec 2020 16:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GPRiw6+dnUTG; Fri, 11 Dec 2020 16:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08A6286C39;
	Fri, 11 Dec 2020 16:59:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F35311BF286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EFE1E87396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZPZGhoE5LQEm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Dec 2020 16:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3A484872BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:29 +0000 (UTC)
IronPort-SDR: XxAIMXJRKnSeVodUhPCms8G8r7KHiRchWPuSH7Z8ypGcLgFIkAALgKQpwdifY5lnEscy70pdnX
 OQV9/vhgIUCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="174575035"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="174575035"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 08:59:29 -0800
IronPort-SDR: Ar5Ttzm0j9XtQ1+brWhhR6+58fGU5rVEo+HPEfffkiNnjuG0CgX7gKgz1We9fF1ExWnmivyXuH
 BOfqdMg8zVzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="365497514"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga008.jf.intel.com with ESMTP; 11 Dec 2020 08:59:27 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Dec 2020 17:49:50 +0100
Message-Id: <20201211164956.59628-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201211164956.59628-1-maciej.fijalkowski@intel.com>
References: <20201211164956.59628-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/8] i40e: drop misleading
 function comments
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

i40e_cleanup_headers has a statement about check against skb being
linear or not which is not relevant anymore, so let's remove it.

Same case for i40e_can_reuse_rx_page, it references things that are not
present there anymore.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 33 ++++-----------------
 1 file changed, 6 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 9f73cd7aee09..1dbb8efa50ad 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1809,9 +1809,6 @@ void i40e_process_skb_fields(struct i40e_ring *rx_ring,
  * @skb: pointer to current skb being fixed
  * @rx_desc: pointer to the EOP Rx descriptor
  *
- * Also address the case where we are pulling data in on pages only
- * and as such no data is present in the skb header.
- *
  * In addition if skb is not at least 60 bytes we need to pad it so that
  * it is large enough to qualify as a valid Ethernet frame.
  *
@@ -1857,32 +1854,14 @@ static inline bool i40e_page_is_reusable(struct page *page)
 }
 
 /**
- * i40e_can_reuse_rx_page - Determine if this page can be reused by
- * the adapter for another receive
- *
+ * i40e_can_reuse_rx_page - Determine if page can be reused for another Rx
  * @rx_buffer: buffer containing the page
  *
- * If page is reusable, rx_buffer->page_offset is adjusted to point to
- * an unused region in the page.
- *
- * For small pages, @truesize will be a constant value, half the size
- * of the memory at page.  We'll attempt to alternate between high and
- * low halves of the page, with one half ready for use by the hardware
- * and the other half being consumed by the stack.  We use the page
- * ref count to determine whether the stack has finished consuming the
- * portion of this page that was passed up with a previous packet.  If
- * the page ref count is >1, we'll assume the "other" half page is
- * still busy, and this page cannot be reused.
- *
- * For larger pages, @truesize will be the actual space used by the
- * received packet (adjusted upward to an even multiple of the cache
- * line size).  This will advance through the page by the amount
- * actually consumed by the received packets while there is still
- * space for a buffer.  Each region of larger pages will be used at
- * most once, after which the page will not be reused.
- *
- * In either case, if the page is reusable its refcount is increased.
- **/
+ * If page is reusable, we have a green light for calling i40e_reuse_rx_page,
+ * which will assign the current buffer to the buffer that next_to_alloc is
+ * pointing to; otherwise, the DMA mapping needs to be destroyed and
+ * page freed
+ */
 static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
