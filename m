Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D1DC09262
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 17:02:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5D3540418;
	Sat, 25 Oct 2025 15:02:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JFbtIz2LxtfU; Sat, 25 Oct 2025 15:02:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AF2540435
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761404572;
	bh=YDmjnW0AsEL/okhqqHN2hED4Om4KL/j086oBDjwzykk=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vk8vPcK3vtZL2SAabityVAUT6hg+n4rhZWXIDdVAhB7IHxs52fO1zdCwly3zP+Ev/
	 +ObN1J1v1ULjr9Xy12kifeXB/h+LefGyftDbRwwOGHOaEfAbNQvzmSfzA3MVLsqOAh
	 qsIGrOD2DfroB4LVrl/MH7krpviDcGX8Feg/OZ7Fdq2WZbxv9XCEafn3UlRgLiGXia
	 QAJGYbAXPOTPdeeMgAotMvwXfkVdDXI4xmUWxSfAgwbUS8MkbkLjV73gDLjh5+++Iy
	 rkcKeWZejfBfBKvnyX38AhrvvYtJvqmm0EOipt07t2zIB97u2sBOtmXjHnvBiIpH8/
	 RyKheqkWMRckQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AF2540435;
	Sat, 25 Oct 2025 15:02:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1185F43F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBE9340173
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:02:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rUBKiwJ3J_8E for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 15:02:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.35.192.45;
 helo=pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3869390cb=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F353400B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F353400B1
Received: from pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.35.192.45])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F353400B1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:02:48 +0000 (UTC)
X-CSE-ConnectionGUID: SEaP4e3cS96GDA4Bx9RUeg==
X-CSE-MsgGUID: a3+tNW4yS+SM8ZCHpzI1FQ==
X-IronPort-AV: E=Sophos;i="6.19,255,1754956800"; 
   d="scan'208";a="5490755"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2025 15:02:48 +0000
Received: from EX19MTAUWA002.ant.amazon.com [205.251.233.234:23899]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.16.196:2525]
 with esmtp (Farcaster)
 id 3f31c109-dc24-4606-b5e4-47a8e8aaa521; Sat, 25 Oct 2025 15:02:48 +0000 (UTC)
X-Farcaster-Flow-ID: 3f31c109-dc24-4606-b5e4-47a8e8aaa521
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 25 Oct 2025 15:02:41 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Sat, 25 Oct 2025 15:02:39 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Sun, 26 Oct 2025 00:01:31 +0900
Message-ID: <20251025150136.47618-3-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251025150136.47618-1-enjuk@amazon.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D038UWC003.ant.amazon.com (10.13.139.209) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1761404569; x=1792940569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YDmjnW0AsEL/okhqqHN2hED4Om4KL/j086oBDjwzykk=;
 b=JYtrq9EqhuMOGjGOGG11RFtjbihhNKzTsDS1Mdbc92pmlv8ACnouASC6
 8nMWN0wvSdYnWMSIwaepzx4pE9omjK/ChgoSPtBOCrSDxsRxJNPCqqG1i
 eX4v0oAV6tlKBGW3MQRfSOJwCdXcGrrPi2X4FswMxFvH0maozrwQoaLY7
 7ddfWJYoY7k8wrcoOL7RP1PPLxzoJ9Nt3EW9eYbpXtx/xMhszq0TxfA70
 LFQ0BhyccOWc2KectIguAWDtnk074FFWJcrpWRORmPfA8cKR+Qjmd1Dsf
 05cfRT74BX0485/3T32+kb1f2DawngLO7wXZmkAuyt3el1ffVrJceB9us
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=JYtrq9Eq
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igc: expose RSS key via
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

Implement igc_ethtool_get_rxfh_key_size() and extend
igc_ethtool_get_rxfh() to return the RSS key to userspace.

This can be tested using `ethtool -x <dev>`.

Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index f89c2cbaace0..0482e590bc5a 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1490,6 +1490,11 @@ void igc_write_rss_indir_tbl(struct igc_adapter *adapter)
 	}
 }
 
+static u32 igc_ethtool_get_rxfh_key_size(struct net_device *netdev)
+{
+	return IGC_RSS_KEY_SIZE;
+}
+
 static u32 igc_ethtool_get_rxfh_indir_size(struct net_device *netdev)
 {
 	return IGC_RETA_SIZE;
@@ -1502,10 +1507,13 @@ static int igc_ethtool_get_rxfh(struct net_device *netdev,
 	int i;
 
 	rxfh->hfunc = ETH_RSS_HASH_TOP;
-	if (!rxfh->indir)
-		return 0;
-	for (i = 0; i < IGC_RETA_SIZE; i++)
-		rxfh->indir[i] = adapter->rss_indir_tbl[i];
+
+	if (rxfh->indir)
+		for (i = 0; i < IGC_RETA_SIZE; i++)
+			rxfh->indir[i] = adapter->rss_indir_tbl[i];
+
+	if (rxfh->key)
+		memcpy(rxfh->key, adapter->rss_key, sizeof(adapter->rss_key));
 
 	return 0;
 }
@@ -2182,6 +2190,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.set_coalesce		= igc_ethtool_set_coalesce,
 	.get_rxnfc		= igc_ethtool_get_rxnfc,
 	.set_rxnfc		= igc_ethtool_set_rxnfc,
+	.get_rxfh_key_size	= igc_ethtool_get_rxfh_key_size,
 	.get_rxfh_indir_size	= igc_ethtool_get_rxfh_indir_size,
 	.get_rxfh		= igc_ethtool_get_rxfh,
 	.set_rxfh		= igc_ethtool_set_rxfh,
-- 
2.51.0

