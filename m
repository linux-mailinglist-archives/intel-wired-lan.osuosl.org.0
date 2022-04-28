Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B14C512EE1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Apr 2022 10:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9E254058E;
	Thu, 28 Apr 2022 08:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MC2iuTZuPjsZ; Thu, 28 Apr 2022 08:46:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B183D400D7;
	Thu, 28 Apr 2022 08:46:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54AAF1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 08:46:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D83560BA6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 08:46:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LdW4qE6pYu5Q for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Apr 2022 08:46:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8859660B95
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651135585; x=1682671585;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WPXSD0U2OZj4Plf8tQjFbjwaua7c8aYICVnTnqBqzjA=;
 b=kYoY7zCuQyFhZF+7Q3OUNdY7fexyF5333+sP9oIU8cc+G3EJioDtm9lR
 +9Y//sF1jL+b5h5+U1QKQMqkYiaEH7ruMqILXTcCbOXxTsQtV2NcmYTjm
 g3QetvE+Gz9bkq9EEmiibDFK/N7Y7JcvpC7p5C2tXcHjf+3FZsWUHBUif
 +/K2NNjasdpiosihRSTlaBm2n3XAO8RJyrfyFxaA5FAxQERHZXWbhhwSn
 0trIHI9UyhNObbJBe6C5tx3NtEdSUj9YLVuNObUR5Nwtxy4DKGZ6f5TUA
 2ccrf7zLnUWwBexl6RcqnqNwgKCEpDilFeBPJ162Rm6jbrYDMcOv6ddty A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="263800097"
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="263800097"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 01:46:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="682274289"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga004.jf.intel.com with ESMTP; 28 Apr 2022 01:46:13 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Apr 2022 10:33:50 +0200
Message-Id: <20220428083350.10986-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] ice: fix crash when writing
 timestamp on rx rings
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

Do not allow to write timestamps on RX rings if PF is being configured.
When PF is being configured RX rings can be freed or rebuilt. If at the same
time timestamps are updated, the kernel will crash by dereferencing null RX
ring pointer.

PID: 1449   TASK: ff187d28ed658040  CPU: 34  COMMAND: "ice-ptp-0000:51"
 #0 [ff1966a94a713bb0] machine_kexec at ffffffff9d05a0be
 #1 [ff1966a94a713c08] __crash_kexec at ffffffff9d192e9d
 #2 [ff1966a94a713cd0] crash_kexec at ffffffff9d1941bd
 #3 [ff1966a94a713ce8] oops_end at ffffffff9d01bd54
 #4 [ff1966a94a713d08] no_context at ffffffff9d06bda4
 #5 [ff1966a94a713d60] __bad_area_nosemaphore at ffffffff9d06c10c
 #6 [ff1966a94a713da8] do_page_fault at ffffffff9d06cae4
 #7 [ff1966a94a713de0] page_fault at ffffffff9da0107e
    [exception RIP: ice_ptp_update_cached_phctime+91]
    RIP: ffffffffc076db8b  RSP: ff1966a94a713e98  RFLAGS: 00010246
    RAX: 16e3db9c6b7ccae4  RBX: ff187d269dd3c180  RCX: ff187d269cd4d018
    RDX: 0000000000000000  RSI: 0000000000000000  RDI: 0000000000000000
    RBP: ff187d269cfcc644   R8: ff187d339b9641b0   R9: 0000000000000000
    R10: 0000000000000002  R11: 0000000000000000  R12: ff187d269cfcc648
    R13: ffffffff9f128784  R14: ffffffff9d101b70  R15: ff187d269cfcc640
    ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
 #8 [ff1966a94a713ea0] ice_ptp_periodic_work at ffffffffc076dbef [ice]
 #9 [ff1966a94a713ee0] kthread_worker_fn at ffffffff9d101c1b
 #10 [ff1966a94a713f10] kthread at ffffffff9d101b4d
 #11 [ff1966a94a713f50] ret_from_fork at ffffffff9da0023f

Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2: rebased to latest dev-queue
v3: use proper if statement condition to bail out

 drivers/net/ethernet/intel/ice/ice_ptp.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index da025c204577..4101bfa27365 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -500,12 +500,19 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
  * This function must be called periodically to ensure that the cached value
  * is never more than 2 seconds old. It must also be called whenever the PHC
  * time has been changed.
+ *
+ * Return:
+ * * 0 - OK, successfully updated
+ * * -EAGAIN - PF was busy, need to reschedule the update
  */
-static void ice_ptp_update_cached_phctime(struct ice_pf *pf)
+static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
 {
 	u64 systime;
 	int i;
 
+	if (test_and_set_bit(ICE_CFG_BUSY, pf->state))
+		return -EAGAIN;
+
 	/* Read the current PHC time */
 	systime = ice_ptp_read_src_clk_reg(pf, NULL);
 
@@ -528,6 +535,9 @@ static void ice_ptp_update_cached_phctime(struct ice_pf *pf)
 			WRITE_ONCE(vsi->rx_rings[j]->cached_phctime, systime);
 		}
 	}
+	clear_bit(ICE_CFG_BUSY, pf->state);
+
+	return 0;
 }
 
 /**
@@ -2330,17 +2340,18 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 {
 	struct ice_ptp *ptp = container_of(work, struct ice_ptp, work.work);
 	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
+	int err;
 
 	if (!test_bit(ICE_FLAG_PTP, pf->flags))
 		return;
 
-	ice_ptp_update_cached_phctime(pf);
+	err = ice_ptp_update_cached_phctime(pf);
 
 	ice_ptp_tx_tstamp_cleanup(&pf->hw, &pf->ptp.port.tx);
 
-	/* Run twice a second */
+	/* Run twice a second or reschedule if phc update failed */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
-				   msecs_to_jiffies(500));
+				   msecs_to_jiffies(err ? 10 : 500));
 }
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
