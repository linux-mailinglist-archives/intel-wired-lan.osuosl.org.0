Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 859023F1589
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 10:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F71C80E37;
	Thu, 19 Aug 2021 08:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9xOR47Iog-tI; Thu, 19 Aug 2021 08:48:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFFC080E5B;
	Thu, 19 Aug 2021 08:48:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABC9F1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 08:47:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AEE24044F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 08:47:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iS_anIJ2YLbq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 08:47:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8AA64040B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 08:47:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="238627100"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="238627100"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 01:47:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="532136909"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2021 01:47:53 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 08:47:49 +0000
Message-Id: <20210819084749.2553-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net-next v6 2/3] iavf: Add
 __IAVF_INIT_FAILED state
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jakub Pawlak <jakub.pawlak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This commit adds a new state, __IAVF_INIT_FAILED
to the state machine. From now on initialization functions report errors not
by returning an error value, but by changing the state to indicate that
something went wrong.

Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
v6: Fixed that patch so that it applies on next-queue tree
v5: Fixed the patch so that it applies on net-next tree
v4: Removed unnecessary line
v3: Added new file to patch series
v2: Splitted the patch into 2 to make them smaller
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 35 ++++++++++++---------
 2 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 4f937cc..d7f8026 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -178,6 +178,7 @@ enum iavf_state_t {
 	__IAVF_INIT_VERSION_CHECK,	/* aq msg sent, awaiting reply */
 	__IAVF_INIT_GET_RESOURCES,	/* aq msg sent, awaiting reply */
 	__IAVF_INIT_SW,		/* got resources, setting up structs */
+	__IAVF_INIT_FAILED,	/* init failed, restarting procedure */
 	__IAVF_RESETTING,		/* in reset */
 	__IAVF_COMM_FAILED,		/* communication with PF failed */
 	/* Below here, watchdog is running */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 740e68b..ce8b002 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -14,7 +14,7 @@
 static int iavf_setup_all_tx_resources(struct iavf_adapter *adapter);
 static int iavf_setup_all_rx_resources(struct iavf_adapter *adapter);
 static int iavf_close(struct net_device *netdev);
-static int iavf_init_get_resources(struct iavf_adapter *adapter);
+static void iavf_init_get_resources(struct iavf_adapter *adapter);
 static int iavf_check_reset_complete(struct iavf_hw *hw);
 
 char iavf_driver_name[] = "iavf";
@@ -1709,9 +1709,9 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
  *
  * Function process __IAVF_STARTUP driver state.
  * When success the state is changed to __IAVF_INIT_VERSION_CHECK
- * when fails it returns -EAGAIN
+ * when fails the state is changed to __IAVF_INIT_FAILED
  **/
-static int iavf_startup(struct iavf_adapter *adapter)
+static void iavf_startup(struct iavf_adapter *adapter)
 {
 	struct pci_dev *pdev = adapter->pdev;
 	struct iavf_hw *hw = &adapter->hw;
@@ -1751,8 +1751,9 @@ static int iavf_startup(struct iavf_adapter *adapter)
 		goto err;
 	}
 	iavf_change_state(adapter, __IAVF_INIT_VERSION_CHECK);
+	return;
 err:
-	return err;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
 /**
@@ -1761,9 +1762,9 @@ static int iavf_startup(struct iavf_adapter *adapter)
  *
  * Function process __IAVF_INIT_VERSION_CHECK driver state.
  * When success the state is changed to __IAVF_INIT_GET_RESOURCES
- * when fails it returns -EAGAIN
+ * when fails the state is changed to __IAVF_INIT_FAILED
  **/
-static int iavf_init_version_check(struct iavf_adapter *adapter)
+static void iavf_init_version_check(struct iavf_adapter *adapter)
 {
 	struct pci_dev *pdev = adapter->pdev;
 	struct iavf_hw *hw = &adapter->hw;
@@ -1798,8 +1799,9 @@ static int iavf_init_version_check(struct iavf_adapter *adapter)
 		goto err;
 	}
 	iavf_change_state(adapter, __IAVF_INIT_GET_RESOURCES);
+	return;
 err:
-	return err;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
 /**
@@ -1809,9 +1811,9 @@ static int iavf_init_version_check(struct iavf_adapter *adapter)
  * Function process __IAVF_INIT_GET_RESOURCES driver state and
  * finishes driver initialization procedure.
  * When success the state is changed to __IAVF_DOWN
- * when fails it returns -EAGAIN
+ * when fails the state is changed to __IAVF_INIT_FAILED
  **/
-static int iavf_init_get_resources(struct iavf_adapter *adapter)
+static void iavf_init_get_resources(struct iavf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
 	struct pci_dev *pdev = adapter->pdev;
@@ -1839,7 +1841,7 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 		 */
 		iavf_shutdown_adminq(hw);
 		dev_err(&pdev->dev, "Unable to get VF config due to PF error condition, not retrying\n");
-		return 0;
+		return;
 	}
 	if (err) {
 		dev_err(&pdev->dev, "Unable to get VF config (%d)\n", err);
@@ -1931,7 +1933,7 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 	else
 		iavf_init_rss(adapter);
 
-	return err;
+	return;
 err_mem:
 	iavf_free_rss(adapter);
 err_register:
@@ -1942,7 +1944,7 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 	kfree(adapter->vf_res);
 	adapter->vf_res = NULL;
 err:
-	return err;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
 /**
@@ -3689,15 +3691,18 @@ static void iavf_init_task(struct work_struct *work)
 	}
 	switch (adapter->state) {
 	case __IAVF_STARTUP:
-		if (iavf_startup(adapter) < 0)
+		iavf_startup(adapter);
+		if (adapter->state == __IAVF_INIT_FAILED)
 			goto init_failed;
 		break;
 	case __IAVF_INIT_VERSION_CHECK:
-		if (iavf_init_version_check(adapter) < 0)
+		iavf_init_version_check(adapter);
+		if (adapter->state == __IAVF_INIT_FAILED)
 			goto init_failed;
 		break;
 	case __IAVF_INIT_GET_RESOURCES:
-		if (iavf_init_get_resources(adapter) < 0)
+		iavf_init_get_resources(adapter);
+		if (adapter->state == __IAVF_INIT_FAILED)
 			goto init_failed;
 		goto out;
 	default:
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
