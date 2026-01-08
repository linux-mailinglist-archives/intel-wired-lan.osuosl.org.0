Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4F1D010E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 06:22:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B099822CB;
	Thu,  8 Jan 2026 05:22:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id knhx4X_Ac80y; Thu,  8 Jan 2026 05:22:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25E80822D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767849739;
	bh=DXUMYkpnLSXEHoLG/kd1BdGaN2eajFN/AZsgn3AfCKg=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lXo653tLtsrWNpdcxuBk0+8M+glNt7yJZkH3bUg0Ibtau7gX8++NY8/wUMRTLhs4A
	 TBTHwIRBYo2o5/uts/IBoUtboX9SA8r2A1fWoNR7p2PCoe04Ly9QDO22rMfLGdMdTs
	 cqnxJjg5pvfsqbjOa1Icu3TPLv5QXeseQFbU+eYfgBDCS/Vrp6D8neb58XQaLGoFSr
	 U6VUNs0d3Gz79SapNteeX88TDh7kGA4cTrb5aXw4siZk51Q2Kgv1TWD9s14azSAyr/
	 wrkBWv30sJ68kPyUn/w2dc7XrHS+jKtbYfOKn4WzwZdQ3cC8yiKVgo1urgTvP8jM6l
	 KLLP4478RYAAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25E80822D1;
	Thu,  8 Jan 2026 05:22:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 281F39ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F2E2822CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:22:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jh4EZz-Y1jtj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 05:22:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.42.203.116;
 helo=pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=461565dfb=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B370822C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B370822C6
Received: from pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.42.203.116])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B370822C6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 05:22:17 +0000 (UTC)
X-CSE-ConnectionGUID: NsQa2VhPSjWsdzdOc0i/lA==
X-CSE-MsgGUID: 8GWUiTTpQuCufBSl8iv99w==
X-IronPort-AV: E=Sophos;i="6.21,209,1763424000"; d="scan'208";a="10445309"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jan 2026 05:22:14 +0000
Received: from EX19MTAUWC002.ant.amazon.com [205.251.233.51:21190]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.20.50:2525]
 with esmtp (Farcaster)
 id eb93a358-352f-49cb-b443-191db7ea4146; Thu, 8 Jan 2026 05:22:14 +0000 (UTC)
X-Farcaster-Flow-ID: eb93a358-352f-49cb-b443-191db7ea4146
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Thu, 8 Jan 2026 05:22:14 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.244.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Thu, 8 Jan 2026 05:22:12 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Takashi Kozu <takkozu@amazon.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Thu, 8 Jan 2026 14:20:14 +0900
Message-ID: <20260108052020.84218-7-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260108052020.84218-5-takkozu@amazon.com>
References: <20260108052020.84218-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.10]
X-ClientProxiedBy: EX19D044UWB004.ant.amazon.com (10.13.139.134) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1767849737; x=1799385737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DXUMYkpnLSXEHoLG/kd1BdGaN2eajFN/AZsgn3AfCKg=;
 b=jKUbD6Px/4XOLcteChbCp/h2lb+tQZbIPiVCfWkajJm/6zrZASE8EZ4j
 Fyy6FJN1OKZGWSLkDnMTPFBdxKZWsqHHOJnOZ3Y96JtoNssPil3pva5F8
 X0DAzd0FXfMZtBNxlyHIQQgzJwWtSmYiSxw8h9+7oRGcn3bNOAl5tX+5/
 5aY579t80dC7NvRJr5ImxLjL6Hooe2TVbKL1q+N5jux/Jc32qEG3qk70E
 7uT5/B4aSI5I5FYGmxv1aiX68n6mKfyDJaW5LPvdccD/j4+f7duxgOthc
 WLmXXE/4+WaxwRo8ZrkN//9fC41TsHV2IDjo1b54U5xArSAAKotB7d1na
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=amazon.com header.i=@amazon.com
 header.a=rsa-sha256 header.s=amazoncorp2 header.b=jKUbD6Px
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] igb: expose RSS key via
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
2.52.0

