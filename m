Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0A2A58357
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Mar 2025 11:48:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE92660760;
	Sun,  9 Mar 2025 10:48:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GzC-TMS6SMwN; Sun,  9 Mar 2025 10:48:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4F266075F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741517320;
	bh=hUlF9MznGdU5ftIIyvL4PiWMGJ7TCgNuKUUgP104euI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7VAMk4LmrgxVsAx+fyQPOZhrMev0/HW/7W7fy3YX8UQofBO5TJGSi+t6GRdHRMtEu
	 M1rpye07IUl5UNdZaVtWrg+q0/TNOxkKTgre3J9IUjEzmRl3LxDGr/qEZCTOJmrs46
	 VUXBc+pUyUfBOBlh0KI8hj3ZfKKUpYPrjV7GW2jHej0sJ70boXJV2A70SWAXKZFS0E
	 F/HOkpRxxApClD7m6i3R3evsaK6c8zdnFAVsxcst6beiNT44AH2+9wxjXhDZHmHXDx
	 5CnOEVnI7fPmdCaknaqRZtqA1vqeD4oD5tCgVxYYoNjF9SPMqIgmmLNLl+5uy0EONU
	 0xluqnHlze4dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4F266075F;
	Sun,  9 Mar 2025 10:48:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 00E201E3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4895408E9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4XC4rCSJn7vE for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Mar 2025 10:48:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D976F408DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D976F408DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D976F408DF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:37 +0000 (UTC)
X-CSE-ConnectionGUID: qLfgq6UPSROo3sQNb1Pk6g==
X-CSE-MsgGUID: YynEPZqsR22zflMb7tQuYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11367"; a="42636165"
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="42636165"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2025 03:48:37 -0700
X-CSE-ConnectionGUID: RhbiQyynTVa0T2lQaHKf/A==
X-CSE-MsgGUID: LnBMitNIRTKKk1tdoV/hWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="124655128"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa003.jf.intel.com with ESMTP; 09 Mar 2025 03:48:29 -0700
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
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Sun,  9 Mar 2025 06:46:43 -0400
Message-Id: <20250309104648.3895551-10-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741517318; x=1773053318;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SSg48PFLu9MLb8qoAQr7IacJyhQASfev4zsoNzSKWZg=;
 b=mRAG8iY/hB1axqZVMWvFtPnStLyiu0OTSVmvLZkNwF83FTDLS6sW3cYx
 lX3AqzJF6j0fSoryxJQcAtIWGRV7xcJkjvbRCfxGZEL8G9MajSkIdBtEG
 cj3qO/Ds6c+YmByFGfo0z3U2rNcKeLWAC1zt0dG61LuWgEYROGIOPd7Bf
 2AILA2c/v4VcAhn71lZLTgOpJCnEuq2sNJw+xI7c1lWK75hjYxSQ+f44P
 QOKgU/j9VVq92AAYICaF9UAxmih7PLZrLbVm5mzCWiv8NJ8xx/kF3Vs8T
 0PhVWuz6uGK5kkJRTpsgB8z5yHYigAgXAV+vc28bHu2ouLYDTCUTpweMw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mRAG8iY/
Subject: [Intel-wired-lan] [PATCH iwl-next v9 09/14] igc: set the RX packet
 buffer size for TSN mode
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

In preparation for supporting frame preemption, when entering TSN mode,
set the receive packet buffer to 15KB for the Express MAC, 15KB for
the Preemptible MAC and 2KB for the BMC.

References:
I225/I226 SW User Manual, Section 4.7.9, Section 7.1.3.2, Section 8.3.1

The newly introduced macros follow the naming from the i226 SW User Manual
for easy reference.

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  5 ++++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 25 ++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 3564d15df57b..d753a8ec36ae 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -399,17 +399,22 @@
 /* Mask for RX packet buffer size */
 #define IGC_RXPBSIZE_EXP_MASK		GENMASK(5, 0)
 #define IGC_BMC2OSPBSIZE_MASK		GENMASK(11, 6)
+#define IGC_RXPBSIZE_BE_MASK		GENMASK(17, 12)
 /* Mask for timestamp in RX buffer */
 #define IGC_RXPBS_CFG_TS_EN_MASK	GENMASK(31, 31)
 /* High-priority RX packet buffer size (KB). Used for Express traffic when preemption is enabled */
 #define IGC_RXPBSIZE_EXP(x)		FIELD_PREP(IGC_RXPBSIZE_EXP_MASK, (x))
 /* BMC to OS packet buffer size in KB */
 #define IGC_BMC2OSPBSIZE(x)		FIELD_PREP(IGC_BMC2OSPBSIZE_MASK, (x))
+/* Low-priority RX packet buffer size (KB). Used for BE traffic when preemption is enabled */
+#define IGC_RXPBSIZE_BE(x)		FIELD_PREP(IGC_RXPBSIZE_BE_MASK, (x))
 /* Enable RX packet buffer for timestamp descriptor, saving 16 bytes per packet if set */
 #define IGC_RXPBS_CFG_TS_EN		FIELD_PREP(IGC_RXPBS_CFG_TS_EN_MASK, 1)
 /* Default value following I225/I226 SW User Manual Section 8.3.1 */
 #define IGC_RXPBSIZE_EXP_BMC_DEFAULT ( \
 	IGC_RXPBSIZE_EXP(34) | IGC_BMC2OSPBSIZE(2))
+#define IGC_RXPBSIZE_EXP_BMC_BE_TSN ( \
+	IGC_RXPBSIZE_EXP(15) | IGC_BMC2OSPBSIZE(2) | IGC_RXPBSIZE_BE(15))
 
 /* Mask for TX packet buffer size */
 #define IGC_TXPB0SIZE_MASK		GENMASK(5, 0)
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 498741d83ca6..5b3b1bc0b64a 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -125,6 +125,27 @@ static void igc_tsn_tx_arb(struct igc_adapter *adapter, u16 *queue_per_tc)
 	wr32(IGC_TXARB, txarb);
 }
 
+/**
+ * igc_tsn_set_rxpbsize - Set the receive packet buffer size
+ * @adapter: Pointer to the igc_adapter structure
+ * @rxpbs_exp_bmc_be: Value to set the receive packet buffer size, including
+ *                    express buffer, BMC buffer, and Best Effort buffer
+ *
+ * The IGC_RXPBS register value may include allocations for the Express buffer,
+ * BMC buffer, Best Effort buffer, and the timestamp descriptor buffer (IGC_RXPBS_CFG_TS_EN).
+ */
+static void igc_tsn_set_rxpbsize(struct igc_adapter *adapter, u32 rxpbs_exp_bmc_be)
+{
+	struct igc_hw *hw = &adapter->hw;
+	u32 rxpbs = rd32(IGC_RXPBS);
+
+	rxpbs &= ~(IGC_RXPBSIZE_EXP_MASK | IGC_BMC2OSPBSIZE_MASK |
+		   IGC_RXPBSIZE_BE_MASK);
+	rxpbs |= rxpbs_exp_bmc_be;
+
+	wr32(IGC_RXPBS, rxpbs);
+}
+
 /* Returns the TSN specific registers to their default values after
  * the adapter is reset.
  */
@@ -139,6 +160,8 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_DEFAULT);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
 
+	igc_tsn_set_rxpbsize(adapter, IGC_RXPBSIZE_EXP_BMC_DEFAULT);
+
 	if (igc_is_device_id_i226(hw))
 		igc_tsn_restore_retx_default(adapter);
 
@@ -202,6 +225,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
 
+	igc_tsn_set_rxpbsize(adapter, IGC_RXPBSIZE_EXP_BMC_BE_TSN);
+
 	if (igc_is_device_id_i226(hw))
 		igc_tsn_set_retx_qbvfullthreshold(adapter);
 
-- 
2.34.1

