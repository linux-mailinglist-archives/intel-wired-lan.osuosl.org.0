Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id tak/Id3Y7mn2yQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 05:32:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B05546C570
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 05:32:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F0D885281;
	Mon, 27 Apr 2026 03:32:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gj1loLYjXTnJ; Mon, 27 Apr 2026 03:32:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C42AD85282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777260759;
	bh=HSX58xUxS26jVeBgSuVeqhUGoPg/+mdIRw8KbpeAVYM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u5ABm+uvvu7RvzKZzLYF/Vniz1IqDPQp3Po/A7L7v6lfDkkmFAmdW7S6hfcnU2FP+
	 QSQhoNKPTF1g1FfEJ9No+uei5Hz/9UdDFTVeHg+YAa92jn6tberZT3+zmBxlrq/B5n
	 62wWL/jskPq82Z9Ez96wQB/ZbKTkgcLAHSh2OiCuRFpyQpLhBioIZYqjfBB314kndj
	 JkZI81PK/IEihPfR37C5b9XOZJulcqkR190+YqKjLzGcGua1Pc7Fy46WKYNfUtWfh5
	 592B3n/Qtzr8KpC2AGWkXo/Q6Cc6n7wxpU25GmEbYn+vmTRVzz0nFkz14SyYR9Ivyz
	 Cn2QNt8IpXo/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C42AD85282;
	Mon, 27 Apr 2026 03:32:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A0FFD231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 03:32:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8697E8527E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 03:32:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yFa3mVt61tyS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 03:32:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112a; helo=mail-yw1-x112a.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C27218527D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C27218527D
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com
 [IPv6:2607:f8b0:4864:20::112a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C27218527D
 for <intel-wired-lan@osuosl.org>; Mon, 27 Apr 2026 03:32:36 +0000 (UTC)
Received: by mail-yw1-x112a.google.com with SMTP id
 00721157ae682-79a74765703so90444707b3.3
 for <intel-wired-lan@osuosl.org>; Sun, 26 Apr 2026 20:32:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777260755; x=1777865555;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HSX58xUxS26jVeBgSuVeqhUGoPg/+mdIRw8KbpeAVYM=;
 b=FJDR1WGSAy7VXMqMTteTeCflgsuOoLLVCulj+dAKIgF422tL2epdMNtL/nBB7/Ks13
 5lSG8pIX+lW67JvpPiayjuv4AahK86WXE7VF7RJjPyotivtCDu4NqOBDma2JtHOHugQl
 LsItu8rQJOy+IdrJFCPCdicJZpyIwAsG6LKZSKgHTFQ6er5pSGPNrQKHiiacgTFKduBw
 T6rK7dFc4BX2dI8bBgISUHvpU1s50aRm8vji6qVZI+cs7QDSM58O1s8InHY3LZkzNiR1
 vixAcHWIMGYlWbNn1ImxQNdhJGLFpoIvwpmD+TOfdNK4czDv0Mh2HIqrsenpNc6UUrW0
 ki8g==
X-Gm-Message-State: AOJu0Yy2FZ4ZcZNpwKtTQfV7udJ69D09//b+xaBmJ6NwTjLv2SBSmPCp
 1pdEl6L0V5rfgDmwhK6RJKox4+Q02wg5IGIyum5Rb4Q8M0OPphhL1d6EtssghKKu
X-Gm-Gg: AeBDiesmTGLy2FAItcOoh8bjhHsNmUEGwk7PSOUqZU+ztSsSA4UHOnMDlXA5dArH3Y/
 EvTcgh/nuD0S6/Qpr0w/qITXm3zVpzcIAY64GBCIhdrDbhNP5CBjReB6bUnrbinZkZeo8e0/1o4
 slRqv2hE3Mf4qTs9cmsDzFDcIch9gbh9eHLRcJeJ+tUSlHttwPcFIv8drOQdrk1k2tW55UnaVgm
 7L2wtX4zIoA7eCxZG/N25x+tiu4C0Q+ajvdGZx5yrSFUMgEj7H87bbKXSlLOZKWd3dOE3orpTZg
 hRqf0wpElShRr44KxH/3y6nmks6qHF09TpT0ox6jz+Cyuzr61sTuDZ1qD8PMe7nMD2pduYr+k79
 noSMzaGbYSNQm5YcKUS5stiAsFdk7HL9IPhj0lJob0sU7YypsC/O/yz19pU7h1uDYZoKZ1LJx6k
 fmti1rByywRJxK+kK2oX+J95bynfx/meqOEQ==
X-Received: by 2002:a05:690c:6505:b0:79a:6d65:c351 with SMTP id
 00721157ae682-7b9ecfec422mr424562547b3.36.1777260754969; 
 Sun, 26 Apr 2026 20:32:34 -0700 (PDT)
Received: from devobuntu.lan ([2600:6c5c:6b00:ba4:132d:5c1:4240:aad4])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-7b9ee8c8192sm119695247b3.20.2026.04.26.20.32.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2026 20:32:33 -0700 (PDT)
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
Cc: Matt Vollrath <tactii@gmail.com>
Date: Sun, 26 Apr 2026 23:31:56 -0400
Message-ID: <20260427033156.9157-1-tactii@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777260755; x=1777865555; darn=osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HSX58xUxS26jVeBgSuVeqhUGoPg/+mdIRw8KbpeAVYM=;
 b=O62P2ziI2FTvqw4qP3tlD7E16MOAtFIFPwG14+++KyraNz6jJ/zwdGvQAxUFMFu8f5
 ke4R74SmVb0QgFBCG2cNeRvtAe9r7jsFzi6kugG4o/rhAtGWIBf2z4ZlMvxhvOhKggxH
 zrkkERuTRvxnYGTPShtwPaxee2wgvZiAOokIib3ezNPNyPJpq/hi9WLmKxFt0XNPiMCX
 caifqEEIcSvjdwHUesalAZdqLuBWMTvTZWRqBv0Wc9AOxSKuXxe6UpbGEOM25uMZF+4v
 MnMnvDS1M7Rk3i8NWgdZl/5IClBBoU82wGvaW+bVH14q2oWiMI4Kjb2IsWCqrAVyUJd9
 fDkA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=O62P2ziI
Subject: [Intel-wired-lan] [PATCH iwl-next] e1000e: Avoid DMA re-mapping on
 RX copybreak
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 3B05546C570
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,m:tactii@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

This patch factors out DMA re-mapping for skbs which were recycled in
the RX path due to copybreak or errors. There is only one path out of
the e1000_clean_rx_irq() loop where the skb is consumed and DMA needs
to be re-mapped, so don't unmap it before checking the conditions.

The buffer allocation loop is adjusted to not assume that DMA is
unmapped, handling mapping errors gracefully.

On systems with IOMMU enabled, the cost of re-mapping DMA is greater
than the cost of copying data out of the ring buffer. When I use this
patch and configure e1000e with copybreak=2048, my system with IOMMU
completes RX twice as fast under load.

The kludge of unconditional unmapping has existed since this driver was
introduced in 2007, inherited from the e1000 driver which has since
factored it out. IOMMU tech was new, at the time.

Tested on an I218-V.

Assisted-by: Claude:claude-4-7-opus
Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 34 +++++++++++++++-------
 1 file changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 9befdacd6730..b1d6119171df 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -663,6 +663,8 @@ static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
 		skb = buffer_info->skb;
 		if (skb) {
 			skb_trim(skb, 0);
+			if (likely(buffer_info->dma))
+				goto write_desc;
 			goto map_skb;
 		}
 
@@ -680,10 +682,12 @@ static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
 						  DMA_FROM_DEVICE);
 		if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
 			dev_err(&pdev->dev, "Rx DMA map failed\n");
+			buffer_info->dma = 0;
 			adapter->rx_dma_failed++;
 			break;
 		}
 
+write_desc:
 		rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
 		rx_desc->read.buffer_addr = cpu_to_le64(buffer_info->dma);
 
@@ -941,7 +945,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
 		dma_rmb();	/* read descriptor and rx_buffer_info after status DD */
 
 		skb = buffer_info->skb;
-		buffer_info->skb = NULL;
 
 		prefetch(skb->data - NET_IP_ALIGN);
 
@@ -955,9 +958,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
 
 		cleaned = true;
 		cleaned_count++;
-		dma_unmap_single(&pdev->dev, buffer_info->dma,
-				 adapter->rx_buffer_len, DMA_FROM_DEVICE);
-		buffer_info->dma = 0;
 
 		length = le16_to_cpu(rx_desc->wb.upper.length);
 
@@ -973,8 +973,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
 		if (adapter->flags2 & FLAG2_IS_DISCARDING) {
 			/* All receives must fit into a single buffer */
 			e_dbg("Receive packet consumed multiple buffers\n");
-			/* recycle */
-			buffer_info->skb = skb;
 			if (staterr & E1000_RXD_STAT_EOP)
 				adapter->flags2 &= ~FLAG2_IS_DISCARDING;
 			goto next_desc;
@@ -982,8 +980,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
 
 		if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
 			     !(netdev->features & NETIF_F_RXALL))) {
-			/* recycle */
-			buffer_info->skb = skb;
 			goto next_desc;
 		}
 
@@ -1010,19 +1006,35 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
 			struct sk_buff *new_skb =
 				napi_alloc_skb(&adapter->napi, length);
 			if (new_skb) {
+				dma_sync_single_for_cpu(&pdev->dev,
+							buffer_info->dma,
+							adapter->rx_buffer_len,
+							DMA_FROM_DEVICE);
 				skb_copy_to_linear_data_offset(new_skb,
 							       -NET_IP_ALIGN,
 							       (skb->data -
 								NET_IP_ALIGN),
 							       (length +
 								NET_IP_ALIGN));
-				/* save the skb in buffer_info as good */
-				buffer_info->skb = skb;
+				dma_sync_single_for_device(&pdev->dev,
+							   buffer_info->dma,
+							   adapter->rx_buffer_len,
+							   DMA_FROM_DEVICE);
 				skb = new_skb;
 			}
 			/* else just continue with the old one */
 		}
-		/* end copybreak code */
+
+		/* If skb was not replaced by copybreak, we are consuming
+		 * the original buffer and must release the DMA mapping.
+		 */
+		if (skb == buffer_info->skb) {
+			buffer_info->skb = NULL;
+			dma_unmap_single(&pdev->dev, buffer_info->dma,
+					 adapter->rx_buffer_len,
+					 DMA_FROM_DEVICE);
+			buffer_info->dma = 0;
+		}
 		skb_put(skb, length);
 
 		/* Receive Checksum Offload */
-- 
2.43.0

