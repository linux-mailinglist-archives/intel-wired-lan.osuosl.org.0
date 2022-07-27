Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA3B58358C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 01:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D4E48299E;
	Wed, 27 Jul 2022 23:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D4E48299E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658963795;
	bh=9trK3ownsxHCy/JWrJPoeUgumdrzOEKm4c3Twsq8XuI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sQvJv+Sm9GOotUV6obmW48iqKh1wEC1Ro8Cp+CkRQhV6On0oITV8GJIGKJrf0vJHo
	 h43fUThNMy0b9V+TXeeQC9bqf6XbMybPYGGDhJh5mc/js5OI0HimmrKC0ClezBX9fT
	 C/ynnkihOA+UI4D+ccmrVAlNDP9PKh8dfvSODdaaMrpTj6DG2kA12e0GXdjIIsN0Oa
	 hLUce+nblUyO8baPjq15Z9pUm9iQgU9q8ImBx/tLDrScFr+Aadqoj9ED1kMMq8zGdO
	 JzheJAwYa2ww1/upIg2puBgZNHlJcTwhoiaqr5MR9jwAAx0lGBfPEdsCSfxCyj8wIZ
	 GZ5RGnl571n+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q81HyWnyhx0e; Wed, 27 Jul 2022 23:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5772382948;
	Wed, 27 Jul 2022 23:16:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5772382948
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54BAE1BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40922416F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40922416F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KUgXlFCGwOlS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 23:16:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55971416ED
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55971416ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288382451"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288382451"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="846448008"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 27 Jul 2022 16:15:59 -0700
Message-Id: <20220727231602.1625980-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
In-Reply-To: <20220727231602.1625980-1-jacob.e.keller@intel.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658963780; x=1690499780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HV9E8ETfSI1wC6fw/3Y68h42mHd8eFFVCmU08DOSDcc=;
 b=Nm008Ea+7o1mKlP9Tjgz+75qZrDgJ/OjElgNFYO30uPSrXYokzm9PyF4
 Bo6SPcFI2vf6belsU9cjONoMxCCK5asVtmF6RjlNblwQzxPaUqdIFTrM/
 2JkInplClpKw8Im8K88t9ZkxMjU9JBYcJ3GQnKJgWo6r0Zkn+eifG+9lm
 RAE8tLq+NJuPdcGQ7coy6jy4qoh3/Q9nT1IPUstZ7w5qs6q9iqZfoeMDn
 qKmbBPFAhpiKgeYJt/R2Uy7NI+1izCfkATZRVvOOnW+V63nBSM8E/pxk8
 VEhutTk/jROZaFEqMCpaAeypaZPRvXkKItwbCTh+a3hUmNz/0nwO3mD6h
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nm008Ea+
Subject: [Intel-wired-lan] [net-next v2 3/6] ice: track Tx timestamp stats
 similar to other Intel drivers
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

Several Intel networking drivers which support PTP track when Tx timestamps
are skipped or when they timeout without a timestamp from hardware. The
conditions which could cause these events are rare, but it can be useful to
know when and how often they occur.

Implement similar statistics for the ice driver, tx_hwtstamp_skipped,
tx_hwtstamp_timeouts, and tx_hwtstamp_flushed.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  3 +++
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 11 ++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  6 ++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  4 +++-
 4 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ca5a38651220..e9843bdfe8dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -136,6 +136,9 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
 	ICE_PF_STAT("mac_remote_faults.nic", stats.mac_remote_faults),
 	ICE_PF_STAT("fdir_sb_match.nic", stats.fd_sb_match),
 	ICE_PF_STAT("fdir_sb_status.nic", stats.fd_sb_status),
+	ICE_PF_STAT("tx_hwtstamp_skipped", ptp.tx_hwtstamp_skipped),
+	ICE_PF_STAT("tx_hwtstamp_timeouts", ptp.tx_hwtstamp_timeouts),
+	ICE_PF_STAT("tx_hwtstamp_flushed", ptp.tx_hwtstamp_flushed),
 };
 
 static const u32 ice_regs_dump_list[] = {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 72b663108a4a..c1758f7bd091 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2219,6 +2219,7 @@ ice_ptp_flush_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 		if (tx->tstamps[idx].skb) {
 			dev_kfree_skb_any(tx->tstamps[idx].skb);
 			tx->tstamps[idx].skb = NULL;
+			pf->ptp.tx_hwtstamp_flushed++;
 		}
 		clear_bit(idx, tx->in_use);
 		spin_unlock(&tx->lock);
@@ -2295,7 +2296,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
 
 /**
  * ice_ptp_tx_tstamp_cleanup - Cleanup old timestamp requests that got dropped
- * @hw: pointer to the hw struct
+ * @pf: pointer to the PF struct
  * @tx: PTP Tx tracker to clean up
  *
  * Loop through the Tx timestamp requests and see if any of them have been
@@ -2304,8 +2305,9 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
  * timestamp will never be captured. This might happen if the packet gets
  * discarded before it reaches the PHY timestamping block.
  */
-static void ice_ptp_tx_tstamp_cleanup(struct ice_hw *hw, struct ice_ptp_tx *tx)
+static void ice_ptp_tx_tstamp_cleanup(struct ice_pf *pf, struct ice_ptp_tx *tx)
 {
+	struct ice_hw *hw = &pf->hw;
 	u8 idx;
 
 	if (!tx->init)
@@ -2329,6 +2331,9 @@ static void ice_ptp_tx_tstamp_cleanup(struct ice_hw *hw, struct ice_ptp_tx *tx)
 		clear_bit(idx, tx->in_use);
 		spin_unlock(&tx->lock);
 
+		/* Count the number of Tx timestamps which have timed out */
+		pf->ptp.tx_hwtstamp_timeouts++;
+
 		/* Free the SKB after we've cleared the bit */
 		dev_kfree_skb_any(skb);
 	}
@@ -2345,7 +2350,7 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 
 	err = ice_ptp_update_cached_phctime(pf);
 
-	ice_ptp_tx_tstamp_cleanup(&pf->hw, &pf->ptp.port.tx);
+	ice_ptp_tx_tstamp_cleanup(pf, &pf->ptp.port.tx);
 
 	/* Run twice a second or reschedule if phc update failed */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 10e396abf130..2e2245f5c690 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -171,6 +171,9 @@ struct ice_ptp_port {
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
  * @reset_time: kernel time after clock stop on reset
+ * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
+ * @tx_hwtstamp_timeouts: number of Tx skbs discarded with no time stamp
+ * @tx_hwtstamp_flushed: number of Tx skbs flushed due to interface closed
  */
 struct ice_ptp {
 	struct ice_ptp_port port;
@@ -185,6 +188,9 @@ struct ice_ptp {
 	struct ptp_clock *clock;
 	struct hwtstamp_config tstamp_config;
 	u64 reset_time;
+	u32 tx_hwtstamp_skipped;
+	u32 tx_hwtstamp_timeouts;
+	u32 tx_hwtstamp_flushed;
 };
 
 #define __ptp_port_to_ptp(p) \
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 836dce840712..42b42f4b21ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2255,8 +2255,10 @@ ice_tstamp(struct ice_tx_ring *tx_ring, struct sk_buff *skb,
 
 	/* Grab an open timestamp slot */
 	idx = ice_ptp_request_ts(tx_ring->tx_tstamps, skb);
-	if (idx < 0)
+	if (idx < 0) {
+		tx_ring->vsi->back->ptp.tx_hwtstamp_skipped++;
 		return;
+	}
 
 	off->cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
 			     (ICE_TX_CTX_DESC_TSYN << ICE_TXD_CTX_QW1_CMD_S) |
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
