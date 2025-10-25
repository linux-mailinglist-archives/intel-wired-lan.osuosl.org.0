Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A90C0925C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 17:02:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D516640977;
	Sat, 25 Oct 2025 15:02:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z0R8CcaCC6Fa; Sat, 25 Oct 2025 15:02:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DF2F40895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761404542;
	bh=MdAwOOVxwXTDFqzi6yejxe31XPP7cWoOVGwbgmIJwtA=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hExnGhnD24jyznD0Fgrn7yrVvcKIYR8Jpun+iFM+dekYiODeSQt2u3blb8ggPRTzk
	 KRw4pb4apyHsL9M1/hf3VzI5dmKz1wXSe2heLntwdjO1l3RpF92ZEP0nFfH3u3uzHR
	 5cK31OyK9VRZGIcyP7f+TOK2+kT2MwhweGGhIXjzn7mh74HBGj5EAJdPuh4xrCAvAO
	 m7xC2n1yNuHpWkM6E6kx49MspdM1GkGByfGHlVv4nFYfte+EpEzeWiPPbbqroyXtRG
	 +sor17U+oXF7K9YmtCdLPdp5DGodEQBdBQSe/dSWvPzsybJFiQ4x9AmuaQWw5cyqVJ
	 sMEFos7Hbh9oA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DF2F40895;
	Sat, 25 Oct 2025 15:02:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BA4CB43F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B8C460703
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:02:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Hu8agxcUcQo for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 15:02:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.35.192.45;
 helo=pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3869390cb=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 82BDF606B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82BDF606B6
Received: from pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.35.192.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82BDF606B6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 15:02:18 +0000 (UTC)
X-CSE-ConnectionGUID: schALcYkRdWS39taqMUBmg==
X-CSE-MsgGUID: OSyHHbElSleJFqKtsoNo5Q==
X-IronPort-AV: E=Sophos;i="6.19,255,1754956800"; 
   d="scan'208";a="5490740"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-011.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2025 15:02:16 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.104:19522]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.8.44:2525] with
 esmtp (Farcaster)
 id 4c16cc87-fb6a-457e-b2c0-c9d521fb9078; Sat, 25 Oct 2025 15:02:16 +0000 (UTC)
X-Farcaster-Flow-ID: 4c16cc87-fb6a-457e-b2c0-c9d521fb9078
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 25 Oct 2025 15:02:15 +0000
Received: from b0be8375a521.amazon.com (10.37.244.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Sat, 25 Oct 2025 15:02:13 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Sun, 26 Oct 2025 00:01:30 +0900
Message-ID: <20251025150136.47618-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251025150136.47618-1-enjuk@amazon.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.8]
X-ClientProxiedBy: EX19D044UWB004.ant.amazon.com (10.13.139.134) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1761404538; x=1792940538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MdAwOOVxwXTDFqzi6yejxe31XPP7cWoOVGwbgmIJwtA=;
 b=QEqH14j8702rwZ3K6v7qLW8fAAtFNjzxLMO/rYePBD5Yim9TLGnU6p40
 EvKgJ9ZaS/q8tOVEKtLdHF1jDFuC1esdtxyaUgnXB8eEuxj0vxrVI+X5g
 FYkOHYkZVJ7O6W813tQzcAoZCJ+zTOPAUkxOxoDwcpumf5eafX1J5QKIO
 d6rFtAQOJsnjL2fBTl1MZdWgUY6TiKFpFp+tOuUMEbSik4F1F+RDI2L9q
 NdqJPSTZZOI4uXfHTXcg1lMIs6NEbdd8wmKHvNP3KfCCgoSdpTMTcJliw
 3pJGMeWRn9YVLBc3EP9aOZnG+jHlaHrDvAsGgq1onvXXzd30rUqS/68G4
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=QEqH14j8
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] igc: prepare for RSS key
 get/set support
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

Store the RSS key inside struct igc_adapter and introduce the
igc_write_rss_key() helper function. This allows the driver to program
the RSSRK registers using a persistent RSS key, instead of using a
stack-local buffer in igc_setup_mrqc().

This is a preparation patch for adding RSS key get/set support in
subsequent changes, and no functional change is intended in this patch.

Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  3 +++
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 12 ++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  6 ++----
 3 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index a427f05814c1..dd159397d191 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -30,6 +30,7 @@ void igc_ethtool_set_ops(struct net_device *);
 
 #define MAX_ETYPE_FILTER		8
 #define IGC_RETA_SIZE			128
+#define IGC_RSS_KEY_SIZE		40
 
 /* SDP support */
 #define IGC_N_EXTTS	2
@@ -302,6 +303,7 @@ struct igc_adapter {
 	unsigned int nfc_rule_count;
 
 	u8 rss_indir_tbl[IGC_RETA_SIZE];
+	u8 rss_key[IGC_RSS_KEY_SIZE];
 
 	unsigned long link_check_timeout;
 	struct igc_info ei;
@@ -360,6 +362,7 @@ unsigned int igc_get_max_rss_queues(struct igc_adapter *adapter);
 void igc_set_flag_queue_pairs(struct igc_adapter *adapter,
 			      const u32 max_rss_queues);
 int igc_reinit_queues(struct igc_adapter *adapter);
+void igc_write_rss_key(struct igc_adapter *adapter);
 void igc_write_rss_indir_tbl(struct igc_adapter *adapter);
 bool igc_has_link(struct igc_adapter *adapter);
 void igc_reset(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index ca93629b1d3a..f89c2cbaace0 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1456,6 +1456,18 @@ static int igc_ethtool_set_rxnfc(struct net_device *dev,
 	}
 }
 
+void igc_write_rss_key(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 val;
+	int i;
+
+	for (i = 0; i < IGC_RSS_KEY_SIZE / 4; i++) {
+		val = get_unaligned_le32(&adapter->rss_key[i * 4]);
+		wr32(IGC_RSSRK(i), val);
+	}
+}
+
 void igc_write_rss_indir_tbl(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 728d7ca5338b..1f0a601cbcef 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -778,11 +778,9 @@ static void igc_setup_mrqc(struct igc_adapter *adapter)
 	struct igc_hw *hw = &adapter->hw;
 	u32 j, num_rx_queues;
 	u32 mrqc, rxcsum;
-	u32 rss_key[10];
 
-	netdev_rss_key_fill(rss_key, sizeof(rss_key));
-	for (j = 0; j < 10; j++)
-		wr32(IGC_RSSRK(j), rss_key[j]);
+	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
+	igc_write_rss_key(adapter);
 
 	num_rx_queues = adapter->rss_queues;
 
-- 
2.51.0

