Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A684C12E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 13:40:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D2D840112;
	Wed, 23 Feb 2022 12:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X339Q7KbdK0q; Wed, 23 Feb 2022 12:40:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23EB4400CD;
	Wed, 23 Feb 2022 12:40:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 881C91BF83C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 12:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8314F60B9A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 12:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCctxKfCMU4z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 12:39:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6CA460B34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645619993; x=1677155993;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IHJ8OdkgbpCgr+zxaMSF0b/BRLw6bxJMMdtz4UZl2ck=;
 b=g9WVn+oY7oo3aVJLVyhdzARblQnmgEsePE2ptE9Iktx8Kh3oawhM98Fc
 kCwALjJnsaylhZVpMeJRrLWCldGp/LKaRnvArnHS4AvQqW4VTIVk/uB9s
 3rYiWxy0F7qGAaRnftlAiUxIkWwd7iuyUd/QkX5kjzPKR5g12+b7CgcSH
 PLw2WJKb2KCg1aBqstPrYE4/q4P9lJXDEsPacI1N1kgirFoAYh50aR7JJ
 S+r4Pw9xLmmSyaltwyS/wYiJ2OMgnEgFXPp1snwQFqAvIgOJLOHVxQHvV
 k3VGYvbXy4RWD/f1Mj8Ll3l+x0YIdVywZ1vG0k+R8IY1buQp17a4/zPVv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="315179382"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="315179382"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 04:39:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="639291751"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 23 Feb 2022 04:39:51 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Feb 2022 13:38:01 +0100
Message-Id: <20220223123801.30386-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1 5/8] iavf: Fix race in init state
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>,
 Phani Burra <phani.r.burra@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: SlawomirX Laba <slawomirx.laba@intel.com>

When iavf_init_version_check sends VIRTCHNL_OP_GET_VF_RESOURCES
message, the driver will wait for the response after requeueing
the watchdog task in iavf_init_get_resources call stack. The
logic is implemented this way that iavf_init_get_resources has
to be called in order to allocate adapter->vf_res. It is polling
for the AQ response in iavf_get_vf_config function. Expect a
call trace from kernel when adminq_task worker handles this
message first. adapter->vf_res will be NULL in
iavf_virtchnl_completion.

Make the watchdog task not queue the adminq_task if the init
process is not finished yet.

Fixes: 898ef1cb1cb2 ("iavf: Combine init and watchdog state machines")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 67349d2..36433d6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2532,7 +2532,8 @@ static void iavf_watchdog_task(struct work_struct *work)
 	schedule_delayed_work(&adapter->client_task, msecs_to_jiffies(5));
 	mutex_unlock(&adapter->crit_lock);
 restart_watchdog:
-	queue_work(iavf_wq, &adapter->adminq_task);
+	if (adapter->state >= __IAVF_DOWN)
+		queue_work(iavf_wq, &adapter->adminq_task);
 	if (adapter->aq_required)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(20));
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
