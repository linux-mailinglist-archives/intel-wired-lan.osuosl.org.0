Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMkhNuZu72mHBQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:12:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B88074741B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:12:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 203B86F59D;
	Mon, 27 Apr 2026 14:12:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KMgIj2dwnaCJ; Mon, 27 Apr 2026 14:12:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F8606F554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777299171;
	bh=dOzEpumC4ADROaHbEK02rKBm85qRWWUWjKYJEPWKf0o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=F6j8DXX3T3nYK64E0KTbiNBqFLSJVdcV2xUq1WuMlbz/u4h14GpR09FB35r47/8cQ
	 i1RqCFY1z9/0s5e3XcwJVpOoOZXmlP5yulVhi4fntmzBhMjMx0Yq6w8ETkxy93tJ0D
	 OJ3g33SDn8G6R4JIjk5dp/cIk8HSj9sbRNUh0PbqwAat8jaEttXpt35e2E1Qs5EevO
	 2sE/o7QSyI6yeihX10UdZ0dv0EB6Z1DiL2nkpTm2w7LrUPflm5IR+/zH2zGTJzh0hJ
	 V7y9RDrNBNq0jeUsc9VPB1qi67/rthnVg/sb7nMCDr7wChDHvekBkinF+0L43/LyHt
	 ZBfqUdaNQQyGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F8606F554;
	Mon, 27 Apr 2026 14:12:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ECA31B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64CE54571A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:12:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FoBw9wYq0loy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 14:12:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1231; helo=mail-dl1-x1231.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0B5C454B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0B5C454B4
Received: from mail-dl1-x1231.google.com (mail-dl1-x1231.google.com
 [IPv6:2607:f8b0:4864:20::1231])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0B5C454B4
 for <intel-wired-lan@osuosl.org>; Mon, 27 Apr 2026 14:12:48 +0000 (UTC)
Received: by mail-dl1-x1231.google.com with SMTP id
 a92af1059eb24-12c637089ccso736588c88.1
 for <intel-wired-lan@osuosl.org>; Mon, 27 Apr 2026 07:12:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777299167; x=1777903967;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dOzEpumC4ADROaHbEK02rKBm85qRWWUWjKYJEPWKf0o=;
 b=iVwEcYC51JtTiEWSQyXzAhgQw6V+AAzQdASb7XSn9hnK4zAoSrD/6gBR8f4sNgMmBs
 x4xyc6+NHTgQEK+MlZefEWVPRMEL2cSTEdBJx2sMehbrzzn4Bjcp2lcnkY6BUPFAQ1UE
 NSVoRXkrBv6Ro5clN7+eRp7aS22awMN6w+gSR6V0JF2o5zDrTJGVQhrHs0AsuQF2G3/N
 QKFQR/npd3GO24QLFa1m96K/UGox5RHqqCT6pqOSbsojQgYdLiQMFA5JCa+c189p6ZuA
 h2S8nZ4I3Cr8b/7uv9R9cpmXBRWqe/jtla/hvuZ8Tk7UzVjc1CRsNDLa/gs0nlN+OMrY
 JZ6g==
X-Gm-Message-State: AOJu0YziudigfJORwBlRJtj1ezEF//1A66YD9pLY+WSEO2ObCr37KyE2
 JimHOxYYr1y3RYat70oCVk6+Klm2skJvE0KwNtnk5bAFiB+8xZK7YGwH+cqSccP4
X-Gm-Gg: AeBDiev+KznaA6k4Ja9stShEhe123ya5w637qXAtDAk0mGv/S1K9dT+nNubEUqfQQ5Q
 9WiqQ/v8d2AW+4QotKnwRkCG0GD8fbjRrcoF+gTMqFaa1QASU89EIY3mwU02WqhFD5fxeVwqoQy
 osIT6OEBCiyE87SYzsoGtbbECC/tzHuv57OtbmZbBmmSUzbrBhodUAs4WiZWhIEAR5HUyYljrwT
 7OHPXSd8WsG00cwjIADPByWryVap4H/lY/0l7Vvhg3IFH8EridGY4uERGJhNzE7vMZF/A+mX+VN
 Ys1gznvHgPskL5c24tJnkE28Nm39qXgdjr67xFqTvEXi7wNIrqiHcW8EVknMtQl9tjoOeBkKS6I
 22dSPXqrmkAql37NprTEkF7S0NPb4QA3zvKFIlrN52TynVvggdHZUQqQpRcIhe0WZjd+W45amCF
 yt6+ThccfexeAlsGDu37PVv/4cyoDZl1ZzS6w=
X-Received: by 2002:a05:7022:6627:b0:11b:f056:a19b with SMTP id
 a92af1059eb24-12c73f930c1mr24901971c88.18.1777299166693; 
 Mon, 27 Apr 2026 07:12:46 -0700 (PDT)
Received: from devobuntu.lan ([2600:6c5c:6b00:ba4:9e82:4279:45e0:a728])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-12dc2dfad8csm18950484c88.3.2026.04.27.07.12.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2026 07:12:46 -0700 (PDT)
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
Cc: Matt Vollrath <tactii@gmail.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 27 Apr 2026 10:12:27 -0400
Message-ID: <20260427141227.19965-1-tactii@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777299167; x=1777903967; darn=osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=dOzEpumC4ADROaHbEK02rKBm85qRWWUWjKYJEPWKf0o=;
 b=dPrsK/27340/zfI8Ks/d5veVOSDfP0QVUCbR2oPlR/1dRKzGLssmuOoNmKUzP9npWl
 9swiAXtc1MILcQ3YUf1JIUksoFVKJbTOoJpoPK0rOknloqRwLHzrMXflsyNBuMWZH2D1
 3ZVDr1wrahELOGwaj8kPGjfixDfu/jBydxIL7FwgnrO0QuUr9wjWXR/XggjpEDnzXLom
 fpza/t3RBq2oCYbbbi9HkrYLc6NtvsfHExL1pAiYEwuO4Vo60gQQyQh1bfVxYtd5STlN
 L5cShL52YuHUE3bW6cl4+b9tVJg9D8edoIsvxyNCsQ42a23caiA+N8Fs57oXoBWEdtNl
 t7vw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=dPrsK/27
Subject: [Intel-wired-lan] [PATCH iwl-next v2] e1000e: Avoid DMA re-mapping
 on RX copybreak
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
X-Rspamd-Queue-Id: B88074741B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,m:tactii@gmail.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[3];
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
factored it out. IOMMU tech was new at the time.

Tested on an I218-V.

Assisted-by: Claude:claude-4-7-opus
Signed-off-by: Matt Vollrath <tactii@gmail.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2:
* proofread description with Aleksandr
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

