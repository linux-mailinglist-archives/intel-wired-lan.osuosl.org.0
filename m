Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIr0N1nwgWlAMwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 13:55:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D258D96FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 13:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E90C60E20;
	Tue,  3 Feb 2026 12:55:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ec7oFTbPCU0m; Tue,  3 Feb 2026 12:55:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 893F26086D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770123351;
	bh=W1p9ZU1anq8c3tA5/K3cU5JbzW1imGiGjezF2dcMG5o=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YqSx8inCfAu/J/pSE/235RcVImqJQ+0JZlEGPV9L75fpcm+Kfx9maJfi06smaglcw
	 w7Y5mM485bOOe0yRDjIdbHFzD9BAqCHA7u2XO8T7mhQHX1+KAHYQNZeFq/kd37tKkf
	 Sdq8H5Ex81KZum436kdLjj9SIZpUvT1qeI5Fg3aN9aBsFsdOa3R3qXxZrcYptqO9jG
	 bmBGIYFx78c9eRDH75EfkiFeM3KqFA7906qn8vp0xiiSokyxTHXLUWQP5yHZGKwnV3
	 lUKNgQ8rxpk3X+7jfuDgRKbEjgiX3gx3Cbil7lx8foPEklrXs4qSl0b0aItbbtySbk
	 QBhY/lLd6+rag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 893F26086D;
	Tue,  3 Feb 2026 12:55:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E9D73F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D797160873
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:55:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y-pIm2KgIXWa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 12:55:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.246.68.102;
 helo=pdx-out-003.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=487b0b5b4=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E12E66086D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E12E66086D
Received: from pdx-out-003.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-003.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [44.246.68.102])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E12E66086D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:55:48 +0000 (UTC)
X-CSE-ConnectionGUID: BA2TFj8aRWKimPNqD0okYg==
X-CSE-MsgGUID: yiaUqkMeT0i3/+jqQdUuRQ==
X-IronPort-AV: E=Sophos;i="6.21,270,1763424000"; d="scan'208";a="12190615"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-003.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 12:55:46 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.104:29351]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.17.158:2525]
 with esmtp (Farcaster)
 id bea7ed2c-7832-42d6-9b20-8c0bec80b03f; Tue, 3 Feb 2026 12:55:45 +0000 (UTC)
X-Farcaster-Flow-ID: bea7ed2c-7832-42d6-9b20-8c0bec80b03f
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 3 Feb 2026 12:55:45 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 3 Feb 2026 12:55:43 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <horms@kernel.org>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <aleksandr.loktionov@intel.com>,
 <pmenzel@molgen.mpg.de>, <piotr.kwapulinski@intel.com>, <enjuk@amazon.com>,
 Takashi Kozu <takkozu@amazon.com>
Date: Tue, 3 Feb 2026 21:54:13 +0900
Message-ID: <20260203125417.37285-8-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260203125417.37285-5-takkozu@amazon.com>
References: <20260203125417.37285-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D044UWB003.ant.amazon.com (10.13.139.168) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1770123348; x=1801659348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W1p9ZU1anq8c3tA5/K3cU5JbzW1imGiGjezF2dcMG5o=;
 b=GfCt9Q1ec16i/HMExvGa8Q1esMz6M+SxKwPvyHyPmGBQC+Cc1z04lrKB
 oiZ1Vz0qSH80P5Y2818cANIGGsf7J+GLyug+GAm4QeyxpIzJ2D468FjC8
 tSbX7GgZCZZO0isOsuD4JmSFQn4+mGtri6l/KOCbeyO2k6E9i3DhHv+Qt
 qGHZ6GB8PXkw9nD6Wfv28m4dIT4wVfWepzi1ogDyyyg8QqU1lYfG5/ynt
 E+0+zaEwCAe48932Y0zv68fXqPgUQlHVRIC0smPq+5kixjeDWTWDHJ2W4
 jPoOSp7eFy2OQqiEjk5Kr4U8+RilF0ozuNj0Aw34pObAxwGqLYLlBgPbJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=GfCt9Q1e
Subject: [Intel-wired-lan] [PATCH iwl-next v6 3/3] igb: allow configuring
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.69 / 15.00];
	BLACKLIST_DMARC(6.00)[amazon.com:D:-];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amazon.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:piotr.kwapulinski@intel.com,m:enjuk@amazon.com,m:takkozu@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_XOIP(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: 7D258D96FD
X-Rspamd-Action: add header
X-Spam: Yes

Change igb_set_rxfh() to accept and save a userspace-provided
RSS key. When a key is provided, store it in the adapter and write the
E1000 registers accordingly.

This can be tested using `ethtool -X <dev> hkey <key>`.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Takashi Kozu <takkozu@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 48 +++++++++++---------
 1 file changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index b387121f0ea7..b4eef14c09d5 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3357,35 +3357,39 @@ static int igb_set_rxfh(struct net_device *netdev,
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
+		memcpy(adapter->rss_key, rxfh->key, sizeof(adapter->rss_key));
+		igb_write_rss_key(adapter);
+	}
 
 	return 0;
 }
-- 
2.52.0

