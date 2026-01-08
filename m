Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCE8D010F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 06:23:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECA02822D6;
	Thu,  8 Jan 2026 05:22:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SBlT_yvrFKhV; Thu,  8 Jan 2026 05:22:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3104A82512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767849778;
	bh=W/1kijzv3fwdwNTg/hBCS2Ugt4JWs6+1SMoV5xeto64=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c9t2ubCLXfO47qEojYHE9dyhf5xQg919oRebceTXBI+STpTdXYxfT9R2Uh5MPnrow
	 LX5BanaW5CIC2mYx1Cd51onDq+p8ZnIx6UcjsFgNds46rYVdjl3plwwyKzWWeNUziB
	 JgLmPmpI1C6TanSJJvOek7up8PpjBUi5eGE3VOZ7kOJhgAZZy7i0be2U+50Gv99UB5
	 5nxfi424og4D1dgs5VIztHMHOJMFBa+VKbzB69vDljMwckiuWJ4JRXpCcXy4SCFDqN
	 LDdf05/QRhQocAP2BoWRbiOl9fJhPjQFTGTTEaUR5L/WK9YV4vZi8+NpG4m4CGfhEt
	 iP2zGkcFiFOzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3104A82512;
	Thu,  8 Jan 2026 05:22:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A4B19ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E66A440A61
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:22:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dLRXh2kb6HKd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 05:22:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.245.243.92;
 helo=pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=461565dfb=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E9B7040A5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9B7040A5F
Received: from pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [44.245.243.92])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9B7040A5F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:22:54 +0000 (UTC)
X-CSE-ConnectionGUID: 3659SLhkQKisjy61CLUXTQ==
X-CSE-MsgGUID: giJpBupnRoKUGA+VZH6SDQ==
X-IronPort-AV: E=Sophos;i="6.21,209,1763424000"; 
   d="scan'208";a="9992318"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2026 05:22:52 +0000
Received: from EX19MTAUWA001.ant.amazon.com [205.251.233.236:1873]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.62.78:2525]
 with esmtp (Farcaster)
 id 9a897238-47f9-4faa-a11f-f469ed79a941; Thu, 8 Jan 2026 05:22:52 +0000 (UTC)
X-Farcaster-Flow-ID: 9a897238-47f9-4faa-a11f-f469ed79a941
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.204) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Thu, 8 Jan 2026 05:22:52 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.244.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Thu, 8 Jan 2026 05:22:50 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Takashi Kozu <takkozu@amazon.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Thu, 8 Jan 2026 14:20:15 +0900
Message-ID: <20260108052020.84218-8-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260108052020.84218-5-takkozu@amazon.com>
References: <20260108052020.84218-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.10]
X-ClientProxiedBy: EX19D046UWA002.ant.amazon.com (10.13.139.39) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1767849775; x=1799385775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W/1kijzv3fwdwNTg/hBCS2Ugt4JWs6+1SMoV5xeto64=;
 b=KW/Rba9DOqb+CUvtwLi6FXj3lqtIVTHbKmTtlj1Y+BZYWwmC8ZjgLRGH
 pCB2eQc7CDNSaJs7/xNYL/QU0SyLyVniIjPxMa/JEFX/GdDhwe7sKWWO5
 dqnkTnNzEJC78M5603Wa+Dk/C88jN42uI+bCT0zevrPDoVXTbMvo/LATs
 vG2CRAToVlSs6037lm6mwvoGiUJyLev45xy48aJSIHAEk1fJHcN1tmfkv
 3fP6gzr5VVXDtb3xPJsn6SyUe6+TDGFnp3RbBtBcUfaadUli66TKqh51D
 jtxC1C/rC3JWgdu0qqWX4FjmndIpJxXB9yORgNddVScaTZNLNH2Pgr2nn
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=KW/Rba9D
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow configuring
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

Change igb_set_rxfh() to accept and save a userspace-provided
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
2.52.0

