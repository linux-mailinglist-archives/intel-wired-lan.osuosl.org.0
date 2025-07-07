Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ECAAFAF9F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 11:25:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62422818E6;
	Mon,  7 Jul 2025 09:25:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RzvgttMFPAdC; Mon,  7 Jul 2025 09:25:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E46281A33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751880343;
	bh=uBfXlQ5Rh46iJk1Ot161EwZF/wssDqxpNViVgwXBrGk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rDx2Qs05eQOY5Afn38uUsMiWUubbIKeidciuA0R2pqFqiHpeh4SB0V/ibAF5Z4SC0
	 cu2UeZwAcRErhtjs6A/vlJ24UXP6EQEcmPvOM4Tm/aH3Ymgkl078r1qa5wSLm1oN1u
	 azVsogTjBMUgpPgc/FRuzPFAXYTDPSmpSQUUbu4dmCbhGCrG+3iAs9AToZkvq0tGoU
	 hGroLGfRyULqv0IYbJtipIg+YsxEREkYL63TDt4U8VwdQEE8wTeixG79/FEHqQ+c8O
	 7VSisPdT4rW9Ykao9CIXhn05R9WY7r897HOjW1cFs8V+SBQdIJludVOY8PQGvhf2Dk
	 p420rSoLFJtOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E46281A33;
	Mon,  7 Jul 2025 09:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D76B11BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:25:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C811440028
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5VkXGadihu1D for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 09:25:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=rsalvaterra@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D025740242
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D025740242
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D025740242
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:25:39 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-451e2f0d9c2so18673615e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Jul 2025 02:25:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751880338; x=1752485138;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uBfXlQ5Rh46iJk1Ot161EwZF/wssDqxpNViVgwXBrGk=;
 b=cyT75gZsMcswXikdylO8GXsb9/XKP7kVCv21Bee0tBTDGTQ3ZsGzONC2fCFUXHIIJS
 A7394e/AhYShlIg2g5mnl6m9wFwQZ9aHNfUx70g89krKuwDWLeZf6Bl7tDb+tiTFZVUW
 Is4oF/8O+wzNv8jobJFkMaKBG7xwSGj81HEvZAgAiCA2inEFiTJa5HzykgnLLXvvc/bp
 Lb1QOyzUMWCFY1F0DbqKpKreEsGGF39AMWe+DhzQAj5psCCS00JOPcgqA0bI8Ie0mH66
 V3BBCjizPpV0XWGNJuKMp78SfyGATYbsthuqjE+9UFOnsYlEduc+XSIVrR1QfPqdlIsh
 lh4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCV2OhjMhbsxbCBctaFrvnWu+37Z05Lu0K06NpAVECgOuVAKTDT9lQhuNRnVVs9+Ivp6/0PT9j61vRzilS6Swjo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyrUWXbqa4JMBmdEaWFfRoFT2cXx1J7aM1FXF59A6xeGqPr0DaY
 c058X6S0+Jg9UFgN/MqEEl6Pq5zijgvb3lCe4MRnEVD5DPApYx7+kXc=
X-Gm-Gg: ASbGncuh/RcZ5/UQCn20WBsrK66hcvv26cY1BpXwdhT4eyphxbhaoojaquqZXbJOpG2
 6x3lS0s4hikcJrFIRmGWhSO7h04xAH2afmVZxx45zmZ+TCGIJF6BgppjVuqTfc+VegubdBiBoh+
 l4YkLAtG327Bl/tPOvCRY+XWdnJqNUVutXbqbmL4CJ/g/ScLwg5N5Fr8SPuDdhzvSHj+h5VwaFO
 M7uFnwXZKtGp5QZinEbqUgqB3U0EIRmRgwVf4YcTdL8jC2UFCsb12YYYTkkGWC/VqeQyyU34IK8
 h/CVFsWkS20dBwyZcnd1RAEJ66eEhe0+XelHwas6W8YSsebFuMDztb9f1kFt/DgZ6REZOiUE9qb
 ihZ5F1f/g
X-Google-Smtp-Source: AGHT+IGmJIakfH6RwdWQXAB2RSk4UIYPuqWeGj9ECYYOi5nFOPPfRxhO4I42se2wJJpaehcK/1mujA==
X-Received: by 2002:a05:600c:1da0:b0:453:835a:db with SMTP id
 5b1f17b1804b1-454b1f471fdmr96857885e9.4.1751880337364; 
 Mon, 07 Jul 2025 02:25:37 -0700 (PDT)
Received: from phoenix.rocket.internal
 ([2a12:26c0:2205:8802:9bf5:fd10:aa7f:bd06])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-454b1890626sm108671325e9.40.2025.07.07.02.25.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jul 2025 02:25:36 -0700 (PDT)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: edumazet@google.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rui Salvaterra <rsalvaterra@gmail.com>
Date: Mon,  7 Jul 2025 10:17:10 +0100
Message-ID: <20250707092531.365663-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751880338; x=1752485138; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uBfXlQ5Rh46iJk1Ot161EwZF/wssDqxpNViVgwXBrGk=;
 b=VPsxUtQrE+YbXbKGOM7JIeUr9G/ci/RBSe6CASXORwSGO5gX+HF6cylxtUSMFri7wy
 ccHLp6zkpucyX+42ZQheyhP7CgniWZT249PxhQbuFR11P6AsB6mnpqP8rTPBQJsbxuwX
 Y129nuyCg38Y+Rwxa/1Kcl+MfY78P7dlDxW3T8C/wahby6qeQ8vrVf5kQxxcZHpqrWGY
 srlhmgPaxYROats52vsPKjy17ohfJfx9V8tmeuriwIvsD/t79FWQWy7l2h+1N/P+9i23
 T8VuUuJKi7oQQE5X8jbELXCLuMzSto49pXm8XJAh/YxCIUsZp7hI1FAKJ0D77imsEOSS
 kLxw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=VPsxUtQr
Subject: [Intel-wired-lan] [PATCH iwl-next] igc: demote register and ring
 dumps to debug
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

This is debug information, upon which the user is not expected to act. Output as
such. This avoids polluting the dmesg with full register dumps at every link
down.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---

This file hasn't been touched in over four years, it's probably from a time when
the driver was under heavy development (started in 2018). Nevertheless, the
status quo is positively annoying. :)

 drivers/net/ethernet/intel/igc/igc_dump.c | 54 +++++++++++------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_dump.c b/drivers/net/ethernet/intel/igc/igc_dump.c
index c09c95cc5f70..e84d09ca8e67 100644
--- a/drivers/net/ethernet/intel/igc/igc_dump.c
+++ b/drivers/net/ethernet/intel/igc/igc_dump.c
@@ -98,13 +98,13 @@ static void igc_regdump(struct igc_hw *hw, struct igc_reg_info *reginfo)
 			regs[n] = rd32(IGC_TXDCTL(n));
 		break;
 	default:
-		netdev_info(dev, "%-15s %08x\n", reginfo->name,
+		netdev_dbg(dev, "%-15s %08x\n", reginfo->name,
 			    rd32(reginfo->ofs));
 		return;
 	}
 
 	snprintf(rname, 16, "%s%s", reginfo->name, "[0-3]");
-	netdev_info(dev, "%-15s %08x %08x %08x %08x\n", rname, regs[0], regs[1],
+	netdev_dbg(dev, "%-15s %08x %08x %08x %08x\n", rname, regs[0], regs[1],
 		    regs[2], regs[3]);
 }
 
@@ -123,22 +123,22 @@ void igc_rings_dump(struct igc_adapter *adapter)
 	if (!netif_msg_hw(adapter))
 		return;
 
-	netdev_info(netdev, "Device info: state %016lX trans_start %016lX\n",
+	netdev_dbg(netdev, "Device info: state %016lX trans_start %016lX\n",
 		    netdev->state, dev_trans_start(netdev));
 
 	/* Print TX Ring Summary */
 	if (!netif_running(netdev))
 		goto exit;
 
-	netdev_info(netdev, "TX Rings Summary\n");
-	netdev_info(netdev, "Queue [NTU] [NTC] [bi(ntc)->dma  ] leng ntw timestamp\n");
+	netdev_dbg(netdev, "TX Rings Summary\n");
+	netdev_dbg(netdev, "Queue [NTU] [NTC] [bi(ntc)->dma  ] leng ntw timestamp\n");
 	for (n = 0; n < adapter->num_tx_queues; n++) {
 		struct igc_tx_buffer *buffer_info;
 
 		tx_ring = adapter->tx_ring[n];
 		buffer_info = &tx_ring->tx_buffer_info[tx_ring->next_to_clean];
 
-		netdev_info(netdev, "%5d %5X %5X %016llX %04X %p %016llX\n",
+		netdev_dbg(netdev, "%5d %5X %5X %016llX %04X %p %016llX\n",
 			    n, tx_ring->next_to_use, tx_ring->next_to_clean,
 			    (u64)dma_unmap_addr(buffer_info, dma),
 			    dma_unmap_len(buffer_info, len),
@@ -150,7 +150,7 @@ void igc_rings_dump(struct igc_adapter *adapter)
 	if (!netif_msg_tx_done(adapter))
 		goto rx_ring_summary;
 
-	netdev_info(netdev, "TX Rings Dump\n");
+	netdev_dbg(netdev, "TX Rings Dump\n");
 
 	/* Transmit Descriptor Formats
 	 *
@@ -165,11 +165,11 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 	for (n = 0; n < adapter->num_tx_queues; n++) {
 		tx_ring = adapter->tx_ring[n];
-		netdev_info(netdev, "------------------------------------\n");
-		netdev_info(netdev, "TX QUEUE INDEX = %d\n",
+		netdev_dbg(netdev, "------------------------------------\n");
+		netdev_dbg(netdev, "TX QUEUE INDEX = %d\n",
 			    tx_ring->queue_index);
-		netdev_info(netdev, "------------------------------------\n");
-		netdev_info(netdev, "T [desc]     [address 63:0  ] [PlPOCIStDDM Ln] [bi->dma       ] leng  ntw timestamp        bi->skb\n");
+		netdev_dbg(netdev, "------------------------------------\n");
+		netdev_dbg(netdev, "T [desc]     [address 63:0  ] [PlPOCIStDDM Ln] [bi->dma       ] leng  ntw timestamp        bi->skb\n");
 
 		for (i = 0; tx_ring->desc && (i < tx_ring->count); i++) {
 			const char *next_desc;
@@ -188,7 +188,7 @@ void igc_rings_dump(struct igc_adapter *adapter)
 			else
 				next_desc = "";
 
-			netdev_info(netdev, "T [0x%03X]    %016llX %016llX %016llX %04X  %p %016llX %p%s\n",
+			netdev_dbg(netdev, "T [0x%03X]    %016llX %016llX %016llX %04X  %p %016llX %p%s\n",
 				    i, le64_to_cpu(u0->a),
 				    le64_to_cpu(u0->b),
 				    (u64)dma_unmap_addr(buffer_info, dma),
@@ -198,7 +198,7 @@ void igc_rings_dump(struct igc_adapter *adapter)
 				    buffer_info->skb, next_desc);
 
 			if (netif_msg_pktdata(adapter) && buffer_info->skb)
-				print_hex_dump(KERN_INFO, "",
+				print_hex_dump(KERN_DEBUG, "",
 					       DUMP_PREFIX_ADDRESS,
 					       16, 1, buffer_info->skb->data,
 					       dma_unmap_len(buffer_info, len),
@@ -208,11 +208,11 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 	/* Print RX Rings Summary */
 rx_ring_summary:
-	netdev_info(netdev, "RX Rings Summary\n");
-	netdev_info(netdev, "Queue [NTU] [NTC]\n");
+	netdev_dbg(netdev, "RX Rings Summary\n");
+	netdev_dbg(netdev, "Queue [NTU] [NTC]\n");
 	for (n = 0; n < adapter->num_rx_queues; n++) {
 		rx_ring = adapter->rx_ring[n];
-		netdev_info(netdev, "%5d %5X %5X\n", n, rx_ring->next_to_use,
+		netdev_dbg(netdev, "%5d %5X %5X\n", n, rx_ring->next_to_use,
 			    rx_ring->next_to_clean);
 	}
 
@@ -220,7 +220,7 @@ void igc_rings_dump(struct igc_adapter *adapter)
 	if (!netif_msg_rx_status(adapter))
 		goto exit;
 
-	netdev_info(netdev, "RX Rings Dump\n");
+	netdev_dbg(netdev, "RX Rings Dump\n");
 
 	/* Advanced Receive Descriptor (Read) Format
 	 *    63                                           1        0
@@ -245,12 +245,12 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 	for (n = 0; n < adapter->num_rx_queues; n++) {
 		rx_ring = adapter->rx_ring[n];
-		netdev_info(netdev, "------------------------------------\n");
-		netdev_info(netdev, "RX QUEUE INDEX = %d\n",
+		netdev_dbg(netdev, "------------------------------------\n");
+		netdev_dbg(netdev, "RX QUEUE INDEX = %d\n",
 			    rx_ring->queue_index);
-		netdev_info(netdev, "------------------------------------\n");
-		netdev_info(netdev, "R  [desc]      [ PktBuf     A0] [  HeadBuf   DD] [bi->dma       ] [bi->skb] <-- Adv Rx Read format\n");
-		netdev_info(netdev, "RWB[desc]      [PcsmIpSHl PtRs] [vl er S cks ln] ---------------- [bi->skb] <-- Adv Rx Write-Back format\n");
+		netdev_dbg(netdev, "------------------------------------\n");
+		netdev_dbg(netdev, "R  [desc]      [ PktBuf     A0] [  HeadBuf   DD] [bi->dma       ] [bi->skb] <-- Adv Rx Read format\n");
+		netdev_dbg(netdev, "RWB[desc]      [PcsmIpSHl PtRs] [vl er S cks ln] ---------------- [bi->skb] <-- Adv Rx Write-Back format\n");
 
 		for (i = 0; i < rx_ring->count; i++) {
 			const char *next_desc;
@@ -270,13 +270,13 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 			if (staterr & IGC_RXD_STAT_DD) {
 				/* Descriptor Done */
-				netdev_info(netdev, "%s[0x%03X]     %016llX %016llX ---------------- %s\n",
+				netdev_dbg(netdev, "%s[0x%03X]     %016llX %016llX ---------------- %s\n",
 					    "RWB", i,
 					    le64_to_cpu(u0->a),
 					    le64_to_cpu(u0->b),
 					    next_desc);
 			} else {
-				netdev_info(netdev, "%s[0x%03X]     %016llX %016llX %016llX %s\n",
+				netdev_dbg(netdev, "%s[0x%03X]     %016llX %016llX %016llX %s\n",
 					    "R  ", i,
 					    le64_to_cpu(u0->a),
 					    le64_to_cpu(u0->b),
@@ -285,7 +285,7 @@ void igc_rings_dump(struct igc_adapter *adapter)
 
 				if (netif_msg_pktdata(adapter) &&
 				    buffer_info->dma && buffer_info->page) {
-					print_hex_dump(KERN_INFO, "",
+					print_hex_dump(KERN_DEBUG, "",
 						       DUMP_PREFIX_ADDRESS,
 						       16, 1,
 						       page_address
@@ -309,8 +309,8 @@ void igc_regs_dump(struct igc_adapter *adapter)
 	struct igc_reg_info *reginfo;
 
 	/* Print Registers */
-	netdev_info(adapter->netdev, "Register Dump\n");
-	netdev_info(adapter->netdev, "Register Name   Value\n");
+	netdev_dbg(adapter->netdev, "Register Dump\n");
+	netdev_dbg(adapter->netdev, "Register Name   Value\n");
 	for (reginfo = (struct igc_reg_info *)igc_reg_info_tbl;
 	     reginfo->name; reginfo++) {
 		igc_regdump(hw, reginfo);
-- 
2.49.0

