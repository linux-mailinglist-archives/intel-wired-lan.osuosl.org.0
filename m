Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39266176065
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Mar 2020 17:52:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4F9C876A0;
	Mon,  2 Mar 2020 16:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3CFiZqgvoJlE; Mon,  2 Mar 2020 16:52:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1F1C873CE;
	Mon,  2 Mar 2020 16:52:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 966A81BF321
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 16:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8FE8720243
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 16:52:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mqtXmT-NVrck for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2020 16:52:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 5EE4020131
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 16:52:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 08:52:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="258008875"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.122.129.215])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2020 08:52:02 -0800
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 Mar 2020 10:51:54 -0600
Message-Id: <20200302165154.1098-2-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200302165154.1098-1-shiraz.saleem@intel.com>
References: <20200302165154.1098-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2] i40e: Register a virtbus device to
 provide RDMA
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Register client virtbus device on the virtbus for the RDMA
virtbus driver (irdma) to bind to. It allows to realize a
single RDMA driver capable of working with multiple netdev
drivers over multi-generation Intel HW supporting RDMA.
There is also no load ordering dependencies between i40e and
irdma.

Summary of changes:
* Support to add/remove virtbus devices
* Add 2 new client ops.
	* i40e_client_device_register() which is called during RDMA
	  probe() per PF. Validate client drv OPs and schedule service
	  task to call open()
	* i40e_client_device_unregister() called during RDMA remove()
	  per PF. Call client close() and release_qvlist.
* The global register/unregister calls exported for i40iw are retained
  until i40iw is removed from the kernel.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/i40e/i40e_client.c | 131 ++++++++++++++++++++++----
 include/linux/net/intel/i40e_client.h         |  15 +++
 3 files changed, 127 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index b88328f..8595f57 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -241,6 +241,7 @@ config I40E
 	tristate "Intel(R) Ethernet Controller XL710 Family support"
 	imply PTP_1588_CLOCK
 	depends on PCI
+	select VIRTUAL_BUS
 	---help---
 	  This driver supports Intel(R) Ethernet Controller XL710 Family of
 	  devices.  For more information on how to identify your adapter, go
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index befd301..37e6dfb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include <linux/net/intel/i40e_client.h>
 #include <linux/list.h>
 #include <linux/errno.h>
 #include <linux/net/intel/i40e_client.h>
@@ -30,11 +31,17 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
 				       bool is_vf, u32 vf_id,
 				       u32 flag, u32 valid_flag);
 
+static int i40e_client_device_register(struct i40e_info *ldev);
+
+static void i40e_client_device_unregister(struct i40e_info *ldev);
+
 static struct i40e_ops i40e_lan_ops = {
 	.virtchnl_send = i40e_client_virtchnl_send,
 	.setup_qvlist = i40e_client_setup_qvlist,
 	.request_reset = i40e_client_request_reset,
 	.update_vsi_ctxt = i40e_client_update_vsi_ctxt,
+	.client_device_register = i40e_client_device_register,
+	.client_device_unregister = i40e_client_device_unregister,
 };
 
 /**
@@ -275,6 +282,37 @@ void i40e_client_update_msix_info(struct i40e_pf *pf)
 	cdev->lan_info.msix_entries = &pf->msix_entries[pf->iwarp_base_vector];
 }
 
+static void i40e_virtdev_release(struct virtbus_device *vdev)
+{
+	struct i40e_virtbus_device *i40e_vdev =
+			container_of(vdev, struct i40e_virtbus_device, vdev);
+
+	kfree(i40e_vdev);
+}
+
+static int i40e_init_client_virtdev(struct i40e_info *ldev)
+{
+	struct pci_dev *pdev = ldev->pcidev;
+	struct i40e_virtbus_device *i40e_vdev;
+	int ret;
+
+	i40e_vdev = kzalloc(sizeof(*i40e_vdev), GFP_KERNEL);
+	if (!i40e_vdev)
+		return -ENOMEM;
+
+	i40e_vdev->vdev.name = I40E_PEER_RDMA_NAME;
+	i40e_vdev->vdev.dev.parent = &pdev->dev;
+	i40e_vdev->vdev.release = i40e_virtdev_release;
+	i40e_vdev->ldev = ldev;
+	ldev->vdev = &i40e_vdev->vdev;
+
+	ret = virtbus_register_device(&i40e_vdev->vdev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 /**
  * i40e_client_add_instance - add a client instance struct to the instance list
  * @pf: pointer to the board struct
@@ -288,9 +326,6 @@ static void i40e_client_add_instance(struct i40e_pf *pf)
 	struct netdev_hw_addr *mac = NULL;
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 
-	if (!registered_client || pf->cinst)
-		return;
-
 	cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
 	if (!cdev)
 		return;
@@ -310,11 +345,8 @@ static void i40e_client_add_instance(struct i40e_pf *pf)
 	cdev->lan_info.fw_build = pf->hw.aq.fw_build;
 	set_bit(__I40E_CLIENT_INSTANCE_NONE, &cdev->state);
 
-	if (i40e_client_get_params(vsi, &cdev->lan_info.params)) {
-		kfree(cdev);
-		cdev = NULL;
-		return;
-	}
+	if (i40e_client_get_params(vsi, &cdev->lan_info.params))
+		goto free_cdev;
 
 	mac = list_first_entry(&cdev->lan_info.netdev->dev_addrs.list,
 			       struct netdev_hw_addr, list);
@@ -326,7 +358,17 @@ static void i40e_client_add_instance(struct i40e_pf *pf)
 	cdev->client = registered_client;
 	pf->cinst = cdev;
 
-	i40e_client_update_msix_info(pf);
+	cdev->lan_info.msix_count = pf->num_iwarp_msix;
+	cdev->lan_info.msix_entries = &pf->msix_entries[pf->iwarp_base_vector];
+
+	if (i40e_init_client_virtdev(&cdev->lan_info))
+		goto free_cdev;
+
+	return;
+
+free_cdev:
+	kfree(cdev);
+	pf->cinst = NULL;
 }
 
 /**
@@ -347,7 +389,7 @@ void i40e_client_del_instance(struct i40e_pf *pf)
  **/
 void i40e_client_subtask(struct i40e_pf *pf)
 {
-	struct i40e_client *client = registered_client;
+	struct i40e_client *client;
 	struct i40e_client_instance *cdev;
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	int ret = 0;
@@ -361,9 +403,11 @@ void i40e_client_subtask(struct i40e_pf *pf)
 	    test_bit(__I40E_CONFIG_BUSY, pf->state))
 		return;
 
-	if (!client || !cdev)
+	if (!cdev || !cdev->client)
 		return;
 
+	client = cdev->client;
+
 	/* Here we handle client opens. If the client is down, and
 	 * the netdev is registered, then open the client.
 	 */
@@ -424,16 +468,8 @@ int i40e_lan_add_device(struct i40e_pf *pf)
 		 pf->hw.pf_id, pf->hw.bus.bus_id,
 		 pf->hw.bus.device, pf->hw.bus.func);
 
-	/* If a client has already been registered, we need to add an instance
-	 * of it to our new LAN device.
-	 */
-	if (registered_client)
-		i40e_client_add_instance(pf);
+	i40e_client_add_instance(pf);
 
-	/* Since in some cases register may have happened before a device gets
-	 * added, we can schedule a subtask to go initiate the clients if
-	 * they can be launched at probe time.
-	 */
 	set_bit(__I40E_CLIENT_SERVICE_REQUESTED, pf->state);
 	i40e_service_event_schedule(pf);
 
@@ -453,6 +489,8 @@ int i40e_lan_del_device(struct i40e_pf *pf)
 	struct i40e_device *ldev, *tmp;
 	int ret = -ENODEV;
 
+	virtbus_unregister_device(pf->cinst->lan_info.vdev);
+
 	/* First, remove any client instance. */
 	i40e_client_del_instance(pf);
 
@@ -733,6 +771,59 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
 	return err;
 }
 
+static int i40e_client_device_register(struct i40e_info *ldev)
+{
+	struct i40e_client *client;
+	struct i40e_pf *pf;
+
+	if (!ldev) {
+		pr_err("Failed to reg client dev: ldev ptr NULL\n");
+		return -EINVAL;
+	}
+
+	client = ldev->client;
+	pf = ldev->pf;
+	if (!client) {
+		pr_err("Failed to reg client dev: client ptr NULL\n");
+		return -EINVAL;
+	}
+
+	if (!ldev->ops || !client->ops) {
+		pr_err("Failed to reg client dev: client dev peer_ops/ops NULL\n");
+		return -EINVAL;
+	}
+
+	pf->cinst->client = ldev->client;
+	set_bit(__I40E_CLIENT_SERVICE_REQUESTED, pf->state);
+	i40e_service_event_schedule(pf);
+
+	return 0;
+}
+
+static void i40e_client_device_unregister(struct i40e_info *ldev)
+{
+	struct i40e_pf *pf = ldev->pf;
+	struct i40e_client_instance *cdev = pf->cinst;
+
+	while (test_and_set_bit(__I40E_SERVICE_SCHED, pf->state))
+		usleep_range(500, 1000);
+
+	if (!cdev || !cdev->client || !cdev->client->ops ||
+	    !cdev->client->ops->close) {
+		dev_err(&pf->pdev->dev, "Cannot close client device\n");
+		return;
+	}
+	cdev->client->ops->close(&cdev->lan_info, cdev->client, false);
+	clear_bit(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state);
+	i40e_client_release_qvlist(&cdev->lan_info);
+	pf->cinst->client = NULL;
+	clear_bit(__I40E_SERVICE_SCHED, pf->state);
+}
+
+/* Retain legacy global registration/unregistration calls till i40iw is
+ * deprecated from the kernel. The irdma unified driver does not use these
+ * exported symbols.
+ */
 /**
  * i40e_register_client - Register a i40e client driver with the L2 driver
  * @client: pointer to the i40e_client struct
diff --git a/include/linux/net/intel/i40e_client.h b/include/linux/net/intel/i40e_client.h
index 72994ba..4a83648 100644
--- a/include/linux/net/intel/i40e_client.h
+++ b/include/linux/net/intel/i40e_client.h
@@ -4,6 +4,9 @@
 #ifndef _I40E_CLIENT_H_
 #define _I40E_CLIENT_H_
 
+#include <linux/virtual_bus.h>
+
+#define I40E_PEER_RDMA_NAME	"intel,i40e,rdma"
 #define I40E_CLIENT_STR_LENGTH 10
 
 /* Client interface version should be updated anytime there is a change in the
@@ -84,6 +87,7 @@ struct i40e_info {
 	u8 lanmac[6];
 	struct net_device *netdev;
 	struct pci_dev *pcidev;
+	struct virtbus_device *vdev;
 	u8 __iomem *hw_addr;
 	u8 fid;	/* function id, PF id or VF id */
 #define I40E_CLIENT_FTYPE_PF 0
@@ -97,6 +101,7 @@ struct i40e_info {
 	struct i40e_qvlist_info *qvlist_info;
 	struct i40e_params params;
 	struct i40e_ops *ops;
+	struct i40e_client *client;
 
 	u16 msix_count;	 /* number of msix vectors*/
 	/* Array down below will be dynamically allocated based on msix_count */
@@ -107,6 +112,11 @@ struct i40e_info {
 	u32 fw_build;                   /* firmware build number */
 };
 
+struct i40e_virtbus_device {
+	struct virtbus_device vdev;
+	struct i40e_info *ldev;
+};
+
 #define I40E_CLIENT_RESET_LEVEL_PF   1
 #define I40E_CLIENT_RESET_LEVEL_CORE 2
 #define I40E_CLIENT_VSI_FLAG_TCP_ENABLE  BIT(1)
@@ -132,6 +142,11 @@ struct i40e_ops {
 			       struct i40e_client *client,
 			       bool is_vf, u32 vf_id,
 			       u32 flag, u32 valid_flag);
+
+	int (*client_device_register)(struct i40e_info *ldev);
+
+	void (*client_device_unregister)(struct i40e_info *ldev);
+
 };
 
 struct i40e_client_ops {
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
