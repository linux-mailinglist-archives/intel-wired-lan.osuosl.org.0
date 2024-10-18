Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D86A9A328C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 04:21:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56BCF8146E;
	Fri, 18 Oct 2024 02:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkX7t-BPCrZl; Fri, 18 Oct 2024 02:20:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A1EF81456
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729218059;
	bh=9xqI749TKMFkiCt9QZ2hARYMhbGJrrsnqu41bap7XdA=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VYzX2aJAKYdV9SAifft0t3sOLWiBTAYc+ePff6zCyNJ+j2s0Pa/dtl5O+altddDfR
	 b9zx0TOsdfjemjWBpMdXWJgdDrItdAX0qbvaZgj/VZcRICA6vWgTWoaLMOGsn4iO9R
	 IJh1YBhD+pb31OFTgqJAIv3D62inTXGs2ecQsItm4bBYXiV6CYl+0jWXkilxiX6bKx
	 lBJZzdZKceFOeC5XXk3IM82x7CV0FROkgJ1YhxCiYll9jh2kmfkcFH5+tbYPCnBAeJ
	 5PQV7Gta6Jn2XZ6DwO1e066QDJ13QQkkF6GSfRpTaibzMwnyLYb4jbZUrd6ZS+FFuK
	 unJl6Q3W2pA2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A1EF81456;
	Fri, 18 Oct 2024 02:20:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 244A627DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 02:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0760381445
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 02:20:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cg00QV-sYN_u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 02:20:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9551281447
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9551281447
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9551281447
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 02:20:55 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.194])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4XV7fy2XPtzpWY3;
 Fri, 18 Oct 2024 10:18:50 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 674241400DC;
 Fri, 18 Oct 2024 10:20:48 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 18 Oct
 2024 10:20:47 +0800
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
Date: Fri, 18 Oct 2024 10:37:33 +0800
Message-ID: <20241018023734.1912166-4-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241018023734.1912166-1-yuehaibing@huawei.com>
References: <20241018023734.1912166-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH v2 net 3/4] ixgbe: Fix passing 0 to
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
+	int xdp_res;
 
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

