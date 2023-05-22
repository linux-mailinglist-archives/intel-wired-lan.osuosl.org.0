Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F9170BB8F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 13:18:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3D224107B;
	Mon, 22 May 2023 11:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3D224107B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684754297;
	bh=kd9PbQbE3dY83azHUVLxQ/gyVxd2VJk5ozBRIXG4niQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ivfFl0qJpdr7vf+pZP2fX08uAEONYL0S8DFrOxrwtzQQJVIJ3cO0x6ZgxRVOClAP4
	 ziBejnxMxjl7hzJ6l/PQV0yWsemo+EwuKoAwhwOenq1k2yRcftP1i6n5LoyIZ0be1S
	 z+bVJ6n0j90De7REZjBkeRZEKxkPBVO0bS6b5ZhzLvFZR5D63muLv2BDVtOk0fxHI5
	 D40IpU6ptBMma8Vp0FbizHnJFUNcp/xR/ys7mXq/89zyXRGe4PuP8SJaziLmvKBOFy
	 TgJNRAEFDbAJWCUaUKsyVOqRXsrY34o+G8wAkzy7zTVuouwr9pZFXwcxh7lqCJeeN5
	 NUyEf2LGghKWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4S3JNHIU6WSN; Mon, 22 May 2023 11:18:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79A874103C;
	Mon, 22 May 2023 11:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79A874103C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0001BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12003418A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12003418A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jwZAirm_B1yK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 11:17:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 258B5415FB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 258B5415FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="416354687"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="416354687"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 04:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="703466641"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="703466641"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2023 04:17:55 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 13:17:48 +0200
Message-Id: <20230522111748.65089-5-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230522111748.65089-1-kamil.maziarz@intel.com>
References: <20230522111748.65089-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684754277; x=1716290277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tTHOmkp+YBvbYNwyrIcg7X8A+6yDLZilLe1VIyMbs7c=;
 b=d1Zo2NLgVdVPeLsoyJolv0l2uhPNJpS/NGw5aDkA41VAMSZFkSdYpZg4
 OLRTRQK1ristiY00In3PrgX1lDvZBNNSjIAl2WIL//Lgo6X1nS9t/kI8J
 vOk/7s7gYfUUf6+am0q2HwEzjNSYW/wd9fYzsCxhKU135WP7K/7UQKtJ6
 LZdkNlSoUwawKbjjND+UAVGzrCOA/dlWZrUgyPR+Rmj70DQYV43kwG1Yj
 Wu856wjQklXGt1+N+NpLbmts811RnUL3Xd9chJJKZALf0JfPk2FT+KRvn
 fXQTTsPO6HMU8o8GOyRcsbg1dCDBvQaAQ19WDn2AEKmqnI/2a+PpVOOld
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d1Zo2NLg
Subject: [Intel-wired-lan] [PATCH iwl-net v8 4/4] Revert "iavf: Do not
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
v1->v8: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3d439f9ac97b..771463e53135 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2986,6 +2986,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	iavf_free_queues(adapter);
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
+	adapter->netdev->flags &= ~IFF_UP;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 	iavf_change_state(adapter, __IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
@@ -3080,11 +3081,6 @@ static void iavf_reset_task(struct work_struct *work)
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
 
@@ -3235,16 +3231,6 @@ static void iavf_reset_task(struct work_struct *work)
 
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
