Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FF7DB292
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2019 18:40:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87E2587B27;
	Thu, 17 Oct 2019 16:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AleRC5FsjAIM; Thu, 17 Oct 2019 16:40:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AD2487997;
	Thu, 17 Oct 2019 16:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9021BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 16:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 54F2B8798E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 16:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4QA7sWGRTWsd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2019 16:40:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C41687967
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 16:40:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 09:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,308,1566889200"; d="scan'208";a="226227729"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.122.128.45])
 by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2019 09:40:20 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Oct 2019 11:40:04 -0500
Message-Id: <20191017164004.1645-1-shiraz.saleem@intel.com>
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
 drivers/infiniband/hw/i40iw/Makefile          |   1 -
 drivers/infiniband/hw/i40iw/i40iw.h           |   2 +-
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/i40e/i40e.h        |   3 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c | 138 ++++++++++++++--
 drivers/net/ethernet/intel/i40e/i40e_client.h | 203 -----------------------
 include/linux/net/intel/i40e_client.h         | 224 ++++++++++++++++++++++++++
 7 files changed, 350 insertions(+), 222 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_client.h
 create mode 100644 include/linux/net/intel/i40e_client.h

diff --git a/drivers/infiniband/hw/i40iw/Makefile b/drivers/infiniband/hw/i40iw/Makefile
index 8942f82..34da9eb 100644
--- a/drivers/infiniband/hw/i40iw/Makefile
+++ b/drivers/infiniband/hw/i40iw/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-ccflags-y :=  -I $(srctree)/drivers/net/ethernet/intel/i40e
 
 obj-$(CONFIG_INFINIBAND_I40IW) += i40iw.o
 
diff --git a/drivers/infiniband/hw/i40iw/i40iw.h b/drivers/infiniband/hw/i40iw/i40iw.h
index 8feec35..3197e35 100644
--- a/drivers/infiniband/hw/i40iw/i40iw.h
+++ b/drivers/infiniband/hw/i40iw/i40iw.h
@@ -57,7 +57,7 @@
 #include "i40iw_d.h"
 #include "i40iw_hmc.h"
 
-#include <i40e_client.h>
+#include <linux/net/intel/i40e_client.h>
 #include "i40iw_type.h"
 #include "i40iw_p.h"
 #include <rdma/i40iw-abi.h>
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
index 2af9f63..ed7c721 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -38,7 +38,7 @@
 #include <net/xdp_sock.h>
 #include "i40e_type.h"
 #include "i40e_prototype.h"
-#include "i40e_client.h"
+#include <linux/net/intel/i40e_client.h>
 #include <linux/avf/virtchnl.h>
 #include "i40e_virtchnl_pf.h"
 #include "i40e_txrx.h"
@@ -655,6 +655,7 @@ struct i40e_pf {
 	u16 last_sw_conf_valid_flags;
 	/* List to keep previous DDP profiles to be rolled back in the future */
 	struct list_head ddp_old_prof;
+	int peer_idx;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index e81530c..ca1bb71 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -6,8 +6,9 @@
 
 #include "i40e.h"
 #include "i40e_prototype.h"
-#include "i40e_client.h"
+#include <linux/net/intel/i40e_client.h>
 
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
 
+static DEFINE_IDA(i40e_peer_index_ida);
+
+static int i40e_init_peer_devices(struct i40e_pf *pf)
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
 
@@ -733,6 +786,59 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
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
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.h b/drivers/net/ethernet/intel/i40e/i40e_client.h
deleted file mode 100644
index 72994ba..0000000
--- a/drivers/net/ethernet/intel/i40e/i40e_client.h
+++ /dev/null
@@ -1,203 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
-
-#ifndef _I40E_CLIENT_H_
-#define _I40E_CLIENT_H_
-
-#define I40E_CLIENT_STR_LENGTH 10
-
-/* Client interface version should be updated anytime there is a change in the
- * existing APIs or data structures.
- */
-#define I40E_CLIENT_VERSION_MAJOR 0
-#define I40E_CLIENT_VERSION_MINOR 01
-#define I40E_CLIENT_VERSION_BUILD 00
-#define I40E_CLIENT_VERSION_STR     \
-	__stringify(I40E_CLIENT_VERSION_MAJOR) "." \
-	__stringify(I40E_CLIENT_VERSION_MINOR) "." \
-	__stringify(I40E_CLIENT_VERSION_BUILD)
-
-struct i40e_client_version {
-	u8 major;
-	u8 minor;
-	u8 build;
-	u8 rsvd;
-};
-
-enum i40e_client_state {
-	__I40E_CLIENT_NULL,
-	__I40E_CLIENT_REGISTERED
-};
-
-enum i40e_client_instance_state {
-	__I40E_CLIENT_INSTANCE_NONE,
-	__I40E_CLIENT_INSTANCE_OPENED,
-};
-
-struct i40e_ops;
-struct i40e_client;
-
-/* HW does not define a type value for AEQ; only for RX/TX and CEQ.
- * In order for us to keep the interface simple, SW will define a
- * unique type value for AEQ.
- */
-#define I40E_QUEUE_TYPE_PE_AEQ  0x80
-#define I40E_QUEUE_INVALID_IDX	0xFFFF
-
-struct i40e_qv_info {
-	u32 v_idx; /* msix_vector */
-	u16 ceq_idx;
-	u16 aeq_idx;
-	u8 itr_idx;
-};
-
-struct i40e_qvlist_info {
-	u32 num_vectors;
-	struct i40e_qv_info qv_info[1];
-};
-
-#define I40E_CLIENT_MSIX_ALL 0xFFFFFFFF
-
-/* set of LAN parameters useful for clients managed by LAN */
-
-/* Struct to hold per priority info */
-struct i40e_prio_qos_params {
-	u16 qs_handle; /* qs handle for prio */
-	u8 tc; /* TC mapped to prio */
-	u8 reserved;
-};
-
-#define I40E_CLIENT_MAX_USER_PRIORITY        8
-/* Struct to hold Client QoS */
-struct i40e_qos_params {
-	struct i40e_prio_qos_params prio_qos[I40E_CLIENT_MAX_USER_PRIORITY];
-};
-
-struct i40e_params {
-	struct i40e_qos_params qos;
-	u16 mtu;
-};
-
-/* Structure to hold Lan device info for a client device */
-struct i40e_info {
-	struct i40e_client_version version;
-	u8 lanmac[6];
-	struct net_device *netdev;
-	struct pci_dev *pcidev;
-	u8 __iomem *hw_addr;
-	u8 fid;	/* function id, PF id or VF id */
-#define I40E_CLIENT_FTYPE_PF 0
-#define I40E_CLIENT_FTYPE_VF 1
-	u8 ftype; /* function type, PF or VF */
-	void *pf;
-
-	/* All L2 params that could change during the life span of the PF
-	 * and needs to be communicated to the client when they change
-	 */
-	struct i40e_qvlist_info *qvlist_info;
-	struct i40e_params params;
-	struct i40e_ops *ops;
-
-	u16 msix_count;	 /* number of msix vectors*/
-	/* Array down below will be dynamically allocated based on msix_count */
-	struct msix_entry *msix_entries;
-	u16 itr_index; /* Which ITR index the PE driver is suppose to use */
-	u16 fw_maj_ver;                 /* firmware major version */
-	u16 fw_min_ver;                 /* firmware minor version */
-	u32 fw_build;                   /* firmware build number */
-};
-
-#define I40E_CLIENT_RESET_LEVEL_PF   1
-#define I40E_CLIENT_RESET_LEVEL_CORE 2
-#define I40E_CLIENT_VSI_FLAG_TCP_ENABLE  BIT(1)
-
-struct i40e_ops {
-	/* setup_q_vector_list enables queues with a particular vector */
-	int (*setup_qvlist)(struct i40e_info *ldev, struct i40e_client *client,
-			    struct i40e_qvlist_info *qv_info);
-
-	int (*virtchnl_send)(struct i40e_info *ldev, struct i40e_client *client,
-			     u32 vf_id, u8 *msg, u16 len);
-
-	/* If the PE Engine is unresponsive, RDMA driver can request a reset.
-	 * The level helps determine the level of reset being requested.
-	 */
-	void (*request_reset)(struct i40e_info *ldev,
-			      struct i40e_client *client, u32 level);
-
-	/* API for the RDMA driver to set certain VSI flags that control
-	 * PE Engine.
-	 */
-	int (*update_vsi_ctxt)(struct i40e_info *ldev,
-			       struct i40e_client *client,
-			       bool is_vf, u32 vf_id,
-			       u32 flag, u32 valid_flag);
-};
-
-struct i40e_client_ops {
-	/* Should be called from register_client() or whenever PF is ready
-	 * to create a specific client instance.
-	 */
-	int (*open)(struct i40e_info *ldev, struct i40e_client *client);
-
-	/* Should be called when netdev is unavailable or when unregister
-	 * call comes in. If the close is happenening due to a reset being
-	 * triggered set the reset bit to true.
-	 */
-	void (*close)(struct i40e_info *ldev, struct i40e_client *client,
-		      bool reset);
-
-	/* called when some l2 managed parameters changes - mtu */
-	void (*l2_param_change)(struct i40e_info *ldev,
-				struct i40e_client *client,
-				struct i40e_params *params);
-
-	int (*virtchnl_receive)(struct i40e_info *ldev,
-				struct i40e_client *client, u32 vf_id,
-				u8 *msg, u16 len);
-
-	/* called when a VF is reset by the PF */
-	void (*vf_reset)(struct i40e_info *ldev,
-			 struct i40e_client *client, u32 vf_id);
-
-	/* called when the number of VFs changes */
-	void (*vf_enable)(struct i40e_info *ldev,
-			  struct i40e_client *client, u32 num_vfs);
-
-	/* returns true if VF is capable of specified offload */
-	int (*vf_capable)(struct i40e_info *ldev,
-			  struct i40e_client *client, u32 vf_id);
-};
-
-/* Client device */
-struct i40e_client_instance {
-	struct list_head list;
-	struct i40e_info lan_info;
-	struct i40e_client *client;
-	unsigned long  state;
-};
-
-struct i40e_client {
-	struct list_head list;		/* list of registered clients */
-	char name[I40E_CLIENT_STR_LENGTH];
-	struct i40e_client_version version;
-	unsigned long state;		/* client state */
-	atomic_t ref_cnt;  /* Count of all the client devices of this kind */
-	u32 flags;
-#define I40E_CLIENT_FLAGS_LAUNCH_ON_PROBE	BIT(0)
-#define I40E_TX_FLAGS_NOTIFY_OTHER_EVENTS	BIT(2)
-	u8 type;
-#define I40E_CLIENT_IWARP 0
-	const struct i40e_client_ops *ops; /* client ops provided by the client */
-};
-
-static inline bool i40e_client_is_registered(struct i40e_client *client)
-{
-	return test_bit(__I40E_CLIENT_REGISTERED, &client->state);
-}
-
-/* used by clients */
-int i40e_register_client(struct i40e_client *client);
-int i40e_unregister_client(struct i40e_client *client);
-
-#endif /* _I40E_CLIENT_H_ */
diff --git a/include/linux/net/intel/i40e_client.h b/include/linux/net/intel/i40e_client.h
new file mode 100644
index 0000000..9167946
--- /dev/null
+++ b/include/linux/net/intel/i40e_client.h
@@ -0,0 +1,224 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright(c) 2013 - 2018 Intel Corporation. */
+
+#ifndef _I40E_CLIENT_H_
+#define _I40E_CLIENT_H_
+
+#include <linux/mfd/core.h>
+
+#define I40E_PEER_RDMA_NAME	"i40e_rdma"
+#define I40E_PEER_RDMA_ID	PLATFORM_DEVID_AUTO
+
+#define I40E_CLIENT_STR_LENGTH 10
+
+/* Client interface version should be updated anytime there is a change in the
+ * existing APIs or data structures.
+ */
+#define I40E_CLIENT_VERSION_MAJOR 0
+#define I40E_CLIENT_VERSION_MINOR 01
+#define I40E_CLIENT_VERSION_BUILD 00
+#define I40E_CLIENT_VERSION_STR     \
+	__stringify(I40E_CLIENT_VERSION_MAJOR) "." \
+	__stringify(I40E_CLIENT_VERSION_MINOR) "." \
+	__stringify(I40E_CLIENT_VERSION_BUILD)
+
+struct i40e_client_version {
+	u8 major;
+	u8 minor;
+	u8 build;
+	u8 rsvd;
+};
+
+enum i40e_client_state {
+	__I40E_CLIENT_NULL,
+	__I40E_CLIENT_REGISTERED
+};
+
+enum i40e_client_instance_state {
+	__I40E_CLIENT_INSTANCE_NONE,
+	__I40E_CLIENT_INSTANCE_OPENED,
+};
+
+struct i40e_ops;
+struct i40e_client;
+
+/* HW does not define a type value for AEQ; only for RX/TX and CEQ.
+ * In order for us to keep the interface simple, SW will define a
+ * unique type value for AEQ.
+ */
+#define I40E_QUEUE_TYPE_PE_AEQ  0x80
+#define I40E_QUEUE_INVALID_IDX	0xFFFF
+
+struct i40e_qv_info {
+	u32 v_idx; /* msix_vector */
+	u16 ceq_idx;
+	u16 aeq_idx;
+	u8 itr_idx;
+};
+
+struct i40e_qvlist_info {
+	u32 num_vectors;
+	struct i40e_qv_info qv_info[1];
+};
+
+#define I40E_CLIENT_MSIX_ALL 0xFFFFFFFF
+
+/* set of LAN parameters useful for clients managed by LAN */
+
+/* Struct to hold per priority info */
+struct i40e_prio_qos_params {
+	u16 qs_handle; /* qs handle for prio */
+	u8 tc; /* TC mapped to prio */
+	u8 reserved;
+};
+
+#define I40E_CLIENT_MAX_USER_PRIORITY        8
+/* Struct to hold Client QoS */
+struct i40e_qos_params {
+	struct i40e_prio_qos_params prio_qos[I40E_CLIENT_MAX_USER_PRIORITY];
+};
+
+struct i40e_params {
+	struct i40e_qos_params qos;
+	u16 mtu;
+};
+
+/* Structure to hold Lan device info for a client device */
+struct i40e_info {
+	struct platform_device *platform_dev;
+	struct i40e_client_version version;
+	u8 lanmac[6];
+	struct net_device *netdev;
+	struct pci_dev *pcidev;
+	u8 __iomem *hw_addr;
+	u8 fid;	/* function id, PF id or VF id */
+#define I40E_CLIENT_FTYPE_PF 0
+#define I40E_CLIENT_FTYPE_VF 1
+	u8 ftype; /* function type, PF or VF */
+	void *pf;
+
+	/* All L2 params that could change during the life span of the PF
+	 * and needs to be communicated to the client when they change
+	 */
+	struct i40e_qvlist_info *qvlist_info;
+	struct i40e_params params;
+	struct i40e_ops *ops;
+	struct i40e_client *client;
+
+	u16 msix_count;	 /* number of msix vectors*/
+	/* Array down below will be dynamically allocated based on msix_count */
+	struct msix_entry *msix_entries;
+	u16 itr_index; /* Which ITR index the PE driver is suppose to use */
+	u16 fw_maj_ver;                 /* firmware major version */
+	u16 fw_min_ver;                 /* firmware minor version */
+	u32 fw_build;                   /* firmware build number */
+};
+
+#define I40E_CLIENT_RESET_LEVEL_PF   1
+#define I40E_CLIENT_RESET_LEVEL_CORE 2
+#define I40E_CLIENT_VSI_FLAG_TCP_ENABLE  BIT(1)
+
+struct i40e_ops {
+	/* setup_q_vector_list enables queues with a particular vector */
+	int (*setup_qvlist)(struct i40e_info *ldev, struct i40e_client *client,
+			    struct i40e_qvlist_info *qv_info);
+
+	int (*virtchnl_send)(struct i40e_info *ldev, struct i40e_client *client,
+			     u32 vf_id, u8 *msg, u16 len);
+
+	/* If the PE Engine is unresponsive, RDMA driver can request a reset.
+	 * The level helps determine the level of reset being requested.
+	 */
+	void (*request_reset)(struct i40e_info *ldev,
+			      struct i40e_client *client, u32 level);
+
+	/* API for the RDMA driver to set certain VSI flags that control
+	 * PE Engine.
+	 */
+	int (*update_vsi_ctxt)(struct i40e_info *ldev,
+			       struct i40e_client *client,
+			       bool is_vf, u32 vf_id,
+			       u32 flag, u32 valid_flag);
+
+	int (*client_device_register)(struct i40e_info *ldev);
+
+	void (*client_device_unregister)(struct i40e_info *ldev);
+
+};
+
+struct i40e_client_ops {
+	/* Should be called from register_client() or whenever PF is ready
+	 * to create a specific client instance.
+	 */
+	int (*open)(struct i40e_info *ldev, struct i40e_client *client);
+
+	/* Should be called when netdev is unavailable or when unregister
+	 * call comes in. If the close is happenening due to a reset being
+	 * triggered set the reset bit to true.
+	 */
+	void (*close)(struct i40e_info *ldev, struct i40e_client *client,
+		      bool reset);
+
+	/* called when some l2 managed parameters changes - mtu */
+	void (*l2_param_change)(struct i40e_info *ldev,
+				struct i40e_client *client,
+				struct i40e_params *params);
+
+	int (*virtchnl_receive)(struct i40e_info *ldev,
+				struct i40e_client *client, u32 vf_id,
+				u8 *msg, u16 len);
+
+	/* called when a VF is reset by the PF */
+	void (*vf_reset)(struct i40e_info *ldev,
+			 struct i40e_client *client, u32 vf_id);
+
+	/* called when the number of VFs changes */
+	void (*vf_enable)(struct i40e_info *ldev,
+			  struct i40e_client *client, u32 num_vfs);
+
+	/* returns true if VF is capable of specified offload */
+	int (*vf_capable)(struct i40e_info *ldev,
+			  struct i40e_client *client, u32 vf_id);
+};
+
+/* Client device */
+struct i40e_client_instance {
+	struct list_head list;
+	struct i40e_info lan_info;
+	struct i40e_client *client;
+	unsigned long  state;
+};
+
+struct i40e_client {
+	struct list_head list;		/* list of registered clients */
+	char name[I40E_CLIENT_STR_LENGTH];
+	struct i40e_client_version version;
+	unsigned long state;		/* client state */
+	atomic_t ref_cnt;  /* Count of all the client devices of this kind */
+	u32 flags;
+#define I40E_CLIENT_FLAGS_LAUNCH_ON_PROBE	BIT(0)
+#define I40E_TX_FLAGS_NOTIFY_OTHER_EVENTS	BIT(2)
+	u8 type;
+#define I40E_CLIENT_IWARP 0
+	const struct i40e_client_ops *ops; /* client ops provided by the client */
+};
+
+static inline bool i40e_client_is_registered(struct i40e_client *client)
+{
+	return test_bit(__I40E_CLIENT_REGISTERED, &client->state);
+}
+
+/* used by clients */
+int i40e_register_client(struct i40e_client *client);
+int i40e_unregister_client(struct i40e_client *client);
+
+#define ASSIGN_PEER_INFO						\
+{									\
+	{ .name = I40E_PEER_RDMA_NAME, .id = I40E_PEER_RDMA_ID },	\
+}
+
+struct i40e_peer_dev_platform_data {
+	struct i40e_info *ldev;
+};
+
+#endif /* _I40E_CLIENT_H_ */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
