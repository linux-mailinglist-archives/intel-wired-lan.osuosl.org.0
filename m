Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520FF3FD557
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 10:27:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7C93404A3;
	Wed,  1 Sep 2021 08:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UQlkJXvCKPBL; Wed,  1 Sep 2021 08:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D135400C3;
	Wed,  1 Sep 2021 08:27:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA171BF834
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D79480E27
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id frW9xlEJ9B5v for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 08:27:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D143280E26
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:27:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="240950053"
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="240950053"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 01:27:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="577444958"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by orsmga004.jf.intel.com with ESMTP; 01 Sep 2021 01:27:34 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  1 Sep 2021 10:27:31 +0200
Message-Id: <20210901082731.74893-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix not to overload flags
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
Cc: Mitch Williams <mitch.a.williams@intel.com>,
 Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The IAVF_FLAG_REINIT_ITR_NEEDED flag was being used for two different
purposes. As originally written, it indicates to the ITR mechanism to
update the interrupt registers to a new setting. Sometime later, it was
overloaded to indicate that interrupts need to be completely
reinitialized during reset. This causes problems when ethtool -C is used
while a reset is in progress, and can lead to RTNL deadlocks.

To fix this, add a new flag with a new name and use that to trigger
MSI-X reinit.

Fixes: 5b36e8d04b44 ("i40evf: Enable VF to request an alternate queue allocation")
Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      | 1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 21c957755..5a36af8b9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -272,6 +272,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_LEGACY_RX			BIT(15)
 #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
+#define IAVF_FLAG_REINIT_MSIX_NEEDED		BIT(20)
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
 	/* flags for admin queue service task */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 80437ef26..4b7a670de 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3556,7 +3556,7 @@ int iavf_process_config(struct iavf_adapter *adapter)
 			"Requested %d queues, but PF only gave us %d.\n",
 			num_req_queues,
 			adapter->vsi_res->num_queue_pairs);
-		adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
+		adapter->flags |= IAVF_FLAG_REINIT_MSIX_NEEDED;
 		adapter->num_req_queues = adapter->vsi_res->num_queue_pairs;
 		iavf_schedule_reset(adapter);
 		return -ENODEV;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
