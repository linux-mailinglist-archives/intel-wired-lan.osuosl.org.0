Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D88CA871E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 17:56:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2D9B61CF8;
	Fri,  5 Dec 2025 16:56:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNcoUtojl_Bo; Fri,  5 Dec 2025 16:56:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CFF261CF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764953766;
	bh=ESjb8opnrbPtZsN4yBdjQUuGOItJtcMAVPnjLNmrvDI=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9oDx/6rlF3dB7f87HRKut1afla38RS8CKWWlSZepMLw8jHjNqb8RXoNz+0FKy6Cxf
	 yVh+EcJcM6vyIptypYLsHW5pb4Q+1gxGb41sk0fKgEghkNJNQSroyN8eitxq+A0VsN
	 xrep7jbq9Vc7awIvFyxEOlevKSfuxy13wNtARigEGCPEYOl+p/lKwsUN43NcJftIjl
	 aaffD57MbGS4uZDffgQJyujPCJvM46Wewi6/1IAgo+F8NqJ7iKZl6FVBRmDsEdbrEo
	 aLVHfJwOSOc07jHRnanp0SkderQVYFDAqZJzfBRDlE337xm1VHeS3E42OY+B8IswDa
	 TEzsmpv4XbhwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CFF261CF5;
	Fri,  5 Dec 2025 16:56:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E5ECF199
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68B306071B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:23:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a3TZQTEdOTlS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 08:23:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.26.1.71;
 helo=pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=427ee495b=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 76C6560768
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76C6560768
Received: from pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.26.1.71])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76C6560768
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:23:15 +0000 (UTC)
X-CSE-ConnectionGUID: Dax6Wjy0QWea8ZprF4KL5Q==
X-CSE-MsgGUID: qFxtSb5cTSWxAa1OCfwIZQ==
X-IronPort-AV: E=Sophos;i="6.20,251,1758585600"; 
   d="scan'208";a="8494767"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-006.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2025 08:23:12 +0000
Received: from EX19MTAUWC002.ant.amazon.com [205.251.233.51:23161]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.51.201:2525]
 with esmtp (Farcaster)
 id 309e1d2c-04bd-4cf0-8326-a64407a40886; Fri, 5 Dec 2025 08:23:12 +0000 (UTC)
X-Farcaster-Flow-ID: 309e1d2c-04bd-4cf0-8326-a64407a40886
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Fri, 5 Dec 2025 08:23:12 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.244.13) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Fri, 5 Dec 2025 08:23:10 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Takashi Kozu <takkozu@amazon.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Fri, 5 Dec 2025 17:21:07 +0900
Message-ID: <20251205082106.4028-8-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20251205082106.4028-5-takkozu@amazon.com>
References: <20251205082106.4028-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.13]
X-ClientProxiedBy: EX19D040UWA003.ant.amazon.com (10.13.139.6) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Approved-At: Fri, 05 Dec 2025 16:56:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1764922996; x=1796458996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ESjb8opnrbPtZsN4yBdjQUuGOItJtcMAVPnjLNmrvDI=;
 b=DpP6Wm9UOpyfm8H1/3CT9KinMRZmDKfDatIPSirOWngBVVP51U36VgIf
 m+ko+FgfxVNLrxkbNQO53lR4mobnhXrWwPikiGuf2yC4e1epeL/Q5LQOB
 PsiWrNm90tpjrgZkqjYjdbyYo2cKLnk1QN6iq5ZlUcCMtqrKrra/JfDvh
 NezbTOOk0hiLnDETMNK03UWv5I44XaM4GD7G/0pXqNSWhkZDK5bPJJQsl
 w/2WGHL+6flwOAU3fIjc1n+hFDl8ClODNDiqSsW1MGq2A2DqKQLffOmN1
 sDNX0ygufBF09y0/QyplNgUgrPJi+2HOzMIk2Dnt8TR3Q+ToBowiO+VtJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=DpP6Wm9U
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/3] igb: allow configuring
 RSS key via ethtool set_rxfh
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

Change igc_set_rxfh() to accept and save a userspace-provided
RSS key. When a key is provided, store it in the adapter and write the
E1000 registers accordingly.

This can be tested using `ethtool -X <dev> hkey <key>`.

Tested-by: Kohei Enju <enjuk@amazon.com>
Signed-off-by: Takashi Kozu <takkozu@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb.h         |  1 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 49 +++++++++++---------
 drivers/net/ethernet/intel/igb/igb_main.c    |  3 +-
 3 files changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 8c9b02058cec..2509ec30acf3 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -657,6 +657,7 @@ struct igb_adapter {
 	u32 rss_indir_tbl_init;
 	u8 rss_indir_tbl[IGB_RETA_SIZE];
 	u8 rss_key[IGB_RSS_KEY_SIZE];
+	bool has_user_rss_key;
 
 	unsigned long link_check_timeout;
 	int copper_tries;
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2953d079ebae..ac045fbebade 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3345,35 +3345,40 @@ static int igb_set_rxfh(struct net_device *netdev,
 	u32 num_queues;
 
 	/* We do not allow change in unsupported parameters */
-	if (rxfh->key ||
-	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
-	     rxfh->hfunc != ETH_RSS_HASH_TOP))
+	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
+	    rxfh->hfunc != ETH_RSS_HASH_TOP)
 		return -EOPNOTSUPP;
-	if (!rxfh->indir)
-		return 0;
 
-	num_queues = adapter->rss_queues;
+	if (rxfh->indir) {
+		num_queues = adapter->rss_queues;
 
-	switch (hw->mac.type) {
-	case e1000_82576:
-		/* 82576 supports 2 RSS queues for SR-IOV */
-		if (adapter->vfs_allocated_count)
-			num_queues = 2;
-		break;
-	default:
-		break;
-	}
+		switch (hw->mac.type) {
+		case e1000_82576:
+			/* 82576 supports 2 RSS queues for SR-IOV */
+			if (adapter->vfs_allocated_count)
+				num_queues = 2;
+			break;
+		default:
+			break;
+		}
 
-	/* Verify user input. */
-	for (i = 0; i < IGB_RETA_SIZE; i++)
-		if (rxfh->indir[i] >= num_queues)
-			return -EINVAL;
+		/* Verify user input. */
+		for (i = 0; i < IGB_RETA_SIZE; i++)
+			if (rxfh->indir[i] >= num_queues)
+				return -EINVAL;
 
 
-	for (i = 0; i < IGB_RETA_SIZE; i++)
-		adapter->rss_indir_tbl[i] = rxfh->indir[i];
+		for (i = 0; i < IGB_RETA_SIZE; i++)
+			adapter->rss_indir_tbl[i] = rxfh->indir[i];
+
+		igb_write_rss_indir_tbl(adapter);
+	}
 
-	igb_write_rss_indir_tbl(adapter);
+	if (rxfh->key) {
+		adapter->has_user_rss_key = true;
+		memcpy(adapter->rss_key, rxfh->key, sizeof(adapter->rss_key));
+		igb_write_rss_key(adapter);
+	}
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index da0f550de605..d42b3750f0b1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4526,7 +4526,8 @@ static void igb_setup_mrqc(struct igb_adapter *adapter)
 	u32 mrqc, rxcsum;
 	u32 j, num_rx_queues;
 
-	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
+	if (!adapter->has_user_rss_key)
+		netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
 	igb_write_rss_key(adapter);
 
 	num_rx_queues = adapter->rss_queues;
-- 
2.51.1

