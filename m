Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4072CA5835A
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Mar 2025 11:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF4D36075B;
	Sun,  9 Mar 2025 10:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brsueCDbGjPr; Sun,  9 Mar 2025 10:48:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4C06606F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741517329;
	bh=hZqQFZ7Ah2eteo9XhozdvMkbkJtBku+LFsctw/iy3kI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ew7vSyfII9QlNUG6awsyiKyyFonzXGECil9K4w8ov0AvJvfTcO60zBMj/ngvENUCh
	 r50QGq85l8z9IO5e8+jhBvzQTQ4yYTWWh/tVVj2D9ipuh5pvc15ENPzbw9+XZItspk
	 1/LKZImFoJkKFY2cwk/UWN7l40vn9YwwngGc6qhduhnkt2T8g69tvDx+bfgkS4TEpN
	 xFyZCGtD4/9fVCA7iQWtt9GNy9jKd+PvajkUqEzeJaJVNImaQJMMUACj941yOl82qq
	 jPGl+fHueXoqrVwZh9zbWPNiWB/EU+E4/FalojSyrrxaViRVbbuU9Ot1m+P1OM1I9g
	 90TjcHnizXyHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4C06606F6;
	Sun,  9 Mar 2025 10:48:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 913881E3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E0B0400E5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0vJ9Rbo5hIES for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Mar 2025 10:48:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9B787400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B787400B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B787400B9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Mar 2025 10:48:45 +0000 (UTC)
X-CSE-ConnectionGUID: IWVWxWL+SNGjvClyDvn/Zw==
X-CSE-MsgGUID: mdTiKja6QTitmAdch1UF/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11367"; a="42636187"
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="42636187"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2025 03:48:45 -0700
X-CSE-ConnectionGUID: 9LeCdL4FRvOVNMtdYR/6Ig==
X-CSE-MsgGUID: 4Ri1QU9lSUqjyoCs8Z7SoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="124655140"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa003.jf.intel.com with ESMTP; 09 Mar 2025 03:48:37 -0700
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
Date: Sun,  9 Mar 2025 06:46:44 -0400
Message-Id: <20250309104648.3895551-11-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741517326; x=1773053326;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Z/c2ElqDySrFvvkfOOgLqJh5GFsxsy5BUI419SrGBtg=;
 b=UHNhaZv8lQgClyVu0XXM1uSBHsjbgcttht/MaHQoMz3w1e9mFOjov/VW
 BM53GMfC6wIVTcQzPOnc7+4+VbA9qg86c0ORyJdGjwcm1DPYDES8QTjxB
 LlPHBxLVyjYVQCDjS8BSU/77pOIGAIPxvO0a3/SKAbM9nUYocNnK2eCMr
 1P0UKM/NfO1Dh1oFEpTz3+3qvXhRTbKM/Y5BA9U2P/ztvMD4LKn1PLv2q
 BfhU1Z9HLYeaxDy2IP268FbbChnC2AgRP0rOqqFcMwZoQnPg4hH4Z3ffA
 qVbBbdf82SnL2UjdNbf5q/mF9y9UGpigBcNzUWumBS7fVFt8Qeop6Bgje
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UHNhaZv8
Subject: [Intel-wired-lan] [PATCH iwl-next v9 10/14] igc: add support for
 frame preemption verification
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

This patch implements the "ethtool --set-mm" callback to trigger the
frame preemption verification handshake.

Uses the MAC Merge Software Verification (mmsv) mechanism in ethtool
to perform the verification handshake for igc.
The structure fpe.mmsv is set by mmsv in ethtool and should remain
read-only for the driver.

Other mmsv callbacks:
a) configure_tx() -> not used yet at this point
   - igc lacks registers to configure FPE in the transmit direction, so
     this API is not utilized for now. When igc supports preemptible queue,
     driver will use this API to manage its configuration.

b) configure_pmac() -> not used
   - this callback dynamically controls pmac_enabled at runtime. For
     example, mmsv calls configure_pmac() and disables pmac_enabled when
     the link partner goes down, even if the user previously enabled it.
     The intention is to save power but it is not feasible in igc
     because it causes an endless adapter reset loop:

   1) Board A and Board B complete the verification handshake. Tx mode
      register for both boards are in TSN mode.
   2) Board B link goes down.

   On Board A:
   3) mmsv calls configure_pmac() with pmac_enabled = false.
   4) configure_pmac() in igc updates a new field based on pmac_enabled.
      Driver uses this field in igc_tsn_new_flags() to indicate that the
      user enabled/disabled FPE.
   5) configure_pmac() in igc calls igc_tsn_offload_apply() to check
      whether an adapter reset is needed. Calls existing logic in
      igc_tsn_will_tx_mode_change() and igc_tsn_new_flags().
   6) Since pmac_enabled is now disabled and no other TSN feature is
      active, igc_tsn_will_tx_mode_change() evaluates to true because Tx
      mode will switch from TSN to Legacy.
   7) Driver resets the adapter.
   8) Registers are set, and Tx mode switches to Legacy.
   9) When link partner is up, steps 3–8 repeat, but this time with
      pmac_enabled = true, reactivating TSN.
      igc_tsn_will_tx_mode_change() evaluates to true again, since Tx
      mode will switch from Legacy to TSN.
  10) Driver resets the adapter.
  11) Adapter reset completes, registers are set, and Tx mode switches to
      TSN.

  On Board B:
  12) Adapter reset on Board A at step 10 causes it to detect its link
      partner as down.
  13) Repeats steps 3–8.
  14) Once reset adapter on Board A is completed at step 11, it detects
      its link partner as up.
  15) Repeats steps 9–11.

   - this cycle repeats indefinitely. To avoid this issue, igc only uses
     mmsv.pmac_enabled to track whether FPE is enabled or disabled.

Co-developed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Co-developed-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
Signed-off-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
Co-developed-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  12 +-
 drivers/net/ethernet/intel/igc/igc_base.h    |   1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |   8 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  21 +++
 drivers/net/ethernet/intel/igc/igc_main.c    |  52 ++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 146 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  50 +++++++
 7 files changed, 285 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index ba7c55d2dc85..d970968f3233 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -40,6 +40,10 @@ void igc_ethtool_set_ops(struct net_device *);
 
 #define IGC_MAX_TX_TSTAMP_REGS		4
 
+struct igc_fpe_t {
+	struct ethtool_mmsv mmsv;
+};
+
 enum igc_mac_filter_type {
 	IGC_MAC_FILTER_TYPE_DST = 0,
 	IGC_MAC_FILTER_TYPE_SRC
@@ -332,6 +336,8 @@ struct igc_adapter {
 		struct timespec64 period;
 	} perout[IGC_N_PEROUT];
 
+	struct igc_fpe_t fpe;
+
 	/* LEDs */
 	struct mutex led_mutex;
 	struct igc_led_classdev *leds;
@@ -389,10 +395,11 @@ extern char igc_driver_name[];
 #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
 #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
 #define IGC_FLAG_TSN_LEGACY_ENABLED	BIT(19)
+#define IGC_FLAG_TSN_PREEMPT_ENABLED	BIT(20)
 
 #define IGC_FLAG_TSN_ANY_ENABLED				\
 	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |	\
-	 IGC_FLAG_TSN_LEGACY_ENABLED)
+	 IGC_FLAG_TSN_LEGACY_ENABLED | IGC_FLAG_TSN_PREEMPT_ENABLED)
 
 #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
 #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
@@ -737,7 +744,10 @@ struct igc_nfc_rule *igc_get_nfc_rule(struct igc_adapter *adapter,
 				      u32 location);
 int igc_add_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
 void igc_del_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
+void igc_disable_empty_addr_recv(struct igc_adapter *adapter);
+int igc_enable_empty_addr_recv(struct igc_adapter *adapter);
 struct igc_ring *igc_get_tx_ring(struct igc_adapter *adapter, int cpu);
+void igc_flush_tx_descriptors(struct igc_ring *ring);
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_suspend(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index bf8cdfbba9ff..6320eabb72fe 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -49,6 +49,7 @@ struct igc_adv_tx_context_desc {
 #define IGC_ADVTXD_DCMD_DEXT	0x20000000 /* Descriptor extension (1=Adv) */
 #define IGC_ADVTXD_DCMD_VLE	0x40000000 /* VLAN pkt enable */
 #define IGC_ADVTXD_DCMD_TSE	0x80000000 /* TCP Seg enable */
+#define IGC_ADVTXD_PAYLEN_MASK	0XFFFFC000 /* Adv desc PAYLEN mask */
 #define IGC_ADVTXD_PAYLEN_SHIFT	14 /* Adv desc PAYLEN shift */
 
 #define IGC_RAR_ENTRIES		16
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index d753a8ec36ae..542c7c8802a0 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -308,6 +308,8 @@
 #define IGC_TXD_DTYP_C		0x00000000 /* Context Descriptor */
 #define IGC_TXD_POPTS_IXSM	0x01       /* Insert IP checksum */
 #define IGC_TXD_POPTS_TXSM	0x02       /* Insert TCP/UDP checksum */
+#define IGC_TXD_POPTS_SMD_MASK	0x3000     /* Indicates whether it's SMD-V or SMD-R */
+
 #define IGC_TXD_CMD_EOP		0x01000000 /* End of Packet */
 #define IGC_TXD_CMD_IC		0x04000000 /* Insert Checksum */
 #define IGC_TXD_CMD_DEXT	0x20000000 /* Desc extension (0 = legacy) */
@@ -363,6 +365,8 @@
 #define IGC_SRRCTL_TIMER0SEL(timer)	(((timer) & 0x3) << 17)
 
 /* Receive Descriptor bit definitions */
+#define IGC_RXD_STAT_SMD_TYPE_V	0x01	/* SMD-V Packet */
+#define IGC_RXD_STAT_SMD_TYPE_R	0x02	/* SMD-R Packet */
 #define IGC_RXD_STAT_EOP	0x02	/* End of Packet */
 #define IGC_RXD_STAT_IXSM	0x04	/* Ignore checksum */
 #define IGC_RXD_STAT_UDPCS	0x10	/* UDP xsum calculated */
@@ -372,7 +376,8 @@
 #define IGC_RXDEXT_STATERR_LB	0x00040000
 
 /* Advanced Receive Descriptor bit definitions */
-#define IGC_RXDADV_STAT_TSIP	0x08000 /* timestamp in packet */
+#define IGC_RXDADV_STAT_SMD_TYPE_MASK	0x06000
+#define IGC_RXDADV_STAT_TSIP		0x08000 /* timestamp in packet */
 
 #define IGC_RXDEXT_STATERR_L4E		0x20000000
 #define IGC_RXDEXT_STATERR_IPE		0x40000000
@@ -575,6 +580,7 @@
 
 /* Transmit Scheduling */
 #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
+#define IGC_TQAVCTRL_PREEMPT_ENA	0x00000002
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
 #define IGC_TQAVCTRL_FUTSCDDIS		0x00000080
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 817838677817..b64d5c6c1d20 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -8,6 +8,7 @@
 
 #include "igc.h"
 #include "igc_diag.h"
+#include "igc_tsn.h"
 
 /* forward declaration */
 struct igc_stats {
@@ -1781,6 +1782,25 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
 	return 0;
 }
 
+static int igc_ethtool_set_mm(struct net_device *netdev,
+			      struct ethtool_mm_cfg *cmd,
+			      struct netlink_ext_ack *extack)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_fpe_t *fpe = &adapter->fpe;
+
+	if (fpe->mmsv.pmac_enabled != cmd->pmac_enabled) {
+		if (cmd->pmac_enabled)
+			static_branch_inc(&igc_fpe_enabled);
+		else
+			static_branch_dec(&igc_fpe_enabled);
+	}
+
+	ethtool_mmsv_set_mm(&fpe->mmsv, cmd);
+
+	return igc_tsn_offload_apply(adapter);
+}
+
 static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 					  struct ethtool_link_ksettings *cmd)
 {
@@ -2076,6 +2096,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.get_link_ksettings	= igc_ethtool_get_link_ksettings,
 	.set_link_ksettings	= igc_ethtool_set_link_ksettings,
 	.self_test		= igc_ethtool_diag_test,
+	.set_mm			= igc_ethtool_set_mm,
 };
 
 void igc_ethtool_set_ops(struct net_device *netdev)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6f0110e3ac22..71c377cb7a88 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2548,7 +2548,7 @@ static int igc_xdp_run_prog(struct igc_adapter *adapter, struct xdp_buff *xdp)
 }
 
 /* This function assumes __netif_tx_lock is held by the caller. */
-static void igc_flush_tx_descriptors(struct igc_ring *ring)
+void igc_flush_tx_descriptors(struct igc_ring *ring)
 {
 	/* Once tail pointer is updated, hardware can fetch the descriptors
 	 * any time so we issue a write membar here to ensure all memory
@@ -2637,6 +2637,14 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 			size -= IGC_TS_HDR_LEN;
 		}
 
+		if (igc_fpe_is_pmac_enabled(adapter) &&
+		    igc_fpe_handle_mpacket(adapter, rx_desc, size, pktbuf)) {
+			/* Advance the ring next-to-clean */
+			igc_is_non_eop(rx_ring, rx_desc);
+			cleaned_count++;
+			continue;
+		}
+
 		if (!skb) {
 			xdp_init_buff(&ctx.xdp, truesize, &rx_ring->xdp_rxq);
 			xdp_prepare_buff(&ctx.xdp, pktbuf - igc_rx_offset(rx_ring),
@@ -3144,6 +3152,11 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		if (!(eop_desc->wb.status & cpu_to_le32(IGC_TXD_STAT_DD)))
 			break;
 
+		if (igc_fpe_is_pmac_enabled(adapter) &&
+		    igc_fpe_transmitted_smd_v(tx_desc))
+			ethtool_mmsv_event_handle(&adapter->fpe.mmsv,
+						  ETHTOOL_MMSV_LD_SENT_VERIFY_MPACKET);
+
 		/* Hold the completions while there's a pending tx hardware
 		 * timestamp request from XDP Tx metadata.
 		 */
@@ -4035,6 +4048,30 @@ static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 	return 0;
 }
 
+/**
+ * igc_enable_empty_addr_recv - Enable Rx of packets with all-zeroes MAC address
+ * @adapter: Pointer to the igc_adapter structure.
+ *
+ * Frame preemption verification requires that packets with the all-zeroes
+ * MAC address are allowed to be received by the driver. This function adds the
+ * all-zeroes destination address to the list of acceptable addresses.
+ *
+ * Return: 0 on success, negative value otherwise.
+ */
+int igc_enable_empty_addr_recv(struct igc_adapter *adapter)
+{
+	u8 empty[ETH_ALEN] = {};
+
+	return igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, empty, -1);
+}
+
+void igc_disable_empty_addr_recv(struct igc_adapter *adapter)
+{
+	u8 empty[ETH_ALEN] = {};
+
+	igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, empty);
+}
+
 /**
  * igc_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
  * @netdev: network interface device structure
@@ -5310,6 +5347,9 @@ void igc_down(struct igc_adapter *adapter)
 	igc_disable_all_tx_rings_hw(adapter);
 	igc_clean_all_tx_rings(adapter);
 	igc_clean_all_rx_rings(adapter);
+
+	if (adapter->fpe.mmsv.pmac_enabled)
+		ethtool_mmsv_stop(&adapter->fpe.mmsv);
 }
 
 void igc_reinit_locked(struct igc_adapter *adapter)
@@ -5834,6 +5874,10 @@ static void igc_watchdog_task(struct work_struct *work)
 			 */
 			igc_tsn_adjust_txtime_offset(adapter);
 
+			if (adapter->fpe.mmsv.pmac_enabled)
+				ethtool_mmsv_link_state_handle(&adapter->fpe.mmsv,
+							       true);
+
 			if (adapter->link_speed != SPEED_1000)
 				goto no_wait;
 
@@ -5869,6 +5913,10 @@ static void igc_watchdog_task(struct work_struct *work)
 			netdev_info(netdev, "NIC Link is Down\n");
 			netif_carrier_off(netdev);
 
+			if (adapter->fpe.mmsv.pmac_enabled)
+				ethtool_mmsv_link_state_handle(&adapter->fpe.mmsv,
+							       false);
+
 			/* link state has changed, schedule phy info update */
 			if (!test_bit(__IGC_DOWN, &adapter->state))
 				mod_timer(&adapter->phy_info_timer,
@@ -7189,6 +7237,8 @@ static int igc_probe(struct pci_dev *pdev,
 
 	igc_tsn_clear_schedule(adapter);
 
+	igc_fpe_init(adapter);
+
 	/* reset the hardware with the new settings */
 	igc_reset(adapter);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 5b3b1bc0b64a..8a1725688381 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -2,9 +2,135 @@
 /* Copyright (c)  2019 Intel Corporation */
 
 #include "igc.h"
+#include "igc_base.h"
 #include "igc_hw.h"
 #include "igc_tsn.h"
 
+DEFINE_STATIC_KEY_FALSE(igc_fpe_enabled);
+
+static int igc_fpe_init_smd_frame(struct igc_ring *ring,
+				  struct igc_tx_buffer *buffer,
+				  struct sk_buff *skb)
+{
+	dma_addr_t dma = dma_map_single(ring->dev, skb->data, skb->len,
+					DMA_TO_DEVICE);
+
+	if (dma_mapping_error(ring->dev, dma)) {
+		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
+		return -ENOMEM;
+	}
+
+	buffer->skb = skb;
+	buffer->protocol = 0;
+	buffer->bytecount = skb->len;
+	buffer->gso_segs = 1;
+	buffer->time_stamp = jiffies;
+	dma_unmap_len_set(buffer, len, skb->len);
+	dma_unmap_addr_set(buffer, dma, dma);
+
+	return 0;
+}
+
+static int igc_fpe_init_tx_descriptor(struct igc_ring *ring,
+				      struct sk_buff *skb,
+				      enum igc_txd_popts_type type)
+{
+	u32 cmd_type, olinfo_status = 0;
+	struct igc_tx_buffer *buffer;
+	union igc_adv_tx_desc *desc;
+	int err;
+
+	if (!igc_desc_unused(ring))
+		return -EBUSY;
+
+	buffer = &ring->tx_buffer_info[ring->next_to_use];
+	err = igc_fpe_init_smd_frame(ring, buffer, skb);
+	if (err)
+		return err;
+
+	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
+		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
+		   buffer->bytecount;
+
+	olinfo_status |= FIELD_PREP(IGC_ADVTXD_PAYLEN_MASK, buffer->bytecount);
+
+	switch (type) {
+	case SMD_V:
+	case SMD_R:
+		olinfo_status |= FIELD_PREP(IGC_TXD_POPTS_SMD_MASK, type);
+		break;
+	}
+
+	desc = IGC_TX_DESC(ring, ring->next_to_use);
+	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
+	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
+
+	netdev_tx_sent_queue(txring_txq(ring), skb->len);
+
+	buffer->next_to_watch = desc;
+	ring->next_to_use = (ring->next_to_use + 1) % ring->count;
+
+	return 0;
+}
+
+static int igc_fpe_xmit_smd_frame(struct igc_adapter *adapter,
+				  enum igc_txd_popts_type type)
+{
+	int cpu = smp_processor_id();
+	struct netdev_queue *nq;
+	struct igc_ring *ring;
+	struct sk_buff *skb;
+	int err;
+
+	ring = igc_get_tx_ring(adapter, cpu);
+	nq = txring_txq(ring);
+
+	skb = alloc_skb(SMD_FRAME_SIZE, GFP_ATOMIC);
+	if (!skb)
+		return -ENOMEM;
+
+	skb_put_zero(skb, SMD_FRAME_SIZE);
+
+	__netif_tx_lock(nq, cpu);
+
+	err = igc_fpe_init_tx_descriptor(ring, skb, type);
+	igc_flush_tx_descriptors(ring);
+
+	__netif_tx_unlock(nq);
+
+	return err;
+}
+
+static void igc_fpe_send_mpacket(struct ethtool_mmsv *mmsv,
+				 enum ethtool_mpacket type)
+{
+	struct igc_fpe_t *fpe = container_of(mmsv, struct igc_fpe_t, mmsv);
+	struct igc_adapter *adapter;
+	int err;
+
+	adapter = container_of(fpe, struct igc_adapter, fpe);
+
+	if (type == ETHTOOL_MPACKET_VERIFY) {
+		err = igc_fpe_xmit_smd_frame(adapter, SMD_V);
+		if (err && net_ratelimit())
+			netdev_err(adapter->netdev, "Error sending SMD-V\n");
+	} else if (type == ETHTOOL_MPACKET_RESPONSE) {
+		err = igc_fpe_xmit_smd_frame(adapter, SMD_R);
+		if (err && net_ratelimit())
+			netdev_err(adapter->netdev, "Error sending SMD-R frame\n");
+	}
+}
+
+static const struct ethtool_mmsv_ops igc_mmsv_ops = {
+	.send_mpacket = igc_fpe_send_mpacket,
+};
+
+void igc_fpe_init(struct igc_adapter *adapter)
+{
+	ethtool_mmsv_init(&adapter->fpe.mmsv, adapter->netdev, &igc_mmsv_ops);
+}
+
 static bool is_any_launchtime(struct igc_adapter *adapter)
 {
 	int i;
@@ -49,6 +175,9 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 	if (adapter->strict_priority_enable)
 		new_flags |= IGC_FLAG_TSN_LEGACY_ENABLED;
 
+	if (adapter->fpe.mmsv.pmac_enabled)
+		new_flags |= IGC_FLAG_TSN_PREEMPT_ENABLED;
+
 	return new_flags;
 }
 
@@ -167,7 +296,8 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 
 	tqavctrl = rd32(IGC_TQAVCTRL);
 	tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
-		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS);
+		      IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS |
+		      IGC_TQAVCTRL_PREEMPT_ENA);
 
 	wr32(IGC_TQAVCTRL, tqavctrl);
 
@@ -386,10 +516,14 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		wr32(IGC_TXQCTL(i), txqctl);
 	}
 
-	tqavctrl = rd32(IGC_TQAVCTRL) & ~IGC_TQAVCTRL_FUTSCDDIS;
+	tqavctrl = rd32(IGC_TQAVCTRL) & ~(IGC_TQAVCTRL_FUTSCDDIS |
+		   IGC_TQAVCTRL_PREEMPT_ENA);
 
 	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
 
+	if (adapter->fpe.mmsv.pmac_enabled)
+		tqavctrl |= IGC_TQAVCTRL_PREEMPT_ENA;
+
 	adapter->qbv_count++;
 
 	cycle = adapter->cycle_time;
@@ -450,6 +584,14 @@ int igc_tsn_reset(struct igc_adapter *adapter)
 	unsigned int new_flags;
 	int err = 0;
 
+	if (adapter->fpe.mmsv.pmac_enabled) {
+		err = igc_enable_empty_addr_recv(adapter);
+		if (err && net_ratelimit())
+			netdev_err(adapter->netdev, "Error adding empty address to MAC filter\n");
+	} else {
+		igc_disable_empty_addr_recv(adapter);
+	}
+
 	new_flags = igc_tsn_new_flags(adapter);
 
 	if (!(new_flags & IGC_FLAG_TSN_ANY_ENABLED))
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index 98ec845a86bf..bb30d15cec76 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -4,9 +4,59 @@
 #ifndef _IGC_TSN_H_
 #define _IGC_TSN_H_
 
+#define SMD_FRAME_SIZE			60
+
+enum igc_txd_popts_type {
+	SMD_V = 0x01,
+	SMD_R = 0x02,
+};
+
+DECLARE_STATIC_KEY_FALSE(igc_fpe_enabled);
+
+void igc_fpe_init(struct igc_adapter *adapter);
 int igc_tsn_offload_apply(struct igc_adapter *adapter);
 int igc_tsn_reset(struct igc_adapter *adapter);
 void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
 bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter);
 
+static inline bool igc_fpe_is_pmac_enabled(struct igc_adapter *adapter)
+{
+	return static_branch_unlikely(&igc_fpe_enabled) &&
+	       adapter->fpe.mmsv.pmac_enabled;
+}
+
+static inline bool igc_fpe_handle_mpacket(struct igc_adapter *adapter,
+					  union igc_adv_rx_desc *rx_desc,
+					  unsigned int size, void *pktbuf)
+{
+	u32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
+	int smd;
+
+	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
+	if (smd != IGC_RXD_STAT_SMD_TYPE_V && smd != IGC_RXD_STAT_SMD_TYPE_R)
+		return false;
+
+	if (size == SMD_FRAME_SIZE && mem_is_zero(pktbuf, SMD_FRAME_SIZE)) {
+		struct ethtool_mmsv *mmsv = &adapter->fpe.mmsv;
+		enum ethtool_mmsv_event event;
+
+		if (smd == IGC_RXD_STAT_SMD_TYPE_V)
+			event = ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET;
+		else
+			event = ETHTOOL_MMSV_LP_SENT_RESPONSE_MPACKET;
+
+		ethtool_mmsv_event_handle(mmsv, event);
+	}
+
+	return true;
+}
+
+static inline bool igc_fpe_transmitted_smd_v(union igc_adv_tx_desc *tx_desc)
+{
+	u32 olinfo_status = le32_to_cpu(tx_desc->read.olinfo_status);
+	u8 smd = FIELD_GET(IGC_TXD_POPTS_SMD_MASK, olinfo_status);
+
+	return smd == SMD_V;
+}
+
 #endif /* _IGC_BASE_H */
-- 
2.34.1

