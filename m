Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2227D53C72B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jun 2022 10:54:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28FA98429E;
	Fri,  3 Jun 2022 08:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GMw3dSp4TDjD; Fri,  3 Jun 2022 08:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D9D984296;
	Fri,  3 Jun 2022 08:54:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E60A1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 08:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AA0F84296
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 08:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cm3ZcASex-FM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jun 2022 08:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 977CA84242
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jun 2022 08:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654246458; x=1685782458;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S8s5L1xL/UZmHRi464hAS58xzYLJXmROnxnR7rUlzIY=;
 b=KliedREnG45r+p+36e2LeqD8FoNXqkWdTIUVOs9OKAZOvafSZ7IYveD4
 rbka71vK5RR/tLNajPN/wCSiYsiSuQ99vm8naLphuJpaiSdGo7Ms3Jvdm
 8gcUmfLcGsPwUIB1GWrS4Cw/1Oxbs+Xz2Vrsj73JyDHQSuP49UcgscdXN
 9F+wgrS1n5kMOu14XNMpiORARx2BFlPYJX/AAc6H4fYOXsq4F77YxA9cC
 QDYULoq2X0HP/JvNRczRDGb/ajpfBv0JF02RwBiTfPhyJQTnLEJc2+F0K
 XkB+0I9y7Sdr4fSkDwUPEMyZnUS9Q3b4qSkOZ2cSBwDGTc1KUrZONX06S g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="276276552"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="276276552"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 01:54:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="577939357"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga007.jf.intel.com with ESMTP; 03 Jun 2022 01:54:16 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  3 Jun 2022 10:52:10 +0200
Message-Id: <20220603085210.2862148-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add helper to check if
 iavf_remove() is in progress
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
Cc: Brett Creeley <brett.creeley@intel.com>, Brett Creeley <brett@pensando.io>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett@pensando.io>

Currently the driver checks if the __IAVF_IN_REMOVE_TASK bit is set in
the adapter's crit_section bitmap. This is fine, but if the
implementation were to ever change, i.e. a mutex was introduced all of
the callers of test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)
would have to change. Fix this by introducing the
iavf_is_remove_in_progress() helper function.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 17 ++++++++++++-----
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index fda1198d2c00..431182461462 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -505,6 +505,7 @@ int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter);
 void iavf_schedule_reset(struct iavf_adapter *adapter);
 void iavf_schedule_request_stats(struct iavf_adapter *adapter);
 void iavf_reset(struct iavf_adapter *adapter);
+bool iavf_is_remove_in_progress(struct iavf_adapter *adapter);
 void iavf_set_ethtool_ops(struct net_device *netdev);
 void iavf_update_stats(struct iavf_adapter *adapter);
 void iavf_reset_interrupt_capability(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 9f7ef52f12b9..b99d7434de44 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -268,6 +268,15 @@ int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
 	return -1;
 }
 
+/**
+ * iavf_is_remove_in_progress - Check if a iavf_remove() is in progress
+ * @adapter: board private structure
+ */
+bool iavf_is_remove_in_progress(struct iavf_adapter *adapter)
+{
+	return test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
+}
+
 /**
  * iavf_schedule_reset - Set the flags and schedule a reset event
  * @adapter: board private structure
@@ -2676,8 +2685,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 				   msecs_to_jiffies(1));
 		return;
 	case __IAVF_INIT_FAILED:
-		if (test_bit(__IAVF_IN_REMOVE_TASK,
-			     &adapter->crit_section)) {
+		if (iavf_is_remove_in_progress(adapter)) {
 			/* Do not update the state and do not reschedule
 			 * watchdog task, iavf_remove should handle this state
 			 * as it can loop forever
@@ -2701,8 +2709,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ);
 		return;
 	case __IAVF_COMM_FAILED:
-		if (test_bit(__IAVF_IN_REMOVE_TASK,
-			     &adapter->crit_section)) {
+		if (iavf_is_remove_in_progress(adapter)) {
 			/* Set state to __IAVF_INIT_FAILED and perform remove
 			 * steps. Remove IAVF_FLAG_PF_COMMS_FAILED so the task
 			 * doesn't bring the state back to __IAVF_COMM_FAILED.
@@ -3145,7 +3152,7 @@ static void iavf_adminq_task(struct work_struct *work)
 
 	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES)) {
 		if (adapter->netdev_registered ||
-		    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
+		    !iavf_is_remove_in_progress(adapter)) {
 			struct net_device *netdev = adapter->netdev;
 
 			rtnl_lock();
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
