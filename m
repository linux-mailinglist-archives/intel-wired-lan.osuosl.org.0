Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 638CCB21FF8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 09:55:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10D6C61422;
	Tue, 12 Aug 2025 07:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6F8SLoI7Qrn; Tue, 12 Aug 2025 07:55:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A924461424
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754985325;
	bh=nua+Saoq3cgdpcV2SyDKodrQAeZWBLQm1joHhSepEdg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W9KRqBE7txoUZ56sluL6UBzS5sFciBdqQO5K9S2Dc3Ft2UvDpItDuTPe+ExHtuH6l
	 CKxStn3pxCMneLw3vQQQDV0GpDmxzbpIhYn2i+QNDL6NNQToP9yWgVgguo/nWXm6EU
	 vstKBQmjQD29GnBzRU9r1pYK27nv7eyckSXmXjE1NcKnL3Xkr0Tj23omhqh3HaQKTc
	 FWzj8oJtRLWF7D8SaoMvF/S5kxPxmHpxvBDnaBtzZy8KpCJCy4AHKZWAykQMJZEH1Q
	 IRAwOCoCUeO86xfN0SOSWdSokB0XIA5JY2vYXt8WrjDAMqePONrwS7JUDFLM2EE65c
	 X3TpdBd+xpHHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A924461424;
	Tue, 12 Aug 2025 07:55:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E27DDB8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C906061417
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rRM5z_kCfy0Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 07:55:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E115C61422
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E115C61422
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E115C61422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:22 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-2406fe901c4so32132035ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 00:55:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754985322; x=1755590122;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nua+Saoq3cgdpcV2SyDKodrQAeZWBLQm1joHhSepEdg=;
 b=qZ3CFcziyMhAMPNqO4w7G1nf2usOucu0Dronr+91+wEWww9ePug3TVKvxOSTS7nHgN
 Ib2SLguTuRtBupT9xDM0bf12NFz2DPVn2c2+5DXvoJxLZZlSA06BC69KTaL6MvatSAds
 sgEwvAaSUsim8agDAFzBd/fQWT8v1kFCnC0h7SAmYcXBnWPuyDnp+J6TaHbUt/XA3pun
 ZUHTB/BC9eAjY6UsDdG5aLpviXU7EqR6nl6XIjrAxti1dDSHl2/SmgyTa+UoWA9OGgwN
 JVqj16cBbVYYfrnK0Ppw82IhjHauGfrMagl7eey9Us1bVbTHVRgrTaHI+HEOcpDyDJYV
 nkPA==
X-Gm-Message-State: AOJu0YwkIltXt59t/foiV+9Z2oMXqfFmvzArWksSl+mvMic3r2lOePDv
 BRIv8UaPWirh6CeuaQQL19ZgbMDAF2/izKi1hK6o5QJMweDQ70NQBux2v0JxwRtqdUs=
X-Gm-Gg: ASbGnctIscBETNmtg46YrP2PCtxTGqZBWSbmnfc3sZEUGUBfQG2g0tYDd7jpkLjdAWs
 jG7n0N75dj5hNqj14XXTQaPf7ke7XKiS8DFrPPzBybWV/B9VaDB8mivyXLyikMWCFX3a52o/hTq
 0NnKcsXlr9tjbzo3Mr4gEXKiF2XpQb95HSglpgWWo72O/ovSPbPqGLSxvEDZb5Z6zznIDKITYQ5
 Opqvp1hpCmE0EKTY+posItbrF/ZoPf4kDldySInbhG7xyxX+tRoqfp+kGC5ncZYK5ojkygFULQu
 +Doa0prQZxgRb9cjjYKZ6JpZyhC55j14UKCpUFuNL5CLEolxHyXYgl0cN9NsQpHdkH1o02uUOaT
 am9jF0A/yr5N4POG39yBGrOuwa6Vr7oYftT+3E24WWIsZEUdmJh5a5OEWhgdZffIDdLfe3xBFOt
 ikE23p
X-Google-Smtp-Source: AGHT+IF56R6elMTGuSLc1ld1mjtxGYvTuPLn+GhWA2a1eQT6shTy4jObTSd5VfzNjYgDUxkBjIuwYg==
X-Received: by 2002:a17:903:2307:b0:240:a559:be6a with SMTP id
 d9443c01a7336-242fc33d8b2mr36827355ad.34.1754985322047; 
 Tue, 12 Aug 2025 00:55:22 -0700 (PDT)
Received: from KERNELXING-MB0.tencent.com ([43.132.141.21])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b422bac12d4sm24651320a12.32.2025.08.12.00.55.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Aug 2025 00:55:21 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, sdf@fomichev.me,
 larysa.zaremba@intel.com, maciej.fijalkowski@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Tue, 12 Aug 2025 15:55:04 +0800
Message-Id: <20250812075504.60498-4-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250812075504.60498-1-kerneljasonxing@gmail.com>
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754985322; x=1755590122; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nua+Saoq3cgdpcV2SyDKodrQAeZWBLQm1joHhSepEdg=;
 b=DKaVaofoAjJk/wA7HuCx/HqQImpWMrlt3w0g2ynexW7RvLGHbrQDL9uNSVeCQX2xEr
 kuZKSswjXtEZ2kqpk7PNwl6eJrJw7y8+NP88MNNuvZvjK+Es5CTLJGmw6uv7ZKkxvXrz
 0LhdkL0YHVpLVKsQ4NMcTaZtgPGlS21CL5fwe9CR+sPr3knIwIh+yBnQfqGQeSWGkhds
 CEJ+VQsS5k1XHqKAXhiB+uxKrq812wJ3p4PGqfHQR6Gvw+4GBUdQa076IN3M67HAXMZ9
 WxTiZhrXejpGhJEoe2QWOv1yUI9oQ0l8H+F+9IcmagYyiAV4xvaGLABk3/644zAhHt5F
 QR/g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=DKaVaofo
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ixgbe: xsk: support
 batched xsk Tx interfaces to increase performance
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

From: Jason Xing <kernelxing@tencent.com>

Like what i40e driver initially did in commit 3106c580fb7cf
("i40e: Use batched xsk Tx interfaces to increase performance"), use
the batched xsk feature to transmit packets.

Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
In this version, I still choose use the current implementation. Last
time at the first glance, I agreed 'i' is useless but it is not.
https://lore.kernel.org/intel-wired-lan/CAL+tcoADu-ZZewsZzGDaL7NugxFTWO_Q+7WsLHs3Mx-XHjJnyg@mail.gmail.com/
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 106 +++++++++++++------
 1 file changed, 72 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index f3d3f5c1cdc7..9fe2c4bf8bc5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -2,12 +2,15 @@
 /* Copyright(c) 2018 Intel Corporation. */
 
 #include <linux/bpf_trace.h>
+#include <linux/unroll.h>
 #include <net/xdp_sock_drv.h>
 #include <net/xdp.h>
 
 #include "ixgbe.h"
 #include "ixgbe_txrx_common.h"
 
+#define PKTS_PER_BATCH 4
+
 struct xsk_buff_pool *ixgbe_xsk_pool(struct ixgbe_adapter *adapter,
 				     struct ixgbe_ring *ring)
 {
@@ -388,58 +391,93 @@ void ixgbe_xsk_clean_rx_ring(struct ixgbe_ring *rx_ring)
 	}
 }
 
-static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
+static void ixgbe_set_rs_bit(struct ixgbe_ring *xdp_ring)
+{
+	u16 ntu = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : xdp_ring->count - 1;
+	union ixgbe_adv_tx_desc *tx_desc;
+
+	tx_desc = IXGBE_TX_DESC(xdp_ring, ntu);
+	tx_desc->read.cmd_type_len |= cpu_to_le32(IXGBE_TXD_CMD_RS);
+}
+
+static void ixgbe_xmit_pkt(struct ixgbe_ring *xdp_ring, struct xdp_desc *desc,
+			   int i)
+
 {
 	struct xsk_buff_pool *pool = xdp_ring->xsk_pool;
 	union ixgbe_adv_tx_desc *tx_desc = NULL;
 	struct ixgbe_tx_buffer *tx_bi;
-	struct xdp_desc desc;
 	dma_addr_t dma;
 	u32 cmd_type;
 
-	if (!budget)
-		return true;
+	dma = xsk_buff_raw_get_dma(pool, desc[i].addr);
+	xsk_buff_raw_dma_sync_for_device(pool, dma, desc[i].len);
 
-	while (likely(budget)) {
-		if (!netif_carrier_ok(xdp_ring->netdev))
-			break;
+	tx_bi = &xdp_ring->tx_buffer_info[xdp_ring->next_to_use];
+	tx_bi->bytecount = desc[i].len;
+	tx_bi->xdpf = NULL;
+	tx_bi->gso_segs = 1;
 
-		if (!xsk_tx_peek_desc(pool, &desc))
-			break;
+	tx_desc = IXGBE_TX_DESC(xdp_ring, xdp_ring->next_to_use);
+	tx_desc->read.buffer_addr = cpu_to_le64(dma);
 
-		dma = xsk_buff_raw_get_dma(pool, desc.addr);
-		xsk_buff_raw_dma_sync_for_device(pool, dma, desc.len);
+	cmd_type = IXGBE_ADVTXD_DTYP_DATA |
+		   IXGBE_ADVTXD_DCMD_DEXT |
+		   IXGBE_ADVTXD_DCMD_IFCS;
+	cmd_type |= desc[i].len | IXGBE_TXD_CMD_EOP;
+	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+	tx_desc->read.olinfo_status =
+		cpu_to_le32(desc[i].len << IXGBE_ADVTXD_PAYLEN_SHIFT);
 
-		tx_bi = &xdp_ring->tx_buffer_info[xdp_ring->next_to_use];
-		tx_bi->bytecount = desc.len;
-		tx_bi->xdpf = NULL;
-		tx_bi->gso_segs = 1;
+	xdp_ring->next_to_use++;
+}
 
-		tx_desc = IXGBE_TX_DESC(xdp_ring, xdp_ring->next_to_use);
-		tx_desc->read.buffer_addr = cpu_to_le64(dma);
+static void ixgbe_xmit_pkt_batch(struct ixgbe_ring *xdp_ring, struct xdp_desc *desc)
+{
+	u32 i;
 
-		/* put descriptor type bits */
-		cmd_type = IXGBE_ADVTXD_DTYP_DATA |
-			   IXGBE_ADVTXD_DCMD_DEXT |
-			   IXGBE_ADVTXD_DCMD_IFCS;
-		cmd_type |= desc.len | IXGBE_TXD_CMD;
-		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
-		tx_desc->read.olinfo_status =
-			cpu_to_le32(desc.len << IXGBE_ADVTXD_PAYLEN_SHIFT);
+	unrolled_count(PKTS_PER_BATCH)
+	for (i = 0; i < PKTS_PER_BATCH; i++)
+		ixgbe_xmit_pkt(xdp_ring, desc, i);
+}
 
-		xdp_ring->next_to_use++;
-		if (xdp_ring->next_to_use == xdp_ring->count)
-			xdp_ring->next_to_use = 0;
+static void ixgbe_fill_tx_hw_ring(struct ixgbe_ring *xdp_ring,
+				  struct xdp_desc *descs, u32 nb_pkts)
+{
+	u32 batched, leftover, i;
+
+	batched = nb_pkts & ~(PKTS_PER_BATCH - 1);
+	leftover = nb_pkts & (PKTS_PER_BATCH - 1);
+	for (i = 0; i < batched; i += PKTS_PER_BATCH)
+		ixgbe_xmit_pkt_batch(xdp_ring, &descs[i]);
+	for (i = batched; i < batched + leftover; i++)
+		ixgbe_xmit_pkt(xdp_ring, &descs[i], 0);
+}
 
-		budget--;
-	}
+static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
+{
+	struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
+	u32 nb_pkts, nb_processed = 0;
 
-	if (tx_desc) {
-		ixgbe_xdp_ring_update_tail(xdp_ring);
-		xsk_tx_release(pool);
+	if (!netif_carrier_ok(xdp_ring->netdev))
+		return true;
+
+	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
+	if (!nb_pkts)
+		return true;
+
+	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
+		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
+		ixgbe_fill_tx_hw_ring(xdp_ring, descs, nb_processed);
+		xdp_ring->next_to_use = 0;
 	}
 
-	return !!budget;
+	ixgbe_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - nb_processed);
+
+	ixgbe_set_rs_bit(xdp_ring);
+	ixgbe_xdp_ring_update_tail(xdp_ring);
+
+	return nb_pkts < budget;
 }
 
 static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
-- 
2.41.3

