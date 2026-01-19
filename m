Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F223DD3A1FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 09:46:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38937811A6;
	Mon, 19 Jan 2026 08:46:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tWK580RvOeBs; Mon, 19 Jan 2026 08:46:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8546812A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768812406;
	bh=l4uKN1CmkqiI48Cnr41EhxL422wjqot2MgWtmziFFv8=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PVD4tSpb+SzxGlBoFbHHMaQMxIf6ia9IoUrQGOIRAWXiqsC/kg3ut0j5dkyaRbA7a
	 DuAt3wq84snbzQ8RIXvu5erTx5t/7+3vg2k5V+nQncLltcthYPnThYbnT+mnWNlX0V
	 jO0cy1eQeLYMKxJFIMrGTGIVExc/B0s77iqgrLakJHLBZxRXdSS1IkDSKDrjP0/o2O
	 uLGNxtgtML5WSwjVsXf2VUNyUo5BzBA8Ch9WtLfRaRJesmS+3G8zYbaL8A4d+JKDQX
	 zCLo3KdHQR5wn0I5dhcYcBAfQ3nUgXmrD1uSGIexbY3D1yssfxG0ANI4rjnz6hNd9Z
	 jLtIWK82GhqcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8546812A9;
	Mon, 19 Jan 2026 08:46:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AF07160
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C925405FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:46:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id er6jCnOhDLJV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 08:46:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.35.192.45;
 helo=pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=472495a9d=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4C725405E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C725405E4
Received: from pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.35.192.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C725405E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:46:43 +0000 (UTC)
X-CSE-ConnectionGUID: UoQ2Rf65TbGpjYA81EIeEQ==
X-CSE-MsgGUID: iNt0CwJSR+G6nkGpJ5eqYw==
X-IronPort-AV: E=Sophos;i="6.21,237,1763424000"; d="scan'208";a="10901829"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2026 08:46:40 +0000
Received: from EX19MTAUWA002.ant.amazon.com [205.251.233.234:6304]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.61.216:2525]
 with esmtp (Farcaster)
 id b8718bcf-5696-4671-8c3f-88cb2b39ee58; Mon, 19 Jan 2026 08:46:40 +0000 (UTC)
X-Farcaster-Flow-ID: b8718bcf-5696-4671-8c3f-88cb2b39ee58
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Mon, 19 Jan 2026 08:46:39 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Mon, 19 Jan 2026 08:46:37 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <aleksandr.loktionov@intel.com>,
 <pmenzel@molgen.mpg.de>, <piotr.kwapulinski@intel.com>, Takashi Kozu
 <takkozu@amazon.com>
Date: Mon, 19 Jan 2026 17:45:06 +0900
Message-ID: <20260119084511.95287-7-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260119084511.95287-5-takkozu@amazon.com>
References: <20260119084511.95287-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.10]
X-ClientProxiedBy: EX19D042UWB001.ant.amazon.com (10.13.139.160) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1768812403; x=1800348403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l4uKN1CmkqiI48Cnr41EhxL422wjqot2MgWtmziFFv8=;
 b=e4pOSKV2hu8bYR7Vq5/X69KZDGv2vHABR18UqsA9skNzGtJ6w69XNi+X
 SGwVSU1dwJkC7C4q9eWaHM6VfiPT4A4GF9ZpS9kblMwdS8DQMuzOvyQGS
 V06RjcMcmzstNXJa1jQUvZ+maFPBgQ5phHVNcsTT5rl/CCjYBnFb11WL6
 AXxpCRtPguGWXI741h8E/b4l7zhqj/FL/aZ76wzEwtdb1nq85uZoLSNpq
 mT+5c8iocGuzT0QpkE3kcO6JLt8zJjbJ5v1BdYw4OEhqmilTHvGSh3QDD
 gmGePgYumIRpmYDv/QwvUgJWhvaDmluSmLtzY5QwImknL0PO8xjUtMNCq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=amazon.com header.i=@amazon.com
 header.a=rsa-sha256 header.s=amazoncorp2 header.b=e4pOSKV2
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/3] igb: expose RSS key via
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

Implement igb_get_rxfh_key_size() and extend
igb_get_rxfh() to return the RSS key to userspace.

This can be tested using `ethtool -x <dev>`.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Takashi Kozu <takkozu@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 5107b0de4fa3..2251f30378ab 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3294,10 +3294,12 @@ static int igb_get_rxfh(struct net_device *netdev,
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
@@ -3337,6 +3339,11 @@ void igb_write_rss_indir_tbl(struct igb_adapter *adapter)
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
@@ -3500,6 +3507,7 @@ static const struct ethtool_ops igb_ethtool_ops = {
 	.get_module_eeprom	= igb_get_module_eeprom,
 	.get_rxfh_indir_size	= igb_get_rxfh_indir_size,
 	.get_rxfh		= igb_get_rxfh,
+	.get_rxfh_key_size	= igb_get_rxfh_key_size,
 	.set_rxfh		= igb_set_rxfh,
 	.get_rxfh_fields	= igb_get_rxfh_fields,
 	.set_rxfh_fields	= igb_set_rxfh_fields,
-- 
2.52.0

