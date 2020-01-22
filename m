Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21076144E8E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2020 10:21:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE1B085FD5;
	Wed, 22 Jan 2020 09:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iNUwK_PHXRLX; Wed, 22 Jan 2020 09:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0CA5A85FD6;
	Wed, 22 Jan 2020 09:21:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2198D1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 09:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D4C387BD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 09:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ul+olIy2z6Sm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 09:21:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7DCFD87B92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 09:21:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 01:21:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,349,1574150400"; d="scan'208";a="215841602"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga007.jf.intel.com with ESMTP; 22 Jan 2020 01:21:14 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 11:21:13 +0200
Message-Id: <20200122092113.28381-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2] igc: Complete to commit Add basic
 skeleton for PTP
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

commit 5f2958052c58 ("igc: Add basic skeleton for PTP") added basic
support for PTP, what's missing is support for suspending.
Legacy power management has been added. Now we can add
the suspend method to the igc_shutdown.
By cleaning the runtime storage for timestamp this avoids a possible
invalid memory access when the system comes back from suspend state.

v1->v2:
Address community comment

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 2 +-
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index cb1362188c2a..5e9c2dd8b8e4 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -556,6 +556,7 @@ int igc_erase_filter(struct igc_adapter *adapter,
 
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
+void igc_ptp_suspend(struct igc_adapter *adapter);
 void igc_ptp_stop(struct igc_adapter *adapter);
 void igc_ptp_rx_rgtstamp(struct igc_q_vector *q_vector, struct sk_buff *skb);
 void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, void *va,
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 08ed9796d088..fa72460e255a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4899,6 +4899,8 @@ static int __igc_shutdown(struct pci_dev *pdev, bool *enable_wake,
 	if (netif_running(netdev))
 		__igc_close(netdev, true);
 
+	igc_ptp_suspend(adapter);
+
 	igc_clear_interrupt_scheme(adapter);
 	rtnl_unlock();
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 389a969fe5f4..f99c514ad0f4 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -641,7 +641,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
  * This function stops the overflow check work and PTP Tx timestamp work, and
  * will prepare the device for OS suspend.
  */
-static void igc_ptp_suspend(struct igc_adapter *adapter)
+void igc_ptp_suspend(struct igc_adapter *adapter)
 {
 	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
 		return;
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
