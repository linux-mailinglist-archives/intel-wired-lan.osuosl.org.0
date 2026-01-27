Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOhbJJd/eGkFqQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 10:04:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B58E791747
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 10:04:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CD1160F29;
	Tue, 27 Jan 2026 08:57:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CGgzPPMAH8KM; Tue, 27 Jan 2026 08:57:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2868860F34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769504223;
	bh=Hpm3tzHmLebq8eIS8qDAzoE8I3X/7qHvO8PMgK5y+KM=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7m3dJJLUlXtrBFxZDGwaRzOYLIPlWYNVCEqtYNmZNe5t0WDuVRt9JJPI3CsW4dGmu
	 ELRFR55pf3665si8uBTztUsOXOYSB3sXhcKiX1GgFTW5lXrd7S/bU35Yoq4Wo41uCJ
	 TE6m6TYKVfZWvO3NQjXqwychHHLrVvU42mKNklEWwLUM6glYCFbNWs1Svl0XImCkik
	 Ni8ICo0LkqI+y+T4qKbNEJI0uhBqcd+PAueX0juTqIr+W0tbSLgigk9uxg7mJTcAF+
	 yRiA85V6SFRGamxJ7nmrBMY0xgSqxjJcwi6NEpHGPkN5if+ToJgZJdYVaesb8NU5BD
	 sAbOibNs6EAIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2868860F34;
	Tue, 27 Jan 2026 08:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D7AE02F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 08:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC83F409DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 08:57:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ax07aNNStjKG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 08:57:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.245.243.92;
 helo=pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=4803e00d0=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D8943404F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8943404F1
Received: from pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [44.245.243.92])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8943404F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 08:57:00 +0000 (UTC)
X-CSE-ConnectionGUID: PCqPgmyxTsqX5IPybaFVKA==
X-CSE-MsgGUID: XXDa8TXbRuydT3HlY2gr/g==
X-IronPort-AV: E=Sophos;i="6.21,256,1763424000"; d="scan'208";a="11205858"
Received: from ip-10-5-0-115.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.0.115])
 by internal-pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 08:56:58 +0000
Received: from EX19MTAUWC001.ant.amazon.com [205.251.233.105:27460]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.40.218:2525]
 with esmtp (Farcaster)
 id 2d422e7d-f6de-45cd-9d73-b8f9930c4032; Tue, 27 Jan 2026 08:56:57 +0000 (UTC)
X-Farcaster-Flow-ID: 2d422e7d-f6de-45cd-9d73-b8f9930c4032
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 27 Jan 2026 08:56:57 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 27 Jan 2026 08:56:55 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <aleksandr.loktionov@intel.com>,
 <pmenzel@molgen.mpg.de>, <piotr.kwapulinski@intel.com>, <enjuk@amazon.com>,
 Takashi Kozu <takkozu@amazon.com>
Date: Tue, 27 Jan 2026 17:54:09 +0900
Message-ID: <20260127085410.79645-7-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260127085410.79645-5-takkozu@amazon.com>
References: <20260127085410.79645-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D032UWB004.ant.amazon.com (10.13.139.136) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1769504220; x=1801040220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hpm3tzHmLebq8eIS8qDAzoE8I3X/7qHvO8PMgK5y+KM=;
 b=JUebszPbD/WTGQgK0tzbyDbuiO746wfUzH7TgIKObJnVdFoRJU5lkMne
 959ZD5sdm0UXKCqnX14oo8FFohxAoHBbYzYjPL/ZgpNqgB9JAvXhCTrqO
 TAmhSzq0zp1YxPFvYkm0Vrg838GXM8owBcQ1NA8jlLFcF8IOCfZNGsYv2
 hkaSsWB3ZqE1azLybkAtDBwlVC480PG4lpWjB0MC4ke4rTQTYexgCbFRJ
 /4fojbRV3FMHz25vdbOXgimGAsK4v2pwlFOF9SNH5jonGF2OabmMXZpJV
 vkJ03hZtG1bvMsfeVd7FKKm0nAWw6q0q9ifaM6nNd0WpLmtL7HLGlI1rY
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=JUebszPb
Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/3] igb: expose RSS key via
 ethtool get_rxfh
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:piotr.kwapulinski@intel.com,m:enjuk@amazon.com,m:takkozu@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_XOIP(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: B58E791747
X-Rspamd-Action: add header
X-Spam: Yes

Implement igb_get_rxfh_key_size() and extend
igb_get_rxfh() to return the RSS key to userspace.

This can be tested using `ethtool -x <dev>`.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Takashi Kozu <takkozu@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index a93069b761a6..b387121f0ea7 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3297,10 +3297,12 @@ static int igb_get_rxfh(struct net_device *netdev,
 	int i;
 
 	rxfh->hfunc = ETH_RSS_HASH_TOP;
-	if (!rxfh->indir)
-		return 0;
-	for (i = 0; i < IGB_RETA_SIZE; i++)
-		rxfh->indir[i] = adapter->rss_indir_tbl[i];
+	if (rxfh->indir)
+		for (i = 0; i < IGB_RETA_SIZE; i++)
+			rxfh->indir[i] = adapter->rss_indir_tbl[i];
+
+	if (rxfh->key)
+		memcpy(rxfh->key, adapter->rss_key, sizeof(adapter->rss_key));
 
 	return 0;
 }
@@ -3340,6 +3342,11 @@ void igb_write_rss_indir_tbl(struct igb_adapter *adapter)
 	}
 }
 
+static u32 igb_get_rxfh_key_size(struct net_device *netdev)
+{
+	return IGB_RSS_KEY_SIZE;
+}
+
 static int igb_set_rxfh(struct net_device *netdev,
 			struct ethtool_rxfh_param *rxfh,
 			struct netlink_ext_ack *extack)
@@ -3504,6 +3511,7 @@ static const struct ethtool_ops igb_ethtool_ops = {
 	.get_module_eeprom	= igb_get_module_eeprom,
 	.get_rxfh_indir_size	= igb_get_rxfh_indir_size,
 	.get_rxfh		= igb_get_rxfh,
+	.get_rxfh_key_size	= igb_get_rxfh_key_size,
 	.set_rxfh		= igb_set_rxfh,
 	.get_rxfh_fields	= igb_get_rxfh_fields,
 	.set_rxfh_fields	= igb_set_rxfh_fields,
-- 
2.52.0

