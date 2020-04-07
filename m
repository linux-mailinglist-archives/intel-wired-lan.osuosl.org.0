Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4EF1A1725
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Apr 2020 23:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4BEE87675;
	Tue,  7 Apr 2020 21:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fjhsVhOZXYu5; Tue,  7 Apr 2020 21:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2ACE87DC4;
	Tue,  7 Apr 2020 21:07:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 332F61BF616
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2FD70220D0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRyOUZnGx2Ls for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 21:07:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 18B5A220C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:21 +0000 (UTC)
IronPort-SDR: W74Np4usQiL+/C0hh9vhN0zbUHZ9cF/9tB8/aTlvvKMnL2bQrXYRKLsmd0CkOodLiIpUrCHiKa
 M6lqvKluRQfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:07:20 -0700
IronPort-SDR: 95dDcbTSisYPzS+4uK18dGz1k5Q09gQhtXqFAKDuTOyMr8NxvG/HdmeDWbLGv6NuUWAVt0BJQq
 GXZb5cdjxlow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="452593245"
Received: from jyguan-mobl1.amr.corp.intel.com ([10.212.37.126])
 by fmsmga006.fm.intel.com with ESMTP; 07 Apr 2020 14:07:20 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 14:07:08 -0700
Message-Id: <20200407210711.24371-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407210711.24371-1-andre.guedes@intel.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/5] igc: Remove ethertype filter in ptp
 code
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

The driver only supports hardware timestamping for all incoming
traffic (HWTSTAMP_FILTER_ALL) which is enabled via Rx Time Sync
Control (TSYNCRXCTL) register already. Therefore, the ethertype
filter set in in igc_ptp_set_timestamp_mode() is useless so this
patch removes it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +-
 drivers/net/ethernet/intel/igc/igc_defines.h |  3 ---
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 12 ------------
 3 files changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index dd2d2f0c312f..3666914724b0 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -26,7 +26,7 @@ void igc_set_ethtool_ops(struct net_device *);
 #define MAX_Q_VECTORS			8
 #define MAX_STD_JUMBO_FRAME_SIZE	9216
 
-#define MAX_ETYPE_FILTER		(4 - 1)
+#define MAX_ETYPE_FILTER		4
 #define IGC_RETA_SIZE			128
 
 struct igc_tx_queue_stats {
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 03c3ce86a9b6..1127ef81e374 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -384,9 +384,6 @@
 
 #define IGC_TSICR_INTERRUPTS	IGC_TSICR_TXTS
 
-/* PTP Queue Filter */
-#define IGC_ETQF_1588		BIT(30)
-
 #define IGC_FTQF_VF_BP		0x00008000
 #define IGC_FTQF_1588_TIME_STAMP	0x08000000
 #define IGC_FTQF_MASK			0xF0000000
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index c292aaf7c79d..825e21a73355 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -305,7 +305,6 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	struct igc_hw *hw = &adapter->hw;
 	u32 tsync_rx_cfg = 0;
 	bool is_l4 = false;
-	bool is_l2 = false;
 	u32 regval;
 
 	/* reserved for future extensions */
@@ -346,7 +345,6 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
 		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_EVENT_V2;
 		config->rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;
-		is_l2 = true;
 		is_l4 = true;
 		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
@@ -370,7 +368,6 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
 		tsync_rx_ctl |= IGC_TSYNCRXCTL_RXSYNSIG;
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
-		is_l2 = true;
 		is_l4 = true;
 
 		if (hw->mac.type == igc_i225) {
@@ -405,15 +402,6 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	/* define which PTP packets are time stamped */
 	wr32(IGC_TSYNCRXCFG, tsync_rx_cfg);
 
-	/* define ethertype filter for timestamped packets */
-	if (is_l2)
-		wr32(IGC_ETQF(3),
-		     (IGC_ETQF_FILTER_ENABLE | /* enable filter */
-		     IGC_ETQF_1588 | /* enable timestamping */
-		     ETH_P_1588)); /* 1588 eth protocol type */
-	else
-		wr32(IGC_ETQF(3), 0);
-
 	/* L4 Queue Filter[3]: filter by destination port and protocol */
 	if (is_l4) {
 		u32 ftqf = (IPPROTO_UDP /* UDP */
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
