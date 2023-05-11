Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B136FEF7A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 11:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 756AB700DA;
	Thu, 11 May 2023 09:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 756AB700DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683799045;
	bh=y3Kf/o90fHC7uKsjUtUTgfir8LgM/CA6wV4I1WgL1t0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gsePJ1LqHG6YJ6hwQqFl9nIJv2tmSWlvEdpeshJKdOoLvnAiwZcLN6k50MI7OGs5A
	 ImWUpRIiR6U6kNMrGD3SdEjqTr/42sC9xn9LEadRPkkdRDwuMZIQhZCxoBjV/JXpOf
	 VVEc8yXtCwmSZ8xATYjU3SNbJJ+DcsMZboERtkhS1JNWXi9zqy4RkcYGErWEGIkYme
	 cftMe/Lub+71RqXE4hYQp4AHpmF+1C3wn9n/L2zYGRPQuJhbg2S4QjzgJkmfWd4Y1F
	 AIYGAC1h8tX1JQLr4n7fue5rAn/7An0ldJ/Gbimo6ovZ67KyXPgj2HjKq39A7ojaUq
	 wUzxzjPVrTZ6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8NRbZ9NdqILr; Thu, 11 May 2023 09:57:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4622F700C4;
	Thu, 11 May 2023 09:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4622F700C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EBF31BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 024C042BEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 024C042BEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMk2uZCg9X9h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 09:57:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49E6540904
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49E6540904
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="436785542"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="436785542"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:57:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="764677403"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="764677403"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga008.fm.intel.com with ESMTP; 11 May 2023 02:57:03 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 11:56:28 +0200
Message-Id: <20230511095628.17907-5-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230511095628.17907-1-kamil.maziarz@intel.com>
References: <20230511095628.17907-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683799024; x=1715335024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BNntiQMj1a5BcUcM/QcM/FFghAqjAT5QY7UU8Da9/iI=;
 b=L+qxxz4GJLqnyOVzWXFNv89oZeqhwOtfVQXI7vpYVfdscOYerJeQRG39
 TSjOXHy1IwDbFAZA147MOSCTxNqE+fglkUssLTAJUC5Et0BNobgZnuv/D
 j0X6IDPCbstfuwR2INCKX5ICAyKYmwKjzYVSXnHLgZE5fgCEFp9fRcY27
 LkbqKQukF5DQuzUUWcRyyPDMNDd0byrIV+o+Eez7ucXSrSqvMasBeRUGn
 WdsviX4yAnPjU6teFQ8FA6t+0h9ZeorGl0SWPoxcCn2gsPKghc2lHIVp/
 f3Nr/Qb1M/Q4922JM2E51V3A2Iuk/0ANrXw0retxCPQbn0uVqxXESibfa
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L+qxxz4G
Subject: [Intel-wired-lan] [PATCH iwl-net v6 4/4] Revert "iavf: Do not
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
v1->v6: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 9cce67ffecdd..195476dcb7a4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2990,6 +2990,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	iavf_free_queues(adapter);
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
+	adapter->netdev->flags &= ~IFF_UP;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 	iavf_change_state(adapter, __IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
@@ -3084,11 +3085,6 @@ static void iavf_reset_task(struct work_struct *work)
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
 
@@ -3239,16 +3235,6 @@ static void iavf_reset_task(struct work_struct *work)
 
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
