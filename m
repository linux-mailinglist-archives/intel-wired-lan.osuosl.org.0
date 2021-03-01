Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2E1328C2B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Mar 2021 19:47:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAF45430E7;
	Mon,  1 Mar 2021 18:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gYw08VdZKA9E; Mon,  1 Mar 2021 18:47:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF1CF430CD;
	Mon,  1 Mar 2021 18:47:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EA7E1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Mar 2021 18:47:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A13F83C08
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Mar 2021 18:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nPJL0H2Tc0JQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Mar 2021 18:47:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03DCB83BAA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Mar 2021 18:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614624430;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S53kYgBrvO58mkF8bhEVdcsH3v8DHU2I+2HExMYGeWc=;
 b=ViJVaCglaeTarrEa+UCsg3bk3eqVC1QTZJO46XTtdkwc9J1QH1zdjDcrgv477GeLCYGCVa
 chp8BrQ48U/nt3t/cp9rvZ+v7gXsQvQHtXi2Cb4SPCtzogtx36PwMjjGMqBt3vIQbdvhr0
 x/ns5hneleAHEO/H8q7aqq7SRc4RrU0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-bg6BCiVaMlizEDKWbzxDyg-1; Mon, 01 Mar 2021 13:47:06 -0500
X-MC-Unique: bg6BCiVaMlizEDKWbzxDyg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 265E1803F47;
 Mon,  1 Mar 2021 18:47:05 +0000 (UTC)
Received: from carbon (unknown [10.36.110.49])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A9F9710013D7;
 Mon,  1 Mar 2021 18:46:55 +0000 (UTC)
Date: Mon, 1 Mar 2021 19:46:54 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: netdev <netdev@vger.kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Marek Majtyka <alardam@gmail.com>
Message-ID: <20210301194654.10513eb2@carbon>
In-Reply-To: <20210301131832.0d765179@carbon>
References: <20210301131832.0d765179@carbon>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: Re: [Intel-wired-lan] Driver i40e have XDP-redirect bug
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
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, brouer@redhat.com,
 Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 1 Mar 2021 13:18:32 +0100
Jesper Dangaard Brouer <brouer@redhat.com> wrote:

> Hi i40e-people + XDP-feature-people, 
> 
> The driver i40e have a XDP-redirect bug, where is it partly broken. It can
> transmit a redirected xdp_frame (from another driver). But broken when
> redirecting a xdp_frame that is received by the driver itself.
> 
> This reminds me about lacking XDP-features, as this "state" is actually
> "supported" (for Intel drivers), when running in 'legacy-rx' mode.  This can
> be configured (via: 'ethtool --set-priv-flags i40e2 legacy-rx on').  When
> running in 'legacy-rx' mode the headroom is zero, which means that xdp_frame
> cannot be created as it is stored in this headroom, but an XDP-prog can
> still run a (DDoS) filter.  (Hint grepping after xdp_redirect stats is not enough).
> 
> The BUG I experience *is* that headroom is zero, but 'legacy-rx' mode is off:
> 
>   $ ethtool --show-priv-flags i40e2 | grep legacy-rx
>   legacy-rx             : off
> 
> This is clearly a driver initialization bug as the headroom should not
> be zero in this configuration. Further indication that this is related
> to init order: If while xdp_redirect is running, I change RX-ring size
> (e.g. 'ethtool -G i40e2 rx 1024') then redirect starts working again.
> 
> 
> I will continue to find the offending commit... (to-be-continued)
> (p.s. testing on net-next on top of commit d310ec03a34e92).

The problem is in this commit f7bb0d71d658 ("i40e: store the result of
i40e_rx_offset() onto i40e_ring"), and below patch fix the issue for me.

I am in dialog with Maciej and he will send a proper fix.

The commit is fairly new, but have reached Linus'es tree:
 $ git describe f7bb0d71d658 --contains
 v5.12-rc1~200^2~54^2~2
-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

[PATCH] i40e: fix packet headroom

From: Jesper Dangaard Brouer <brouer@redhat.com>

Fixes: f7bb0d71d658 ("i40e: store the result of i40e_rx_offset() onto i40e_ring")
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c |   14 ++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |   12 ------------
 2 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8bb8eb65add9..4c0b4bc38338 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3259,6 +3259,17 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 	return 0;
 }
 
+/**
+ * i40e_rx_offset - Return expected offset into page to access data
+ * @rx_ring: Ring we are requesting offset of
+ *
+ * Returns the offset value for ring into the data buffer.
+ */
+static unsigned int i40e_rx_offset(struct i40e_ring *rx_ring)
+{
+	return ring_uses_build_skb(rx_ring) ? I40E_SKB_PAD : 0;
+}
+
 /**
  * i40e_configure_rx_ring - Configure a receive ring context
  * @ring: The Rx ring to configure
@@ -3370,6 +3381,9 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	else
 		set_ring_build_skb_enabled(ring);
 
+	ring->rx_offset = i40e_rx_offset(ring);
+	pr_info("XXX %s() ring->rx_offset = %d\n", __func__, ring->rx_offset);
+
 	/* cache tail for quicker writes, and clear the reg before use */
 	ring->tail = hw->hw_addr + I40E_QRX_TAIL(pf_q);
 	writel(0, ring->tail);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index f6f1af94cca0..e398b8ac2a85 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1569,17 +1569,6 @@ void i40e_free_rx_resources(struct i40e_ring *rx_ring)
 	}
 }
 
-/**
- * i40e_rx_offset - Return expected offset into page to access data
- * @rx_ring: Ring we are requesting offset of
- *
- * Returns the offset value for ring into the data buffer.
- */
-static unsigned int i40e_rx_offset(struct i40e_ring *rx_ring)
-{
-	return ring_uses_build_skb(rx_ring) ? I40E_SKB_PAD : 0;
-}
-
 /**
  * i40e_setup_rx_descriptors - Allocate Rx descriptors
  * @rx_ring: Rx descriptor ring (for a specific queue) to setup
@@ -1608,7 +1597,6 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
 	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
-	rx_ring->rx_offset = i40e_rx_offset(rx_ring);
 
 	/* XDP RX-queue info only needed for RX rings exposed to XDP */
 	if (rx_ring->vsi->type == I40E_VSI_MAIN) {

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
