Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5522E13FCB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2020 00:07:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01DD287DC5;
	Thu, 16 Jan 2020 23:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wgV1-DTvKMgC; Thu, 16 Jan 2020 23:07:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97B2A85DE0;
	Thu, 16 Jan 2020 23:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 96A9C1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 23:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92D08203CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 23:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CNnvLNNpuS+k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2020 23:06:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 9231E203B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 23:06:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 15:06:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="424242455"
Received: from nmaznan-mobl1.gar.corp.intel.com (HELO
 ssaleem-MOBL.amr.corp.intel.com) ([10.254.99.102])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jan 2020 15:06:51 -0800
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jan 2020 17:06:09 -0600
Message-Id: <20200116230610.1868-1-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/2] i40e: Move client header location
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

From: "Shiraz Saleem" <shiraz.saleem@intel.com>

Move i40e_client.h to include/linux/net/intel/*
since its shared between i40iw and i40e.

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/infiniband/hw/i40iw/Makefile          |   1 -
 drivers/infiniband/hw/i40iw/i40iw.h           |   2 +-
 drivers/net/ethernet/intel/i40e/i40e.h        |   2 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   2 +-
 drivers/net/ethernet/intel/i40e/i40e_client.h | 203 --------------------------
 include/linux/net/intel/i40e_client.h         | 203 ++++++++++++++++++++++++++
 6 files changed, 206 insertions(+), 207 deletions(-)
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
index 8feec35..f628325 100644
--- a/drivers/infiniband/hw/i40iw/i40iw.h
+++ b/drivers/infiniband/hw/i40iw/i40iw.h
@@ -45,6 +45,7 @@
 #include <linux/slab.h>
 #include <linux/io.h>
 #include <linux/crc32c.h>
+#include <linux/net/intel/i40e_client.h>
 #include <rdma/ib_smi.h>
 #include <rdma/ib_verbs.h>
 #include <rdma/ib_pack.h>
@@ -57,7 +58,6 @@
 #include "i40iw_d.h"
 #include "i40iw_hmc.h"
 
-#include <i40e_client.h>
 #include "i40iw_type.h"
 #include "i40iw_p.h"
 #include <rdma/i40iw-abi.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 4833187..05453f55 100644
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
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index e81530c..befd301 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -3,10 +3,10 @@
 
 #include <linux/list.h>
 #include <linux/errno.h>
+#include <linux/net/intel/i40e_client.h>
 
 #include "i40e.h"
 #include "i40e_prototype.h"
-#include "i40e_client.h"
 
 static const char i40e_client_interface_version_str[] = I40E_CLIENT_VERSION_STR;
 static struct i40e_client *registered_client;
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
index 0000000..72994ba
--- /dev/null
+++ b/include/linux/net/intel/i40e_client.h
@@ -0,0 +1,203 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright(c) 2013 - 2018 Intel Corporation. */
+
+#ifndef _I40E_CLIENT_H_
+#define _I40E_CLIENT_H_
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
+#endif /* _I40E_CLIENT_H_ */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
