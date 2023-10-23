Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 770157D396D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 16:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA17181F33;
	Mon, 23 Oct 2023 14:36:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA17181F33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698071772;
	bh=4orV4K/1b656SECXLI3chzvLYGFxSqVKhIo5yiA/JOw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=08YLGgbUc18ZRgwtvSg8Ybr3Rr4aRCwAKh6aOmQmGcsXsw6op8QH+sarZcnRIn/og
	 4jgxQ3WdZyzEcaLYYWRDJ+jKSFk3jBUc8llCzJBTeY37dg/GdRrcrmJZZkUIHFiVxo
	 XUotKObsGUm86rNkgBm1pbYTBHsKG1/PTCRVML+SwIr2Z2yoCDDYA6X8KWywbo8P4r
	 xLMnfeZ0MIQ3y1Gpy0aJy3au5GjXRXqhokvWSTTp3917GtluFTWKrFE6Xq+4B5GI0I
	 erSFhJLmY4iVPynqJ6hL1WrjITkawAaiJegVFYAA2n5xiN+W8/m0YNaSdFF3IWHxII
	 gunmdQX8w3Lsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3c2iq_zpvF58; Mon, 23 Oct 2023 14:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB8D38120A;
	Mon, 23 Oct 2023 14:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB8D38120A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12DF11BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFC19416D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:36:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFC19416D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AUv6Qmy2J--Z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 14:36:03 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26E92400CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:36:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26E92400CB
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 1EE215C0211;
 Mon, 23 Oct 2023 10:36:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 23 Oct 2023 10:36:02 -0400
X-ME-Sender: <xms:0YQ2ZQD9gOgXK_YAcDnx0uro8-_8wv2bkjc228cHMNF1PVE_QwihtA>
 <xme:0YQ2ZSjVL2aoW3_-LznwwiSKTmpXrBB0IN9tQyfQ_ew3Q2OPQbXxCVtTyo00ZEg__
 lr2G2Fe9hZey96XAw>
X-ME-Received: <xmr:0YQ2ZTkKIKQ_GKVasI93e540P6Tz8SOH1TLE_gRK-cL20I3wbKcBMiIexG10KuTyroMY7749yvjWKCNzTyPHppMEruZwnl_mToXd3xrxfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrkeeigdejiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomheplfhushhtihhnuceurhhonhguvghruceojhhssghrohhnuggvrhes
 tgholhguqdhfrhhonhhtrdhorhhgqeenucggtffrrghtthgvrhhnpedugffhvdekueehud
 duudfhueeiieekgeeflefhgfefjeegleehjefhfedtleehgeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjshgsrhhonhguvghrsegtohhlug
 dqfhhrohhnthdrohhrgh
X-ME-Proxy: <xmx:0YQ2ZWz8Qso7YZT1-KS6IEar_hW_avgK075tuvoLl8aZHNTXFAAVHQ>
 <xmx:0YQ2ZVRGIuX9KdKWQhG5oSK143YoqLqfQZOdEk9imSKph4G_rcxC3A>
 <xmx:0YQ2ZRYGHokU4mAgFS40D9XXr4H_pfd7N7ed-xveveRjPYGHLhwmhQ>
 <xmx:0oQ2ZW7VBBjMarSOSDLwKjZU9HMzuFE19Je3MA17d4zRsSbCnk4IDA>
Feedback-ID: iea0042cb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 23 Oct 2023 10:36:01 -0400 (EDT)
From: Justin Bronder <jsbronder@cold-front.org>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Oct 2023 10:35:57 -0400
Message-ID: <20231023143557.18241-1-jsbronder@cold-front.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cold-front.org; 
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=mesmtp; t=1698071762; x=1698158162;
 bh=YUIIbcMEAk6JNyZcfIv8UDjxm/re2iAtxt/LDtQGNOQ=; b=EdKO0fntabMj
 um7go0WFF85QBw8Hytkgrp1KgJpUVQkR7pUTcg3xGHhNgjAUXtHRI5ZvTmAxJuSx
 OrOF6+oPIpYC35poGl8BfgD0dy+mzNr1LOcyqUV/d9Udj55y3L0R3CAaSbjrP8m0
 2JN39dMYhhZrglAKTcFl40cjBraVosI=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1698071762; x=1698158162; bh=YUIIbcMEAk6JN
 yZcfIv8UDjxm/re2iAtxt/LDtQGNOQ=; b=FT1JI/71EL9VrHg6+amGex+5BYs/1
 +ey8zd8bOmN06nMLmtz7ofQWP1vAhWyHVDWE/3Oh48fT+vytOJerLjeSQBNi4y0T
 Og3putVhMUo5BQ95kyEdjp/56MNY3Bmm/5Zbr3u/doB9IDb7OtHTYUBSSEto6ERv
 /Kb3v6TQwEe0PU6MuRczzBWPeoSCl2FsddnBcIwwAcUWGV8difaQgxYLfKsd4GUR
 5XF3JTvJbwAlQvBqNEX3Y+Cda/4fT/Tl/9AAiFeMGio2+T041qYj5J3dDLVn3Ufa
 aHB7A3AZpeQT0uWU1m+whldhwvLMQerQF3zOp6uuBRba34E7xUgcw5IDg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=cold-front.org header.i=@cold-front.org
 header.a=rsa-sha256 header.s=mesmtp header.b=EdKO0fnt; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=FT1JI/71
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
