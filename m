Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E48CB21FF7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 09:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FD9E42018;
	Tue, 12 Aug 2025 07:55:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xDkvllQd3kUc; Tue, 12 Aug 2025 07:55:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFEEF41EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754985321;
	bh=nleqg4wIqtXmBZB8Yo+HYH0XMGVxYzqd4mlNWFMzMgY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5NskbAT9G4CPXuMTggdMZr6r+onqbZbJ28Yehh4x7DQM3BUAsWaRXwJS6QsGg96Qp
	 o4ZA8gqkhWVLWjwokaVuoc661vYTvMPnZ2nnCwmklp0t9cgYnBQpG/FwS2v4cuWshY
	 IT/5wdYzUXjOU0A5fPd1lZNYa1eRMJM+OBgJeRFm22Xy5i8Mpyk17mKKA1dqaF6e7F
	 dPhbJasXIEz3ZhK7G3zMxYXSMwYgMmjMmQLPk+1fa4NKDuQDnTLWHsQv5geOIDW2Gk
	 bskdZHnoMMZI3SFTFm5Sgw4fUzlRvQs2jKuL6OVZPzVOrSxcPrQQWZFT7hOsqVmztN
	 phbMcnT5HEuNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFEEF41EDF;
	Tue, 12 Aug 2025 07:55:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EAEB158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 256A641E51
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RWPJoK-oHh4Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 07:55:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::430; helo=mail-pf1-x430.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2FDC341F32
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FDC341F32
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FDC341F32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:19 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-76b36e6b9ddso4380624b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 00:55:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754985318; x=1755590118;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nleqg4wIqtXmBZB8Yo+HYH0XMGVxYzqd4mlNWFMzMgY=;
 b=StNQd1RgD5zHOHP/CaOlrjUZKbeBI5zXJhcmdafzBbgMxWxPvKMZkTsE5PhXZDY2rw
 05j4N8XtGRFCj0Dwb0Dmg4xvY6SHIWJCRJwhtApAZHGxVbZe8bpzUE95l/qsBTOPkcdI
 O5nZLUjsmQFYTOhL+yl+sTgIO8t6xwKQ9XRo72MMCeb1J9aKMPKc8A1qy7qETUYX3pfp
 KycLWlc3hEE3hnf58FTljjg3crYh9QdvB3Hs9feVpzpuoRvU6C30SYKPspd/EuHHe/la
 WwmWdYmcrlQbEEISJRCuzr3qTSXPxl13WMJR+nKdgPtlEG/zoqJeZrtt9ZxBw3EGQcvi
 wUFg==
X-Gm-Message-State: AOJu0Ywr9TkdRp9jKkFjaMzShtdvPXUA3Px37AbnwnNQgs2ouqa38Hd5
 GHa2k1JTplS0wfswr/2lpn44Qcreom1Qt7ZB18FzaHyop1NwAgR7Zjkn0HJNZcL5quU=
X-Gm-Gg: ASbGncuuS4LDz01QmiWAmLvyNyMl0il6lEkyUXnNIc1MJR1GVm1MK8yvkt+JJHVS223
 CeEaqKhL0uFMQPrxXrEn7GRN2E1RHkeQZQBxUDGWHEnacj2T84u4nvBXxihufbUKHeMoP2tJuFY
 ptZhj1KL+tA+2sYaO+8F0mUE/MDf7zNbd3ulsmv3P4oZb2GhSC2206Pilf8l5xDza9TJloKYRFK
 GfuL/38lYuZgSe+TmZe5CLhLIXmXvD2+oar2bTg2vt1lZxe0zMdzDeqzrSHRiCHs6eoeyGiOFE3
 baGinDk9LcSCvGBOxIAq/FS9soZ8bX3cnuEE35gbyYYbX3BCvAnH+pVIFv3T50w6tYShAYVfS+i
 MJWVIGrZuLN2A3hUbZ0W3v1r0K9/qqYXi2/97zuYAqOfdfRIltDbAvg6ERSim8DQu+qPHKA==
X-Google-Smtp-Source: AGHT+IG1yyYLPVdu9foVfbMCgoIRld9kjxqBO6uHQeaB5B9/mt7khlx+nrKnTwkjDrs05ntBXzMYeA==
X-Received: by 2002:a05:6a20:7d9d:b0:240:2473:57b7 with SMTP id
 adf61e73a8af0-2409a890d57mr4215339637.8.1754985318376; 
 Tue, 12 Aug 2025 00:55:18 -0700 (PDT)
Received: from KERNELXING-MB0.tencent.com ([43.132.141.21])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b422bac12d4sm24651320a12.32.2025.08.12.00.55.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Aug 2025 00:55:17 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, sdf@fomichev.me,
 larysa.zaremba@intel.com, maciej.fijalkowski@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Tue, 12 Aug 2025 15:55:03 +0800
Message-Id: <20250812075504.60498-3-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250812075504.60498-1-kerneljasonxing@gmail.com>
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754985318; x=1755590118; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nleqg4wIqtXmBZB8Yo+HYH0XMGVxYzqd4mlNWFMzMgY=;
 b=UJY/lFzqMQN7N+P1/kko5Y/bIlliE43bnI1OeCknhq74z7ukBBldKmGAp8HHxk/RK8
 biHR1VizWNNZsH9isXfQHdO3J4IMkTsc4K7o4fDLrpzRDLVni5aJCQzSRxvQSGWE8IQU
 Z8K4Px72A6QD31DYl1ZWJUvToV7967UXFk+PDX+ZWqzhUUtPH35KBn8hPjes+PLe8ZaO
 HbG4kvZwpyCvowTZW0COi8bXYV4JWQR7lnZkrt/ET3VGd6u5I3JSPRDDn1tTPlh8aXUa
 fm+De/hXikh4BuEieW/SsII/t/CfnAATjePS24SSdFDN5Ms3vDbym/LDhUjoZSaS7Ni3
 SGsg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UJY/lFzq
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ixgbe: xsk: use
 ixgbe_desc_unused as the budget in ixgbe_xmit_zc
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

- Adjust ixgbe_desc_unused as the budget value.
- Avoid checking desc_unused over and over again in the loop.

The patch makes ixgbe follow i40e driver that was done in commit
1fd972ebe523 ("i40e: move check of full Tx ring to outside of send loop").
[ Note that the above i40e patch has problem when ixgbe_desc_unused(tx_ring)
returns zero. The zero value as the budget value means we don't have any
possible descs to be sent, so it should return true instead to tell the
napi poll not to launch another poll to handle tx packets. Even though
that patch behaves correctly by returning true in this case, it happens
because of the unexpected underflow of the budget. Taking the current
version of i40e_xmit_zc() as an example, it returns true as expected. ]
Hence, this patch adds a standalone if statement of zero budget in front
of ixgbe_xmit_zc() as explained before.

Use ixgbe_desc_unused to replace the original fixed budget with the number
of available slots in the Tx ring. It can gain some performance.

Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
In this version, I keep it as is (please see the following link)
https://lore.kernel.org/intel-wired-lan/CAL+tcoAUW_J62aw3aGBru+0GmaTjoom1qu8Y=aiSc9EGU09Nww@mail.gmail.com/
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index a463c5ac9c7c..f3d3f5c1cdc7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -393,17 +393,14 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 	struct xsk_buff_pool *pool = xdp_ring->xsk_pool;
 	union ixgbe_adv_tx_desc *tx_desc = NULL;
 	struct ixgbe_tx_buffer *tx_bi;
-	bool work_done = true;
 	struct xdp_desc desc;
 	dma_addr_t dma;
 	u32 cmd_type;
 
-	while (likely(budget)) {
-		if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
-			work_done = false;
-			break;
-		}
+	if (!budget)
+		return true;
 
+	while (likely(budget)) {
 		if (!netif_carrier_ok(xdp_ring->netdev))
 			break;
 
@@ -442,7 +439,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 		xsk_tx_release(pool);
 	}
 
-	return !!budget && work_done;
+	return !!budget;
 }
 
 static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
@@ -505,7 +502,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 	if (xsk_uses_need_wakeup(pool))
 		xsk_set_tx_need_wakeup(pool);
 
-	return ixgbe_xmit_zc(tx_ring, q_vector->tx.work_limit);
+	return ixgbe_xmit_zc(tx_ring, ixgbe_desc_unused(tx_ring));
 }
 
 int ixgbe_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
-- 
2.41.3

