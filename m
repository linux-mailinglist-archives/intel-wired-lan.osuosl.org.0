Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C3E9A9A03
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 08:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1F19607BC;
	Tue, 22 Oct 2024 06:39:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ekDnYbdc758p; Tue, 22 Oct 2024 06:39:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28529607A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729579145;
	bh=X6tX+QB/HZ7yafr64M28m/jDTbDk9AIIBkv7Y78qS4c=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pjyUWq3zgTyrFXTYVRt5h5DLBe2H1+bDUk+AekdcB5YhU0aKtvSydoDcd+evHbbvh
	 +kDJQmDqOu4KD2j7/LTZPqgefQyEvCSgL7NgLLyObWT9TkfzLVIYULFlGQwpH03zik
	 zEDYjFdiSqxQZ63c5cn81sf0ebtV63aXuA3/s2Rmn7o3Y9Q6ZM/btnRua4Wx0IugLo
	 oSvxt3ecekrk4edbxDqRKaLC/uBM/1mGWUvDaiKNUSYP2wuY44nDycTCpsMTTnuvZ9
	 rkKq7spib1dwBkebSsBQ31lVNkyhv2u871yxefLYI0ii8N/sSTkio8gA+8oYJ1U2yx
	 mWrt7IEOP3+eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28529607A3;
	Tue, 22 Oct 2024 06:39:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 49820963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 289DB40530
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ghtto1_0749t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 06:39:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A4F0404F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A4F0404F6
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A4F0404F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:38:55 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4XXjBD3jW1zfdXM;
 Tue, 22 Oct 2024 14:36:20 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 4EDCA140123;
 Tue, 22 Oct 2024 14:38:50 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 22 Oct
 2024 14:38:49 +0800
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
Date: Tue, 22 Oct 2024 14:56:23 +0800
Message-ID: <20241022065623.1282224-5-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241022065623.1282224-1-yuehaibing@huawei.com>
References: <20241022065623.1282224-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH v3 net 4/4] ixgbevf: Fix passing 0 to
 ERR_PTR in ixgbevf_run_xdp()
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

ixgbevf_run_xdp() converts customed xdp action to a negative error code
with the sk_buff pointer type which be checked with IS_ERR in
ixgbevf_clean_rx_irq(). Remove this error pointer handing instead use
plain int return value.

Fixes: c7aec59657b6 ("ixgbevf: Add XDP support for pass and drop actions")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 23 ++++++++-----------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 149911e3002a..183d2305d058 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -732,10 +732,6 @@ static bool ixgbevf_cleanup_headers(struct ixgbevf_ring *rx_ring,
 				    union ixgbe_adv_rx_desc *rx_desc,
 				    struct sk_buff *skb)
 {
-	/* XDP packets use error pointer so abort at this point */
-	if (IS_ERR(skb))
-		return true;
-
 	/* verify that the packet does not have any known errors */
 	if (unlikely(ixgbevf_test_staterr(rx_desc,
 					  IXGBE_RXDADV_ERR_FRAME_ERR_MASK))) {
@@ -1044,9 +1040,9 @@ static int ixgbevf_xmit_xdp_ring(struct ixgbevf_ring *ring,
 	return IXGBEVF_XDP_TX;
 }
 
-static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
-				       struct ixgbevf_ring  *rx_ring,
-				       struct xdp_buff *xdp)
+static int ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
+			   struct ixgbevf_ring *rx_ring,
+			   struct xdp_buff *xdp)
 {
 	int result = IXGBEVF_XDP_PASS;
 	struct ixgbevf_ring *xdp_ring;
@@ -1080,7 +1076,7 @@ static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
 		break;
 	}
 xdp_out:
-	return ERR_PTR(-result);
+	return result;
 }
 
 static unsigned int ixgbevf_rx_frame_truesize(struct ixgbevf_ring *rx_ring,
@@ -1122,6 +1118,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 	struct sk_buff *skb = rx_ring->skb;
 	bool xdp_xmit = false;
 	struct xdp_buff xdp;
+	int xdp_res = 0;
 
 	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
 #if (PAGE_SIZE < 8192)
@@ -1165,11 +1162,11 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 			/* At larger PAGE_SIZE, frame_sz depend on len size */
 			xdp.frame_sz = ixgbevf_rx_frame_truesize(rx_ring, size);
 #endif
-			skb = ixgbevf_run_xdp(adapter, rx_ring, &xdp);
+			xdp_res = ixgbevf_run_xdp(adapter, rx_ring, &xdp);
 		}
 
-		if (IS_ERR(skb)) {
-			if (PTR_ERR(skb) == -IXGBEVF_XDP_TX) {
+		if (xdp_res) {
+			if (xdp_res == IXGBEVF_XDP_TX) {
 				xdp_xmit = true;
 				ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
 						       size);
@@ -1189,7 +1186,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		}
 
 		/* exit if we failed to retrieve a buffer */
-		if (!skb) {
+		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_rx_buff_failed++;
 			rx_buffer->pagecnt_bias++;
 			break;
@@ -1203,7 +1200,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 			continue;
 
 		/* verify the packet layout is correct */
-		if (ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
+		if (xdp_res || ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
 			skb = NULL;
 			continue;
 		}
-- 
2.34.1

