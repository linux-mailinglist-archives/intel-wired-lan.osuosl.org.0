Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D529A6837B3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:45:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7D0240527;
	Tue, 31 Jan 2023 20:45:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7D0240527
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197928;
	bh=5/U1O2yXQYjZJltH9W3fMinX0G2KWrkvkJYfoEI9Nk8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NWqrEQ4kGeiGX2yILOGEJM9SfIFLHvaa6Ve2spyd+3slu42m8xJcIkfXAuVa/k+TF
	 ILYyp8UvT3v6REIY2Eh/yWOeZiEVrLh8oZ+cmx6kwRM0DMP0XtcwKAMdrBq7y5mj/h
	 NozS1dcfhRXEGSNk7Y80HVlcOe8mFxvdWo9H052xBcEYS75+ModvDNrYq4HiAJSbjm
	 qhdZBCdf3dJwigD7rAfFFqEUw33Ycdgdcji6tXyljMvdebxu4DMKi1sp/RomZ63FcB
	 tE4GPr3Z2APFjj3Q4CpBv0dqfgYyWBWWv5VOdrGGmDulduGSZ9mK86WAVfHLOJG4sB
	 CVd2j1KxzwOFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lXmfXTAq4I8m; Tue, 31 Jan 2023 20:45:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4B4F404FE;
	Tue, 31 Jan 2023 20:45:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4B4F404FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05AF51BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0A6E60BDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0A6E60BDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mp2xRRDlfLy5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2492C60B77
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2492C60B77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167095"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167095"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:45:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595226"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595226"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:14 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:44:55 +0100
Message-Id: <20230131204506.219292-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197917; x=1706733917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y5TsZ35lgtOg1Ajr9NLwq/jpNvXHXh9JVeIDnkdTx4s=;
 b=FFczOTEqpE5VuqrCwN99knUMAEFTBawj5utglm5ZLozC1jP+7Lqurs0G
 Cq41DUQOiiIupdRsyq3R2Wbr7gYCWaPv1fn9rHjw2pr67e+oLzfTFFQmF
 MqynmKhKND2+Kjk7LAd9C2cghEkHnMklSXqCeBguNZ2DfiW9MnUGqEjZV
 csL8OTFYrRowNPcXvhdJTDTspSn1fJaA89cNHLy2OwwY1bU8IBsY8J18A
 rjyNq3f69tNBpzqPSeMcu6rx7plqoZgxItZnml3vBFruEszesBh8pPcjA
 aeDFh9krT7L8BSpUoobE5fwDWRy/wd09R+Wfh1PFqRzmRbL2P5yAWJuHp
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FFczOTEq
Subject: [Intel-wired-lan] [PATCH bpf-next 02/13] ice: add xdp_buff to
 ice_rx_ring struct
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation for XDP multi-buffer support, let's store xdp_buff on
Rx ring struct. This will allow us to combine fragmented frames across
separate NAPI cycles in the same way as currently skb fragments are
handled. This means that skb pointer on Rx ring will become redundant
and will be removed. For now it is kept and layout of Rx ring struct was
not inspected, some member movement will be needed later on so that will
be the time to take care of it.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c | 39 +++++++++++++----------
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 +
 3 files changed, 25 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index e36abcfeb958..5b66f6f7db78 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -533,6 +533,7 @@ int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 		}
 	}
 
+	xdp_init_buff(&ring->xdp, ice_rx_pg_size(ring) / 2, &ring->xdp_rxq);
 	err = ice_setup_rx_ctx(ring);
 	if (err) {
 		dev_err(dev, "ice_setup_rx_ctx failed for RxQ %d, err %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index d0a6534122e0..15983c54210a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -523,8 +523,16 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
 	return -ENOMEM;
 }
 
+/**
+ * ice_rx_frame_truesize
+ * @rx_ring: ptr to Rx ring
+ * @size: size
+ *
+ * calculate the truesize with taking into the account PAGE_SIZE of
+ * underlying arch
+ */
 static unsigned int
-ice_rx_frame_truesize(struct ice_rx_ring *rx_ring, unsigned int __maybe_unused size)
+ice_rx_frame_truesize(struct ice_rx_ring *rx_ring, const unsigned int size)
 {
 	unsigned int truesize;
 
@@ -1103,21 +1111,20 @@ ice_is_non_eop(struct ice_rx_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc)
  */
 int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 {
-	unsigned int total_rx_bytes = 0, total_rx_pkts = 0, frame_sz = 0;
+	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
 	u16 cleaned_count = ICE_DESC_UNUSED(rx_ring);
 	unsigned int offset = rx_ring->rx_offset;
+	struct xdp_buff *xdp = &rx_ring->xdp;
 	struct ice_tx_ring *xdp_ring = NULL;
 	unsigned int xdp_res, xdp_xmit = 0;
 	struct sk_buff *skb = rx_ring->skb;
 	struct bpf_prog *xdp_prog = NULL;
-	struct xdp_buff xdp;
 	bool failure;
 
 	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
 #if (PAGE_SIZE < 8192)
-	frame_sz = ice_rx_frame_truesize(rx_ring, 0);
+	xdp->frame_sz = ice_rx_frame_truesize(rx_ring, 0);
 #endif
-	xdp_init_buff(&xdp, frame_sz, &rx_ring->xdp_rxq);
 
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	if (xdp_prog)
@@ -1171,30 +1178,30 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		rx_buf = ice_get_rx_buf(rx_ring, size, &rx_buf_pgcnt);
 
 		if (!size) {
-			xdp.data = NULL;
-			xdp.data_end = NULL;
-			xdp.data_hard_start = NULL;
-			xdp.data_meta = NULL;
+			xdp->data = NULL;
+			xdp->data_end = NULL;
+			xdp->data_hard_start = NULL;
+			xdp->data_meta = NULL;
 			goto construct_skb;
 		}
 
 		hard_start = page_address(rx_buf->page) + rx_buf->page_offset -
 			     offset;
-		xdp_prepare_buff(&xdp, hard_start, offset, size, !!offset);
+		xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
 #if (PAGE_SIZE > 4096)
 		/* At larger PAGE_SIZE, frame_sz depend on len size */
-		xdp.frame_sz = ice_rx_frame_truesize(rx_ring, size);
+		xdp->frame_sz = ice_rx_frame_truesize(rx_ring, size);
 #endif
 
 		if (!xdp_prog)
 			goto construct_skb;
 
-		xdp_res = ice_run_xdp(rx_ring, &xdp, xdp_prog, xdp_ring);
+		xdp_res = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring);
 		if (!xdp_res)
 			goto construct_skb;
 		if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR)) {
 			xdp_xmit |= xdp_res;
-			ice_rx_buf_adjust_pg_offset(rx_buf, xdp.frame_sz);
+			ice_rx_buf_adjust_pg_offset(rx_buf, xdp->frame_sz);
 		} else {
 			rx_buf->pagecnt_bias++;
 		}
@@ -1207,11 +1214,11 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 construct_skb:
 		if (skb) {
 			ice_add_rx_frag(rx_ring, rx_buf, skb, size);
-		} else if (likely(xdp.data)) {
+		} else if (likely(xdp->data)) {
 			if (ice_ring_uses_build_skb(rx_ring))
-				skb = ice_build_skb(rx_ring, rx_buf, &xdp);
+				skb = ice_build_skb(rx_ring, rx_buf, xdp);
 			else
-				skb = ice_construct_skb(rx_ring, rx_buf, &xdp);
+				skb = ice_construct_skb(rx_ring, rx_buf, xdp);
 		}
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 166713f8abbd..b0c39d557008 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -303,6 +303,7 @@ struct ice_rx_ring {
 	struct bpf_prog *xdp_prog;
 	struct ice_tx_ring *xdp_ring;
 	struct xsk_buff_pool *xsk_pool;
+	struct xdp_buff xdp;
 	struct sk_buff *skb;
 	dma_addr_t dma;			/* physical address of ring */
 	u64 cached_phctime;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
