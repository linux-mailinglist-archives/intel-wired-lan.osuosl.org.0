Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB686E9566
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 15:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8252C605E3;
	Thu, 20 Apr 2023 13:08:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8252C605E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681996121;
	bh=YhyAsJk6e1lbPfb+/zf0Kk0wDF6iAGaK94iTVGBKIIE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KAKUlZoZs/xuE1y77ZbCPgP5LKTlaoHI0ckHwfkd/KZKd4sGcfb56BVk7W5Xe/Zce
	 Vml0DH5m3/PqUspHJA4k5arGpj40HMul6czX4uQOnnfP5fivPXwjKZVEE4Ir2mNypu
	 a6gQbK1yCwGRrqAxAM7OHl7WCKC4dSRhDVg9ZbI4Di10AEmsdVkTDozSgBRcn8BfX4
	 TyZpyV6KqE127gx1ze2sa0dtf1YiPGX2JwZT//wcHVA8/6+ejppiQTsMZ0biASvUWj
	 L8YvYDoq4MWzg6BeLvS6Bjnmnyga0pnQRo6CfefNnKv2nYmDzEkRQc1TRM3PtrQE3h
	 +WKYyvNkBVWKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id elZXA3KguATA; Thu, 20 Apr 2023 13:08:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 788C46FE81;
	Thu, 20 Apr 2023 13:08:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 788C46FE81
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 071DF1BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2A51841F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2A51841F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mAjU3VJOtBsw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 13:08:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E7EF841F8
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E7EF841F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326057671"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326057671"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 06:08:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816009349"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="816009349"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 06:08:20 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Apr 2023 15:08:10 +0200
Message-Id: <20230420130810.214307-5-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230420130810.214307-1-kamil.maziarz@intel.com>
References: <20230420130810.214307-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681996102; x=1713532102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RYg8oKAmBCJZRYiQZ2ySjq3dgAoDsupRTWysMJbPdHM=;
 b=WvuFqefZZsDH5ky0ZUKFOU0BpEcuxtyEhIPqC6s3cIKH6WVPCahlLIgv
 GqspjrRCztDkIxs8qrOmN9ZU2BMIiHCpemFSWtjmPpUQCtz8IAnwXmNBU
 56ueJxqcFRy4ttDbEXhCdtrEssmSm6GDOQ0dEVS/+71MF4Vly+JuLP9Co
 KdI5mrVtKGVQWX7YOM3MQxVzPWyqDvlXKxFjwl7lJKuImPSzfBUop72Rr
 fIt+xF8r4geSH4/hAcBWcPeDntzLfaaXmLqT1tfr8Elh9D2ncFFz/7VAn
 AEGWELwcUSg2gLeuV8wvwsCTmEG/ygz/Kija2sO6bOKIy9PgVvriKF+GB
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WvuFqefZ
Subject: [Intel-wired-lan] [PATCH net v4 4/4] Revert "iavf: Do not restart
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
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
v1->v4: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3fecff35396c..51c8bc41e582 100644
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
