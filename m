Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9926125B760
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Sep 2020 01:37:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B42486AB0;
	Wed,  2 Sep 2020 23:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7SyrcemrLKYV; Wed,  2 Sep 2020 23:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D06F886ACB;
	Wed,  2 Sep 2020 23:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96B1C1BF410
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 23:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B7AA872E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 23:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rvpjxOzBu9pV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 23:37:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ACFD3872E3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 23:37:06 +0000 (UTC)
IronPort-SDR: SNGlqY2w2Wjz/nxW5vREgen+2P3KNvMsaKWZ5kUQ3nerRt3M/ruFNEZQbGkd14bQryswJ8PjBI
 L0MyZzhtaRHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="145186764"
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="145186764"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 16:37:05 -0700
IronPort-SDR: lvfqxx5ITTwIQDhwLufwYVgWHY8btXjNkVmCWilXCbcxVGrAsuu0gA9fRsPjTWqSnlfC96mHCw
 tR1lpPDQnVfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="405312970"
Received: from shwethas-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.209.109.56])
 by fmsmga001.fm.intel.com with ESMTP; 02 Sep 2020 16:37:05 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 16:36:57 -0700
Message-Id: <20200902233657.4051914-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200902233657.4051914-1-vinicius.gomes@intel.com>
References: <20200902233657.4051914-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: Reject schedules
 with a base_time in the future
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
Cc: andre.guedes@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When we set the BASET registers of i225 with a base_time in the
future, i225 will "hold" all packets until that base_time is reached,
causing a lot of TX Hangs.

As this behaviour seems contrary to the expectations of the IEEE
802.1Q standard (section 8.6.9, specially 8.6.9.4.5), let's start by
rejecting these types of schedules. If this is too limiting, we can
for example, setup a timer to configure the BASET registers closer to
the start time, only blocking the packets for a "short" while.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 25 +++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 2cdf83e213b3..fd569cfa414f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4705,14 +4705,35 @@ static int igc_save_launchtime_params(struct igc_adapter *adapter, int queue,
 	return 0;
 }
 
-static bool validate_schedule(const struct tc_taprio_qopt_offload *qopt)
+static bool is_base_time_past(ktime_t base_time, const struct timespec64 *now)
+{
+	struct timespec64 b;
+
+	b = ktime_to_timespec64(base_time);
+
+	return timespec64_compare(now, &b) > 0;
+}
+
+static bool validate_schedule(struct igc_adapter *adapter,
+			      const struct tc_taprio_qopt_offload *qopt)
 {
 	int queue_uses[IGC_MAX_TX_QUEUES] = { };
+	struct timespec64 now;
 	size_t n;
 
 	if (qopt->cycle_time_extension)
 		return false;
 
+	igc_ptp_read(adapter, &now);
+
+	/* If we program the controller's BASET registers with a time
+	 * in the future, it will hold all the packets until that
+	 * time, causing a lot of TX Hangs, so to avoid that, we
+	 * reject schedules that would start in the future.
+	 */
+	if (!is_base_time_past(qopt->base_time, &now))
+		return false;
+
 	for (n = 0; n < qopt->num_entries; n++) {
 		const struct tc_taprio_sched_entry *e;
 		int i;
@@ -4767,7 +4788,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	if (adapter->base_time)
 		return -EALREADY;
 
-	if (!validate_schedule(qopt))
+	if (!validate_schedule(adapter, qopt))
 		return -EINVAL;
 
 	adapter->cycle_time = qopt->cycle_time;
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
