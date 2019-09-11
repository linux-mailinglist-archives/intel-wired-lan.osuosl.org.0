Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 977E6AF40A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 03:32:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0616686505;
	Wed, 11 Sep 2019 01:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmW5SfRVQyaI; Wed, 11 Sep 2019 01:32:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C54C864A4;
	Wed, 11 Sep 2019 01:32:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F36E1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08085203D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xh-L9j2txtpk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 01:32:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id D14CC20394
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 01:32:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 18:32:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,491,1559545200"; d="scan'208";a="184344060"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.255.81.181])
 by fmsmga008.fm.intel.com with ESMTP; 10 Sep 2019 18:32:14 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Sep 2019 20:30:48 -0500
Message-Id: <20190911013048.755-1-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Register multi-function device to
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
Cc: Mustafa Ismail <mustafa.ismail@intel.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mustafa Ismail <mustafa.ismail@intel.com>

Register multi-function devices (MFD) for the RDMA platform
function (irdma) driver to bind to. It realizes a single RDMA
driver capable of working with multiple LAN drivers over
multi-generation Intel HW supporting RDMA. There is also no load
ordering dependencies between i40e and irdma.

Summary of changes:
* Support to add/remove MFD devices
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
 drivers/net/ethernet/intel/i40e/i40e.h        |   1 +
 drivers/net/ethernet/intel/i40e/i40e_client.c | 147 +++++++++++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_client.h |  21 ++++
 4 files changed, 155 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 154e2e8..5d4603c 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -241,6 +241,7 @@ config I40E
 	tristate "Intel(R) Ethernet Controller XL710 Family support"
 	imply PTP_1588_CLOCK
 	depends on PCI
+	select MFD_CORE
 	---help---
 	  This driver supports Intel(R) Ethernet Controller XL710 Family of
 	  devices.  For more information on how to identify your adapter, go
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 84bd069..034abc7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -656,6 +656,7 @@ struct i40e_pf {
 	u16 last_sw_conf_valid_flags;
 	/* List to keep previous DDP profiles to be rolled back in the future */
 	struct list_head ddp_old_prof;
+	int peer_idx;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index e81530c..1c7470b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -8,6 +8,7 @@
 #include "i40e_prototype.h"
 #include "i40e_client.h"
 
+static struct mfd_cell i40e_mfd_cells[] = ASSIGN_PEER_INFO;
 static const char i40e_client_interface_version_str[] = I40E_CLIENT_VERSION_STR;
 static struct i40e_client *registered_client;
 static LIST_HEAD(i40e_devices);
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
@@ -275,6 +282,55 @@ void i40e_client_update_msix_info(struct i40e_pf *pf)
 	cdev->lan_info.msix_entries = &pf->msix_entries[pf->iwarp_base_vector];
 }
 
+DEFINE_IDA(i40e_peer_index_ida);
+
+int i40e_init_peer_devices(struct i40e_pf *pf)
+{
+	struct i40e_peer_dev_platform_data *platform_data;
+	struct pci_dev *pdev = pf->pdev;
+	int status = 0;
+	int i;
+
+	platform_data = kcalloc(ARRAY_SIZE(i40e_mfd_cells),
+				sizeof(*platform_data), GFP_KERNEL);
+	if (!platform_data)
+		return -ENOMEM;
+
+	for (i = 0; i < ARRAY_SIZE(i40e_mfd_cells); i++) {
+		/* don't create an RDMA MFD device if NIC does not
+		 * support RDMA functionality
+		 */
+		if (i40e_mfd_cells[i].id == I40E_PEER_RDMA_ID &&
+		    !(I40E_FLAG_IWARP_ENABLED & pf->flags)) {
+			dev_warn(&pf->pdev->dev,
+				 "RDMA not supported with this config\n");
+			continue;
+		}
+		platform_data[i].ldev = &pf->cinst->lan_info;
+		i40e_mfd_cells[i].platform_data = &platform_data[i];
+		i40e_mfd_cells[i].pdata_size = sizeof(platform_data);
+	}
+
+	status = ida_simple_get(&i40e_peer_index_ida, 0, 0, GFP_KERNEL);
+	if (status < 0) {
+		dev_err(&pdev->dev,
+			"failed to get unique index for device\n");
+		return status;
+	}
+
+	pf->peer_idx = status;
+	status = mfd_add_devices(&pf->pdev->dev, pf->peer_idx,
+				 i40e_mfd_cells, ARRAY_SIZE(i40e_mfd_cells),
+				 NULL, 0, NULL);
+
+	if (status)
+		dev_err(&pf->pdev->dev,
+			"Failure adding MFD devs for peers: %d\n", status);
+
+	kfree(platform_data);
+	return status;
+}
+
 /**
  * i40e_client_add_instance - add a client instance struct to the instance list
  * @pf: pointer to the board struct
@@ -288,9 +344,6 @@ static void i40e_client_add_instance(struct i40e_pf *pf)
 	struct netdev_hw_addr *mac = NULL;
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 
-	if (!registered_client || pf->cinst)
-		return;
-
 	cdev = kzalloc(sizeof(*cdev), GFP_KERNEL);
 	if (!cdev)
 		return;
@@ -326,7 +379,11 @@ static void i40e_client_add_instance(struct i40e_pf *pf)
 	cdev->client = registered_client;
 	pf->cinst = cdev;
 
-	i40e_client_update_msix_info(pf);
+	cdev->lan_info.msix_count = pf->num_iwarp_msix;
+	cdev->lan_info.msix_entries = &pf->msix_entries[pf->iwarp_base_vector];
+
+	i40e_init_peer_devices(pf);
+	set_bit(__I40E_CLIENT_INSTANCE_NONE, &cdev->state);
 }
 
 /**
@@ -347,7 +404,7 @@ void i40e_client_del_instance(struct i40e_pf *pf)
  **/
 void i40e_client_subtask(struct i40e_pf *pf)
 {
-	struct i40e_client *client = registered_client;
+	struct i40e_client *client;
 	struct i40e_client_instance *cdev;
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	int ret = 0;
@@ -361,9 +418,11 @@ void i40e_client_subtask(struct i40e_pf *pf)
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
@@ -424,16 +483,8 @@ int i40e_lan_add_device(struct i40e_pf *pf)
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
 
@@ -453,6 +504,8 @@ int i40e_lan_del_device(struct i40e_pf *pf)
 	struct i40e_device *ldev, *tmp;
 	int ret = -ENODEV;
 
+	mfd_remove_devices(&pf->pdev->dev);
+
 	/* First, remove any client instance. */
 	i40e_client_del_instance(pf);
 
@@ -733,6 +786,70 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
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
+	if (client->version.major != I40E_CLIENT_VERSION_MAJOR ||
+	    client->version.minor != I40E_CLIENT_VERSION_MINOR) {
+		pr_err("i40e: Failed to register client %s due to mismatched client interface version\n",
+		       client->name);
+		pr_err("Client is using version: %02d.%02d.%02d while LAN driver supports %s\n",
+		       client->version.major, client->version.minor,
+		       client->version.build,
+		       i40e_client_interface_version_str);
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
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.h b/drivers/net/ethernet/intel/i40e/i40e_client.h
index 72994ba..9167946 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.h
@@ -4,6 +4,11 @@
 #ifndef _I40E_CLIENT_H_
 #define _I40E_CLIENT_H_
 
+#include <linux/mfd/core.h>
+
+#define I40E_PEER_RDMA_NAME	"i40e_rdma"
+#define I40E_PEER_RDMA_ID	PLATFORM_DEVID_AUTO
+
 #define I40E_CLIENT_STR_LENGTH 10
 
 /* Client interface version should be updated anytime there is a change in the
@@ -80,6 +85,7 @@ struct i40e_params {
 
 /* Structure to hold Lan device info for a client device */
 struct i40e_info {
+	struct platform_device *platform_dev;
 	struct i40e_client_version version;
 	u8 lanmac[6];
 	struct net_device *netdev;
@@ -97,6 +103,7 @@ struct i40e_info {
 	struct i40e_qvlist_info *qvlist_info;
 	struct i40e_params params;
 	struct i40e_ops *ops;
+	struct i40e_client *client;
 
 	u16 msix_count;	 /* number of msix vectors*/
 	/* Array down below will be dynamically allocated based on msix_count */
@@ -132,6 +139,11 @@ struct i40e_ops {
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
@@ -200,4 +212,13 @@ static inline bool i40e_client_is_registered(struct i40e_client *client)
 int i40e_register_client(struct i40e_client *client);
 int i40e_unregister_client(struct i40e_client *client);
 
+#define ASSIGN_PEER_INFO						\
+{									\
+	{ .name = I40E_PEER_RDMA_NAME, .id = I40E_PEER_RDMA_ID },	\
+}
+
+struct i40e_peer_dev_platform_data {
+	struct i40e_info *ldev;
+};
+
 #endif /* _I40E_CLIENT_H_ */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
