Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F49D4D31E6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 16:40:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D2149409F3;
	Wed,  9 Mar 2022 15:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iYV83lAXGV3r; Wed,  9 Mar 2022 15:40:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78902409E5;
	Wed,  9 Mar 2022 15:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2B781BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 15:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEA93410C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 15:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QFFDxOhlctaX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Mar 2022 15:40:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22638410BE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 15:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646840411; x=1678376411;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4H064EFM9ccF9ICvqAMo/DVPJI9FRzQ32o20JmQxITo=;
 b=Kwl2KiMnCfiGAcoDgAhLsywXwfZqmGcxuOkqkopqcHZT94UmrtESgxWs
 0Pv8P44IV3mivI7uvtSWIfMuNWxvtKkMnDZvxBorGuwsybel/GqvoZQL4
 5r6FzIYMYPZshmD0fXG1Ei/Pz75ecVUJgVZws+VyfHRRPmbEOc55I/yuH
 9DrL6x9I9r1XUDHZ9U/XlwZBDW3pS37M0wNTYuFZSCOsi6k5T3ekHv14W
 gBcJbDGANWLaqOYzaOry+HBrK2bfbqizWcYS859tkdvRLrO0+ONoKrW9J
 wofB2BdDReLUYNkVHlA0QaZ4TwwkM7ZItfmFwaJHrwhDgJtBl3xdTudnM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="253831745"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="253831745"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 07:39:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="632641394"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2022 07:39:46 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Mar 2022 16:37:39 +0100
Message-Id: <20220309153739.22014-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Fix double free in
 iavf_reset_task
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix double free possibility in iavf_disable_vf, as crit_lock is
freed in caller, iavf_reset_task. Add kernel-doc for iavf_disable_vf.
Remove mutex_unlock in iavf_disable_vf.
Without this patch there is double free scenario, when calling
iavf_reset_task.

Fixes: e85ff9c631e1 ("iavf: Fix deadlock in iavf_reset_task")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 Note: This is targeted to net-next because it fixes a patch
 that is not present in net.
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7c4b75a..c11e2ab 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2705,6 +2705,13 @@ static void iavf_watchdog_task(struct work_struct *work)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
 }
 
+/**
+ * iavf_disable_vf - disable VF
+ * @adapter: board private structure
+ *
+ * Set communication failed flag and free all resources.
+ * NOTE: This function is expected to be called with crit_lock being held.
+ **/
 static void iavf_disable_vf(struct iavf_adapter *adapter)
 {
 	struct iavf_mac_filter *f, *ftmp;
@@ -2759,7 +2766,6 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
 	adapter->netdev->flags &= ~IFF_UP;
-	mutex_unlock(&adapter->crit_lock);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 	iavf_change_state(adapter, __IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
