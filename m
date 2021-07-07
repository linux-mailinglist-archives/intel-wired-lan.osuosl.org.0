Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B22E3BE32E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jul 2021 08:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF8EC608AA;
	Wed,  7 Jul 2021 06:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7csHKJiSdhW; Wed,  7 Jul 2021 06:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFCEA60866;
	Wed,  7 Jul 2021 06:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A2DB1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 06:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 377A060815
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 06:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRcfovU_qULV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 06:30:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 064B7607F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 06:30:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209066863"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="209066863"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 23:30:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="410716878"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by orsmga003.jf.intel.com with ESMTP; 06 Jul 2021 23:30:53 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Jul 2021 08:40:25 +0200
Message-Id: <20210707064025.55096-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] igbvf: Refactor trace
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
Cc: Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactoring "PF still resetting" message, because previous version looked
like a bug - it informed about changes that worked as designed but might
confuse users. Changes requested to make message more user-friendly.

Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 1bbe9862a..5c1574855 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -1520,7 +1520,7 @@ static void igbvf_reset(struct igbvf_adapter *adapter)
 
 	/* Allow time for pending master requests to run */
 	if (mac->ops.reset_hw(hw))
-		dev_warn(&adapter->pdev->dev, "PF still resetting\n");
+		dev_info(&adapter->pdev->dev, "PF still resetting\n");
 
 	mac->ops.init_hw(hw);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
