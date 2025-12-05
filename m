Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A012CA8718
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 17:56:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43E046F37B;
	Fri,  5 Dec 2025 16:56:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jecJi-z-v1Zs; Fri,  5 Dec 2025 16:56:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C4C76EE27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764953765;
	bh=Hj4D7BE1z3GuDZEPlOZUohqNnijEiL29dsefZAeyPuw=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aA02VoyjKFyoqGT4TZ9JDhQxtZjtwoCBYC/gynaLDVRjwDUeuKUp1f5RTEghoxGnK
	 zfO2pX69cCzz3Ol1pRk6opnIBnuwk1eE7AxVF+e9vhgtJkd20CAFcnTUs2TREbQBfk
	 9/THwF49vtGBgtgnfn2MoBQfjGMjxD8MXQT9vIILNPaq8AaTww+Y2S1Ygmq8x/AQyn
	 /i82N1C0MQGQK+huRq5FugTAyuA+msIOolizThzotLjSSXEHw/KUtOVAt9fWd8vF4n
	 8gWEAwqjygsmMXo4+Zybqal7DMEj+pa6ZDZwKIlAKAn7KMBBP0JcCDVNqBE7avEuZJ
	 Q2WcF3vXMbc3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C4C76EE27;
	Fri,  5 Dec 2025 16:56:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EC5A199
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 804D1411F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gr7bRZyWp9vZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 08:22:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.42.203.116;
 helo=pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=427ee495b=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 86E914032A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86E914032A
Received: from pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.42.203.116])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86E914032A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:22:43 +0000 (UTC)
X-CSE-ConnectionGUID: 4uFGoKWlRXCvMNBbH3Tb2g==
X-CSE-MsgGUID: i4vVKa2UTpKdHiFKdsF4tg==
X-IronPort-AV: E=Sophos;i="6.20,251,1758585600"; 
   d="scan'208";a="8477429"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2025 08:22:43 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.51:29513]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.1.134:2525]
 with esmtp (Farcaster)
 id 717cb521-b318-47f0-8552-0bd9a2a35978; Fri, 5 Dec 2025 08:22:42 +0000 (UTC)
X-Farcaster-Flow-ID: 717cb521-b318-47f0-8552-0bd9a2a35978
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Fri, 5 Dec 2025 08:22:42 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.244.13) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Fri, 5 Dec 2025 08:22:41 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Takashi Kozu <takkozu@amazon.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Fri, 5 Dec 2025 17:21:06 +0900
Message-ID: <20251205082106.4028-7-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20251205082106.4028-5-takkozu@amazon.com>
References: <20251205082106.4028-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.13]
X-ClientProxiedBy: EX19D032UWA002.ant.amazon.com (10.13.139.81) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Approved-At: Fri, 05 Dec 2025 16:56:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1764922963; x=1796458963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hj4D7BE1z3GuDZEPlOZUohqNnijEiL29dsefZAeyPuw=;
 b=nqG2AHEIzrwEKbmklQ6ZlHa7+peOAvkccTFfaOL050QDk9nlUjpyZaMB
 cUJ37R3Us12YW+8ereSJufUw4bPunSlG71YKyS5Aau4K+iIRFaeaFgCIE
 aJ19v692t8fHNd6waDMa0Y4C9hxiGWBQUQ4Rv+L9GByUH1sGTZygRvF5h
 FIPJVO6HyG/C739MJd0JlYKCcSrNd82ypyEmxTEax7E0u9zt0S5fWzZSr
 4qnNyBozHIUKm9zY80DkqhfF86ku+oj+3YMV4FRLwcbehzprKIzz+6LQS
 QVL4T8le2rG5Iv8YTeiH5OJHfW+++q21ivvOHio8P+JVFICxWZyHbWf5e
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=amazon.com header.i=@amazon.com
 header.a=rsa-sha256 header.s=amazoncorp2 header.b=nqG2AHEI
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igb: expose RSS key via
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

Implement igc_get_rxfh_key_size() and extend
igc_get_rxfh() to return the RSS key to userspace.

This can be tested using `ethtool -x <dev>`.

Tested-by: Kohei Enju <enjuk@amazon.com>
Signed-off-by: Takashi Kozu <takkozu@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 8695ff28a7b8..2953d079ebae 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3285,11 +3285,13 @@ static int igb_get_rxfh(struct net_device *netdev,
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
 
@@ -3328,6 +3330,11 @@ void igb_write_rss_indir_tbl(struct igb_adapter *adapter)
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
@@ -3491,6 +3498,7 @@ static const struct ethtool_ops igb_ethtool_ops = {
 	.get_module_eeprom	= igb_get_module_eeprom,
 	.get_rxfh_indir_size	= igb_get_rxfh_indir_size,
 	.get_rxfh		= igb_get_rxfh,
+	.get_rxfh_key_size	= igb_get_rxfh_key_size,
 	.set_rxfh		= igb_set_rxfh,
 	.get_rxfh_fields	= igb_get_rxfh_fields,
 	.set_rxfh_fields	= igb_set_rxfh_fields,
-- 
2.51.1

