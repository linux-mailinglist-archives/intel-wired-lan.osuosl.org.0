Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E753B0632
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 15:50:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67AF540513;
	Tue, 22 Jun 2021 13:50:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tp31VVSklER8; Tue, 22 Jun 2021 13:50:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E12F404EA;
	Tue, 22 Jun 2021 13:50:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7FA81BF232
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 13:50:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A664D40286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 13:50:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pD2rYT2LAl_v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 13:50:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4CC7940103
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 13:50:22 +0000 (UTC)
IronPort-SDR: bIHEf6+3R7JGVNtAVqk/S2IO5pgelNdAFSFxk4ACno7mRiJQBkTX0Q9pFGT92DtQqGUie3CtOq
 +fsV8g7b4KzQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="228610141"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="228610141"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 06:50:21 -0700
IronPort-SDR: UrcBPxUzaXTlS8wRCjap12dJiPnMjyhfi1D0ElNgStrZXm5T+7OSftzColXj/8ynqI1IHINzCW
 ds+S2hMif05Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="486918907"
Received: from amlin-018-224.igk.intel.com ([10.102.18.224])
 by orsmga001.jf.intel.com with ESMTP; 22 Jun 2021 06:50:20 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jun 2021 15:43:48 +0200
Message-Id: <20210622134348.342191-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: Add trace while
 removing device
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
Cc: = Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: =  Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Add kernel trace that device was removed.
Currently there is no such information.
I.e. Host admin removes a PCI device from a VM,
than on VM shall be info about the event.

This patch adds info log to iavf_remove function.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index d64e2567e16e..60f08a5276b2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4012,6 +4012,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000))
 		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
 
+	dev_info(&adapter->pdev->dev, "Removing device\n");
 	/* Shut down all the garbage mashers on the detention level */
 	adapter->state = __IAVF_REMOVE;
 	adapter->aq_required = 0;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
