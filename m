Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D779A9A00
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 08:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBAD540511;
	Tue, 22 Oct 2024 06:39:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ickSh1uf-3Na; Tue, 22 Oct 2024 06:39:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED16940520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729579140;
	bh=u33VWwSTwaL/o0wiTdGeVCUR+RNk7XzRId6jA85UAXs=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nj9GeOYeCWV9pdPug4doC2j2Kch6gJx7ee9JpQzlF5EdI0KnEBpcF5kK3U9tZtHGw
	 p1kAXrnvnoRdP9GzZGP8z0n+cAwdMJkS+a5AjPwkeuPe3H7yfLzwL4yqlY39RQ+zAv
	 TeiG0IQhdyuSDjnkd8+GTPeDjXlxPPzv+3EdLJAjTPx8hwn+g4x/Kc4uCxjTtiMNDj
	 njkyYeby0i+sJityH9K3O+hx7xgx/NhBG84vXWIy0S2w293IjmqJpg2sDNFhxX46OZ
	 D1w6cb8uUXQgokuSBW+1G3uWRxmkFrtg684ejQtaUbNnYpR2pobhCslStnT+4PjggB
	 eeNk1Smx1r92w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED16940520;
	Tue, 22 Oct 2024 06:38:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 631EB3A23
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 430474053E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:38:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nBRgLWmbJH4n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 06:38:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 51CB54054E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51CB54054E
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51CB54054E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:38:53 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.48])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4XXjCL27WJzyTT0;
 Tue, 22 Oct 2024 14:37:18 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 878F518007C;
 Tue, 22 Oct 2024 14:38:48 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 22 Oct
 2024 14:38:47 +0800
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
Date: Tue, 22 Oct 2024 14:56:21 +0800
Message-ID: <20241022065623.1282224-3-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241022065623.1282224-1-yuehaibing@huawei.com>
References: <20241022065623.1282224-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH v3 net 2/4] igb: Fix passing 0 to ERR_PTR
 in igb_run_xdp()
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

igb_run_xdp() converts customed xdp action to a negative error code
with the sk_buff pointer type which be checked with IS_ERR in
igb_clean_rx_irq(). Remove this error pointer handing instead use plain
int return value.

Fixes: 9cbc948b5a20 ("igb: add XDP support")
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index f1d088168723..50c23dfcf304 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8584,9 +8584,8 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 	return skb;
 }
 
-static struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
-				   struct igb_ring *rx_ring,
-				   struct xdp_buff *xdp)
+static int igb_run_xdp(struct igb_adapter *adapter, struct igb_ring *rx_ring,
+		       struct xdp_buff *xdp)
 {
 	int err, result = IGB_XDP_PASS;
 	struct bpf_prog *xdp_prog;
@@ -8626,7 +8625,7 @@ static struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
 		break;
 	}
 xdp_out:
-	return ERR_PTR(-result);
+	return result;
 }
 
 static unsigned int igb_rx_frame_truesize(struct igb_ring *rx_ring,
@@ -8752,10 +8751,6 @@ static bool igb_cleanup_headers(struct igb_ring *rx_ring,
 				union e1000_adv_rx_desc *rx_desc,
 				struct sk_buff *skb)
 {
-	/* XDP packets use error pointer so abort at this point */
-	if (IS_ERR(skb))
-		return true;
-
 	if (unlikely((igb_test_staterr(rx_desc,
 				       E1000_RXDEXT_ERR_FRAME_ERR_MASK)))) {
 		struct net_device *netdev = rx_ring->netdev;
@@ -8879,6 +8874,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 	struct xdp_buff xdp;
 	u32 frame_sz = 0;
 	int rx_buf_pgcnt;
+	int xdp_res = 0;
 
 	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
 #if (PAGE_SIZE < 8192)
@@ -8936,12 +8932,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 			/* At larger PAGE_SIZE, frame_sz depend on len size */
 			xdp.frame_sz = igb_rx_frame_truesize(rx_ring, size);
 #endif
-			skb = igb_run_xdp(adapter, rx_ring, &xdp);
+			xdp_res = igb_run_xdp(adapter, rx_ring, &xdp);
 		}
 
-		if (IS_ERR(skb)) {
-			unsigned int xdp_res = -PTR_ERR(skb);
-
+		if (xdp_res) {
 			if (xdp_res & (IGB_XDP_TX | IGB_XDP_REDIR)) {
 				xdp_xmit |= xdp_res;
 				igb_rx_buffer_flip(rx_ring, rx_buffer, size);
@@ -8960,7 +8954,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 						&xdp, timestamp);
 
 		/* exit if we failed to retrieve a buffer */
-		if (!skb) {
+		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_failed++;
 			rx_buffer->pagecnt_bias++;
 			break;
@@ -8974,7 +8968,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 			continue;
 
 		/* verify the packet layout is correct */
-		if (igb_cleanup_headers(rx_ring, rx_desc, skb)) {
+		if (xdp_res || igb_cleanup_headers(rx_ring, rx_desc, skb)) {
 			skb = NULL;
 			continue;
 		}
-- 
2.34.1

