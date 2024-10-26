Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3829B1467
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2024 05:57:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5897F40879;
	Sat, 26 Oct 2024 03:57:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pv_WHJrfLsDr; Sat, 26 Oct 2024 03:57:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40DFD408B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729915073;
	bh=jT2Xdofoe/Q05PZkVI4EqnLSEiJiJFt+sG8+MlUJwhU=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9W212xTk7bRLpAk5EFDDNUGoM+v7O1quGhkp9yxxI9740SG0pZo+JrNBHgr1oN4wk
	 nJq1+mBDq6TVCh+aLUfGXl5rrhBuBrwdapfY3j7BnUWhcFzE01Mr4qgIORHPa0b++z
	 Rsj1Rc8YZJIHw59qEFUp20yBd7uMc5Vl7EjIDKcBmS+bxw9ArV+tU4ZlJK8xzMTjQl
	 Z9G4sn9UEkm4rmN75WMB+TEQdBKa6S2U4/tc69bsnnGThhJbfcjKVQTDTBMYIlQrjH
	 1GxRmxtqLbs6B4yFhXVUoTLPH8b+V3gfgjEYp7QOunc3MCVH8iMEuFB9N4SQIbMYjJ
	 ypcxR/+renDEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40DFD408B2;
	Sat, 26 Oct 2024 03:57:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 866042318
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 03:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74A914013D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 03:57:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O_6GGh_lf1S1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Oct 2024 03:57:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 846E640118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 846E640118
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 846E640118
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 03:57:47 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.44])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Xb5SL0lDcz20qWv;
 Sat, 26 Oct 2024 11:56:50 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id C7C1414011D;
 Sat, 26 Oct 2024 11:57:44 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Sat, 26 Oct
 2024 11:57:43 +0800
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
Date: Sat, 26 Oct 2024 12:12:48 +0800
Message-ID: <20241026041249.1267664-4-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241026041249.1267664-1-yuehaibing@huawei.com>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH v4 net-next 3/4] ixgbe: Fix passing 0 to
 ERR_PTR in ixgbe_run_xdp()
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

ixgbe_run_xdp() converts customed xdp action to a negative error code
with the sk_buff pointer type which be checked with IS_ERR in
ixgbe_clean_rx_irq(). Remove this error pointer handing instead use
plain int return value.

Fixes: 924708081629 ("ixgbe: add XDP support for pass and drop actions")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 ++++++++-----------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 8b8404d8c946..78bf97ab0524 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1908,10 +1908,6 @@ bool ixgbe_cleanup_headers(struct ixgbe_ring *rx_ring,
 {
 	struct net_device *netdev = rx_ring->netdev;
 
-	/* XDP packets use error pointer so abort at this point */
-	if (IS_ERR(skb))
-		return true;
-
 	/* Verify netdev is present, and that packet does not have any
 	 * errors that would be unacceptable to the netdev.
 	 */
@@ -2219,9 +2215,9 @@ static struct sk_buff *ixgbe_build_skb(struct ixgbe_ring *rx_ring,
 	return skb;
 }
 
-static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
-				     struct ixgbe_ring *rx_ring,
-				     struct xdp_buff *xdp)
+static int ixgbe_run_xdp(struct ixgbe_adapter *adapter,
+			 struct ixgbe_ring *rx_ring,
+			 struct xdp_buff *xdp)
 {
 	int err, result = IXGBE_XDP_PASS;
 	struct bpf_prog *xdp_prog;
@@ -2271,7 +2267,7 @@ static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
 		break;
 	}
 xdp_out:
-	return ERR_PTR(-result);
+	return result;
 }
 
 static unsigned int ixgbe_rx_frame_truesize(struct ixgbe_ring *rx_ring,
@@ -2329,6 +2325,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 	unsigned int offset = rx_ring->rx_offset;
 	unsigned int xdp_xmit = 0;
 	struct xdp_buff xdp;
+	int xdp_res = 0;
 
 	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
 #if (PAGE_SIZE < 8192)
@@ -2374,12 +2371,10 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 			/* At larger PAGE_SIZE, frame_sz depend on len size */
 			xdp.frame_sz = ixgbe_rx_frame_truesize(rx_ring, size);
 #endif
-			skb = ixgbe_run_xdp(adapter, rx_ring, &xdp);
+			xdp_res = ixgbe_run_xdp(adapter, rx_ring, &xdp);
 		}
 
-		if (IS_ERR(skb)) {
-			unsigned int xdp_res = -PTR_ERR(skb);
-
+		if (xdp_res) {
 			if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
 				xdp_xmit |= xdp_res;
 				ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
@@ -2399,7 +2394,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 		}
 
 		/* exit if we failed to retrieve a buffer */
-		if (!skb) {
+		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_rx_buff_failed++;
 			rx_buffer->pagecnt_bias++;
 			break;
@@ -2413,7 +2408,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 			continue;
 
 		/* verify the packet layout is correct */
-		if (ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
+		if (xdp_res || ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
 			continue;
 
 		/* probably a little skewed due to removing CRC */
-- 
2.34.1

