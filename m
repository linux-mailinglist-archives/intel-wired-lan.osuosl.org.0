Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 566B29B1465
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2024 05:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F4A860AFA;
	Sat, 26 Oct 2024 03:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id onzO3rf4y8EM; Sat, 26 Oct 2024 03:57:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EA0A6062E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729915072;
	bh=684yfAA8h4pCKc4B08+8zq6te9QuzLAE0cVd8RUJneg=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z+1LA5rld08B/NRwmIK08dmkVDGhnsnhmKnYHCrxRDluV/Et3KUEeRzH6FslGYAFC
	 TGrxstCW1XQaLjkWqCra+56gCJXgPBTfGRWyhpNUcemmSx0yYN/McX2a09eJxbwx3Z
	 W5aUJirJP0nbx4pHSieznZRhZxOxfCFO5ad2YuUyhBWjyJq9Bfcb6mtMii5lX8nj7x
	 0UEt7wy0O7MpE5//GFFl+TgretUaPm7k04oijsH0CMrdCv2qc8N51fqis4hAx2Ij04
	 MVdXIL7bRBrMJbaqi/rP8lU+MDicjWpvMNOsk4XN0rdoDihEgkY2YIIyuAj+aSeN4x
	 MLpLVaWTGwUew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EA0A6062E;
	Sat, 26 Oct 2024 03:57:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 36D1F2318
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 03:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24AAC60AFA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 03:57:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RR-BRmFoVDRZ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Oct 2024 03:57:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 803276062E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 803276062E
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 803276062E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 03:57:47 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Xb5RX3P6kzyTjN;
 Sat, 26 Oct 2024 11:56:08 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id E7FF6140258;
 Sat, 26 Oct 2024 11:57:42 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Sat, 26 Oct
 2024 11:57:41 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <ast@kernel.org>, <daniel@iogearbox.net>,
 <hawk@kernel.org>, <john.fastabend@gmail.com>,
 <maciej.fijalkowski@intel.com>, <vedang.patel@intel.com>,
 <jithu.joseph@intel.com>, <andre.guedes@intel.com>, <horms@kernel.org>,
 <jacob.e.keller@intel.com>, <sven.auhagen@voleatech.de>,
 <alexander.h.duyck@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>,
 <yuehaibing@huawei.com>
Date: Sat, 26 Oct 2024 12:12:46 +0800
Message-ID: <20241026041249.1267664-2-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241026041249.1267664-1-yuehaibing@huawei.com>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH v4 net-next 1/4] igc: Fix passing 0 to
 ERR_PTR in igc_xdp_run_prog()
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

igc_xdp_run_prog() converts customed xdp action to a negative error code
with the sk_buff pointer type which be checked with IS_ERR in
igc_clean_rx_irq(). Remove this error pointer handing instead use plain
int return value to fix this smatch warnings:

drivers/net/ethernet/intel/igc/igc_main.c:2533
 igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'

Fixes: 26575105d6ed ("igc: Add initial XDP support")
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6e70bca15db1..5e44c2546a12 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2123,10 +2123,6 @@ static bool igc_cleanup_headers(struct igc_ring *rx_ring,
 				union igc_adv_rx_desc *rx_desc,
 				struct sk_buff *skb)
 {
-	/* XDP packets use error pointer so abort at this point */
-	if (IS_ERR(skb))
-		return true;
-
 	if (unlikely(igc_test_staterr(rx_desc, IGC_RXDEXT_STATERR_RXE))) {
 		struct net_device *netdev = rx_ring->netdev;
 
@@ -2515,8 +2511,7 @@ static int __igc_xdp_run_prog(struct igc_adapter *adapter,
 	}
 }
 
-static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
-					struct xdp_buff *xdp)
+static int igc_xdp_run_prog(struct igc_adapter *adapter, struct xdp_buff *xdp)
 {
 	struct bpf_prog *prog;
 	int res;
@@ -2530,7 +2525,7 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 	res = __igc_xdp_run_prog(adapter, prog, xdp);
 
 out:
-	return ERR_PTR(-res);
+	return res;
 }
 
 /* This function assumes __netif_tx_lock is held by the caller. */
@@ -2585,6 +2580,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 	struct sk_buff *skb = rx_ring->skb;
 	u16 cleaned_count = igc_desc_unused(rx_ring);
 	int xdp_status = 0, rx_buffer_pgcnt;
+	int xdp_res = 0;
 
 	while (likely(total_packets < budget)) {
 		struct igc_xdp_buff ctx = { .rx_ts = NULL };
@@ -2630,12 +2626,10 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 			xdp_buff_clear_frags_flag(&ctx.xdp);
 			ctx.rx_desc = rx_desc;
 
-			skb = igc_xdp_run_prog(adapter, &ctx.xdp);
+			xdp_res = igc_xdp_run_prog(adapter, &ctx.xdp);
 		}
 
-		if (IS_ERR(skb)) {
-			unsigned int xdp_res = -PTR_ERR(skb);
-
+		if (xdp_res) {
 			switch (xdp_res) {
 			case IGC_XDP_CONSUMED:
 				rx_buffer->pagecnt_bias++;
@@ -2657,7 +2651,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 			skb = igc_construct_skb(rx_ring, rx_buffer, &ctx);
 
 		/* exit if we failed to retrieve a buffer */
-		if (!skb) {
+		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_failed++;
 			rx_buffer->pagecnt_bias++;
 			set_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
@@ -2672,7 +2666,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 			continue;
 
 		/* verify the packet layout is correct */
-		if (igc_cleanup_headers(rx_ring, rx_desc, skb)) {
+		if (xdp_res || igc_cleanup_headers(rx_ring, rx_desc, skb)) {
 			skb = NULL;
 			continue;
 		}
-- 
2.34.1

