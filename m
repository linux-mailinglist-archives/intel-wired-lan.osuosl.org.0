Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D08BD50BF10
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Apr 2022 19:51:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F5BE83026;
	Fri, 22 Apr 2022 17:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BieB2p3RLpnd; Fri, 22 Apr 2022 17:51:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D65782B94;
	Fri, 22 Apr 2022 17:51:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D3001BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 17:51:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17F1A41964
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 17:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNOXGiBHoi8Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 17:51:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E52A041960
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 17:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650649890; x=1682185890;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e1OzR/h3Ovy2XtfJglj8SNesn+Unr7MMtFKUHhx9q9c=;
 b=HWrqrUvAJ+IUB/GIP/qEl2TvM1PiKtnEN/ctp/yUY4Aon7Y323Gb4ysh
 aKNJQ0AxndlsN5xRwAHjgBM7pWJF+LeC6ORo9GZ9k9WEZh0woPeptLavP
 7A9Kd1ITJmSE8rpy7VGp8uS21xIlameuzFFH+yeRJEAtmGrlTvv1wO2vb
 TK+BDGGxj8ENWhd4k+l1M9pDc4F66DMgvzPxDpggiZ6KgT8Kloj4+64LC
 XEQNixv4Wd7CWbKryq3rJUFtg2XUKM/CYQAoQAXK6kgYvafvRdS+Dghwj
 O48ZDZNQMYWkvXWUEdtRzqHjqoNfxSjT0lD2YFc5ZiFdAyCRlJKtBFD+y g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="264517547"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="264517547"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 10:51:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="534501682"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga002.jf.intel.com with ESMTP; 22 Apr 2022 10:51:29 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 22 Apr 2022 19:39:05 +0200
Message-Id: <20220422173905.23410-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: fix crash when writing timestamp
 on rx rings
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
 drivers/net/ethernet/intel/ice/ice_ptp.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a1cd33273ca4..55ad21754d08 100644
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
 
+	if (!test_and_set_bit(ICE_CFG_BUSY, pf->state))
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
@@ -2324,17 +2334,18 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 {
 	struct ice_ptp *ptp = container_of(work, struct ice_ptp, work.work);
 	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
+	int err;
 
 	if (!test_bit(ICE_FLAG_PTP, pf->flags))
 		return;
 
-	ice_ptp_update_cached_phctime(pf);
+	err = ice_ptp_update_cached_phctime(pf);
 
 	ice_ptp_tx_tstamp_cleanup(&pf->ptp.port.tx);
 
-	/* Run twice a second */
+	/* Run twice a second or reschedule if phc update failed */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
-				   msecs_to_jiffies(500));
+				   msecs_to_jiffies(err ? 10 : 500));
 }
 
 /**

base-commit: b0a2af9a2ddb31e5cabab179baea2f5a29861eef
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
