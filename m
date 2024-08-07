Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BDE94A663
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 12:55:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8280811EC;
	Wed,  7 Aug 2024 10:55:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AYFy52lVB4OG; Wed,  7 Aug 2024 10:55:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4344080D48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723028129;
	bh=Mc6hL0rfcoyD3p7b4KvQ8onGKi+XRJiSP7DdvytxgCo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7v5egiueMrPGp4TCx6naiPOzwx+dLpSiyJQAoRI6/ZbINr7uR9IzSvtNAeW5e3BxP
	 nTX21o26qwTYATayxl4/HyS7pXhui6QY0ehVtcwY5o1CrcdTUmt5XXARGJfVrTeJjA
	 p8E3B4qzCWSFmsaoYMcNpciJRRLJS0P94xhTX20FF5UahZNfOooh2Fue/vqipaW/fY
	 CW8gDcvAnsgAcpY19OgCKgI1D/NAAJLUjmXnImhpAdudRdR/1D/Bmhgby+nhdsANxW
	 +ktq/gd4pOfHrjzvfS7zkViLNQtlUEe6P3kYF6XpLG3CQ+84mXTTQ7mfcwJ3vDuc7g
	 2mpZLfMgsj+hw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4344080D48;
	Wed,  7 Aug 2024 10:55:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A4051BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64B5440557
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mddC74QvFB78 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 10:55:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1197240513
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1197240513
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1197240513
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:25 +0000 (UTC)
X-CSE-ConnectionGUID: 8wjRxAvUTFKohTkTAjb1fg==
X-CSE-MsgGUID: bgggj1xFQi6WePK/sBkCig==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31664522"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="31664522"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 03:55:23 -0700
X-CSE-ConnectionGUID: 3BEQ1czcSnilL5OEQFv01g==
X-CSE-MsgGUID: vfHfRGUqRRO07gD+o6oDrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="87757423"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 07 Aug 2024 03:55:21 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Aug 2024 12:53:26 +0200
Message-Id: <20240807105326.86665-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
References: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723028126; x=1754564126;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KH602mCFdxejIJTl3iLMySBJCqqCzdk6KQPH1exe3oM=;
 b=QDEeBrdSQSfy1/aeMfZktJW4XfK+osVOdStU65BN4XEGF1/Oolj1neTE
 LOEjH6HI/Nb3H+BmaL1pXjHFob1zuKJ4Ll7byK632jnFWfF/t19axBHSj
 WCYT+ktqFotVsftstHfDE6tHZDJwlCzFSfQ9rtIi3uQxn0lo+7Tsz8Dn4
 QtvGQIvYhWi1Y++3kL7RzbKJ5i+wihhuwV6nLj6BUTPaKJydBjmfyNhD0
 AxWO34FlOwJgX07uJBO1b6vBAEEsRaGK1DHgS2AGKBYDczfUW8pHnE5iJ
 cppjsSOsyjgHsoQhqgkny6ChySI+bEV2zYfrLt+DXjqHMxS4NcH19vyWW
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QDEeBrdS
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix truesize operations
 for PAGE_SIZE >= 8192
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 bjorn@kernel.org, anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 luizcap@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When working on multi-buffer packet on arch that has PAGE_SIZE >= 8192,
truesize is calculated and stored in xdp_buff::frame_sz per each
processed Rx buffer. This means that frame_sz will contain the truesize
based on last received buffer, but commit 1dc1a7e7f410 ("ice:
Centrallize Rx buffer recycling") assumed this value will be constant
for each buffer, which breaks the page recycling scheme and mess up the
way we update the page::page_offset.

To fix this, let us work on constant truesize when PAGE_SIZE >= 8192
instead of basing this on size of a packet read from Rx descriptor. This
way we can simplify the code and avoid calculating truesize per each
received frame and on top of that when using
xdp_update_skb_shared_info(), current formula for truesize update will
be valid.

This means ice_rx_frame_truesize() can be removed altogether.
Furthermore, first call to it within ice_clean_rx_irq() for 4k PAGE_SIZE
was redundant as xdp_buff::frame_sz is initialized via xdp_init_buff()
in ice_vsi_cfg_rxq(). This should have been removed at the point where
xdp_buff struct started to be a member of ice_rx_ring and it was no
longer a stack based variable.

There are two fixes tags as my understanding is that the first one
exposed us to broken truesize and page_offset handling and then second
introduced broken skb_shared_info update in ice_{construct,build}_skb().

Reported-and-tested-by: Luiz Capitulino <luizcap@redhat.com>
Closes: https://lore.kernel.org/netdev/8f9e2a5c-fd30-4206-9311-946a06d031bb@redhat.com/
Fixes: 1dc1a7e7f410 ("ice: Centrallize Rx buffer recycling")
Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 21 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c | 33 -----------------------
 2 files changed, 20 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1facf179a96f..f448d3a84564 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -512,6 +512,25 @@ static void ice_xsk_pool_fill_cb(struct ice_rx_ring *ring)
 	xsk_pool_fill_cb(ring->xsk_pool, &desc);
 }
 
+/**
+ * ice_get_frame_sz - calculate xdp_buff::frame_sz
+ * @rx_ring: the ring being configured
+ *
+ * Return frame size based on underlying PAGE_SIZE
+ */
+static unsigned int ice_get_frame_sz(struct ice_rx_ring *rx_ring)
+{
+	unsigned int frame_sz;
+
+#if (PAGE_SIZE >= 8192)
+	frame_sz = rx_ring->rx_buf_len;
+#else
+	frame_sz = ice_rx_pg_size(rx_ring) / 2;
+#endif
+
+	return frame_sz;
+}
+
 /**
  * ice_vsi_cfg_rxq - Configure an Rx queue
  * @ring: the ring being configured
@@ -576,7 +595,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 		}
 	}
 
-	xdp_init_buff(&ring->xdp, ice_rx_pg_size(ring) / 2, &ring->xdp_rxq);
+	xdp_init_buff(&ring->xdp, ice_get_frame_sz(ring), &ring->xdp_rxq);
 	ring->xdp.data = NULL;
 	ring->xdp_ext.pkt_ctx = &ring->pkt_ctx;
 	err = ice_setup_rx_ctx(ring);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4b690952bb40..c9bc3f1add5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -521,30 +521,6 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
 	return -ENOMEM;
 }
 
-/**
- * ice_rx_frame_truesize
- * @rx_ring: ptr to Rx ring
- * @size: size
- *
- * calculate the truesize with taking into the account PAGE_SIZE of
- * underlying arch
- */
-static unsigned int
-ice_rx_frame_truesize(struct ice_rx_ring *rx_ring, const unsigned int size)
-{
-	unsigned int truesize;
-
-#if (PAGE_SIZE < 8192)
-	truesize = ice_rx_pg_size(rx_ring) / 2; /* Must be power-of-2 */
-#else
-	truesize = rx_ring->rx_offset ?
-		SKB_DATA_ALIGN(rx_ring->rx_offset + size) +
-		SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) :
-		SKB_DATA_ALIGN(size);
-#endif
-	return truesize;
-}
-
 /**
  * ice_run_xdp - Executes an XDP program on initialized xdp_buff
  * @rx_ring: Rx ring
@@ -1154,11 +1130,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	bool failure;
 	u32 first;
 
-	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
-#if (PAGE_SIZE < 8192)
-	xdp->frame_sz = ice_rx_frame_truesize(rx_ring, 0);
-#endif
-
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	if (xdp_prog) {
 		xdp_ring = rx_ring->xdp_ring;
@@ -1217,10 +1188,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			hard_start = page_address(rx_buf->page) + rx_buf->page_offset -
 				     offset;
 			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
-#if (PAGE_SIZE > 4096)
-			/* At larger PAGE_SIZE, frame_sz depend on len size */
-			xdp->frame_sz = ice_rx_frame_truesize(rx_ring, size);
-#endif
 			xdp_buff_clear_frags_flag(xdp);
 		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
 			break;
-- 
2.34.1

