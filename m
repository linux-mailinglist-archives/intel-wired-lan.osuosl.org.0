Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB50581C89
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 01:44:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82EC2402FE;
	Tue, 26 Jul 2022 23:44:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82EC2402FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658879068;
	bh=EcnbHUdpHNErrxNy6LtEXmwlV0i/Haf5BKxpACR3p+0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O+kU09NTe4KIXX67J1cnFTwLhDGHi6r/Cx5V7VwXPsxqmBGfOMXNiFNvgijqZjC09
	 oew6gPeBM6bXjwtIzcs/lOt6pNnT7oRUFBSAo02fTIKXWrZ0mYuiqyiEtStVZRkVAn
	 cdDeTgbBvG1TVBMzrlR8FtBidy59EhX4KnFW7/L3h/3/kXdCZydhCWy5s+xFx0Kg1d
	 9uzAn6XWAUe0YoOPW/3QjTqmR0d7hsjU3kiFSD92hoy+fspiWy+HNXCSR5vcwnJ/3U
	 0GC1aBbdS9M3TIngbvnffN3kOzJOHOxf5mRfQG/sdpOxCr6YT48yzpwgIByfKEuJO1
	 ghcO2ZnAZhZDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBoxETO53BS4; Tue, 26 Jul 2022 23:44:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 63A79402E5;
	Tue, 26 Jul 2022 23:44:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63A79402E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2874A1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87B4B40003
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87B4B40003
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F4RF3dmxixog for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 23:44:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAF24402E7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAF24402E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="313873683"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="313873683"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 16:44:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="689649897"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 16:44:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 26 Jul 2022 16:43:54 -0700
Message-Id: <20220726234357.50610-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
In-Reply-To: <20220726234357.50610-1-jacob.e.keller@intel.com>
References: <20220726234357.50610-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658879052; x=1690415052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PZZXfWEl3AKkw8+0H8AjbZglOFHl/ankwmrnMFcRUd0=;
 b=I9ZVy6c78jPi3QdIucgl+69Np/1Q5o4wstmDnB6S0y1AHD0eFhfexf4s
 EJvcSqKYTNTjISns6J4ScuvsW+iQXLQeSn0YVLh7X4QpuMiI3F9g+nHWT
 QCZkYp/+5wm0rEIQXVeVLrdQ40srlsA7CdVMhytETf+5Aat4Bf9K7kVaP
 R9UfhkGYJm/q4E151smNC6ezXaWxtLuZWESIyLkcTwfqaGLsu2yiRwz09
 v8mORclbdwkT06blw5u/+MMgvFD5n0KO75vexM1gh+eY/Rmi29r9VJsM7
 YYWBeGl0AeX7kCZW8Y/dYy5e3V6ChxPdiRMQiGQ8JjMMA/LJVfsQT0g9t
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I9ZVy6c7
Subject: [Intel-wired-lan] [net-next 3/6] ice: track Tx timestamp stats
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
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  5 +++++
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  4 +++-
 4 files changed, 19 insertions(+), 4 deletions(-)

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
index 10e396abf130..2cabdecbb23f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -171,6 +171,8 @@ struct ice_ptp_port {
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
  * @reset_time: kernel time after clock stop on reset
+ * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
+ * @tx_hwtstamp_timeouts: number of Tx skbs discarded with no time stamp
  */
 struct ice_ptp {
 	struct ice_ptp_port port;
@@ -185,6 +187,9 @@ struct ice_ptp {
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
