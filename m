Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B8CD3A1FA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 09:46:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47AE14028F;
	Mon, 19 Jan 2026 08:46:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1qLTKJOhqmEv; Mon, 19 Jan 2026 08:46:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC0B8401EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768812378;
	bh=R9oS2nKM1IPBYxWxTXCOu7kJf4dDn6+iSczw0BdZD6s=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bLnIGhbJlXpl04nmQzqd92gm0VI1VIeC4Vc8CFVCPSiBSJLNdfXtw2Sivb62M1anx
	 Elvrgu4jYcTMwG9vbTDi9veuAejVaXKbEJqfv0GvOmuAaCphzOzgGDqrWuz/490gvB
	 VWfssEVMgvN1u0Eaa8eJ6QyvmWQ8AZFnshRMna+sa8M+lOtUHeh+5fFBq212fH1JL3
	 gOmiryQ31EVjtwflFkgM/BbDGvWvPjFDUjWcV+//1dWRXAWBaUcbLmT24awrEaGLxA
	 JHZ9DpUTrqpZ0xUmnspjUb1FMwuK0T0iRS+LU+26UpJ8uTmqmAT1xW7Xj7mGNErMzA
	 DI6lMh/hieC6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC0B8401EC;
	Mon, 19 Jan 2026 08:46:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A8322160
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:46:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 983FE401E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:46:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UiFCkMSmCWOb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 08:46:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.246.77.92;
 helo=pdx-out-004.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=472495a9d=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B7FCC401DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7FCC401DE
Received: from pdx-out-004.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-004.esa.us-west-2.outbound.mail-perimeter.amazon.com [44.246.77.92])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7FCC401DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:46:16 +0000 (UTC)
X-CSE-ConnectionGUID: OMGHLEjcSYCWqyhon8vG2Q==
X-CSE-MsgGUID: JV6XATKDQqua4Msy+YZP/A==
X-IronPort-AV: E=Sophos;i="6.21,237,1763424000"; d="scan'208";a="11111678"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-004.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jan 2026 08:46:13 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.51:1152]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.27.220:2525]
 with esmtp (Farcaster)
 id dbcecbfb-a02e-458f-9e01-2cbb3669f167; Mon, 19 Jan 2026 08:46:13 +0000 (UTC)
X-Farcaster-Flow-ID: dbcecbfb-a02e-458f-9e01-2cbb3669f167
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Mon, 19 Jan 2026 08:46:13 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Mon, 19 Jan 2026 08:46:11 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <anthony.l.nguyen@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <aleksandr.loktionov@intel.com>,
 <pmenzel@molgen.mpg.de>, <piotr.kwapulinski@intel.com>, Takashi Kozu
 <takkozu@amazon.com>
Date: Mon, 19 Jan 2026 17:45:05 +0900
Message-ID: <20260119084511.95287-6-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260119084511.95287-5-takkozu@amazon.com>
References: <20260119084511.95287-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.10]
X-ClientProxiedBy: EX19D042UWA003.ant.amazon.com (10.13.139.44) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1768812376; x=1800348376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R9oS2nKM1IPBYxWxTXCOu7kJf4dDn6+iSczw0BdZD6s=;
 b=C5QeoQSdCDYs57xgumk8uGvy2/SuJW9b7Hu6b/jZV56JAD/xJ7k9r1Z5
 V4hZ5kkE+XnChSO76++g+QamUPeSXxpXk5msHVUpt4LJ60Uv8Cg4CbF2R
 EK52tmpI3x9+fL+2NtvYKS+RFLGL7qnEHLvI45e6YMGsfFUaBxYYSTgDS
 pyEasYFTbmqsePuOaPiI9NIYf+KH8E3vI6gDM8DxJvtx2WX//vlCqFA0x
 oDYlLD+BBTpvvBDrnwVdHTFUPPQsyHTAd9u5tHRzSNb4ITKKQ4Ho8YlIw
 +PFm+d62T3zuJJew6kbUvJNP0fn7rLu9vKbSVm/AALeb42OXuKfGiFw6/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=C5QeoQSd
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/3] igb: prepare for RSS key
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

Store the RSS key inside struct igb_adapter and introduce the
igb_write_rss_key() helper function. This allows the driver to program
the E1000 registers using a persistent RSS key, instead of using a
stack-local buffer in igb_setup_mrqc().

Signed-off-by: Takashi Kozu <takkozu@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb.h         |  3 +++
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 21 ++++++++++++++++++++
 drivers/net/ethernet/intel/igb/igb_main.c    |  8 ++++----
 3 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 0fff1df81b7b..8c9b02058cec 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -495,6 +495,7 @@ struct hwmon_buff {
 #define IGB_N_PEROUT	2
 #define IGB_N_SDP	4
 #define IGB_RETA_SIZE	128
+#define IGB_RSS_KEY_SIZE	40
 
 enum igb_filter_match_flags {
 	IGB_FILTER_FLAG_ETHER_TYPE = 0x1,
@@ -655,6 +656,7 @@ struct igb_adapter {
 	struct i2c_client *i2c_client;
 	u32 rss_indir_tbl_init;
 	u8 rss_indir_tbl[IGB_RETA_SIZE];
+	u8 rss_key[IGB_RSS_KEY_SIZE];
 
 	unsigned long link_check_timeout;
 	int copper_tries;
@@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *);
 void igb_reinit_locked(struct igb_adapter *);
 void igb_reset(struct igb_adapter *);
 int igb_reinit_queues(struct igb_adapter *);
+void igb_write_rss_key(struct igb_adapter *adapter);
 void igb_write_rss_indir_tbl(struct igb_adapter *);
 int igb_set_spd_dplx(struct igb_adapter *, u32, u8);
 int igb_setup_tx_resources(struct igb_ring *);
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 10e2445e0ded..5107b0de4fa3 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3016,6 +3016,27 @@ static int igb_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
 	return ret;
 }
 
+/**
+ * igb_write_rss_key - Program the RSS key into device registers
+ * @adapter: board private structure
+ *
+ * Write the RSS key stored in adapter->rss_key to the E1000 hardware registers.
+ * Each 32-bit chunk of the key is read using get_unaligned_le32() and written
+ * to the appropriate register.
+ */
+void igb_write_rss_key(struct igb_adapter *adapter)
+{
+	ASSERT_RTNL();
+
+	struct e1000_hw *hw = &adapter->hw;
+
+	for (int i = 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
+		u32 val = get_unaligned_le32(&adapter->rss_key[i * 4]);
+
+		wr32(E1000_RSSRK(i), val);
+	}
+}
+
 static int igb_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 85f9589cc568..568f491053ce 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4050,6 +4050,9 @@ static int igb_sw_init(struct igb_adapter *adapter)
 
 	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
 
+	/* init RSS key */
+	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
+
 	/* set default ring sizes */
 	adapter->tx_ring_count = IGB_DEFAULT_TXD;
 	adapter->rx_ring_count = IGB_DEFAULT_RXD;
@@ -4525,11 +4528,8 @@ static void igb_setup_mrqc(struct igb_adapter *adapter)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 mrqc, rxcsum;
 	u32 j, num_rx_queues;
-	u32 rss_key[10];
 
-	netdev_rss_key_fill(rss_key, sizeof(rss_key));
-	for (j = 0; j < 10; j++)
-		wr32(E1000_RSSRK(j), rss_key[j]);
+	igb_write_rss_key(adapter);
 
 	num_rx_queues = adapter->rss_queues;
 
-- 
2.52.0

