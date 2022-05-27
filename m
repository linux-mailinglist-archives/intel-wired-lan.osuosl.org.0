Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CFA535B2C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 10:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 317FD4281E;
	Fri, 27 May 2022 08:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id exUjHtLbS26d; Fri, 27 May 2022 08:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD7124281A;
	Fri, 27 May 2022 08:11:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6B5F1BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 08:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D4C3284959
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 08:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qEh5QQ7Y7rBu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 08:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AE158494E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 08:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653639079; x=1685175079;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WQG0+hKKMJxiXfE7ctJn26VwJ2OJPTlB8Sb3nYFw/rc=;
 b=IguGP04P3LWNAg1V1P+kYi4N1P7PdkkLkhVEh0g4pKHOmDY+DlLGKmgE
 YxYbBr2/scXJsfu6RzgrTELxhuZCeRF804CmAQ8co7r+0AHWmtXwawBTa
 HJw8Y7OJEGTKJkK4tR05LPL0+emP4M7gpUnO8ui2uXkp3cujP1bXE0Li/
 1QZuGbqwcTTFJUWYf5queU9jc761NBghJgq4Yk/bsSLYVgyNI1vDUNlJa
 Kvzl/UeBsoA75xnuyBpJeXoBHYnEBCqWkUoP4J43JuVXeazdrahfJBVHD
 siSLW7prfnzFcTvkcMRXevyjksT2CES7QwdwBPV/s3X33DEiYA5qq+rry g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="274422337"
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="274422337"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 01:11:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="677880005"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga002.fm.intel.com with ESMTP; 27 May 2022 01:11:16 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 27 May 2022 10:09:18 +0200
Message-Id: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Add helper to check if
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
Cc: Brett Creeley <brett.creeley@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

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
index 49aed3e506a6..c787c152f5b3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -502,6 +502,7 @@ int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter);
 void iavf_schedule_reset(struct iavf_adapter *adapter);
 void iavf_schedule_request_stats(struct iavf_adapter *adapter);
 void iavf_reset(struct iavf_adapter *adapter);
+bool iavf_is_remove_in_progress(struct iavf_adapter *adapter);
 void iavf_set_ethtool_ops(struct net_device *netdev);
 void iavf_update_stats(struct iavf_adapter *adapter);
 void iavf_reset_interrupt_capability(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f3ecb3bca33d..eec74ee5fc19 100644
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
@@ -2588,8 +2597,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 				   msecs_to_jiffies(1));
 		return;
 	case __IAVF_INIT_FAILED:
-		if (test_bit(__IAVF_IN_REMOVE_TASK,
-			     &adapter->crit_section)) {
+		if (iavf_is_remove_in_progress(adapter)) {
 			/* Do not update the state and do not reschedule
 			 * watchdog task, iavf_remove should handle this state
 			 * as it can loop forever
@@ -2613,8 +2621,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ);
 		return;
 	case __IAVF_COMM_FAILED:
-		if (test_bit(__IAVF_IN_REMOVE_TASK,
-			     &adapter->crit_section)) {
+		if (iavf_is_remove_in_progress(adapter)) {
 			/* Set state to __IAVF_INIT_FAILED and perform remove
 			 * steps. Remove IAVF_FLAG_PF_COMMS_FAILED so the task
 			 * doesn't bring the state back to __IAVF_COMM_FAILED.
@@ -3057,7 +3064,7 @@ static void iavf_adminq_task(struct work_struct *work)
 
 	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES)) {
 		if (adapter->netdev_registered ||
-		    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
+		    !(iavf_is_remove_in_progress(adapter))) {
 			struct net_device *netdev = adapter->netdev;
 
 			rtnl_lock();
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
