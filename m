Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3E2502B72
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 16:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92E6E4051E;
	Fri, 15 Apr 2022 14:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rQUH_Sl2UypR; Fri, 15 Apr 2022 14:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8762A400D1;
	Fri, 15 Apr 2022 14:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A911A1C1162
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 10:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 963CB840D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 10:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rx8g9ESiFPNA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Apr 2022 10:26:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E9888410A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Apr 2022 10:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649931998; x=1681467998;
 h=from:to:cc:subject:date:message-id;
 bh=jet9TPpic1vCw06npBcYUb7jHiHueiPtSkfDeCpA5Ho=;
 b=Nz8dbJpbn1hKSyL3ONddXT5/0M+4wZMGN4YeNmYDdH10LEmRDo/pZvym
 0i4bLoI55lB4cj1mAHnnFinYAJFtNaErJnKBTNAjJHCWtyRskBQZtJSfz
 LB2NuNlOa+JHRMTl6KABieoiwmkdzRUAFEMcYnqGyjGdF2qBIjBNyD7uf
 H4XbELTQ5SkdbzCXipZCaYEBZx3CFNXmZNTFZ3tN8HejOrcd6nFRs/tIO
 GPpjgLZ6gTZb6k2w4B/H7guwgj9UCt/wn2AIoTgIKxPlOj0Uwi+4tGxDw
 bgDYv56XI6XUzMF7NQKZ+pFINu0zeybR7ipdP4oNqU2w6qG6ILCnP8aPw Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="262344185"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="262344185"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 03:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="725310431"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by orsmga005.jf.intel.com with ESMTP; 14 Apr 2022 03:26:36 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Apr 2022 12:23:58 +0200
Message-Id: <20220414102358.13486-1-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
X-Mailman-Approved-At: Fri, 15 Apr 2022 14:05:48 +0000
Subject: [Intel-wired-lan] [PATCH net v1] ice: fix PTP stale Tx timestamps
 cleanup
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
Cc: Michal Michalik <michal.michalik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Read stale PTP Tx timestamps from PHY on cleanup.

After running out of Tx timestamps request handlers hardware (HW) stops
reporting finished requests. Function ice_ptp_tx_tstamp_cleanup() used
to only cleanup stale handlers in driver and was leaving the hardware
registers not read. Not reading stale PTP Tx timestamps prevents next
interrupts from arriving and makes timestamping not usable.

Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a1cd332..826a508 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2287,6 +2287,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
 
 /**
  * ice_ptp_tx_tstamp_cleanup - Cleanup old timestamp requests that got dropped
+ * @hw: pointer to the hw struct
  * @tx: PTP Tx tracker to clean up
  *
  * Loop through the Tx timestamp requests and see if any of them have been
@@ -2295,7 +2296,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
  * timestamp will never be captured. This might happen if the packet gets
  * discarded before it reaches the PHY timestamping block.
  */
-static void ice_ptp_tx_tstamp_cleanup(struct ice_ptp_tx *tx)
+static void ice_ptp_tx_tstamp_cleanup(struct ice_hw *hw, struct ice_ptp_tx *tx)
 {
 	u8 idx;
 
@@ -2304,11 +2305,15 @@ static void ice_ptp_tx_tstamp_cleanup(struct ice_ptp_tx *tx)
 
 	for_each_set_bit(idx, tx->in_use, tx->len) {
 		struct sk_buff *skb;
+		u64 raw_tstamp;
 
 		/* Check if this SKB has been waiting for too long */
 		if (time_is_after_jiffies(tx->tstamps[idx].start + 2 * HZ))
 			continue;
 
+		ice_read_phy_tstamp(hw, tx->quad, idx + tx->quad_offset,
+				    &raw_tstamp);
+
 		spin_lock(&tx->lock);
 		skb = tx->tstamps[idx].skb;
 		tx->tstamps[idx].skb = NULL;
@@ -2330,7 +2335,7 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 
 	ice_ptp_update_cached_phctime(pf);
 
-	ice_ptp_tx_tstamp_cleanup(&pf->ptp.port.tx);
+	ice_ptp_tx_tstamp_cleanup(&pf->hw, &pf->ptp.port.tx);
 
 	/* Run twice a second */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
-- 
2.9.5

base-commit: ad66aede031ecde3028926ebab54adffd19cf59c
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
