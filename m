Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8747FD3C3B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 10:36:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3972B6FC6D;
	Tue, 20 Jan 2026 09:36:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pItHvLa9pD8P; Tue, 20 Jan 2026 09:36:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 973B96FC6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768901791;
	bh=B+zWsKIkm2UpBCBjFQial8/cDGCyaERvk1cHwwohaao=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AdjwRaYAfk5O2hfVNeUc40C21fMQMH+i/x8ZxMLMuC/OUBEhbsvCscdtyeNOEe/o3
	 QJVALIsZyKDelVR0OYlrC/emc3L8EDE/u1GNDLhcPmJKhfiL7ilmNuft+G7+IPDqsv
	 dASr9S8UkZXy3tumakDWquG3HGFw59iA72kipi9gMi9jpv8U1W6uhMt4T2OxiXAoRQ
	 x6qsSLMCT7zQX8cR498/m1i8ZmDhhBk0UB9Jr/mFJpt075GIeagyGQOdN47foePRZO
	 K34KdfPXZDyS6W/iHhUyslQnxyj+WWiodcoj2Gagm4/nE+T6qsIKUW6+H8t5roxP+i
	 STR3qaVvnnk3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 973B96FC6B;
	Tue, 20 Jan 2026 09:36:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F298B160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 09:36:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF17A407DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 09:36:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W07Qc9rR2swO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 09:36:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.35.192.45;
 helo=pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=473d65126=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DF13B406DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF13B406DC
Received: from pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.35.192.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF13B406DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 09:36:28 +0000 (UTC)
X-CSE-ConnectionGUID: ti7Ys/BWR4OVzhpb6UW+HA==
X-CSE-MsgGUID: D/gfeL7HS8CAuDRrX30PFA==
X-IronPort-AV: E=Sophos;i="6.21,240,1763424000"; d="scan'208";a="10974104"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2026 09:36:26 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.51:21823]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.41.221:2525]
 with esmtp (Farcaster)
 id dadfcc83-7584-4b57-bd33-52d985543c72; Tue, 20 Jan 2026 09:36:26 +0000 (UTC)
X-Farcaster-Flow-ID: dadfcc83-7584-4b57-bd33-52d985543c72
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 20 Jan 2026 09:36:25 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.244.13) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 20 Jan 2026 09:36:23 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <aleksandr.loktionov@intel.com>,
 <pmenzel@molgen.mpg.de>, <piotr.kwapulinski@intel.com>, <enjuk@amazon.com>,
 Takashi Kozu <takkozu@amazon.com>
Date: Tue, 20 Jan 2026 18:34:40 +0900
Message-ID: <20260120093441.70075-8-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260120093441.70075-5-takkozu@amazon.com>
References: <20260120093441.70075-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.13]
X-ClientProxiedBy: EX19D035UWB004.ant.amazon.com (10.13.138.104) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1768901788; x=1800437788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B+zWsKIkm2UpBCBjFQial8/cDGCyaERvk1cHwwohaao=;
 b=K4r1fTWAYb3GqTugD1psCP5ML5be1YaQzLn5ME7K0D38yvAjlSDdz+XO
 FHQnTYUUGOE2r4EznO1h3W5RJ5u12QnOwdagADvd/Fhwa0vuBlNv1c02a
 83rnhRZVPQZx/Gzy4/LJMyyUwSW2eS4ezYMLyDWH2Lrje4dlXbZa2DSbT
 3b/xJMlhzIkd0B3r0aQAfT0ZLVfx/8N1umuroIxzWmlt3YA2jEfuoACJQ
 K+fq2uWjovyL6gVWOCCowGufDCUSjHLE60XcwA0+5G71JsFHa22vWfRqV
 eH6MRd4MOvdOj/zUESYE5ciHbWghLRyCLMTFJnqViuRMnKlyQ2hVWKO26
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=K4r1fTWA
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/3] igb: allow configuring
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
index b387121f0ea7..1db9c2447c91 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3357,35 +3357,40 @@ static int igb_set_rxfh(struct net_device *netdev,
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
index c703011b19ec..8dab133296ca 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4051,7 +4051,8 @@ static int igb_sw_init(struct igb_adapter *adapter)
 	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
 
 	/* init RSS key */
-	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
+	if (!adapter->has_user_rss_key)
+		netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
 
 	/* set default ring sizes */
 	adapter->tx_ring_count = IGB_DEFAULT_TXD;
-- 
2.52.0

