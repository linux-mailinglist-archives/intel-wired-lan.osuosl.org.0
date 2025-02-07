Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B350A2C977
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 17:57:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1988141728;
	Fri,  7 Feb 2025 16:57:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u7kGl-K12OfW; Fri,  7 Feb 2025 16:57:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE72E4172A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738947476;
	bh=1joxkrjSV3CwHMc98Obv0orGPcMjPOovG9muR199xks=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=933886wHHpCBUbPbNGLxlUT9by1avWjwhTPyCFb9lcUjVMTseBNUvyZ2ppLctDBSB
	 tUNwJ/McBNSFHmRA9ay0t3VAYiI/ddbXXwM+AZW7wuHD9fdQyhg8+PxKcgHKokVw0e
	 Zm6E3D4eoZ4V7zPfXZqIhYt7xrvbMKket/lTkJBv9yMat8P5j8SUpNAWvMhAn/HmYT
	 5P7d3FHQsJzR5ofNT/WCbxG6URdvRoa0zxO3BY1SkJhWR0EHrfn8lde5IpDFc4GbDa
	 n8WobVBsfWW+iPvQ855TNIAVzpE8spirbr52D9X0ZggMc+rAYq9sEP7htovN0c6Pmj
	 m6zkSxeDtEhUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE72E4172A;
	Fri,  7 Feb 2025 16:57:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5ECFDCF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4373441677
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:57:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id emcpMEwXS46n for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 16:57:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 09580415E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09580415E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09580415E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 16:57:52 +0000 (UTC)
X-CSE-ConnectionGUID: Mv/4LEwDTu+gpfK3Bz8SiQ==
X-CSE-MsgGUID: b1naC4foRJS9ZGSQYF76FA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39723011"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39723011"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 08:57:52 -0800
X-CSE-ConnectionGUID: 2o2Iz2RiS4maKRVUij5I2w==
X-CSE-MsgGUID: ZDEV69UDRoScdxF1j83dPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="111534612"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 07 Feb 2025 08:57:44 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Fri,  7 Feb 2025 11:56:46 -0500
Message-Id: <20250207165649.2245320-7-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250207165649.2245320-1-faizal.abdul.rahim@linux.intel.com>
References: <20250207165649.2245320-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738947473; x=1770483473;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e4vDhQOYRmgrrKPV24VSo+qnO99w9OQ12X/v3wz0h2c=;
 b=HzJ3PZp9X0HUYxJd2L4ho7ojIwRh3vAwcW/o6xcV4RPjnZZqP3e/7itC
 PR6EZ7jVBolTAPp6TjNR5qxlQ1Hbz//oPX8ZEDElXLLDGdbFDUlaA4hZJ
 Ma0D2Fh+7fAwiaD1QfsQUgaZ0RFZzFwNjPfdclBxEoyDHKiegmjbivtxA
 VUN57jyiPSrfRsH0AgreHQw3Vk+0gtEXBXts8Fjr6YJd8/tDuVK++2/JP
 w0JiBiYPJ9l7GF9M/O58suQtW/z3r1Oc8QEloj3t0MCUhF3rLqsiSlOP9
 iIWKA7wzVN86avTBnqN/lSDuEHnNQEQZfnfIVyLg8IjSaAx+DnPPcysjb
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HzJ3PZp9
Subject: [Intel-wired-lan] [PATCH iwl-next v3 6/9] igc: Add support to set
 tx-min-frag-size
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

Add support to set tx-min-frag-size via set_mm callback in igc.
Increase the max limit of tx-ming-frag-size in ethtool from 252 to 256
since i225/6 value range is 64, 128, 192 and 256.

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  5 +++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 37 ++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  2 +-
 net/ethtool/mm.c                             |  2 +-
 6 files changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 705bd4739e3b..2f3662143589 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -42,6 +42,7 @@ void igc_ethtool_set_ops(struct net_device *);
 
 struct fpe_t {
 	struct ethtool_mmsv mmsv;
+	u32 tx_min_frag_size;
 };
 
 enum igc_mac_filter_type {
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 22db1de02964..038ee89f1e08 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -551,6 +551,7 @@
 #define IGC_TQAVCTRL_PREEMPT_ENA	0x00000002
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
 #define IGC_TQAVCTRL_FUTSCDDIS		0x00000080
+#define IGC_TQAVCTRL_MIN_FRAG_MASK	0x0000C000
 
 #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index e2a14edf7552..081e24f228b2 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1789,6 +1789,11 @@ static int igc_ethtool_set_mm(struct net_device *netdev,
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct fpe_t *fpe = &adapter->fpe;
 
+	fpe->tx_min_frag_size = igc_fpe_get_supported_frag_size(cmd->tx_min_frag_size);
+	if (fpe->tx_min_frag_size != cmd->tx_min_frag_size)
+		NL_SET_ERR_MSG_MOD(extack,
+				   "tx-min-frag-size value set is unsupported. Rounded up to supported value (64, 128, 192, 256)");
+
 	if (fpe->mmsv.pmac_enabled != cmd->pmac_enabled) {
 		if (cmd->pmac_enabled)
 			static_branch_inc(&igc_fpe_enabled);
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 7b3c46993cec..d9de2cfb0c17 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -7,6 +7,12 @@
 #include "igc_hw.h"
 #include "igc_tsn.h"
 
+#define MIN_MULTPLIER_TX_MIN_FRAG	0
+#define MAX_MULTPLIER_TX_MIN_FRAG	3
+/* Frag size is based on the Section 8.12.2 of the SW User Manual */
+#define TX_MIN_FRAG_SIZE		64
+#define TX_MAX_FRAG_SIZE	(TX_MIN_FRAG_SIZE * (MAX_MULTPLIER_TX_MIN_FRAG + 1))
+
 enum igc_txd_popts_type {
 	SMD_V = 0x01,
 	SMD_R = 0x02
@@ -142,6 +148,7 @@ static const struct ethtool_mmsv_ops igc_mmsv_ops = {
 
 void igc_fpe_init(struct igc_adapter *adapter)
 {
+	adapter->fpe.tx_min_frag_size = TX_MIN_FRAG_SIZE;
 	ethtool_mmsv_init(&adapter->fpe.mmsv, adapter->netdev, &igc_mmsv_ops);
 }
 
@@ -292,7 +299,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	tqavctrl = rd32(IGC_TQAVCTRL);
 	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
 		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS |
-		      IGC_TQAVCTRL_PREEMPT_ENA);
+		      IGC_TQAVCTRL_PREEMPT_ENA | IGC_TQAVCTRL_MIN_FRAG_MASK);
 
 	wr32(IGC_TQAVCTRL, tqavctrl);
 
@@ -338,12 +345,34 @@ static void igc_tsn_set_retx_qbvfullthreshold(struct igc_adapter *adapter)
 	wr32(IGC_RETX_CTL, retxctl);
 }
 
+static u8 igc_fpe_get_frag_size_mult(const struct fpe_t *fpe)
+{
+	u8 mult = (fpe->tx_min_frag_size / TX_MIN_FRAG_SIZE) - 1;
+
+	return clamp_t(u8, mult, MIN_MULTPLIER_TX_MIN_FRAG,
+		       MAX_MULTPLIER_TX_MIN_FRAG);
+}
+
+u32 igc_fpe_get_supported_frag_size(u32 frag_size)
+{
+	const u32 supported_sizes[] = {64, 128, 192, 256};
+
+	/* Find the smallest supported size that is >= frag_size */
+	for (int i = 0; i < ARRAY_SIZE(supported_sizes); i++) {
+		if (frag_size <= supported_sizes[i])
+			return supported_sizes[i];
+	}
+
+	return TX_MAX_FRAG_SIZE; /* Should not happen, value > 256 is blocked by ethtool */
+}
+
 static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 	u32 tqavctrl, baset_l, baset_h;
 	u32 sec, nsec, cycle, rxpbs;
 	ktime_t base_time, systim;
+	u32 frag_size_mult;
 	int i;
 
 	wr32(IGC_TSAUXC, 0);
@@ -515,13 +544,15 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	}
 
 	tqavctrl = rd32(IGC_TQAVCTRL) & ~(IGC_TQAVCTRL_FUTSCDDIS |
-		   IGC_TQAVCTRL_PREEMPT_ENA);
-
+		   IGC_TQAVCTRL_PREEMPT_ENA | IGC_TQAVCTRL_MIN_FRAG_MASK);
 	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
 
 	if (adapter->fpe.mmsv.pmac_enabled)
 		tqavctrl |= IGC_TQAVCTRL_PREEMPT_ENA;
 
+	frag_size_mult = igc_fpe_get_frag_size_mult(&adapter->fpe);
+	tqavctrl |= FIELD_PREP(IGC_TQAVCTRL_MIN_FRAG_MASK, frag_size_mult);
+
 	adapter->qbv_count++;
 
 	cycle = adapter->cycle_time;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index 889d70c6d827..898c4630bc70 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -9,7 +9,7 @@
 DECLARE_STATIC_KEY_FALSE(igc_fpe_enabled);
 
 void igc_fpe_init(struct igc_adapter *adapter);
-u32 igc_fpe_get_supported_frag_size(u32 user_frag_size);
+u32 igc_fpe_get_supported_frag_size(u32 frag_size);
 bool igc_fpe_transmitted_smd_v(union igc_adv_tx_desc *tx_desc);
 int igc_tsn_offload_apply(struct igc_adapter *adapter);
 int igc_tsn_reset(struct igc_adapter *adapter);
diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
index 954855758be5..edcb3b66e684 100644
--- a/net/ethtool/mm.c
+++ b/net/ethtool/mm.c
@@ -152,7 +152,7 @@ const struct nla_policy ethnl_mm_set_policy[ETHTOOL_A_MM_MAX + 1] = {
 	[ETHTOOL_A_MM_VERIFY_TIME]	= NLA_POLICY_RANGE(NLA_U32, 1, 128),
 	[ETHTOOL_A_MM_TX_ENABLED]	= NLA_POLICY_MAX(NLA_U8, 1),
 	[ETHTOOL_A_MM_PMAC_ENABLED]	= NLA_POLICY_MAX(NLA_U8, 1),
-	[ETHTOOL_A_MM_TX_MIN_FRAG_SIZE]	= NLA_POLICY_RANGE(NLA_U32, 60, 252),
+	[ETHTOOL_A_MM_TX_MIN_FRAG_SIZE]	= NLA_POLICY_RANGE(NLA_U32, 60, 256),
 };
 
 static void mm_state_to_cfg(const struct ethtool_mm_state *state,
-- 
2.34.1

