Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECDF508809
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 14:23:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFA0F4190D;
	Wed, 20 Apr 2022 12:23:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k_VNkg0MPMN5; Wed, 20 Apr 2022 12:23:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F0894192C;
	Wed, 20 Apr 2022 12:23:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FA361BF30D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 12:23:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C6F683298
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 12:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQ_uajOrXTJo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 12:23:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3770383227
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 12:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650457402; x=1681993402;
 h=from:to:cc:subject:date:message-id;
 bh=gSRLlKPchw6jSMv/2pjjUfgmQmkV9DnX3SHv4t3xe3E=;
 b=S7vu2qzNGb0j2JxYKZHAIAMq8cjcLFv+KzLfvCae/dhP7KLzTwkWKHKe
 mV1W8i7DQtN4D0/fNEXqDNYa85q88NMRG9h244nHaEWLRIhHrIBFOm21G
 k6W2c0uEESh7CG9QB/fsHhkWbHvjuGAzmxQZuu4eRxrOYpv/iI9NDF5+u
 Wf491vdXIKLPa5e/sSRaRpfgszys/8haU03PTDuuflLSC+DeZzzabpzH0
 mxw/S9+4udE2+ThfFcrPJgCjKAQoCKaWh+3/eLuEQplZFKIbWA1qb9rTq
 yE0TVXP6oBnG7WwRbl99IA/oGRzXtD6llf6bgPcMLub6DWj7zVQsFx5lN Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="324453163"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="324453163"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 05:23:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="510530420"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by orsmga003.jf.intel.com with ESMTP; 20 Apr 2022 05:23:20 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Apr 2022 14:23:02 +0200
Message-Id: <20220420122302.574-1-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
Subject: [Intel-wired-lan] [PATCH net v2] ice: fix PTP stale Tx timestamps
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

After running out of Tx timestamps request handlers, hardware (HW) stops
reporting finished requests. Function ice_ptp_tx_tstamp_cleanup() used
to only clean up stale handlers in driver and was leaving the hardware
registers not read. Not reading stale PTP Tx timestamps prevents next
interrupts from arriving and makes timestamping unusable.

v2:
- update commit message,
- added a comment to ice_read_phy_tstamp() call to clarify intentions.

v1[1]

[1] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220414102358.13486-1-michal.michalik@intel.com/#2876713

Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a1cd332..da025c2 100644
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
 
@@ -2304,11 +2305,16 @@ static void ice_ptp_tx_tstamp_cleanup(struct ice_ptp_tx *tx)
 
 	for_each_set_bit(idx, tx->in_use, tx->len) {
 		struct sk_buff *skb;
+		u64 raw_tstamp;
 
 		/* Check if this SKB has been waiting for too long */
 		if (time_is_after_jiffies(tx->tstamps[idx].start + 2 * HZ))
 			continue;
 
+		/* Read tstamp to be able to use this register again */
+		ice_read_phy_tstamp(hw, tx->quad, idx + tx->quad_offset,
+				    &raw_tstamp);
+
 		spin_lock(&tx->lock);
 		skb = tx->tstamps[idx].skb;
 		tx->tstamps[idx].skb = NULL;
@@ -2330,7 +2336,7 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 
 	ice_ptp_update_cached_phctime(pf);
 
-	ice_ptp_tx_tstamp_cleanup(&pf->ptp.port.tx);
+	ice_ptp_tx_tstamp_cleanup(&pf->hw, &pf->ptp.port.tx);
 
 	/* Run twice a second */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
-- 
2.9.5

base-commit: eb867a5e42ebf68eb4ac9e49669adb4b59f6a661
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
