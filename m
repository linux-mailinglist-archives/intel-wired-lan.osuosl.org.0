Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B8758358A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 01:16:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79C5482A0B;
	Wed, 27 Jul 2022 23:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79C5482A0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658963791;
	bh=qUn+8iApQOYYIKNPwY8C4yRLBbPy+Nu59JXlBdRxNUw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g9sCrZjWhF8N0X6RgQ09GLYSZ308IpjNGMzVIECukVusS9y9SIkL/JCwSDC0LaLBk
	 LAqixj1IpfBSpC3wQBXG3mFIMu1kBf+6LUi7aCC2Qzl+DDabHO3osuYod5y2wEpmqv
	 J3s6WePjuhMzyffteFvwIY/iQjcS8EAi0mUOafT2WqPfgk7KsuALDifE4ncrnWiy9c
	 GW8qef+3OhuU0oCXu4eNhqdo8nsYugjAZm18GWj6El4663bkv4gN05LVqO/pPCSDSd
	 dLxDWgZzBtZE4UljcW/gA9h0fRBPH/dSDus2pWpI/q4li9nIq2eu6dNAhaAGWjpRSM
	 ISWSdrN/fHNVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ss76SGCovWxY; Wed, 27 Jul 2022 23:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D1978299E;
	Wed, 27 Jul 2022 23:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D1978299E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 518721BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82A51415BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82A51415BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Suv4C9W5dK5N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 23:16:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C821416E9
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C821416E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288382452"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288382452"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="846448011"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 27 Jul 2022 16:16:00 -0700
Message-Id: <20220727231602.1625980-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
In-Reply-To: <20220727231602.1625980-1-jacob.e.keller@intel.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658963780; x=1690499780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=upjHIEv6YyaT39MS/Zv7FKS8izq7/PlU/FI+/Q3s3Is=;
 b=jWU8e1vT0UA9BvKyABUli0Wh1Rx3yGhhmetLgBWmh69ByNBabwGKFS/K
 SKzJ6hLawf0gDjrKd7hgZZZoj3vjzIGL9g6RjkWK5Wg8MXyGxEg1iCc+w
 gToTu8GALGJi2us8KMjxUzQI7Zw4QqX2cgCV8gpRFgXVqxisu+rdqkHNK
 mG8HgETSTQIREz40uGc1puSm8elCZUlAdgIbIQyDHPeHWJQjdufOsfT87
 D0j4K7jTJLfur/HBlbVs7Vglmx1o6FTCvBs/dx3cMjdSDwMZrHOhWw/6B
 Y46H44huRYOEmzaDeUYB4bgZPpQN3MWM+6fkUyVmZeWgpOoMnecgzML4P
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jWU8e1vT
Subject: [Intel-wired-lan] [net-next v2 4/6] ice: track and warn when PHC
 update is late
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

The ice driver requires a cached copy of the PHC time in order to perform
timestamp extension on Tx and Rx hardware timestamp values. This cached PHC
time must always be updated at least once every 2 seconds. Otherwise, the
math used to perform the extension would produce invalid results.

The updates are supposed to occur periodically in the PTP kthread work
item, which is scheduled to run every half second. Thus, we do not expect
an update to be delayed for so long. However, there are error conditions
which can cause the update to be delayed.

Track this situation by using jiffies to determine approximately how long
ago the last update occurred. Add a new statistic and a dev_warn when we
have failed to update the cached PHC time. This makes the error case more
obvious.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  2 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 28 +++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  7 +++++
 3 files changed, 34 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index e9843bdfe8dc..ad6cffb2d3e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -139,6 +139,8 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
 	ICE_PF_STAT("tx_hwtstamp_skipped", ptp.tx_hwtstamp_skipped),
 	ICE_PF_STAT("tx_hwtstamp_timeouts", ptp.tx_hwtstamp_timeouts),
 	ICE_PF_STAT("tx_hwtstamp_flushed", ptp.tx_hwtstamp_flushed),
+	ICE_PF_STAT("tx_hwtstamp_discarded", ptp.tx_hwtstamp_discarded),
+	ICE_PF_STAT("late_cached_phc_updates", ptp.late_cached_phc_updates),
 };
 
 static const u32 ice_regs_dump_list[] = {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index c1758f7bd091..10352eca2ecd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -507,17 +507,30 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
  */
 static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
 {
+	struct device *dev = ice_pf_to_dev(pf);
+	unsigned long update_before;
 	u64 systime;
 	int i;
 
 	if (test_and_set_bit(ICE_CFG_BUSY, pf->state))
 		return -EAGAIN;
 
+	update_before = pf->ptp.cached_phc_jiffies + msecs_to_jiffies(2000);
+	if (pf->ptp.cached_phc_time &&
+	    time_is_before_jiffies(update_before)) {
+		unsigned long time_taken = jiffies - pf->ptp.cached_phc_jiffies;
+
+		dev_warn(dev, "%u msecs passed between update to cached PHC time\n",
+			 jiffies_to_msecs(time_taken));
+		pf->ptp.late_cached_phc_updates++;
+	}
+
 	/* Read the current PHC time */
 	systime = ice_ptp_read_src_clk_reg(pf, NULL);
 
 	/* Update the cached PHC time stored in the PF structure */
 	WRITE_ONCE(pf->ptp.cached_phc_time, systime);
+	WRITE_ONCE(pf->ptp.cached_phc_jiffies, jiffies);
 
 	ice_for_each_vsi(pf, i) {
 		struct ice_vsi *vsi = pf->vsi[i];
@@ -636,6 +649,14 @@ static u64 ice_ptp_extend_32b_ts(u64 cached_phc_time, u32 in_tstamp)
 static u64 ice_ptp_extend_40b_ts(struct ice_pf *pf, u64 in_tstamp)
 {
 	const u64 mask = GENMASK_ULL(31, 0);
+	unsigned long discard_time;
+
+	/* Discard the hardware timestamp if the cached PHC time is too old */
+	discard_time = pf->ptp.cached_phc_jiffies + msecs_to_jiffies(2000);
+	if (time_is_before_jiffies(discard_time)) {
+		pf->ptp.tx_hwtstamp_discarded++;
+		return 0;
+	}
 
 	return ice_ptp_extend_32b_ts(pf->ptp.cached_phc_time,
 				     (in_tstamp >> 8) & mask);
@@ -2104,9 +2125,10 @@ static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
 
 		/* Extend the timestamp using cached PHC time */
 		tstamp = ice_ptp_extend_40b_ts(pf, raw_tstamp);
-		shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
-
-		ice_trace(tx_tstamp_complete, skb, idx);
+		if (tstamp) {
+			shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
+			ice_trace(tx_tstamp_complete, skb, idx);
+		}
 
 		skb_tstamp_tx(skb, &shhwtstamps);
 		dev_kfree_skb_any(skb);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 2e2245f5c690..d53dcd03e36b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -163,6 +163,7 @@ struct ice_ptp_port {
  * @work: delayed work function for periodic tasks
  * @extts_work: work function for handling external Tx timestamps
  * @cached_phc_time: a cached copy of the PHC time for timestamp extension
+ * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
  * @ext_ts_chan: the external timestamp channel in use
  * @ext_ts_irq: the external timestamp IRQ in use
  * @kworker: kwork thread for handling periodic work
@@ -174,12 +175,16 @@ struct ice_ptp_port {
  * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
  * @tx_hwtstamp_timeouts: number of Tx skbs discarded with no time stamp
  * @tx_hwtstamp_flushed: number of Tx skbs flushed due to interface closed
+ * @tx_hwtstamp_discarded: number of Tx skbs discarded due to cached PHC time
+ *                         being too old to correctly extend timestamp
+ * @late_cached_phc_updates: number of times cached PHC update is late
  */
 struct ice_ptp {
 	struct ice_ptp_port port;
 	struct kthread_delayed_work work;
 	struct kthread_work extts_work;
 	u64 cached_phc_time;
+	unsigned long cached_phc_jiffies;
 	u8 ext_ts_chan;
 	u8 ext_ts_irq;
 	struct kthread_worker *kworker;
@@ -191,6 +196,8 @@ struct ice_ptp {
 	u32 tx_hwtstamp_skipped;
 	u32 tx_hwtstamp_timeouts;
 	u32 tx_hwtstamp_flushed;
+	u32 tx_hwtstamp_discarded;
+	u32 late_cached_phc_updates;
 };
 
 #define __ptp_port_to_ptp(p) \
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
