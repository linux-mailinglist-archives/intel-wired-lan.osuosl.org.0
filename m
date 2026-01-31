Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEO1CFoufmlLWQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 17:31:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 940EAC3034
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 17:31:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB7BE404F6;
	Sat, 31 Jan 2026 16:31:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKSB3pJm7icb; Sat, 31 Jan 2026 16:31:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2130A40569
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769877078;
	bh=WYHECLqIowuumL8zjbgitFuB0m6Aqj/Lu6CHXxY5A6k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NKK4/HTkLEKj6m3vHC0ITybwNHmgiu+MBtvdaghGLFWQrXh8dzt03K6wMXPg/Ein1
	 wo1s9kCwAggW4eZOFlQavT7uKyK1Mnh7kYuORJ0HmRdeb+JDkKsteboJqeVBn2Q9/0
	 I1LhFtFwbH5Dcc/sgzJpm5bne+z/EWNCT/kCvXbencHdDk7yqICP/hGcptVoKzbnwv
	 Fv/0Q1vbvig8NiNNakCouQLNjBxs/rCELdgH1weykdXP012qdVAHsQSF1ET3/hrg/y
	 1Nh/et7KooA0yknx5yOoZTEkDBGXjzCV2gtuikxjIR6pRgpSz1ldvWfqGR1qJfUGB+
	 TEJkaMaipPhcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2130A40569;
	Sat, 31 Jan 2026 16:31:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BE6E869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F8C2404F6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CYiHgVAWzORY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 16:31:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6ED954040B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6ED954040B
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6ED954040B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:31:14 +0000 (UTC)
Received: from ms-a2 (248.212.13.160.dy.iij4u.or.jp [160.13.212.248])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 60VGUsmQ039327
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 1 Feb 2026 01:30:54 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Simon Horman <horms@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 kohei.enju@gmail.com, Kohei Enju <kohei@enjuk.jp>
Date: Sat, 31 Jan 2026 16:29:36 +0000
Message-ID: <20260131163037.88108-2-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260131163037.88108-1-kohei@enjuk.jp>
References: <20260131163037.88108-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=WYHECLqIowuumL8zjbgitFuB0m6Aqj/Lu6CHXxY5A6k=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1769877054; v=1;
 b=tswXrpIdKGoR5Oynz75znwQLqbFYzIefazHttza7Q9yI7dDxITO18a03ODDo/WFX
 2r1KKtUoHCmzKN5b8VJfNHF+X1jGPm5C4uClkDPZ5vpHkEBQkbe8zVUiJ/biEv/9
 8kn5lYOTfZCjsXENCqBwrlxVuBYaZMnKph0TXyCkKHwcedLWwEsUfqzh3BZLnzdr
 TQOT4f8L9wGUSYt8xvzlNVRIa9w+YIS2cA+8cxjiQ5ZdCDRvvVg+PK2EgKcg80yd
 wNyAz4w/uvj2ojHP8CB+6VokNVPtiEnViUX55gJJ+uyNLUE23iphFx/9Pdu30adz
 aI8HWyQOzoaMV3zJPqcQaA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=tswXrpId
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: prepare for RSS key
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:mid,enjuk.jp:email];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 940EAC3034
X-Rspamd-Action: no action

Store the RSS key inside struct igc_adapter and introduce the
igc_write_rss_key() helper function. This allows the driver to program
the RSSRK registers using a persistent RSS key, instead of using a
stack-local buffer in igc_setup_mrqc().

This is a preparation patch for adding RSS key get/set support in
subsequent changes, and no functional change is intended in this patch.

Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/igc/igc.h         |  3 +++
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  8 ++++----
 3 files changed, 27 insertions(+), 4 deletions(-)

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
index 3172cdbca9cc..1b4075e7e8e6 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1460,6 +1460,26 @@ static int igc_ethtool_set_rxnfc(struct net_device *dev,
 	}
 }
 
+/**
+ * igc_write_rss_key - Program the RSS key into device registers
+ * @adapter: board private structure
+ *
+ * Write the RSS key stored in adapter->rss_key to the IGC_RSSRK registers.
+ * Each 32-bit chunk of the key is read using get_unaligned_le32() and written
+ * to the appropriate register.
+ */
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
index 89a321a344d2..98410f9d7828 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -778,11 +778,8 @@ static void igc_setup_mrqc(struct igc_adapter *adapter)
 	struct igc_hw *hw = &adapter->hw;
 	u32 j, num_rx_queues;
 	u32 mrqc, rxcsum;
-	u32 rss_key[10];
 
-	netdev_rss_key_fill(rss_key, sizeof(rss_key));
-	for (j = 0; j < 10; j++)
-		wr32(IGC_RSSRK(j), rss_key[j]);
+	igc_write_rss_key(adapter);
 
 	num_rx_queues = adapter->rss_queues;
 
@@ -5046,6 +5043,9 @@ static int igc_sw_init(struct igc_adapter *adapter)
 
 	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
 
+	/* init RSS key */
+	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
+
 	/* set default ring sizes */
 	adapter->tx_ring_count = IGC_DEFAULT_TXD;
 	adapter->rx_ring_count = IGC_DEFAULT_RXD;
-- 
2.51.0

