Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8035B2AE865
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 06:49:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0781C8747F;
	Wed, 11 Nov 2020 05:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wKbwibaZrm2K; Wed, 11 Nov 2020 05:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E1018748D;
	Wed, 11 Nov 2020 05:49:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 057551BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 01D138747F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wbvw28u6YL84 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 05:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 458398747A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:29 +0000 (UTC)
IronPort-SDR: PaVgOOyIcl5MNVkQJw18fdFsLmYzcFevFUAX//eUss90gqqq2WrZGWA0luDSHqTCh/kKhC4uDF
 Iel2oxINF87Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="231723222"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="231723222"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:49:23 -0800
IronPort-SDR: b5aaRZJ/SGcyw5exFfNK11WMFGIAkLM6s0Ja2PauYO8fy1JcvsvSLWerkWszD7xvEGqY25Uits
 N2PA8H9iN75w==
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="308336400"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:49:20 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Nov 2020 13:51:49 +0800
Message-Id: <659e3a4977a7d9e1276d06882ea838d27d7c9ff1.1605073208.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1605073208.git.yu.c.chen@intel.com>
References: <cover.1605073208.git.yu.c.chen@intel.com>
Subject: [Intel-wired-lan] [PATCH 3/4][RFC] e1000e: Introduce workqueue to
 disable the power management
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
Cc: Len Brown <len.brown@intel.com>, Chen Yu <yu.c.chen@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org, "Brandt,
 Todd E" <todd.e.brandt@intel.com>, Zhang Rui <rui.zhang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce a workqueue to disable the power management of this device.
It is supposed to be triggered when e1000e hardware error is detected
during resume from S3.

Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h  |  1 +
 drivers/net/ethernet/intel/e1000e/netdev.c | 12 ++++++++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index ba7a0f8f6937..f50e5716d609 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -309,6 +309,7 @@ struct e1000_adapter {
 	struct work_struct downshift_task;
 	struct work_struct update_phy_task;
 	struct work_struct print_hang_task;
+	struct work_struct pm_remove_task;
 
 	int phy_hang_count;
 
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index f7c08426c0d7..45e0b1901440 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6030,6 +6030,16 @@ static void e1000_reset_task(struct work_struct *work)
 	e1000e_reinit_locked(adapter);
 }
 
+static void e1000_pm_remove_task(struct work_struct *work)
+{
+	struct e1000_adapter *adapter;
+	struct device *dev;
+
+	adapter = container_of(work, struct e1000_adapter, pm_remove_task);
+	dev = &adapter->pdev->dev;
+	device_pm_remove(dev);
+}
+
 /**
  * e1000_get_stats64 - Get System Network Statistics
  * @netdev: network interface device structure
@@ -7589,6 +7599,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_WORK(&adapter->downshift_task, e1000e_downshift_workaround);
 	INIT_WORK(&adapter->update_phy_task, e1000e_update_phy_task);
 	INIT_WORK(&adapter->print_hang_task, e1000_print_hw_hang);
+	INIT_WORK(&adapter->pm_remove_task, e1000_pm_remove_task);
 
 	/* Initialize link parameters. User can change them with ethtool */
 	adapter->hw.mac.autoneg = 1;
@@ -7731,6 +7742,7 @@ static void e1000_remove(struct pci_dev *pdev)
 	cancel_work_sync(&adapter->downshift_task);
 	cancel_work_sync(&adapter->update_phy_task);
 	cancel_work_sync(&adapter->print_hang_task);
+	cancel_work_sync(&adapter->pm_remove_task);
 
 	if (adapter->flags & FLAG_HAS_HW_TIMESTAMP) {
 		cancel_work_sync(&adapter->tx_hwtstamp_work);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
