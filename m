Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3CF38F583
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 May 2021 00:16:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3237404F0;
	Mon, 24 May 2021 22:16:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9yne3ZKSk-0N; Mon, 24 May 2021 22:16:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70D23404D3;
	Mon, 24 May 2021 22:16:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C2F41BF30A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 22:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A506403DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 22:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=mailbox.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5aSieFONQ8bF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 May 2021 22:14:35 +0000 (UTC)
X-Greylist: delayed 00:07:51 by SQLgrey-1.8.0
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org
 [IPv6:2001:67c:2050::465:202])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B2ED400F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 22:14:35 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4FprsF2yQyzQjmW;
 Tue, 25 May 2021 00:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
 content-transfer-encoding:mime-version:message-id:date:date
 :subject:subject:from:from:received; s=mail20150812; t=
 1621894000; bh=gmaCOau1u9jtoZTGkqghvCruMPooaEIFzqnYgI00D20=; b=u
 LXDWSeRTrAI7T8/sF+RFbr1+24qLBWqgoF9HdZuihtf9289BhIwZwCdqg/+0bQ1d
 0Ah4cfUHLppN5SWFFLM5I0RxNMDeXSGcArj9/KuXcv+3KUK5OglWNZXpMuQG8bY2
 9psu0BQrf9zBpr4lYijRsgBgQD6MpOE3hg2dfbAPTpR8LCDFCY/DxpKJ5NcCedLO
 okL+bcHw8e7tvsdq95oA9BrMfCJsWhJxMzUtoHc99ok0UzH9fCpR/DvIyq41g02n
 jxpBTGS+47vgsa6a3rheuxx9fk52vd6ehYJdOonurXDLwX95cPtAvxOZGWpUPrko
 kzRSyWaYBO/Muc2MSIbtA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id fECnRS3Nnkec; Tue, 25 May 2021 00:06:40 +0200 (CEST)
From: Markus Boehme <markubo@amazon.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Tue, 25 May 2021 00:05:31 +0200
Message-Id: <20210524220531.64640-1-markubo@amazon.com>
MIME-Version: 1.0
X-MBO-SPAM-Probability: ****
X-Rspamd-Score: 4.86 / 15.00 / 15.00
X-Rspamd-Queue-Id: 0D0EA15F8
X-Rspamd-UID: 723dc2
X-Mailman-Approved-At: Mon, 24 May 2021 22:16:24 +0000
Subject: [Intel-wired-lan] [PATCH net] ixgbe: Fix packet corruption due to
 missing DMA sync
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
Cc: Markus Boehme <markubo@amazon.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When receiving a packet with multiple fragments, hardware may still
touch the first fragment until the entire packet has been received. The
driver therefore keeps the first fragment mapped for DMA until end of
packet has been asserted, and delays its dma_sync call until then.

The driver tries to fit multiple receive buffers on one page. When using
3K receive buffers (e.g. using Jumbo frames and legacy-rx is turned
off/build_skb is being used) on an architecture with 4K pages, the
driver allocates an order 1 compound page and uses one page per receive
buffer. To determine the correct offset for a delayed DMA sync of the
first fragment of a multi-fragment packet, the driver then cannot just
use PAGE_MASK on the DMA address but has to construct a mask based on
the actual size of the backing page.

Using PAGE_MASK in the 3K RX buffer/4K page architecture configuration
will always sync the first page of a compound page. With the SWIOTLB
enabled this can lead to corrupted packets (zeroed out first fragment,
re-used garbage from another packet) and various consequences, such as
slow/stalling data transfers and connection resets. For example, testing
on a link with MTU exceeding 3058 bytes on a host with SWIOTLB enabled
(e.g. "iommu=soft swiotlb=262144,force") TCP transfers quickly fizzle
out without this patch.

Cc: stable@vger.kernel.org
Fixes: 0c5661ecc5dd7 ("ixgbe: fix crash in build_skb Rx code path")
Signed-off-by: Markus Boehme <markubo@amazon.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index c5ec17d19c59..507ef3471301 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1825,7 +1825,8 @@ static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
 				struct sk_buff *skb)
 {
 	if (ring_uses_build_skb(rx_ring)) {
-		unsigned long offset = (unsigned long)(skb->data) & ~PAGE_MASK;
+		unsigned long mask = (unsigned long)ixgbe_rx_pg_size(rx_ring) - 1;
+		unsigned long offset = (unsigned long)(skb->data) & mask;
 
 		dma_sync_single_range_for_cpu(rx_ring->dev,
 					      IXGBE_CB(skb)->dma,
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
