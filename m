Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4866E78F8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 13:51:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4B4561619;
	Wed, 19 Apr 2023 11:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4B4561619
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681905060;
	bh=G1L9+8O1Aku5FVsPnhnrKru/nEeqQN4+ZcXwlWiHRTo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7aa3UyCqqzh2ze1tNKF5+W7QWhw+wHDS4rO7MnZMGC/mow2aCxwKkvQKJO7zh5OOh
	 NfjaPbc7QbMof+EDucUWDJTQlDARUoWGzZlvs/7OeqZVlNQrycfCMErP1MNas2lGKL
	 vNBJO7Xv/n4OefPZh/WWUtuGHbk+TLgJaryTQjyRPj5ElrEIi3w2ETvyaHsewoY+jq
	 xly4Wp50esz0dk6e4TrRl1W0yHuOD6Ey9Blv/toSpn6/AL1S1FRp5KPolO9eafpG3Z
	 r/ho9XdX8TwKRKZUyFIRhXYa/+WhzSAk7bJhS5nfF38bMgZE7g1vaAcluOAaP1mehN
	 Zogo9wF29k9pA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BoXsZ_EDv_nA; Wed, 19 Apr 2023 11:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2A9B61657;
	Wed, 19 Apr 2023 11:50:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2A9B61657
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 579331C4320
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 11:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 31FF08404E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 11:50:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31FF08404E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id icz81dId6eSL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 11:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9705E83FE8
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9705E83FE8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 11:50:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="325760465"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="325760465"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 04:50:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="691480803"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="691480803"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga002.jf.intel.com with ESMTP; 19 Apr 2023 04:50:41 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 19 Apr 2023 13:50:06 +0200
Message-Id: <20230419115006.200409-5-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230419115006.200409-1-kamil.maziarz@intel.com>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681905042; x=1713441042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DE9Ie/eDGfV51A6nGRUwLzzFAAvHuMfTJqgK+by/UUg=;
 b=Pe95IqcecYnNfo5apRGd62nXs56GyDSnYhxWo4ciducrnSklaHz2tUWS
 C+w4jTiFm4ZnEwDZ/wr5W3pfgZiCh21HyH8zOMLbqjmnJ2VAZxhC8qVTh
 hSyjjfeJBc5xMbVgRZNvnGM3AFtoMzJQPkYhUgwI4ppRBY5qn4UwR2NW7
 NNgeu5F1j625sOaaXh3Tkm6VJAu9L0vorH6sJA1dkwigGiUH+oll4AYdz
 FUSSJ/s8seBj4OAfOFPlRfuPixrJn98nffMnIxFUrITd0ojFgVQxOff7F
 2o/whHkdWCHqi1hhGgKp/CBdIJeTpl5MqWiVJpahp980jxxYZzWxNHBqR
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pe95Iqce
Subject: [Intel-wired-lan] [PATCH net v3 4/4] Revert "iavf: Do not restart
 Tx queues after reset task failure"
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>

This reverts commit 08f1c147b7265245d67321585c68a27e990e0c4b.

Netdev is no longer being detached during reset, so this fix can be
reverted.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v2: no changes
---
v3: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8dd488158961..8f13685ed2fe 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2988,6 +2988,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	iavf_free_queues(adapter);
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
+	adapter->netdev->flags &= ~IFF_UP;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 	iavf_change_state(adapter, __IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
@@ -3082,11 +3083,6 @@ static void iavf_reset_task(struct work_struct *work)
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
 
@@ -3237,16 +3233,6 @@ static void iavf_reset_task(struct work_struct *work)
 
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
