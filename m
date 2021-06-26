Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C7C3B4B88
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 02:33:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD08760663;
	Sat, 26 Jun 2021 00:33:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d-__OiMff6wG; Sat, 26 Jun 2021 00:33:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFB06605E7;
	Sat, 26 Jun 2021 00:33:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F0291C11AD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D7496063F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9NzoDeTdFl5Q for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jun 2021 00:33:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 232E9605C9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:44 +0000 (UTC)
IronPort-SDR: 8dW28hmgoGVtCMVgx9vGXiIz8/E36+bFoPWEnxhvHjeRSFunex+oFFlrE9TixGaqhesvi50lS8
 TbA8+r9Wo17A==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="293393933"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="293393933"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:43 -0700
IronPort-SDR: t9UosFjQbN9geqQToWJfOIci8cXBPdoPXr9nTk/h+zomb+IssAAK7Is+gjTC9xs2DqCpHJp2kQ
 OBxvRhg9jTNw==
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="557008622"
Received: from aschmalt-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.160.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:43 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Jun 2021 17:33:11 -0700
Message-Id: <20210626003314.3159402-10-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210626003314.3159402-1-vinicius.gomes@intel.com>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 09/12] igc: Add support for
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
Cc: mkubecek@suse.cz, jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com,
 jhs@mojatatu.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sets the hardware register that enables the frame preemption feature.

Some code is moved around because the PREEMPT_ENA bit in the
IGC_TQAVCTRL register is recommended to be set after the individual
queue registers (IGC_TXQCTL[i]) are set.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  5 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  4 ++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 58 +++++++++++++-------
 3 files changed, 48 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index ccd5f6b02e3a..9b2ddcbf65fb 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -342,6 +342,11 @@ extern char igc_driver_name[];
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
index c3a5a5518790..a2ea057d8e6e 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -472,10 +472,14 @@
 /* Transmit Scheduling */
 #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
+#define IGC_TQAVCTRL_PREEMPT_ENA	0x00000002
+#define IGC_TQAVCTRL_MIN_FRAG_MASK	0x0000C000
+#define IGC_TQAVCTRL_MIN_FRAG_SHIFT	14
 
 #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
 #define IGC_TXQCTL_STRICT_END		0x00000004
+#define IGC_TXQCTL_PREEMPTABLE		0x00000008
 
 /* Receive Checksum Control */
 #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index f2dfc8059847..8af5b03e17ed 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -28,6 +28,9 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 	if (is_any_launchtime(adapter))
 		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
 
+	if (adapter->frame_preemption_active)
+		new_flags |= IGC_FLAG_TSN_PREEMPT_ENABLED;
+
 	return new_flags;
 }
 
@@ -40,12 +43,15 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	u32 tqavctrl;
 	int i;
 
+	adapter->add_frag_size = IGC_I225_MIN_FRAG_SIZE_DEFAULT;
+
 	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
 
 	tqavctrl = rd32(IGC_TQAVCTRL);
 	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
-		      IGC_TQAVCTRL_ENHANCED_QAV);
+		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_PREEMPT_ENA |
+		      IGC_TQAVCTRL_MIN_FRAG_MASK);
 	wr32(IGC_TQAVCTRL, tqavctrl);
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
@@ -63,7 +69,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	wr32(IGC_QBVCYCLET_S, NSEC_PER_SEC);
 	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
 
-	adapter->flags &= ~IGC_FLAG_TSN_QBV_ENABLED;
+	adapter->flags &= ~IGC_FLAG_TSN_ANY_ENABLED;
 
 	return 0;
 }
@@ -74,22 +80,36 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	u32 tqavctrl, baset_l, baset_h;
 	u32 sec, nsec, cycle;
 	ktime_t base_time, systim;
+	u32 frag_size_mult;
 	int i;
 
-	cycle = adapter->cycle_time;
-	base_time = adapter->base_time;
-
 	wr32(IGC_TSAUXC, 0);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
 
-	tqavctrl = rd32(IGC_TQAVCTRL);
-	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
-	wr32(IGC_TQAVCTRL, tqavctrl);
+	cycle = adapter->cycle_time;
+	base_time = adapter->base_time;
 
 	wr32(IGC_QBVCYCLET_S, cycle);
 	wr32(IGC_QBVCYCLET, cycle);
 
+	nsec = rd32(IGC_SYSTIML);
+	sec = rd32(IGC_SYSTIMH);
+
+	systim = ktime_set(sec, nsec);
+
+	if (ktime_compare(systim, base_time) > 0) {
+		s64 n;
+
+		n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
+		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
+	}
+
+	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
+
+	wr32(IGC_BASET_H, baset_h);
+	wr32(IGC_BASET_L, baset_l);
+
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
 		u32 txqctl = 0;
@@ -110,25 +130,25 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		if (ring->launchtime_enable)
 			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
 
+		if (adapter->frame_preemption_active && ring->preemptible)
+			txqctl |= IGC_TXQCTL_PREEMPTABLE;
+
 		wr32(IGC_TXQCTL(i), txqctl);
 	}
 
-	nsec = rd32(IGC_SYSTIML);
-	sec = rd32(IGC_SYSTIMH);
+	tqavctrl = rd32(IGC_TQAVCTRL) &
+		~(IGC_TQAVCTRL_MIN_FRAG_MASK | IGC_TQAVCTRL_PREEMPT_ENA);
 
-	systim = ktime_set(sec, nsec);
+	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
 
-	if (ktime_compare(systim, base_time) > 0) {
-		s64 n;
+	if (adapter->frame_preemption_active)
+		tqavctrl |= IGC_TQAVCTRL_PREEMPT_ENA;
 
-		n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
-		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
-	}
+	frag_size_mult = ethtool_frag_size_to_mult(adapter->add_frag_size);
 
-	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
+	tqavctrl |= frag_size_mult << IGC_TQAVCTRL_MIN_FRAG_SHIFT;
 
-	wr32(IGC_BASET_H, baset_h);
-	wr32(IGC_BASET_L, baset_l);
+	wr32(IGC_TQAVCTRL, tqavctrl);
 
 	return 0;
 }
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
