Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7980B0B484
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 11:11:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 917C461070;
	Sun, 20 Jul 2025 09:11:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VswpD9TNJWUO; Sun, 20 Jul 2025 09:11:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E836B61081
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753002716;
	bh=GSUZaotcK6F1L2ahR58XYB1HWdRYHUo7Ql3E/8Mqj5U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=euCcVEmPYnjw6S7hk1TyzpgImcyaA8KCuBLlF29tEwu5Q0zDUwDM2R4baqBG6zVNp
	 76Ahfn/omkCvMsSmNqzQpOqYpKmYqje9H/vjA/4B5qZV4FwdVt3Wf11tDnqQZ5Ve/1
	 SjgDfyyqlSWROlIshTyEE8gR3JWEWi1QwDI30jjp0HQ3E28nHm5eqReVr9Ly4GiwsH
	 bEpz851yYe7WOuLMbEwvvSbBH4cCNrMl3FKjGq2BKYkBJSAvN4M9kJMQZb1kqHnubI
	 fH/dYBtFMnrmZp1rXKOuTFpdZZ8cwwFDE1KSYpwVwlsyZdVmVMFUaCnxzIaeKYU6zn
	 6Y8Aul1nolHPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E836B61081;
	Sun, 20 Jul 2025 09:11:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 31A64117
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F27A4086D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yInREg9d3hVM for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 09:11:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 915B240757
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 915B240757
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 915B240757
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:53 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-748e63d4b05so2051180b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 02:11:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753002713; x=1753607513;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GSUZaotcK6F1L2ahR58XYB1HWdRYHUo7Ql3E/8Mqj5U=;
 b=JdJrdk5JKST8ueEZiKqunBDAVf4QYqHL+cI/WLxZNQI0Dhk6Kn+NnEEYmHYQ76lAL3
 4cANwa3K+kCm087NeIG7V75Nx++UbPLI8Z1dsmjR6pYI/kIE5ziGshqkknPpPkmXpjVE
 ssb60+T7LwDCs8TrNE0TWF96zUU96rnlsprAXwPiotwgSb3PXJATq+i+lxsmrWLugais
 FVi9S3x/VhYw9UkvEhqh6wRQom5mAQd9Ca7VxvWA6RdAJJhR8T6IMg7Oj1wqwkpK6g8V
 IyepVXQyJ/A6v+hPuMPs3gmU9TeoyUTxVFgiIosJyKAmy53NdCf19cWynDkcE8svMAwO
 zOuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV9J6LB2/YNzhMSigKWJ4FAxH2yy2/WqQYoknXd5uhiPmgC9A8DXujmm4XE+/wc+8h0sqY7DjnKVIfkZrnnoc4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyZ1qmeWZ53HAwlvEgdOnSYgFG6rDh7W0jYqVVfggrt54QMTgxI
 16kd6jpcN8AcLmB/myqMawreHsQ5HUq40twanyw4tHBM96TbDD6AU6AS
X-Gm-Gg: ASbGncvES0iP2tDK+5/XsBFlwlaWb5OPwIjxgR7mTS8RsJrNW6RuEv4n0LJXqBw4rp2
 6fwsDt83Vy4USyCnG1/3ePyvHIQbfg9KC2RmItYHnlvsG8btsws8B55Fsp1IX5AxbcyTMsbTvQo
 w/LzDL6Md8cQvSpWigurEMcBeRHLMQKl+xXaET0uslPC+3fPGj2hSQA540fNXNJ14TZ4VDS9YlO
 2nCgxcO4vDAJPAMOPteMPF3Bng3/lwG2BwUYfD4Dh71mkC5OQsfYeYQC5/R/6CYhHgbAOd4RUkq
 SqvWmNm424TBx4wqAsk++owQkPIacNJfCV45mN1dXNTdXR19ok6QZfMFg6dXDzF/cB2S5Ql4iTb
 8UcUkePWkn3TCcvgYK3Bkch18yrIddE7p0XqcbvLl54cfEfQOmvgaaEQCnlO8DSUD7pbm0w==
X-Google-Smtp-Source: AGHT+IEra553OLR9Wt+3ggRMepnkqBz8W2d+vtlnTjf8GjUJtXbtNVC9HcE+mFBzjIfueWvlQKSB9g==
X-Received: by 2002:a05:6a00:10cb:b0:748:ffaf:9b53 with SMTP id
 d2e1a72fcca58-757242790admr20643963b3a.16.1753002712650; 
 Sun, 20 Jul 2025 02:11:52 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759cb76d53fsm3902585b3a.105.2025.07.20.02.11.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Jul 2025 02:11:52 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com
Cc: bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Date: Sun, 20 Jul 2025 17:11:22 +0800
Message-Id: <20250720091123.474-5-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250720091123.474-1-kerneljasonxing@gmail.com>
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753002713; x=1753607513; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GSUZaotcK6F1L2ahR58XYB1HWdRYHUo7Ql3E/8Mqj5U=;
 b=RZBR+MILmTRRBHA8r0SFEH8Cbh5AWst+M0fZt4pQpq/J2vuWZhjbccj2Lw85ezVJGu
 Kazf9D7UP9JH19G/PsbmjDoM31o6xKSGfmkP6jEcLtWOIQuB/4W669OvYr63QA320k1T
 oToPX9yo3/ajjEASKdI0eiF64rdNHzs8QxX/TDfnCyU4Qw5lpSUznaPRHvBungRxn1DF
 kFwJCjO7/F7ppum84PSeuWsPP3G8mm3vJUzEXDJe0NzkyvjdP8MzLdZKW6szjGx1fxTT
 0R9FDxPJvfRvdv7BVuSY+OFnW7S3qorZFI1KkBJvmmKsBCkLM/hC6jtnnDoH4kbyS1/3
 h0bw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=RZBR+MIL
Subject: [Intel-wired-lan] [PATCH net-next 4/5] ixgbe: xsk: support batched
 xsk Tx interfaces to increase performance
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

