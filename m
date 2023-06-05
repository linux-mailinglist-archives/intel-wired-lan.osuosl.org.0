Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 179EB722A0C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 16:58:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A469C82060;
	Mon,  5 Jun 2023 14:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A469C82060
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685977087;
	bh=uTgsDZGEyOuw3n7xaupx3pRg3LCXQBvlyypJ8cAoBdQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cNqj531sx+bJ4BdDTMjMY3vUexnn8TrxMruBkklTK7ZX1CTg+v7xQJGURWckqadlE
	 b6yS0BVgg9luuCPlKzPRBNbYk2Bjztb2LlzEjARqmeSI5/4jNHGUWeJyq4YSTLSnD3
	 4UtdVvP5EuvQ+JZoEBWBmP7jVTZ/Tvxsi2htpqufJRDfJpLl0sXIyt3KJGvLCRpJcA
	 VoD19tkAiI6BSjyLIcjCJA5aXqjdUZ7Iogrge3CQcXSSX28T1WK5pUjks1chY/rNyG
	 60K+j0SAFrX6ErjrHWXTNsJMUAhP9GsBaIDJJNE/4Bz3aa3nkkh6+Hew3d8kUcP6hj
	 XbdDuqDyPj7wQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8omTJ_1YpmPN; Mon,  5 Jun 2023 14:58:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D48D82022;
	Mon,  5 Jun 2023 14:58:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D48D82022
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF1CD1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3510415C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3510415C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hD6VWYQIN6OT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 14:57:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF44D415C0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF44D415C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="358836917"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358836917"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 07:57:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778589844"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="778589844"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jun 2023 07:57:52 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:52:24 -0400
Message-Id: <20230605145226.1222225-4-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
References: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685977073; x=1717513073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=st75oDtbaa+E2iiijPZnhvr7KOriyUmrwmdSC8eleFs=;
 b=WJhiwnc/CSTFS5aeSAm5CxDRH+z2ZCMMq2kTTWbEbgdV/zJhhdlgWREq
 SYs2ovH3Z7ewHCshMoyzOyrsfGXiJIs4MbxR2JJOcjwuidIiDjaIy5KyC
 xj18BILzYBnp6y+4n+n60MSHe0apJcD/eie/bmvZ9+ht+u+D6mC1+pHG3
 LqaXFyq38dCGAlQQ0CwmRQFxCKwN24oGkUh7FhVK760Uif673MGbSTCe5
 ra75qLN1C+YizOXY31m8K6qv7o2xNpObAHK5TEe//ekcb1W2goN5fhZKr
 JnxiW6HbLX9Odfc8t5qiC56Nof22PwBFgH1Z7EHoL7hwgty1M7e5xEqs7
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WJhiwnc/
Subject: [Intel-wired-lan] [PATCH iwl-net v10 3/5] Revert "iavf: Do not
 restart Tx queues after reset task failure"
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
Cc: ivecera@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>

This reverts commit 08f1c147b7265245d67321585c68a27e990e0c4b.

Netdev is no longer being detached during reset, so this fix can be
reverted. We leave the removal of "hacky" IFF_UP flag update.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
v1->v8: no changes
v9: we leave the removal of "hacky" IFF_UP update that was implemented in this patch
v10: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6945f462c56e..50521ba8fbb2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2962,6 +2962,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	iavf_free_queues(adapter);
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
+	adapter->netdev->flags &= ~IFF_UP;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 	iavf_change_state(adapter, __IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
@@ -3056,11 +3057,6 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_disable_vf(adapter);
 		mutex_unlock(&adapter->client_lock);
 		mutex_unlock(&adapter->crit_lock);
-		if (netif_running(netdev)) {
-			rtnl_lock();
-			dev_close(netdev);
-			rtnl_unlock();
-		}
 		return; /* Do not attempt to reinit. It's dead, Jim. */
 	}
 
@@ -3211,16 +3207,6 @@ static void iavf_reset_task(struct work_struct *work)
 
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
-
-	if (netif_running(netdev)) {
-		/* Close device to ensure that Tx queues will not be started
-		 * during netif_device_attach() at the end of the reset task.
-		 */
-		rtnl_lock();
-		dev_close(netdev);
-		rtnl_unlock();
-	}
-
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
