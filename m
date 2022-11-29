Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2A263C631
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 18:11:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 198C681E91;
	Tue, 29 Nov 2022 17:11:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 198C681E91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669741904;
	bh=Fiun1WLdXcUnwxJgXqfpcHYnsikW4T7FuWfgwHfs3FI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pn+zOCimQU5WazL9W3KI3SF2UWjGHQnCYJQeLFgXuwNytU0dicWET9SFnowakXUgs
	 BddJMDV1q6OmRCLXpaI3smu98GO7VMqProcGY3EF/RpxB5PTctTOtMaYsAZXT3n2a7
	 cvN7MS9iCBnZOF6IV600qRsrGL3VmaU4wsMGW2YMyz4IptnhHa7Y9U0WAfng+a0r7K
	 RNaKJwhoLXk/OphXyJdeZbedPK8s3fjcJEOmmtc8WyB6siIBvKmp712nGRMqWmzABJ
	 dP67mLpPfO4FRqek7R7aiUc817QwBGQmc6rs5Od4JborKOUFemDSkUjB178+yas1I5
	 HI1yhKJwHrWFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qK03cKv-ZIuz; Tue, 29 Nov 2022 17:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B3EF81E62;
	Tue, 29 Nov 2022 17:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B3EF81E62
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4372F1BF855
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 17:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A53181E62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 17:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A53181E62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YCXCHhgEiFF8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 17:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7128C81E57
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7128C81E57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 17:11:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="312792139"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="312792139"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 09:11:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="643862494"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="643862494"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga002.jf.intel.com with ESMTP; 29 Nov 2022 09:11:34 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 29 Nov 2022 18:11:25 +0100
Message-Id: <20221129171125.4092238-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669741898; x=1701277898;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7M5v88T9DtcIFzCeKmaHBS7GEm5CVug8t2O/Fw9p5Cc=;
 b=Xmm/GOO55tzmPmEFi035KiY02vtZrsYGc3psIPqZwAx4YU6jb1td7dRM
 kjb+jGMk0TbveIDyeP1WxaCWKeUFinzZq4Lk8L9tO9nK30Fr+W+F2Sqk1
 RjLhv96lViJrnoXFB3SSw4aI5o+pUlfsRozhc59NAwg9bA5MmcszH0XPw
 LppO0HP+7iriB2foEI90rm06ppKisAavJFBBaEqUtYAwiI7uUTaKVK+gr
 9d6evhZfTrPSQSJ66CfNR5J6E9Ow4bShOpUKNZkhYBNTe0DF6xlKA58bC
 MdkoBz7bAGXms17jjKWWzvLMMTlf7F+AUExp3jxngtnQqOIjoPrzl8JgA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xmm/GOO5
Subject: [Intel-wired-lan] [PATCH intel-net] ice: xsk: do not use
 xdp_return_frame() on tx_buf->raw_buf
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
Cc: Robin Cowley <robin.cowley@thehutgroup.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previously ice XDP xmit routine was changed in a way that it avoids
xdp_buff->xdp_frame conversion as it is simply not needed for handling
XDP_TX action and what is more it saves us CPU cycles. This routine is
re-used on ZC driver to handle XDP_TX action.

Although for XDP_TX on Rx ZC xdp_buff that comes from xsk_buff_pool is
converted to xdp_frame, xdp_frame itself is not stored inside
ice_tx_buf, we only store raw data pointer. Casting this pointer to
xdp_frame and calling against it xdp_return_frame in
ice_clean_xdp_tx_buf() results in undefined behavior.

To fix this, simply call page_frag_free() on tx_buf->raw_buf.
Later intention is to remove the buff->frame conversion in order to
simplify the codebase and improve XDP_TX performance on ZC.

Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")
Reported-and-tested-by: Robin Cowley <robin.cowley@thehutgroup.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 056c904b83cc..79fa65d1cf20 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -772,7 +772,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 static void
 ice_clean_xdp_tx_buf(struct ice_tx_ring *xdp_ring, struct ice_tx_buf *tx_buf)
 {
-	xdp_return_frame((struct xdp_frame *)tx_buf->raw_buf);
+	page_frag_free(tx_buf->raw_buf);
 	xdp_ring->xdp_tx_active--;
 	dma_unmap_single(xdp_ring->dev, dma_unmap_addr(tx_buf, dma),
 			 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
