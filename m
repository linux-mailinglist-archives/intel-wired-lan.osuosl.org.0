Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989CE52E1AC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 03:16:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48B9C40423;
	Fri, 20 May 2022 01:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2YGyfZJwrQ8N; Fri, 20 May 2022 01:16:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2352640488;
	Fri, 20 May 2022 01:16:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 211EC1C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB903403FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRq80bXD_mJQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 01:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2453940562
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653009357; x=1684545357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gqLCMG/R9sxTw+Lomv+Xi2zf1twDlvBLdXZysAz3LpU=;
 b=kI0QGTSKvxiV8UA/37/hKCrrZmDXoWsicL2bPEjxGBuy11LdlaEPvNJc
 96K2ZqLgDjYvYEUUp9kWDXm6zATboI+0eYVhuwkcGsFUdhckbDxl7tzL0
 36Alp6VVTBG7l30DR8xOJjGMdj8X8mjLMe+YDgZC5qFIRIiucKYAQvudI
 WppzCbJ0auNc7jYOHpIkEuZ4JcedGC7g16aDtFX6iA3qr6KHEbRiDKbd7
 XxYb9zQ6MJA5F+m2uqpjBaGPf08k9oxmuFVUD1zTCtWgoseDYakpdKcR+
 GKiIUIR7M7nJivMO0UrCw/mT0CeSAOzDSonj6+Wu8FR6v4psPBKQNzhml Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="333064165"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="333064165"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="570534559"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.84])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 19 May 2022 18:15:35 -0700
Message-Id: <20220520011538.1098888-9-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220520011538.1098888-1-vinicius.gomes@intel.com>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v5 08/11] igc: Add support for
 setting frame preemption configuration
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, boon.leong.ong@intel.com,
 xiyou.wangcong@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set the hardware register that enables the frame preemption feature.

Some code is moved around because the PREEMPT_ENA bit in the
IGC_TQAVCTRL register is recommended to be set after the individual
queue registers (IGC_TXQCTL[i]) are set.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  8 ++++-
 drivers/net/ethernet/intel/igc/igc_defines.h |  5 +++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 37 +++++++++++++++-----
 3 files changed, 41 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index df2fc71825a6..11da66bd9c2c 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -300,9 +300,10 @@ extern char igc_driver_name[];
 #define IGC_FLAG_RX_LEGACY		BIT(16)
 #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
 #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
+#define IGC_FLAG_TSN_PREEMPT_ENABLED	BIT(19)
 
 #define IGC_FLAG_TSN_ANY_ENABLED \
-	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
+	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_PREEMPT_ENABLED | IGC_FLAG_TSN_PREEMPT_ENABLED)
 
 #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
 #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
@@ -351,6 +352,11 @@ extern char igc_driver_name[];
 #define IGC_I225_RX_LATENCY_1000	300
 #define IGC_I225_RX_LATENCY_2500	1485
 
+/* From the datasheet section 8.12.4 Tx Qav Control TQAVCTRL,
+ * MIN_FRAG initial value.
+ */
+#define IGC_I225_MIN_FRAG_SIZE_DEFAULT	68
+
 /* RX and TX descriptor control thresholds.
  * PTHRESH - MAC will consider prefetch if it has fewer than this number of
  *           descriptors available in its onboard memory.
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 62fff53254dd..68faca584e34 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -513,6 +513,9 @@
 /* Transmit Scheduling */
 #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
+#define IGC_TQAVCTRL_PREEMPT_ENA	0x00000002
+#define IGC_TQAVCTRL_MIN_FRAG_MASK	0x0000C000
+#define IGC_TQAVCTRL_MIN_FRAG_SHIFT	14
 
 #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
@@ -526,6 +529,8 @@
 
 #define IGC_MAX_SR_QUEUES		2
 
+#define IGC_TXQCTL_PREEMPTABLE		0x00000008
+
 /* Receive Checksum Control */
 #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
 #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum disabled */
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 40a730f8b3f3..6e285bc15a6b 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -45,6 +45,9 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 	if (is_cbs_enabled(adapter))
 		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
 
+	if (adapter->frame_preemption_active)
+		new_flags |= IGC_FLAG_TSN_PREEMPT_ENABLED;
+
 	return new_flags;
 }
 
@@ -57,6 +60,8 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	u32 tqavctrl, rxpbs;
 	int i;
 
+	adapter->add_frag_size = IGC_I225_MIN_FRAG_SIZE_DEFAULT;
+
 	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
 
@@ -67,7 +72,8 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 
 	tqavctrl = rd32(IGC_TQAVCTRL);
 	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
-		      IGC_TQAVCTRL_ENHANCED_QAV);
+		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_PREEMPT_ENA |
+		      IGC_TQAVCTRL_MIN_FRAG_MASK);
 	wr32(IGC_TQAVCTRL, tqavctrl);
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
@@ -79,7 +85,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	wr32(IGC_QBVCYCLET_S, 0);
 	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
 
-	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
+	adapter->flags &= ~IGC_FLAG_TSN_ANY_ENABLED;
 
 	return 0;
 }
@@ -90,11 +96,9 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	u32 tqavctrl, baset_l, baset_h;
 	u32 sec, nsec, cycle, rxpbs;
 	ktime_t base_time, systim;
+	u32 frag_size_mult;
 	int i;
 
-	cycle = adapter->cycle_time;
-	base_time = adapter->base_time;
-
 	wr32(IGC_TSAUXC, 0);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
@@ -103,9 +107,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	rxpbs |= IGC_RXPBSIZE_TSN;
 	wr32(IGC_RXPBS, rxpbs);
 
-	tqavctrl = rd32(IGC_TQAVCTRL);
-	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
-	wr32(IGC_TQAVCTRL, tqavctrl);
+	cycle = adapter->cycle_time;
+	base_time = adapter->base_time;
 
 	wr32(IGC_QBVCYCLET_S, cycle);
 	wr32(IGC_QBVCYCLET, cycle);
@@ -216,6 +219,10 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 			wr32(IGC_TQAVHC(i), 0);
 		}
 skip_cbs:
+
+		if (adapter->frame_preemption_active && ring->preemptible)
+			txqctl |= IGC_TXQCTL_PREEMPTABLE;
+
 		wr32(IGC_TXQCTL(i), txqctl);
 	}
 
@@ -236,6 +243,20 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	wr32(IGC_BASET_H, baset_h);
 	wr32(IGC_BASET_L, baset_l);
 
+	tqavctrl = rd32(IGC_TQAVCTRL) &
+		~(IGC_TQAVCTRL_MIN_FRAG_MASK | IGC_TQAVCTRL_PREEMPT_ENA);
+
+	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
+
+	if (adapter->frame_preemption_active)
+		tqavctrl |= IGC_TQAVCTRL_PREEMPT_ENA;
+
+	frag_size_mult = ethtool_frag_size_to_mult(adapter->add_frag_size);
+
+	tqavctrl |= frag_size_mult << IGC_TQAVCTRL_MIN_FRAG_SHIFT;
+
+	wr32(IGC_TQAVCTRL, tqavctrl);
+
 	return 0;
 }
 
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
