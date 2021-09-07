Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B20402629
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Sep 2021 11:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08725823F9;
	Tue,  7 Sep 2021 09:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t74TKh1oCunh; Tue,  7 Sep 2021 09:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1071B823A0;
	Tue,  7 Sep 2021 09:26:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7FF61BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 09:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95CD660BE1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 09:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X-spj5FJwNz8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Sep 2021 09:26:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB69560745
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 09:26:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="283857162"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="283857162"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 02:26:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="546684879"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga002.fm.intel.com with ESMTP; 07 Sep 2021 02:26:47 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Sep 2021 09:25:40 +0000
Message-Id: <20210907092540.59568-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix deadlock occurrence
 during resetting VF interface
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
Cc: Jaroslaw Gawin <jaroslawx.gawin@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

System hangs if close the interface is called from the kernel during
the interface is in resetting state.
During resetting operation the link is closing but kernel didn't
know it and it tried to close this interface again what sometimes
led to deadlock.
Inform kernel about current state of interface
and turn off the flag IFF_UP when interface is closing until reset
is finished.
Previously it was most likely to hang the system when kernel
(network manager) tried to close the interface in the same time
when interface was in resetting state because of deadlock.

Fixes: 3c8e0b989aa1 ("i40vf: don't stop me now")
Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 80437ef26391..a089c0cbc26c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2207,6 +2207,7 @@ continue_reset:
 		   (adapter->state == __IAVF_RESETTING));
 
 	if (running) {
+		netdev->flags &= ~IFF_UP;
 		netif_carrier_off(netdev);
 		netif_tx_stop_all_queues(netdev);
 		adapter->link_up = false;
@@ -2315,7 +2316,7 @@ continue_reset:
 		iavf_configure(adapter);
 
 		iavf_up_complete(adapter);
-
+		netdev->flags |= IFF_UP;
 		iavf_irq_enable(adapter, true);
 	} else {
 		adapter->state = __IAVF_DOWN;
@@ -2328,6 +2329,8 @@ continue_reset:
 reset_err:
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
+	if (running)
+		netdev->flags |= IFF_UP;
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 	iavf_close(netdev);
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
