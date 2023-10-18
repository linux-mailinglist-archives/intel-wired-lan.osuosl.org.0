Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3D87D00F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 19:52:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E46E8412A;
	Thu, 19 Oct 2023 17:52:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E46E8412A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697737920;
	bh=4orV4K/1b656SECXLI3chzvLYGFxSqVKhIo5yiA/JOw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7Vjm36xhCRaPfBPbdULr3T5l2L84vchDhTL1yfDcWE/3QhZTXgCbtndvfE3Bg63v7
	 y0iON77w39HyEneFm8qNQJuvF6YT/TaX3zmYbIuFIuZGXAyert+/PnIyRTbLdfkfY9
	 JY+coivyv/NnvDFtL2RrEq24R2XfQujIj/lrlBY8Xh4LHq2txEzoOxENrrkXOFknsR
	 8PWaIhGDsqWYkR59IsgWT4JuzI0gpiCCVUGw91eQX6ec5nwg5+arZyemzv+PaLV2Gk
	 /areiSo8FCp2Yaw85/RQDVExoLCdi+2wuSfhnGhTeAInVN0uImj06GktQKICbBPz/f
	 tLJMojC2epSAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QuT_58MTDZlK; Thu, 19 Oct 2023 17:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57A4084120;
	Thu, 19 Oct 2023 17:51:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57A4084120
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11E6A1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DCBB5831DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCBB5831DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UKn1EOWoltFR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 21:20:54 +0000 (UTC)
X-Greylist: delayed 325 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 18 Oct 2023 21:20:53 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC48080E39
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC48080E39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:20:53 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id A84B15C032D;
 Wed, 18 Oct 2023 17:15:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 18 Oct 2023 17:15:25 -0400
X-ME-Sender: <xms:7UowZXvsoJzN_z23mA7yN7Fdv_DGwZBM-2V9R29L_qm2aW7L-djcdA>
 <xme:7UowZYdOVTiG5mspQdHT6k_JO9LECpcogFvsOM-L4nOXKrU8IgUNAM8HCvdtaACQa
 ELfVZvjLoFZUUllJQ>
X-ME-Received: <xmr:7UowZawRtA50J36dzWrkrzrL8GeoVgfvnfseGgtZUmpeSeUB2Hh9A4hIsH9FnBadH6AgQC3se86ZqxUK0w1TC7WvrtEuBb-uaf6d8HMh1Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjeeggdduheeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefluhhsthhinhcuuehrohhnuggvrhcuoehjshgsrhhonhguvghr
 segtohhlugdqfhhrohhnthdrohhrgheqnecuggftrfgrthhtvghrnhepudfghfdvkeeuhe
 duudduhfeuieeikeegfeelhffgfeejgeelheejhfeftdelheegnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhhssghrohhnuggvrhestgholh
 guqdhfrhhonhhtrdhorhhg
X-ME-Proxy: <xmx:7UowZWN6_8GVnbu4gVTR0b3r7wVbXni1pnPs5_SXilgrphisjtl6YQ>
 <xmx:7UowZX_SQwvOmcehqoeHfC__0s4rDe6MNXg6q_dg81RX2ULP9ED6Ow>
 <xmx:7UowZWVW-Wq3e1PsAZNpvajOScb4f8Yk38SWY6PxMGkXry4oVfGE4g>
 <xmx:7UowZUE4WUZE_DLVl4cSlBL-68h7YLGWfENI6uURB1SongnlQ4c9vQ>
Feedback-ID: iea0042cb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 18 Oct 2023 17:15:25 -0400 (EDT)
From: Justin Bronder <jsbronder@cold-front.org>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Oct 2023 17:15:22 -0400
Message-ID: <20231018211522.29017-1-jsbronder@cold-front.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 19 Oct 2023 17:51:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cold-front.org; 
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=mesmtp; t=1697663725; x=1697750125;
 bh=YUIIbcMEAk6JNyZcfIv8UDjxm/re2iAtxt/LDtQGNOQ=; b=aSGr66n9PCdE
 +mAREW7NewnM0RN8v4jO4/JprMN4hwpTs72BFggJmCN0jXkViJQjHWQIxIJR6/IK
 NgNVeVl/FqF/P0kYQutzUmyInAaMQJep96rZALK/CPzAxxEUQfwHpR44B+oYgZhj
 FFtYOy09WOjypBDf/ZHp85YmzDWMd64=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1697663725; x=1697750125; bh=YUIIbcMEAk6JN
 yZcfIv8UDjxm/re2iAtxt/LDtQGNOQ=; b=s9s1t6eIBE1AvMT7PMhxpc+2Vdo7b
 PXx+Bhkn8MEMOj/HcH3VjfNAVsJBKSBsQ66E1laLHqAOch80MyWTidgcxYeK/AbR
 RzbNOJxKAwY+51P9bQIDCnUJ7iklWd+59oLl03wD5MY6FsZIACb9/3N+9AzqIFzH
 9BWuRL/X0XU09BjZgA45UzkPX8hOAKbYeGLd9NT7/th81Eu5gRSoA1/C+XWzesEk
 kk/+KM4zQRTqZo0SPDpwuLq1o194Z+65zuqYgQLFd+aWNyoimlzsmF4nw/xtoyh2
 7rA35nVOm/+oYIjy0knzPULDMYLxYZMUhfKTR5p+Ym7SCNRdxuuaqCG1g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=cold-front.org header.i=@cold-front.org
 header.a=rsa-sha256 header.s=mesmtp header.b=aSGr66n9; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=s9s1t6eI
Subject: [Intel-wired-lan] [PATCH net-next] i40e: increase max descriptors
 for XL710
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
Cc: Justin Bronder <jsbronder@cold-front.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In Tables 8-12 and 8-22 in the X710/XXV710/XL710 datasheet, the QLEN
description states that the maximum size of the descriptor queue is 8k
minus 32, or 8160.

Signed-off-by: Justin Bronder <jsbronder@cold-front.org>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 23 +++++++++++++++----
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 6e310a539467..ad261fa00d4c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -50,6 +50,7 @@
 #define I40E_MAX_VEB			16
 
 #define I40E_MAX_NUM_DESCRIPTORS	4096
+#define I40E_MAX_NUM_DESCRIPTORS_XL710	8160
 #define I40E_MAX_CSR_SPACE		(4 * 1024 * 1024 - 64 * 1024)
 #define I40E_DEFAULT_NUM_DESCRIPTORS	512
 #define I40E_REQ_DESCRIPTOR_MULTIPLE	32
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index afc4fa8c66af..338c8f1acc1a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2013,6 +2013,18 @@ static void i40e_get_drvinfo(struct net_device *netdev,
 		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
 }
 
+static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf)
+{
+	struct i40e_hw *hw = &pf->hw;
+
+	switch (hw->mac.type) {
+	case I40E_MAC_XL710:
+		return I40E_MAX_NUM_DESCRIPTORS_XL710;
+	default:
+		return I40E_MAX_NUM_DESCRIPTORS;
+	}
+}
+
 static void i40e_get_ringparam(struct net_device *netdev,
 			       struct ethtool_ringparam *ring,
 			       struct kernel_ethtool_ringparam *kernel_ring,
@@ -2022,8 +2034,8 @@ static void i40e_get_ringparam(struct net_device *netdev,
 	struct i40e_pf *pf = np->vsi->back;
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 
-	ring->rx_max_pending = I40E_MAX_NUM_DESCRIPTORS;
-	ring->tx_max_pending = I40E_MAX_NUM_DESCRIPTORS;
+	ring->rx_max_pending = i40e_get_max_num_descriptors(pf);
+	ring->tx_max_pending = i40e_get_max_num_descriptors(pf);
 	ring->rx_mini_max_pending = 0;
 	ring->rx_jumbo_max_pending = 0;
 	ring->rx_pending = vsi->rx_rings[0]->count;
@@ -2057,18 +2069,19 @@ static int i40e_set_ringparam(struct net_device *netdev,
 	u16 tx_alloc_queue_pairs;
 	int timeout = 50;
 	int i, err = 0;
+	u32 max_num_descriptors = i40e_get_max_num_descriptors(pf);
 
 	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
 		return -EINVAL;
 
-	if (ring->tx_pending > I40E_MAX_NUM_DESCRIPTORS ||
+	if (ring->tx_pending > max_num_descriptors ||
 	    ring->tx_pending < I40E_MIN_NUM_DESCRIPTORS ||
-	    ring->rx_pending > I40E_MAX_NUM_DESCRIPTORS ||
+	    ring->rx_pending > max_num_descriptors ||
 	    ring->rx_pending < I40E_MIN_NUM_DESCRIPTORS) {
 		netdev_info(netdev,
 			    "Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d]\n",
 			    ring->tx_pending, ring->rx_pending,
-			    I40E_MIN_NUM_DESCRIPTORS, I40E_MAX_NUM_DESCRIPTORS);
+			    I40E_MIN_NUM_DESCRIPTORS, max_num_descriptors);
 		return -EINVAL;
 	}
 
-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
