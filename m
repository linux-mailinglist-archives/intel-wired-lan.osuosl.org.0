Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFCB31980B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 02:43:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94CBD874BF;
	Fri, 12 Feb 2021 01:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnGh2ZIPvjgE; Fri, 12 Feb 2021 01:43:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF31487330;
	Fri, 12 Feb 2021 01:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 91DDE1C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7EE756F6B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZBFunI9o-v8U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 01:43:46 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 9B3E16F5DD; Fri, 12 Feb 2021 01:43:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DD0A6F5E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:43:44 +0000 (UTC)
IronPort-SDR: HQQb1dVsQaCNc2r/cLOAj4uA9aJsqyC+SnzqFwC8XumXSQ9qySu1d0HQm19ulqwMF7oqsPBP4J
 Plz/EvwTXW2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="243843192"
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="243843192"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 17:43:43 -0800
IronPort-SDR: T1jrmDT/msriA/9c7tbzZJJmP96JYyIj32WBe9SXvWyf32IYif4J6wRNjZnYVHzu6uMyIp7uGD
 69vNYZg1BokQ==
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="437405889"
Received: from boksimli-mobl.amr.corp.intel.com (HELO edesouza-mobl1.lan)
 ([10.209.182.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 17:43:43 -0800
From: Ederson de Souza <ederson.desouza@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Feb 2021 17:42:12 -0800
Message-Id: <20210212014212.41570-3-ederson.desouza@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210212014212.41570-1-ederson.desouza@intel.com>
References: <20210212014212.41570-1-ederson.desouza@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: enable auxiliary
 PHC functions for the i225
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The i225 device offers a number of special PTP Hardware Clock features on
the Software Defined Pins (SDPs). This patch adds support for two of the
possible functions, namely time stamping external events, and periodic
output signals.

The assignment of PHC functions to the four SDP can be freely chosen by
the user.

While i225 allows up to four timers to be used to source the time used
on the external events or output signals, this patch uses only one of
those timers.

Signed-off-by: Ederson de Souza <ederson.desouza@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  11 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  63 +++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  55 +++-
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 268 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  10 +
 5 files changed, 404 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index fa81cec80711..53f3cef3820d 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -28,6 +28,11 @@ void igc_ethtool_set_ops(struct net_device *);
 #define MAX_ETYPE_FILTER		8
 #define IGC_RETA_SIZE			128
 
+/* SDP support */
+#define IGC_N_EXTTS	2
+#define IGC_N_PEROUT	2
+#define IGC_N_SDP	4
+
 enum igc_mac_filter_type {
 	IGC_MAC_FILTER_TYPE_DST = 0,
 	IGC_MAC_FILTER_TYPE_SRC
@@ -226,6 +231,12 @@ struct igc_adapter {
 	struct bpf_prog *xdp_prog;
 
 	bool pps_sys_wrap_on;
+
+	struct ptp_pin_desc sdp_config[IGC_N_SDP];
+	struct {
+		struct timespec64 start;
+		struct timespec64 period;
+	} perout[IGC_N_PEROUT];
 };
 
 void igc_up(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index c5b36ec7bcff..f86aa0baece8 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -8,6 +8,8 @@
 #define REQ_TX_DESCRIPTOR_MULTIPLE	8
 #define REQ_RX_DESCRIPTOR_MULTIPLE	8
 
+#define IGC_CTRL_EXT_SDP2_DIR  0x00000400 /* SDP2 Data direction */
+#define IGC_CTRL_EXT_SDP3_DIR  0x00000800 /* SDP3 Data direction */
 #define IGC_CTRL_EXT_DRV_LOAD	0x10000000 /* Drv loaded bit for FW */
 
 /* Definitions for power management and wakeup registers */
@@ -96,6 +98,9 @@
 #define IGC_CTRL_RFCE		0x08000000  /* Receive Flow Control enable */
 #define IGC_CTRL_TFCE		0x10000000  /* Transmit flow control enable */
 
+#define IGC_CTRL_SDP0_DIR 0x00400000  /* SDP0 Data direction */
+#define IGC_CTRL_SDP1_DIR 0x00800000  /* SDP1 Data direction */
+
 /* As per the EAS the maximum supported size is 9.5KB (9728 bytes) */
 #define MAX_JUMBO_FRAME_SIZE	0x2600
 
@@ -403,6 +408,64 @@
 #define IGC_TSYNCTXCTL_START_SYNC		0x80000000  /* initiate sync */
 #define IGC_TSYNCTXCTL_TXSYNSIG			0x00000020  /* Sample TX tstamp in PHY sop */
 
+/* Timer selection bits */
+#define IGC_AUX_IO_TIMER_SEL_SYSTIM0	(0u << 30) /* Select SYSTIM0 for auxiliary time stamp */
+#define IGC_AUX_IO_TIMER_SEL_SYSTIM1	(1u << 30) /* Select SYSTIM1 for auxiliary time stamp */
+#define IGC_AUX_IO_TIMER_SEL_SYSTIM2	(2u << 30) /* Select SYSTIM2 for auxiliary time stamp */
+#define IGC_AUX_IO_TIMER_SEL_SYSTIM3	(3u << 30) /* Select SYSTIM3 for auxiliary time stamp */
+#define IGC_TT_IO_TIMER_SEL_SYSTIM0	(0u << 30) /* Select SYSTIM0 for target time stamp */
+#define IGC_TT_IO_TIMER_SEL_SYSTIM1	(1u << 30) /* Select SYSTIM1 for target time stamp */
+#define IGC_TT_IO_TIMER_SEL_SYSTIM2	(2u << 30) /* Select SYSTIM2 for target time stamp */
+#define IGC_TT_IO_TIMER_SEL_SYSTIM3	(3u << 30) /* Select SYSTIM3 for target time stamp */
+
+/* TSAUXC Configuration Bits */
+#define IGC_TSAUXC_EN_TT0	BIT(0)  /* Enable target time 0. */
+#define IGC_TSAUXC_EN_TT1	BIT(1)  /* Enable target time 1. */
+#define IGC_TSAUXC_EN_CLK0	BIT(2)  /* Enable Configurable Frequency Clock 0. */
+#define IGC_TSAUXC_EN_CLK1	BIT(5)  /* Enable Configurable Frequency Clock 1. */
+#define IGC_TSAUXC_EN_TS0	BIT(8)  /* Enable hardware timestamp 0. */
+#define IGC_TSAUXC_AUTT0	BIT(9)  /* Auxiliary Timestamp Taken. */
+#define IGC_TSAUXC_EN_TS1	BIT(10) /* Enable hardware timestamp 0. */
+#define IGC_TSAUXC_AUTT1	BIT(11) /* Auxiliary Timestamp Taken. */
+#define IGC_TSAUXC_PLSG		BIT(17) /* Generate a pulse. */
+#define IGC_TSAUXC_DISABLE1	BIT(27) /* Disable SYSTIM0 Count Operation. */
+#define IGC_TSAUXC_DISABLE2	BIT(28) /* Disable SYSTIM1 Count Operation. */
+#define IGC_TSAUXC_DISABLE3	BIT(29) /* Disable SYSTIM2 Count Operation. */
+#define IGC_TSAUXC_DIS_TS_CLEAR	BIT(30) /* Disable EN_TT0/1 auto clear. */
+#define IGC_TSAUXC_DISABLE0	BIT(31) /* Disable SYSTIM0 Count Operation. */
+
+/* SDP Configuration Bits */
+#define IGC_AUX0_SEL_SDP0	(0u << 0)  /* Assign SDP0 to auxiliary time stamp 0. */
+#define IGC_AUX0_SEL_SDP1	(1u << 0)  /* Assign SDP1 to auxiliary time stamp 0. */
+#define IGC_AUX0_SEL_SDP2	(2u << 0)  /* Assign SDP2 to auxiliary time stamp 0. */
+#define IGC_AUX0_SEL_SDP3	(3u << 0)  /* Assign SDP3 to auxiliary time stamp 0. */
+#define IGC_AUX0_TS_SDP_EN	(1u << 2)  /* Enable auxiliary time stamp trigger 0. */
+#define IGC_AUX1_SEL_SDP0	(0u << 3)  /* Assign SDP0 to auxiliary time stamp 1. */
+#define IGC_AUX1_SEL_SDP1	(1u << 3)  /* Assign SDP1 to auxiliary time stamp 1. */
+#define IGC_AUX1_SEL_SDP2	(2u << 3)  /* Assign SDP2 to auxiliary time stamp 1. */
+#define IGC_AUX1_SEL_SDP3	(3u << 3)  /* Assign SDP3 to auxiliary time stamp 1. */
+#define IGC_AUX1_TS_SDP_EN	(1u << 5)  /* Enable auxiliary time stamp trigger 1. */
+#define IGC_TS_SDP0_SEL_TT0	(0u << 6)  /* Target time 0 is output on SDP0. */
+#define IGC_TS_SDP0_SEL_TT1	(1u << 6)  /* Target time 1 is output on SDP0. */
+#define IGC_TS_SDP0_SEL_FC0	(2u << 6)  /* Freq clock  0 is output on SDP0. */
+#define IGC_TS_SDP0_SEL_FC1	(3u << 6)  /* Freq clock  1 is output on SDP0. */
+#define IGC_TS_SDP0_EN		(1u << 8)  /* SDP0 is assigned to Tsync. */
+#define IGC_TS_SDP1_SEL_TT0	(0u << 9)  /* Target time 0 is output on SDP1. */
+#define IGC_TS_SDP1_SEL_TT1	(1u << 9)  /* Target time 1 is output on SDP1. */
+#define IGC_TS_SDP1_SEL_FC0	(2u << 9)  /* Freq clock  0 is output on SDP1. */
+#define IGC_TS_SDP1_SEL_FC1	(3u << 9)  /* Freq clock  1 is output on SDP1. */
+#define IGC_TS_SDP1_EN		(1u << 11) /* SDP1 is assigned to Tsync. */
+#define IGC_TS_SDP2_SEL_TT0	(0u << 12) /* Target time 0 is output on SDP2. */
+#define IGC_TS_SDP2_SEL_TT1	(1u << 12) /* Target time 1 is output on SDP2. */
+#define IGC_TS_SDP2_SEL_FC0	(2u << 12) /* Freq clock  0 is output on SDP2. */
+#define IGC_TS_SDP2_SEL_FC1	(3u << 12) /* Freq clock  1 is output on SDP2. */
+#define IGC_TS_SDP2_EN		(1u << 14) /* SDP2 is assigned to Tsync. */
+#define IGC_TS_SDP3_SEL_TT0	(0u << 15) /* Target time 0 is output on SDP3. */
+#define IGC_TS_SDP3_SEL_TT1	(1u << 15) /* Target time 1 is output on SDP3. */
+#define IGC_TS_SDP3_SEL_FC0	(2u << 15) /* Freq clock  0 is output on SDP3. */
+#define IGC_TS_SDP3_SEL_FC1	(3u << 15) /* Freq clock  1 is output on SDP3. */
+#define IGC_TS_SDP3_EN		(1u << 17) /* SDP3 is assigned to Tsync. */
+
 /* Transmit Scheduling */
 #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
 #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5e3b6ac00b3a..926a47a540ee 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4598,10 +4598,13 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 
 static void igc_tsync_interrupt(struct igc_adapter *adapter)
 {
+	u32 ack, tsauxc, sec, nsec, tsicr;
 	struct igc_hw *hw = &adapter->hw;
 	struct ptp_clock_event event;
-	u32 tsicr = rd32(IGC_TSICR);
-	u32 ack = 0;
+	struct timespec64 ts;
+
+	tsicr = rd32(IGC_TSICR);
+	ack = 0;
 
 	if (tsicr & IGC_TSICR_SYS_WRAP) {
 		event.type = PTP_CLOCK_PPS;
@@ -4616,6 +4619,54 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
 		ack |= IGC_TSICR_TXTS;
 	}
 
+	if (tsicr & IGC_TSICR_TT0) {
+		spin_lock(&adapter->tmreg_lock);
+		ts = timespec64_add(adapter->perout[0].start,
+				    adapter->perout[0].period);
+		wr32(IGC_TRGTTIML0, ts.tv_nsec | IGC_TT_IO_TIMER_SEL_SYSTIM0);
+		wr32(IGC_TRGTTIMH0, (u32)ts.tv_sec);
+		tsauxc = rd32(IGC_TSAUXC);
+		tsauxc |= IGC_TSAUXC_EN_TT0;
+		wr32(IGC_TSAUXC, tsauxc);
+		adapter->perout[0].start = ts;
+		spin_unlock(&adapter->tmreg_lock);
+		ack |= IGC_TSICR_TT0;
+	}
+
+	if (tsicr & IGC_TSICR_TT1) {
+		spin_lock(&adapter->tmreg_lock);
+		ts = timespec64_add(adapter->perout[1].start,
+				    adapter->perout[1].period);
+		wr32(IGC_TRGTTIML1, ts.tv_nsec | IGC_TT_IO_TIMER_SEL_SYSTIM0);
+		wr32(IGC_TRGTTIMH1, (u32)ts.tv_sec);
+		tsauxc = rd32(IGC_TSAUXC);
+		tsauxc |= IGC_TSAUXC_EN_TT1;
+		wr32(IGC_TSAUXC, tsauxc);
+		adapter->perout[1].start = ts;
+		spin_unlock(&adapter->tmreg_lock);
+		ack |= IGC_TSICR_TT1;
+	}
+
+	if (tsicr & IGC_TSICR_AUTT0) {
+		nsec = rd32(IGC_AUXSTMPL0);
+		sec  = rd32(IGC_AUXSTMPH0);
+		event.type = PTP_CLOCK_EXTTS;
+		event.index = 0;
+		event.timestamp = sec * NSEC_PER_SEC + nsec;
+		ptp_clock_event(adapter->ptp_clock, &event);
+		ack |= IGC_TSICR_AUTT0;
+	}
+
+	if (tsicr & IGC_TSICR_AUTT1) {
+		nsec = rd32(IGC_AUXSTMPL1);
+		sec  = rd32(IGC_AUXSTMPH1);
+		event.type = PTP_CLOCK_EXTTS;
+		event.index = 1;
+		event.timestamp = sec * NSEC_PER_SEC + nsec;
+		ptp_clock_event(adapter->ptp_clock, &event);
+		ack |= IGC_TSICR_AUTT1;
+	}
+
 	/* acknowledge the interrupts */
 	wr32(IGC_TSICR, ack);
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 868cd51909e9..c618bb3cc0c7 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -120,6 +120,124 @@ static int igc_ptp_settime_i225(struct ptp_clock_info *ptp,
 	return 0;
 }
 
+static void igc_pin_direction(int pin, int input, u32 *ctrl, u32 *ctrl_ext)
+{
+	u32 *ptr = pin < 2 ? ctrl : ctrl_ext;
+	static const u32 mask[IGC_N_SDP] = {
+		IGC_CTRL_SDP0_DIR,
+		IGC_CTRL_SDP1_DIR,
+		IGC_CTRL_EXT_SDP2_DIR,
+		IGC_CTRL_EXT_SDP3_DIR,
+	};
+
+	if (input)
+		*ptr &= ~mask[pin];
+	else
+		*ptr |= mask[pin];
+}
+
+static void igc_pin_perout(struct igc_adapter *igc, int chan, int pin, int freq)
+{
+	static const u32 igc_aux0_sel_sdp[IGC_N_SDP] = {
+		IGC_AUX0_SEL_SDP0, IGC_AUX0_SEL_SDP1, IGC_AUX0_SEL_SDP2, IGC_AUX0_SEL_SDP3,
+	};
+	static const u32 igc_aux1_sel_sdp[IGC_N_SDP] = {
+		IGC_AUX1_SEL_SDP0, IGC_AUX1_SEL_SDP1, IGC_AUX1_SEL_SDP2, IGC_AUX1_SEL_SDP3,
+	};
+	static const u32 igc_ts_sdp_en[IGC_N_SDP] = {
+		IGC_TS_SDP0_EN, IGC_TS_SDP1_EN, IGC_TS_SDP2_EN, IGC_TS_SDP3_EN,
+	};
+	static const u32 igc_ts_sdp_sel_tt0[IGC_N_SDP] = {
+		IGC_TS_SDP0_SEL_TT0, IGC_TS_SDP1_SEL_TT0,
+		IGC_TS_SDP2_SEL_TT0, IGC_TS_SDP3_SEL_TT0,
+	};
+	static const u32 igc_ts_sdp_sel_tt1[IGC_N_SDP] = {
+		IGC_TS_SDP0_SEL_TT1, IGC_TS_SDP1_SEL_TT1,
+		IGC_TS_SDP2_SEL_TT1, IGC_TS_SDP3_SEL_TT1,
+	};
+	static const u32 igc_ts_sdp_sel_fc0[IGC_N_SDP] = {
+		IGC_TS_SDP0_SEL_FC0, IGC_TS_SDP1_SEL_FC0,
+		IGC_TS_SDP2_SEL_FC0, IGC_TS_SDP3_SEL_FC0,
+	};
+	static const u32 igc_ts_sdp_sel_fc1[IGC_N_SDP] = {
+		IGC_TS_SDP0_SEL_FC1, IGC_TS_SDP1_SEL_FC1,
+		IGC_TS_SDP2_SEL_FC1, IGC_TS_SDP3_SEL_FC1,
+	};
+	static const u32 igc_ts_sdp_sel_clr[IGC_N_SDP] = {
+		IGC_TS_SDP0_SEL_FC1, IGC_TS_SDP1_SEL_FC1,
+		IGC_TS_SDP2_SEL_FC1, IGC_TS_SDP3_SEL_FC1,
+	};
+	struct igc_hw *hw = &igc->hw;
+	u32 ctrl, ctrl_ext, tssdp = 0;
+
+	ctrl = rd32(IGC_CTRL);
+	ctrl_ext = rd32(IGC_CTRL_EXT);
+	tssdp = rd32(IGC_TSSDP);
+
+	igc_pin_direction(pin, 0, &ctrl, &ctrl_ext);
+
+	/* Make sure this pin is not enabled as an input. */
+	if ((tssdp & IGC_AUX0_SEL_SDP3) == igc_aux0_sel_sdp[pin])
+		tssdp &= ~IGC_AUX0_TS_SDP_EN;
+
+	if ((tssdp & IGC_AUX1_SEL_SDP3) == igc_aux1_sel_sdp[pin])
+		tssdp &= ~IGC_AUX1_TS_SDP_EN;
+
+	tssdp &= ~igc_ts_sdp_sel_clr[pin];
+	if (freq) {
+		if (chan == 1)
+			tssdp |= igc_ts_sdp_sel_fc1[pin];
+		else
+			tssdp |= igc_ts_sdp_sel_fc0[pin];
+	} else {
+		if (chan == 1)
+			tssdp |= igc_ts_sdp_sel_tt1[pin];
+		else
+			tssdp |= igc_ts_sdp_sel_tt0[pin];
+	}
+	tssdp |= igc_ts_sdp_en[pin];
+
+	wr32(IGC_TSSDP, tssdp);
+	wr32(IGC_CTRL, ctrl);
+	wr32(IGC_CTRL_EXT, ctrl_ext);
+}
+
+static void igc_pin_extts(struct igc_adapter *igc, int chan, int pin)
+{
+	static const u32 igc_aux0_sel_sdp[IGC_N_SDP] = {
+		IGC_AUX0_SEL_SDP0, IGC_AUX0_SEL_SDP1, IGC_AUX0_SEL_SDP2, IGC_AUX0_SEL_SDP3,
+	};
+	static const u32 igc_aux1_sel_sdp[IGC_N_SDP] = {
+		IGC_AUX1_SEL_SDP0, IGC_AUX1_SEL_SDP1, IGC_AUX1_SEL_SDP2, IGC_AUX1_SEL_SDP3,
+	};
+	static const u32 igc_ts_sdp_en[IGC_N_SDP] = {
+		IGC_TS_SDP0_EN, IGC_TS_SDP1_EN, IGC_TS_SDP2_EN, IGC_TS_SDP3_EN,
+	};
+	struct igc_hw *hw = &igc->hw;
+	u32 ctrl, ctrl_ext, tssdp = 0;
+
+	ctrl = rd32(IGC_CTRL);
+	ctrl_ext = rd32(IGC_CTRL_EXT);
+	tssdp = rd32(IGC_TSSDP);
+
+	igc_pin_direction(pin, 1, &ctrl, &ctrl_ext);
+
+	/* Make sure this pin is not enabled as an output. */
+	tssdp &= ~igc_ts_sdp_en[pin];
+
+	if (chan == 1) {
+		tssdp &= ~IGC_AUX1_SEL_SDP3;
+		tssdp |= igc_aux1_sel_sdp[pin] | IGC_AUX1_TS_SDP_EN;
+	} else {
+		tssdp &= ~IGC_AUX0_SEL_SDP3;
+		tssdp |= igc_aux0_sel_sdp[pin] | IGC_AUX0_TS_SDP_EN;
+	}
+
+	wr32(IGC_TSSDP, tssdp);
+	wr32(IGC_CTRL, ctrl);
+	wr32(IGC_CTRL_EXT, ctrl_ext);
+}
+
 static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 				       struct ptp_clock_request *rq, int on)
 {
@@ -127,9 +245,130 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 		container_of(ptp, struct igc_adapter, ptp_caps);
 	struct igc_hw *hw = &igc->hw;
 	unsigned long flags;
-	u32 tsim;
+	struct timespec64 ts;
+	int use_freq = 0, pin = -1;
+	u32 tsim, tsauxc, tsauxc_mask, tsim_mask, trgttiml, trgttimh, freqout;
+	s64 ns;
 
 	switch (rq->type) {
+	case PTP_CLK_REQ_EXTTS:
+		/* Reject requests with unsupported flags */
+		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
+					PTP_RISING_EDGE |
+					PTP_FALLING_EDGE |
+					PTP_STRICT_FLAGS))
+			return -EOPNOTSUPP;
+
+		/* Reject requests failing to enable both edges. */
+		if ((rq->extts.flags & PTP_STRICT_FLAGS) &&
+		    (rq->extts.flags & PTP_ENABLE_FEATURE) &&
+		    (rq->extts.flags & PTP_EXTTS_EDGES) != PTP_EXTTS_EDGES)
+			return -EOPNOTSUPP;
+
+		if (on) {
+			pin = ptp_find_pin(igc->ptp_clock, PTP_PF_EXTTS,
+					   rq->extts.index);
+			if (pin < 0)
+				return -EBUSY;
+		}
+		if (rq->extts.index == 1) {
+			tsauxc_mask = IGC_TSAUXC_EN_TS1;
+			tsim_mask = IGC_TSICR_AUTT1;
+		} else {
+			tsauxc_mask = IGC_TSAUXC_EN_TS0;
+			tsim_mask = IGC_TSICR_AUTT0;
+		}
+		spin_lock_irqsave(&igc->tmreg_lock, flags);
+		tsauxc = rd32(IGC_TSAUXC);
+		tsim = rd32(IGC_TSIM);
+		if (on) {
+			igc_pin_extts(igc, rq->extts.index, pin);
+			tsauxc |= tsauxc_mask;
+			tsim |= tsim_mask;
+		} else {
+			tsauxc &= ~tsauxc_mask;
+			tsim &= ~tsim_mask;
+		}
+		wr32(IGC_TSAUXC, tsauxc);
+		wr32(IGC_TSIM, tsim);
+		spin_unlock_irqrestore(&igc->tmreg_lock, flags);
+		return 0;
+
+	case PTP_CLK_REQ_PEROUT:
+		/* Reject requests with unsupported flags */
+		if (rq->perout.flags)
+			return -EOPNOTSUPP;
+
+		if (on) {
+			pin = ptp_find_pin(igc->ptp_clock, PTP_PF_PEROUT,
+					   rq->perout.index);
+			if (pin < 0)
+				return -EBUSY;
+		}
+		ts.tv_sec = rq->perout.period.sec;
+		ts.tv_nsec = rq->perout.period.nsec;
+		ns = timespec64_to_ns(&ts);
+		ns = ns >> 1;
+		if (on && ((ns <= 70000000LL) || (ns == 125000000LL) ||
+			   (ns == 250000000LL) || (ns == 500000000LL))) {
+			if (ns < 8LL)
+				return -EINVAL;
+			use_freq = 1;
+		}
+		ts = ns_to_timespec64(ns);
+		if (rq->perout.index == 1) {
+			if (use_freq) {
+				tsauxc_mask = IGC_TSAUXC_EN_CLK1;
+				tsim_mask = 0;
+			} else {
+				tsauxc_mask = IGC_TSAUXC_EN_TT1;
+				tsim_mask = IGC_TSICR_TT1;
+			}
+			trgttiml = IGC_TRGTTIML1;
+			trgttimh = IGC_TRGTTIMH1;
+			freqout = IGC_FREQOUT1;
+		} else {
+			if (use_freq) {
+				tsauxc_mask = IGC_TSAUXC_EN_CLK0;
+				tsim_mask = 0;
+			} else {
+				tsauxc_mask = IGC_TSAUXC_EN_TT0;
+				tsim_mask = IGC_TSICR_TT0;
+			}
+			trgttiml = IGC_TRGTTIML0;
+			trgttimh = IGC_TRGTTIMH0;
+			freqout = IGC_FREQOUT0;
+		}
+		spin_lock_irqsave(&igc->tmreg_lock, flags);
+		tsauxc = rd32(IGC_TSAUXC);
+		tsim = rd32(IGC_TSIM);
+		if (rq->perout.index == 1) {
+			tsauxc &= ~(IGC_TSAUXC_EN_TT1 | IGC_TSAUXC_EN_CLK1);
+			tsim &= ~IGC_TSICR_TT1;
+		} else {
+			tsauxc &= ~(IGC_TSAUXC_EN_TT0 | IGC_TSAUXC_EN_CLK0);
+			tsim &= ~IGC_TSICR_TT0;
+		}
+		if (on) {
+			int i = rq->perout.index;
+			igc_pin_perout(igc, i, pin, use_freq);
+			igc->perout[i].start.tv_sec = rq->perout.start.sec;
+			igc->perout[i].start.tv_nsec = rq->perout.start.nsec;
+			igc->perout[i].period.tv_sec = ts.tv_sec;
+			igc->perout[i].period.tv_nsec = ts.tv_nsec;
+			wr32(trgttimh, rq->perout.start.sec);
+			/* For now, always select timer 0 as source. */
+			wr32(trgttiml, rq->perout.start.nsec | IGC_TT_IO_TIMER_SEL_SYSTIM0);
+			if (use_freq)
+				wr32(freqout, ns);
+			tsauxc |= tsauxc_mask;
+			tsim |= tsim_mask;
+		}
+		wr32(IGC_TSAUXC, tsauxc);
+		wr32(IGC_TSIM, tsim);
+		spin_unlock_irqrestore(&igc->tmreg_lock, flags);
+		return 0;
+
 	case PTP_CLK_REQ_PPS:
 		spin_lock_irqsave(&igc->tmreg_lock, flags);
 		tsim = rd32(IGC_TSIM);
@@ -149,6 +388,20 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 	return -EOPNOTSUPP;
 }
 
+static int igc_ptp_verify_pin(struct ptp_clock_info *ptp, unsigned int pin,
+			      enum ptp_pin_function func, unsigned int chan)
+{
+	switch (func) {
+	case PTP_PF_NONE:
+	case PTP_PF_EXTTS:
+	case PTP_PF_PEROUT:
+		break;
+	case PTP_PF_PHYSYNC:
+		return -1;
+	}
+	return 0;
+}
+
 /**
  * igc_ptp_systim_to_hwtstamp - convert system time value to HW timestamp
  * @adapter: board private structure
@@ -509,9 +762,17 @@ void igc_ptp_init(struct igc_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
 	struct igc_hw *hw = &adapter->hw;
+	int i;
 
 	switch (hw->mac.type) {
 	case igc_i225:
+		for (i = 0; i < IGC_N_SDP; i++) {
+			struct ptp_pin_desc *ppd = &adapter->sdp_config[i];
+
+			snprintf(ppd->name, sizeof(ppd->name), "SDP%d", i);
+			ppd->index = i;
+			ppd->func = PTP_PF_NONE;
+		}
 		snprintf(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
 		adapter->ptp_caps.owner = THIS_MODULE;
 		adapter->ptp_caps.max_adj = 62499999;
@@ -521,6 +782,11 @@ void igc_ptp_init(struct igc_adapter *adapter)
 		adapter->ptp_caps.settime64 = igc_ptp_settime_i225;
 		adapter->ptp_caps.enable = igc_ptp_feature_enable_i225;
 		adapter->ptp_caps.pps = 1;
+		adapter->ptp_caps.pin_config = adapter->sdp_config;
+		adapter->ptp_caps.n_ext_ts = IGC_N_EXTTS;
+		adapter->ptp_caps.n_per_out = IGC_N_PEROUT;
+		adapter->ptp_caps.n_pins = IGC_N_SDP;
+		adapter->ptp_caps.verify = igc_ptp_verify_pin;
 		break;
 	default:
 		adapter->ptp_clock = NULL;
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 3e5cb7aef9da..dd7f7d5e8325 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -192,6 +192,16 @@
 #define IGC_TSYNCTXCTL	0x0B614  /* Tx Time Sync Control register - RW */
 #define IGC_TSYNCRXCFG	0x05F50  /* Time Sync Rx Configuration - RW */
 #define IGC_TSSDP	0x0003C  /* Time Sync SDP Configuration Register - RW */
+#define IGC_TRGTTIML0  0x0B644 /* Target Time Register 0 Low  - RW */
+#define IGC_TRGTTIMH0  0x0B648 /* Target Time Register 0 High - RW */
+#define IGC_TRGTTIML1  0x0B64C /* Target Time Register 1 Low  - RW */
+#define IGC_TRGTTIMH1  0x0B650 /* Target Time Register 1 High - RW */
+#define IGC_FREQOUT0   0x0B654 /* Frequency Out 0 Control Register - RW */
+#define IGC_FREQOUT1   0x0B658 /* Frequency Out 1 Control Register - RW */
+#define IGC_AUXSTMPL0  0x0B65C /* Auxiliary Time Stamp 0 Register Low  - RO */
+#define IGC_AUXSTMPH0  0x0B660 /* Auxiliary Time Stamp 0 Register High - RO */
+#define IGC_AUXSTMPL1  0x0B664 /* Auxiliary Time Stamp 1 Register Low  - RO */
+#define IGC_AUXSTMPH1  0x0B668 /* Auxiliary Time Stamp 1 Register High - RO */
 
 #define IGC_IMIR(_i)	(0x05A80 + ((_i) * 4))  /* Immediate Interrupt */
 #define IGC_IMIREXT(_i)	(0x05AA0 + ((_i) * 4))  /* Immediate INTR Ext*/
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
