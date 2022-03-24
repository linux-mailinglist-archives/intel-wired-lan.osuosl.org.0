Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 380BE4E6404
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 14:21:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0C9A843EA;
	Thu, 24 Mar 2022 13:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KaUifpQBBXgD; Thu, 24 Mar 2022 13:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0B87843DB;
	Thu, 24 Mar 2022 13:21:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99ECB1C115D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 13:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86BBE41C41
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 13:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DVaJsMs2UUTX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 13:21:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D668841C27
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 13:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648128098; x=1679664098;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wU8HC+QDbMpJZJxmk9tjVn95spPbw+MQcktVeC5TBOc=;
 b=X4YcmxDrs4bJXmcliiCJcllAM3Uu4CBQTmINqCl9jHSdsxmVoy/crfzz
 xrKWYwBxn3wYsLn58nytn8BODfal50hHo+xyTGe45zPK5Noa7tHwTxIJ0
 GQcat5dcvriKJhG5CV8D114yN0a3REPM5FUQBY7cpMoymFB4zgtCbCqpg
 1vW6fXa9fuJycgwqFXEFaoXe3IZqDAjE1QXvSlZl0QwI0g8pWeJiWp9ze
 EWPeTXbTDquW8Dfz0Y6y48KezWVCas0+lhaFebaTdq/Ke0rG+IgahCCpE
 5ahaBhhom0hBR1HN/j2aCGZC6z6S9zIe3Attt1RFNoICGRcWFQI3knM7n w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238316472"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="238316472"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 06:21:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="552862851"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga007.fm.intel.com with ESMTP; 24 Mar 2022 06:21:37 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Mar 2022 14:19:15 +0100
Message-Id: <20220324131915.13929-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] Revert "iavf: Fix deadlock
 occurrence during resetting VF interface"
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This change caused a regression with resetting while changing network
namespaces. By clearing the IFF_UP flag, the kernel now thinks it has
fully closed the device.

This reverts commit 0cc318d2e8408bc0ffb4662a0c3e5e57005ac6ff.

Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0e178a0a..310fd57 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2706,7 +2706,6 @@ static void iavf_reset_task(struct work_struct *work)
 	running = adapter->state == __IAVF_RUNNING;
 
 	if (running) {
-		netdev->flags &= ~IFF_UP;
 		netif_carrier_off(netdev);
 		netif_tx_stop_all_queues(netdev);
 		adapter->link_up = false;
@@ -2821,7 +2820,7 @@ static void iavf_reset_task(struct work_struct *work)
 		 * to __IAVF_RUNNING
 		 */
 		iavf_up_complete(adapter);
-		netdev->flags |= IFF_UP;
+
 		iavf_irq_enable(adapter, true);
 	} else {
 		iavf_change_state(adapter, __IAVF_DOWN);
@@ -2837,10 +2836,8 @@ static void iavf_reset_task(struct work_struct *work)
 reset_err:
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
-	if (running) {
+	if (running)
 		iavf_change_state(adapter, __IAVF_RUNNING);
-		netdev->flags |= IFF_UP;
-	}
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 	iavf_close(netdev);
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
