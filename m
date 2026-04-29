Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFu9Ilti8WnhgQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 03:43:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA51B48E0F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 03:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5142D83E40;
	Wed, 29 Apr 2026 01:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jWwCfszogYSy; Wed, 29 Apr 2026 01:43:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9759383E41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777427032;
	bh=rpU0cyQ60DgnqUIdzfSUqCTUqThzrhySmXUiZxabndk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=40XhCO4RzbvadqfdIWy/kqCtWOQD9vwO3eOkMLgjAX55lxV84QkA/u77JFR9vAcZ4
	 lZhr8qoW02kocDVM/1SzR3NWNj/sZpXR9k0t9v5amPFDkofnp5cRdIpQYwcZpdF+JP
	 4IkVBXOoPEPYul7upsIQ8tFOEz2y6b0liiB/+RUYnzvcJKbtNYcid2XbsWwiM75kPe
	 +gvw+elR/1Tw0+ehgttQCc9zDXKFY4n3RoRl2eFoUEY7/BQuE3cxaRpG2TR2R+lFd/
	 z79iA+5hA96QXNYpQUwutnUw5M97yDzSETD2FtGOrUHj/H8xqm/31EYARBpVoW3Y8A
	 RNfTQ4iGRj/WA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9759383E41;
	Wed, 29 Apr 2026 01:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 471D023D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 01:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BD206110B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 01:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sbRgFpv12BbB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 01:43:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112e; helo=mail-yw1-x112e.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2DBC36110A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DBC36110A
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DBC36110A
 for <intel-wired-lan@osuosl.org>; Wed, 29 Apr 2026 01:43:49 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-79ea87af213so7069787b3.0
 for <intel-wired-lan@osuosl.org>; Tue, 28 Apr 2026 18:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777427028; x=1778031828;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rpU0cyQ60DgnqUIdzfSUqCTUqThzrhySmXUiZxabndk=;
 b=qDfkyXcNYF4kPrKeFUEyg+ToEvZg2yXxtOuYcQxMJhf47dQPU6q+3z6wGFCztK87dy
 IJ2ktKnU3l7Qx3ZxnrwTNhxC5sLF1cuhg2u/j+E4tbcIJmReGYklt3kCe3nW6kDj1CHD
 irf3Lu3FiGI70yB82tEDjLT06DkclYNnzZnMntUCS1h3V8TeErHN1nP0H8ujMvpiKlq5
 1WN5MMViC+xFQ9jueDYD/e7afXB03ZgCVYpQbUQcZagb5Si2OQmTU6axUNfLQma6gFFX
 RHSv++lMc3mhObHLiudLjebta03bp1aA0qP/e/NbGvmDzZkkzvwpcRJf/mVzf+TAHNdA
 jj7w==
X-Gm-Message-State: AOJu0YxzmQHJcvKLf7HTEBQ0byNKngArY+ognVp+iK/2qywSw7NWw3av
 pOn1t64scGUUmXzAm7c13dXLsIUE/ZEqSf+CbOrfP6y77+/mGsxUGT1Ei3pIf6lMQR4=
X-Gm-Gg: AeBDiev/+GMXAb7xAoKg3DOqOf5DwbeMXSEhDEnhHUZuKqSdPv4O3XGpZHERxPqNyvV
 mq8H+bQkcC+SJyD2/KODcBkDKPx3fAA5nN1RU9le2x7e1FLr9gEm7ezVAXqih13GH6DvkIi4W4q
 VeYhyROz4cRQ2jLgqpiUTB7sbVW4zF/TfQMRcuDKXPF3nunDvjkOW3uOjwvFJA1pJ3dNYwRNpbD
 +w6FJ/H6IMqhToEjp0ejrVomFfS+dgDitQFeW3kJRoAduoGHhJlQXPCsOJfOnsIeOBc5hl6UUwx
 f3NtSs7Pwao2VGCNWoSIQopZXbC5Y1/YUPY9Ar67yBoty8hCENP08U2E6F/0a5P8kTvfZWoDGJF
 osSMEIIpNcuXNDEPyxlrHzFvb+zFnwUzZadsGFj0HcFBkNx7E8dwM71jXvSl1mYOgnQA3TwkMiI
 00jt/j+qYg+CX7/2HyCStJoAkpW1btZtLWRjU=
X-Received: by 2002:a05:690e:1186:b0:654:3fca:3515 with SMTP id
 956f58d0204a3-65bff419a5cmr851173d50.30.1777427028327; 
 Tue, 28 Apr 2026 18:43:48 -0700 (PDT)
Received: from devobuntu.lan ([2600:6c5c:6b00:ba4:d1cd:6e75:6fa2:1ccf])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-65bff52d232sm600268d50.9.2026.04.28.18.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 18:43:47 -0700 (PDT)
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
Cc: Matt Vollrath <tactii@gmail.com>,
 Aleksander Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue, 28 Apr 2026 21:43:25 -0400
Message-ID: <20260429014325.19136-1-tactii@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777427028; x=1778031828; darn=osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=rpU0cyQ60DgnqUIdzfSUqCTUqThzrhySmXUiZxabndk=;
 b=ow5C2CevU6o6uS0XO7ofM7qTZkt1WeBl5A4rvQ0mpXldXrW/XPDrbPVUDnWHSbmg0o
 sdYOyoA2IpjJGv8iPahGco+281m3McpPPIcIKIiCmDFmal6HeIFL/n3T02nBaEeR8ezX
 WS/UAbUq/5RE0XwruqpPyWMbvnznChbj75IGjaboxUOliWF7kGJXO4alBCKqvwPzEzKy
 8TnTeLuO2l0IARvsGQQccMwEuUqFzcZNgvutEcUgk029LjilY5ijkKc1XVskrrXh9F2k
 ZzuNM7qBMSzZILItn1JRFO5J4CuXjUzZnjijBApquQDfdfEREcZuqvjXdbYiiYy/LqbW
 r/+Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=ow5C2Cev
Subject: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Avoid DMA re-mapping
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
X-Rspamd-Queue-Id: DA51B48E0F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,m:tactii@gmail.com,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,molgen.mpg.de];
	NEURAL_HAM(-0.00)[-0.891];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
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
completes RX roughly twice as fast under load.

Informal performance comparisons were based on Asus Gryphon Z97 which
includes an I218-V and with a Xeon E3-1240 v3 in the socket. ktime_get()
measurement was injected into e1000e_poll() wrapping the
adapter->clean_rx() call. The total time spent in clean_rx() was divided
by work_done to print the average time spent per buffer. iperf3 -R was
used to saturate the RX path and awk was used for statistics. Control
revision was set to 7.1-rc1 because iwl-next hadn't been updated yet.

  rev     | iommu | copybreak | samples | mean (ns) |   stdev
  7.1-rc1 |   off |         0 |    4748 |    453.72 |  155.82
  7.1-rc1 |   off |      2048 |    4743 |    554.83 |  103.67
  7.1-rc1 |    on |         0 |    4751 |   1139.22 |  150.56
* 7.1-rc1 |    on |      2048 |    4737 |   1267.02 |  184.62
   +patch |   off |         0 |    4739 |    456.30 |  146.33
   +patch |   off |      2048 |    4739 |    538.56 |  132.97
   +patch |    on |         0 |    4769 |   1165.97 |  140.19
*  +patch |    on |      2048 |    4745 |    562.25 |  171.80

No surprises here, IOMMU DMA ops are known to be expensive. For most
users the kernel default is iommu=on and driver default is
copybreak=256, so unless the workload is small packets, some tuning of
either knob would be needed to see the full benefit of this change.

The kludge of unconditional unmapping has existed since this driver was
introduced in 2007[1], inherited from the e1000 driver which has since
factored it out[2]. IOMMU tech was new at the time.

[1] Commit bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
[2] Commit 2b294b18689c ("e1000: perform copybreak ahead of DMA unmap")

Assisted-by: Claude:claude-4-7-opus
Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
v3:
* refactor unmapping bypass, use goto instead of redundant branch
* remove Aleksandr's sign-off due to logic change
* benchmark details
* cite historic commits
v2:
* proofread description with Aleksandr
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 32 ++++++++++++++--------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 7ce0cc8ab8f4..62bf85c768d6 100644
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
 
@@ -1010,19 +1006,33 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
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
+				goto copybreak_done;
 			}
 			/* else just continue with the old one */
 		}
-		/* end copybreak code */
+
+		buffer_info->skb = NULL;
+		dma_unmap_single(&pdev->dev, buffer_info->dma,
+				 adapter->rx_buffer_len,
+				 DMA_FROM_DEVICE);
+		buffer_info->dma = 0;
+
+copybreak_done:
 		skb_put(skb, length);
 
 		/* Receive Checksum Offload */
-- 
2.43.0

