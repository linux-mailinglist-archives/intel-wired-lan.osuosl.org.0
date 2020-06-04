Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516991ED9C4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 02:01:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9CB688721;
	Thu,  4 Jun 2020 00:01:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i8F98ft+mYVf; Thu,  4 Jun 2020 00:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB03388611;
	Thu,  4 Jun 2020 00:01:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FB781BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 937C0203F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0RoxL7eFQ+6u for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 64C41221D2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:01:22 +0000 (UTC)
IronPort-SDR: gQI2iBDvyQ71lFdxewovh5qp2P7LyVKEmgqY4930xFxeVW+YhabjekF9dkKoX0XN4PU6CmVp5P
 XB8IlnUPl7LA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 17:01:21 -0700
IronPort-SDR: /k0X2tdoaEH6QP1HmVtNPwd/YR0nVDQsMey4fK7RkiK3CxbAicg2sRpK5Uj/ASpVuaeoSsOgBz
 W3CSZkKsg4ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="272932801"
Received: from mrief-mobl1.amr.corp.intel.com ([10.209.62.192])
 by orsmga006.jf.intel.com with ESMTP; 03 Jun 2020 17:01:21 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jun 2020 17:01:03 -0700
Message-Id: <20200604000105.15059-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604000105.15059-1-andre.guedes@intel.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 4/6] igc: Remove UDP filter setup in PTP
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

As implemented in igc_ethtool_get_ts_info(), igc only supports HWTSTAMP_
FILTER_ALL so any HWTSTAMP_FILTER_* option the user may set falls back to
HWTSTAMP_FILTER_ALL.

HWTSTAMP_FILTER_ALL is implemented via Rx Time Sync Control (TSYNCRXCTL)
configuration which timestamps all incoming packets. Configuring an
UDP filter, in addition to TSYNCRXCTL, doesn't add much so this patch
removes that code. It also takes this opportunity to remove some
non-applicable comments.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 51 +-----------------------
 1 file changed, 1 insertion(+), 50 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index e65fdcf966b2..bdf934377abb 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -244,18 +244,7 @@ static void igc_ptp_enable_tstamp_all_rxqueues(struct igc_adapter *adapter,
  * @adapter: networking device structure
  * @config: hwtstamp configuration
  *
- * Outgoing time stamping can be enabled and disabled. Play nice and
- * disable it when requested, although it shouldn't case any overhead
- * when no packet needs it. At most one packet in the queue may be
- * marked for time stamping, otherwise it would be impossible to tell
- * for sure to which packet the hardware time stamp belongs.
- *
- * Incoming time stamping has to be configured via the hardware
- * filters. Not all combinations are supported, in particular event
- * type has to be specified. Matching the kind of event packet is
- * not supported, with the exception of "all V2 events regardless of
- * level 2 or 4".
- *
+ * Return: 0 in case of success, negative errno code otherwise.
  */
 static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 				      struct hwtstamp_config *config)
@@ -263,8 +252,6 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	u32 tsync_tx_ctl = IGC_TSYNCTXCTL_ENABLED;
 	u32 tsync_rx_ctl = IGC_TSYNCRXCTL_ENABLED;
 	struct igc_hw *hw = &adapter->hw;
-	u32 tsync_rx_cfg = 0;
-	bool is_l4 = false;
 	u32 regval;
 
 	/* reserved for future extensions */
@@ -285,15 +272,7 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 		tsync_rx_ctl = 0;
 		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
-		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_L4_V1;
-		tsync_rx_cfg = IGC_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE;
-		is_l4 = true;
-		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
-		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_L4_V1;
-		tsync_rx_cfg = IGC_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE;
-		is_l4 = true;
-		break;
 	case HWTSTAMP_FILTER_PTP_V2_EVENT:
 	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
 	case HWTSTAMP_FILTER_PTP_V2_L4_EVENT:
@@ -303,32 +282,22 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	case HWTSTAMP_FILTER_PTP_V2_DELAY_REQ:
 	case HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ:
 	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
-		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_EVENT_V2;
-		config->rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;
-		is_l4 = true;
-		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
 	case HWTSTAMP_FILTER_NTP_ALL:
 	case HWTSTAMP_FILTER_ALL:
 		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
 		break;
-		/* fall through */
 	default:
 		config->rx_filter = HWTSTAMP_FILTER_NONE;
 		return -ERANGE;
 	}
 
-	/* Per-packet timestamping only works if all packets are
-	 * timestamped, so enable timestamping in all packets as long
-	 * as one Rx filter was configured.
-	 */
 	if (tsync_rx_ctl) {
 		tsync_rx_ctl = IGC_TSYNCRXCTL_ENABLED;
 		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
 		tsync_rx_ctl |= IGC_TSYNCRXCTL_RXSYNSIG;
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
-		is_l4 = true;
 
 		if (hw->mac.type == igc_i225) {
 			regval = rd32(IGC_RXPBS);
@@ -359,24 +328,6 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	regval |= tsync_rx_ctl;
 	wr32(IGC_TSYNCRXCTL, regval);
 
-	/* define which PTP packets are time stamped */
-	wr32(IGC_TSYNCRXCFG, tsync_rx_cfg);
-
-	/* L4 Queue Filter[3]: filter by destination port and protocol */
-	if (is_l4) {
-		u32 ftqf = (IPPROTO_UDP /* UDP */
-			    | IGC_FTQF_VF_BP /* VF not compared */
-			    | IGC_FTQF_1588_TIME_STAMP /* Enable Timestamp */
-			    | IGC_FTQF_MASK); /* mask all inputs */
-		ftqf &= ~IGC_FTQF_MASK_PROTO_BP; /* enable protocol check */
-
-		wr32(IGC_IMIR(3), htons(PTP_EV_PORT));
-		wr32(IGC_IMIREXT(3),
-		     (IGC_IMIREXT_SIZE_BP | IGC_IMIREXT_CTRL_BP));
-		wr32(IGC_FTQF(3), ftqf);
-	} else {
-		wr32(IGC_FTQF(3), IGC_FTQF_MASK);
-	}
 	wrfl();
 
 	/* clear TX time stamp registers, just to be sure */
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
