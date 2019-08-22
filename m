Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DEE99E98
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 20:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4BBA86D63;
	Thu, 22 Aug 2019 18:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bEIbAX4+SVv5; Thu, 22 Aug 2019 18:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61B6885EB4;
	Thu, 22 Aug 2019 18:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5706A1BF409
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 12:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 820F01FEE0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 12:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IIPASoe6kOQ2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 12:30:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 9343820656
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 12:30:49 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190822123047euoutp01299d1c76b1858380771fdfe146863cab~9PpMljvwl0924209242euoutp01I
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 12:30:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190822123047euoutp01299d1c76b1858380771fdfe146863cab~9PpMljvwl0924209242euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566477047;
 bh=B0voGnsGugj6lPo4ztZNM7cbn9aEYwr39bAog1743as=;
 h=From:To:Cc:Subject:Date:References:From;
 b=irQiKPR+YQq69dLIAoB5uZihYj9M6LnBJQRWUbEyxEOoWeVij4PcFW+EIRFRdC6FD
 1jKsQ6IlEild8zYjE0CSIkCtyC0LzAc/dwpIR0xjioN2RIMHVo/PYbBlWqz+sThZAn
 bpywzlAZcpLJU8Wrh9y+K90p2FOvo2FqhbI0xbY4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190822123045eucas1p103b07cdc3efc4299a6290c4fb3f95d90~9PpLeaePF0334303343eucas1p1_;
 Thu, 22 Aug 2019 12:30:45 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 52.C7.04374.5FA8E5D5; Thu, 22
 Aug 2019 13:30:45 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91~9PpKpsAZu0335203352eucas1p16;
 Thu, 22 Aug 2019 12:30:45 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190822123044eusmtrp15fb6899f9e51c38d037780abe907e8ad~9PpKZfP5o2986529865eusmtrp1u;
 Thu, 22 Aug 2019 12:30:44 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-1d-5d5e8af5061d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 65.6D.04117.4FA8E5D5; Thu, 22
 Aug 2019 13:30:44 +0100 (BST)
Received: from localhost.localdomain (unknown [106.109.129.180]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190822123043eusmtip2737bf7304b6caada8c14337263e13a18~9PpJfNzxO0404604046eusmtip2P;
 Thu, 22 Aug 2019 12:30:43 +0000 (GMT)
From: Ilya Maximets <i.maximets@samsung.com>
To: netdev@vger.kernel.org
Date: Thu, 22 Aug 2019 15:30:37 +0300
Message-Id: <20190822123037.28068-1-i.maximets@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSXTBUcRjG+ztnzzl2rI5F/iORTc3ogz7M+M/USDOlo4tGlzQrizNLWNpF
 Pi4yY0mrTKhMYpAL2qW0Nqyk7Ji1Mal85SOzqWY2GZpia+Qr9jDd/Z73fZ55n4uXwoQNPHcq
 XpbKymWSRBHBx1uMi/2HrKpI8WFLkzdaq5zA0cLiBImW85sAmu/uIVBtzW8MVbxV4ujj0CKB
 hq4vkmhtfImHjN+UBDI1mwEabK8gUL3BRCJj9Q70YcAheDujezRmx+jLJ0mmtmPajlGNDmCM
 Vn2DYF7npjFlhVMY86NzmGCKdGrAzGs9w/gR/BOxbGJ8Oiv3D4rix/1VdoMUi1tGXb1vDuh1
 VgF7CtIBcLBqBagAnxLS9QA+1o+SnFgAsPCXDuPEPIAvLCPEVuSP1bjpqgNw+I6ZxwkrgCN3
 NWDDRdAHYa+m28YutDv82dZqS2B0Bw5LTSW4ClCUM30OdlhDNzw4vReOP++1+QX0cVhbNWrH
 XfOCmqZXthqQbiFhUU7x5uI01HQVAo6d4fceHcmxB+wrvYlzfA2aldOACxcAWGZY3QyfhLqZ
 fnKjBEb7wift/tz4FCw0WmzdIO0IR2edNsbYOpa0lGHcWAAL8oWc2wcuddVhHLvDsbn5zQYM
 1K802BoIaTFsbH5A3Aae5f9vVQOgBm5smiJJyiqOydirfgpJkiJNJvWLSU7SgvUf6lvtsbaB
 zuVoA6ApIHIQmNb/SciTpCsykwwAUpjIRZBRESEWCmIlmVmsPPmSPC2RVRjATgoXuQmyt326
 KKSlklQ2gWVTWPnW1o6yd88B+kr73W9ypgpCDW1Z72Z3xejDRI4zIZPWgvCXjbLhmkCzNpd0
 EnWZR1bYew1nXMPngr9G0Dg/4Kj2yuXzTw0tAlLN87o19ox/IFmJlivaXcVFeWxtQnZIUN4+
 dD/mfSgzvudzoKX0goc+0Tc6IyrSp/5ssY93q3RueU6c8OWhCFfESY7sx+QKyT9PSHhdPwMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpkkeLIzCtJLcpLzFFi42I5/e/4Pd0vXXGxBt0ftSz+z73NYvHl5212
 iz9tGxgtPh85zmaxeOE3Zos551tYLO5c+clmcaX9J7vF/1u/WS2OvWhhszix+T6jxeVdc9gs
 Vhw6wW5xbIGYxfVLPA78HltW3mTy2DnrLrvH4j0vmTy6blxi9ti0qpPN42Rzqcf07ofMHu/3
 XWXz6NuyitHj8ya5AK4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU
 1JzMstQifbsEvYxfLUcYC56LVyxfodnAeEq4i5GTQ0LAROL712PsILaQwFJGiQMTHSHiUhI/
 fl1ghbCFJf5c62LrYuQCqvnMKLFvQTcbSIJNQEfi1OojjCC2CFDDxx3b2UGKmAVOsEjMnHiS
 qYuRg0NYwEtiz1dPkBoWAVWJW7tPgdXzClhLLJ5/gwligbzE6g0HmCcw8ixgZFjFKJJaWpyb
 nltspFecmFtcmpeul5yfu4kRGPzbjv3csoOx613wIUYBDkYlHt4JurGxQqyJZcWVuYcYJTiY
 lUR4K+ZExQrxpiRWVqUW5ccXleakFh9iNAVaPpFZSjQ5HxiZeSXxhqaG5haWhubG5sZmFkri
 vB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGNe9ydlj4zm1+KH13szoJaU+T+cdX/1k0ov9Hk4O
 CgunPNj9VeXH9ezite8fSbZlH1jj+MivWUZSj3/F4RV8/7m8/m35tfMY4/zoTlbfAJfG8+eO
 /GYqtvJtkVv/QDV9rsohoaMtl+VeVMrK/lQ758hgHZFdd01x0dWJTpMMFhtlzmhkSBe7f0SJ
 pTgj0VCLuag4EQCslIuKlAIAAA==
X-CMS-MailID: 20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91
X-Msg-Generator: CA
X-RootMTR: 20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91
References: <CGME20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91@eucas1p1.samsung.com>
X-Mailman-Approved-At: Thu, 22 Aug 2019 18:21:30 +0000
Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, William Tu <u9012063@gmail.com>,
 linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Ilya Maximets <i.maximets@samsung.com>,
 bpf@vger.kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tx code doesn't clear the descriptors' status after cleaning.
So, if the budget is larger than number of used elems in a ring, some
descriptors will be accounted twice and xsk_umem_complete_tx will move
prod_tail far beyond the prod_head breaking the comletion queue ring.

Fix that by limiting the number of descriptors to clean by the number
of used descriptors in the tx ring.

'ixgbe_clean_xdp_tx_irq()' function refactored to look more like
'ixgbe_xsk_clean_tx_ring()' since we don't need most of the
complications implemented in the regular 'ixgbe_clean_tx_irq()'
and we're allowed to directly use 'next_to_clean' and 'next_to_use'
indexes.

Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
---

Version 2:
  * 'ixgbe_clean_xdp_tx_irq()' refactored to look more like
    'ixgbe_xsk_clean_tx_ring()'.

 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 34 ++++++++------------
 1 file changed, 13 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 6b609553329f..d1297660e14a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -633,22 +633,23 @@ static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
 bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 			    struct ixgbe_ring *tx_ring, int napi_budget)
 {
+	u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
 	unsigned int total_packets = 0, total_bytes = 0;
-	u32 i = tx_ring->next_to_clean, xsk_frames = 0;
 	unsigned int budget = q_vector->tx.work_limit;
 	struct xdp_umem *umem = tx_ring->xsk_umem;
-	union ixgbe_adv_tx_desc *tx_desc;
-	struct ixgbe_tx_buffer *tx_bi;
+	u32 xsk_frames = 0;
 	bool xmit_done;
 
-	tx_bi = &tx_ring->tx_buffer_info[i];
-	tx_desc = IXGBE_TX_DESC(tx_ring, i);
-	i -= tx_ring->count;
+	while (likely(ntc != ntu && budget)) {
+		union ixgbe_adv_tx_desc *tx_desc;
+		struct ixgbe_tx_buffer *tx_bi;
+
+		tx_desc = IXGBE_TX_DESC(tx_ring, ntc);
 
-	do {
 		if (!(tx_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
 			break;
 
+		tx_bi = &tx_ring->tx_buffer_info[ntc];
 		total_bytes += tx_bi->bytecount;
 		total_packets += tx_bi->gso_segs;
 
@@ -659,24 +660,15 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 
 		tx_bi->xdpf = NULL;
 
-		tx_bi++;
-		tx_desc++;
-		i++;
-		if (unlikely(!i)) {
-			i -= tx_ring->count;
-			tx_bi = tx_ring->tx_buffer_info;
-			tx_desc = IXGBE_TX_DESC(tx_ring, 0);
-		}
-
-		/* issue prefetch for next Tx descriptor */
-		prefetch(tx_desc);
+		ntc++;
+		if (unlikely(ntc == tx_ring->count))
+			ntc = 0;
 
 		/* update budget accounting */
 		budget--;
-	} while (likely(budget));
+	}
 
-	i += tx_ring->count;
-	tx_ring->next_to_clean = i;
+	tx_ring->next_to_clean = ntc;
 
 	u64_stats_update_begin(&tx_ring->syncp);
 	tx_ring->stats.bytes += total_bytes;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
