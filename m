Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BA3429ABE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 03:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58B51404E1;
	Tue, 12 Oct 2021 01:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJc1A5r5U1MO; Tue, 12 Oct 2021 01:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C41E404DE;
	Tue, 12 Oct 2021 01:07:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4975B1BF616
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 01:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 35336608F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 01:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMfHb8LCj29r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 01:07:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7093160712
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 01:07:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="214155956"
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="214155956"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 18:07:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="490711185"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 18:07:47 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Oct 2021 18:07:08 -0700
Message-Id: <20211012010715.1684027-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20211012010715.1684027-1-jacob.e.keller@intel.com>
References: <20211012010715.1684027-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 2/9] ice: PTP: move setting of
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

Now that we assign the timestamp mode in the relevant functions, we no
longer modify the config valuie in ice_set_timestamp_mode. In turn, we
no longer want to copy that config value into the PF cached structure.
Instead, this is now the source of truth for actual configuration. On
success of ice_set_timestamp_mode, copy the real configured mode back to
report it out to userspace.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 71e715c7be4f..155842447ebe 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -285,6 +285,11 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
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
@@ -307,6 +312,11 @@ static void ice_set_rx_tstamp(struct ice_pf *pf, bool on)
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
@@ -321,14 +331,6 @@ static void ice_ptp_cfg_timestamp(struct ice_pf *pf, bool ena)
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
@@ -1256,7 +1258,6 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
 	case HWTSTAMP_FILTER_NTP_ALL:
 	case HWTSTAMP_FILTER_ALL:
-		config->rx_filter = HWTSTAMP_FILTER_ALL;
 		ice_set_rx_tstamp(pf, true);
 		break;
 	default:
@@ -1288,8 +1289,8 @@ int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 	if (err)
 		return err;
 
-	/* Save these settings for future reference */
-	pf->ptp.tstamp_config = config;
+	/* Return the actual configuration set */
+	config = pf->ptp.tstamp_config;
 
 	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
 		-EFAULT : 0;
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
