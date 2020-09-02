Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC49D25B572
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Sep 2020 22:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1419686AB2;
	Wed,  2 Sep 2020 20:46:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CLSCVFe24s0S; Wed,  2 Sep 2020 20:46:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8660486A94;
	Wed,  2 Sep 2020 20:45:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2531BF47F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 20:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D290C2035C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 20:45:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PpJeIeRLPo8B for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 20:45:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F86D20354
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 20:45:56 +0000 (UTC)
IronPort-SDR: Ur2YsiRs0YPwD1y6s7okHtDY3ixfOJn1GW8hMMcPqF7t6iHMfbKJCwMUHFMVAUvlrYwmWmG4em
 8+/bRIhzr8+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="157478185"
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="157478185"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 13:45:54 -0700
IronPort-SDR: YBfkVtTARtXfEHg/LTuYqi850e6rLQI7Bjr04kejFhDF8j1oWzn1BLiq9U5NBKy5QhRS9g2upl
 L/3Nh6XQuW4A==
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="315235524"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 13:45:54 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 13:45:51 -0700
Message-Id: <20200902204551.2137634-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: clean up W=1 warnings in iavf
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Inspired by Lee Jones, this elminates the remaining W=1 warnings
in iavf.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 24 ++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index d870343cf689..814e59bf2c94 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -147,6 +147,7 @@ void iavf_schedule_reset(struct iavf_adapter *adapter)
 /**
  * iavf_tx_timeout - Respond to a Tx Hang
  * @netdev: network interface device structure
+ * @txqueue: queue number that is timing out
  **/
 static void iavf_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 {
@@ -2572,8 +2573,8 @@ static int iavf_validate_ch_config(struct iavf_adapter *adapter,
 }
 
 /**
- * iavf_del_all_cloud_filters - delete all cloud filters
- * on the traffic classes
+ * iavf_del_all_cloud_filters - delete all cloud filters on the traffic classes
+ * @adapter: board private structure
  **/
 static void iavf_del_all_cloud_filters(struct iavf_adapter *adapter)
 {
@@ -2592,7 +2593,7 @@ static void iavf_del_all_cloud_filters(struct iavf_adapter *adapter)
 /**
  * __iavf_setup_tc - configure multiple traffic classes
  * @netdev: network interface device structure
- * @type_date: tc offload data
+ * @type_data: tc offload data
  *
  * This function processes the config information provided by the
  * user to configure traffic classes/queue channels and packages the
@@ -2690,7 +2691,7 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 /**
  * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
  * @adapter: board private structure
- * @cls_flower: pointer to struct flow_cls_offload
+ * @f: pointer to struct flow_cls_offload
  * @filter: pointer to cloud filter structure
  */
 static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
@@ -3064,8 +3065,8 @@ static int iavf_delete_clsflower(struct iavf_adapter *adapter,
 
 /**
  * iavf_setup_tc_cls_flower - flower classifier offloads
- * @netdev: net device to configure
- * @type_data: offload data
+ * @adapter: board private structure
+ * @cls_flower: pointer to flow_cls_offload struct with flow info
  */
 static int iavf_setup_tc_cls_flower(struct iavf_adapter *adapter,
 				    struct flow_cls_offload *cls_flower)
@@ -3112,7 +3113,7 @@ static LIST_HEAD(iavf_block_cb_list);
  * iavf_setup_tc - configure multiple traffic classes
  * @netdev: network interface device structure
  * @type: type of offload
- * @type_date: tc offload data
+ * @type_data: tc offload data
  *
  * This function is the callback to ndo_setup_tc in the
  * netdev_ops.
@@ -3768,8 +3769,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 /**
  * iavf_suspend - Power management suspend routine
- * @pdev: PCI device information struct
- * @state: unused
+ * @dev_d: device info pointer
  *
  * Called when the system (VM) is entering sleep/suspend.
  **/
@@ -3799,15 +3799,15 @@ static int __maybe_unused iavf_suspend(struct device *dev_d)
 
 /**
  * iavf_resume - Power management resume routine
- * @pdev: PCI device information struct
+ * @dev_d: device info pointer
  *
  * Called when the system (VM) is resumed from sleep/suspend.
  **/
 static int __maybe_unused iavf_resume(struct device *dev_d)
 {
+	struct net_device *netdev = dev_get_drvdata(dev_d);
+	struct iavf_adapter *adapter = netdev_priv(netdev);
 	struct pci_dev *pdev = to_pci_dev(dev_d);
-	struct iavf_adapter *adapter = pci_get_drvdata(pdev);
-	struct net_device *netdev = adapter->netdev;
 	u32 err;
 
 	pci_set_master(pdev);
-- 
2.25.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
