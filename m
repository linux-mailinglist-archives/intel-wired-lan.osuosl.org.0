Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414B83B9875
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 00:06:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A521400C2;
	Thu,  1 Jul 2021 22:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qLCuc-TbNUUD; Thu,  1 Jul 2021 22:06:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A570C4018A;
	Thu,  1 Jul 2021 22:06:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8572C1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F96140195
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WpGo3KFlSYis for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 22:05:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BEE83401DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 22:05:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272486377"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="272486377"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 15:05:11 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="626531421"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 15:05:11 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  1 Jul 2021 15:04:49 -0700
Message-Id: <20210701220456.3882767-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210701220456.3882767-1-jacob.e.keller@intel.com>
References: <20210701220456.3882767-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v2 06/13] ice: PTP: move setting of
 tstamp_config
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

The tstamp_config structure is being set inside of
ice_ptp_cfg_timestamp, which is the function used to set Tx and
Rx timestamping during initialization.

This function is also used in order to set the PHY port timestamping
status. However, it makes sense to always set the tstamp_config directly
whenever the ice_set_tx_tstamp or ice_set_rx_tstamp functions are
called.

Move assignment of tstamp_config into the related functions and out of
ice_ptp_cfg_timestamp.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 4a6ab36411fa..049257f00809 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -35,6 +35,11 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 	else
 		val &= ~PFINT_OICR_TSYN_TX_M;
 	wr32(&pf->hw, PFINT_OICR_ENA, val);
+
+	if (on)
+		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_ON;
+	else
+		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_OFF;
 }
 
 /**
@@ -57,6 +62,11 @@ static void ice_set_rx_tstamp(struct ice_pf *pf, bool on)
 			continue;
 		vsi->rx_rings[i]->ptp_rx = on;
 	}
+
+	if (on)
+		pf->ptp.tstamp_config.rx_filter = HWTSTAMP_FILTER_ALL;
+	else
+		pf->ptp.tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 }
 
 /**
@@ -71,14 +81,6 @@ static void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena)
 {
 	ice_set_tx_tstamp(pf, ena);
 	ice_set_rx_tstamp(pf, ena);
-
-	if (ena) {
-		pf->ptp.tstamp_config.rx_filter = HWTSTAMP_FILTER_ALL;
-		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_ON;
-	} else {
-		pf->ptp.tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
-		pf->ptp.tstamp_config.tx_type = HWTSTAMP_TX_OFF;
-	}
 }
 
 /**
@@ -954,7 +956,6 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
 	case HWTSTAMP_FILTER_NTP_ALL:
 	case HWTSTAMP_FILTER_ALL:
-		config->rx_filter = HWTSTAMP_FILTER_ALL;
 		ice_set_rx_tstamp(pf, true);
 		break;
 	default:
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
