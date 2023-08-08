Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C51E773AE3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 17:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BF5B6119A;
	Tue,  8 Aug 2023 15:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BF5B6119A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691507577;
	bh=JnDPhaLO78sIUNDiivuw4ocnjW1w2oinjL8YXetIyLg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=umy0Wf7HjiIlTP9OXCFXWnSm2HPcY9V2XU/nvB4bzqDK2JSvO25rflOvluUQ6LVUw
	 vndGNCOdp1WQvcEMVc3pZM+JwW0yJD16/+0UrWElhhJZpZ1Wgpza35I0iEGO1iiEfh
	 IEFqO9t3H3n4UBiYKtUQlbtfaHcFf10902djpOoRQedXlbzeQkIIGp/54mLZ2Kl5w5
	 /Zejcgqk0WFHGfpgVGHnJaKCNY46hjH4PXCVXVMUtTpMSTtqm00nuHtDIXWPsKw544
	 rbfHSyAu+HNtpDiXMLbl2fiiHFipbAVXb0Nivv+sGguu81WbvTCnzqnlWiKm0aRwPE
	 0QeQUpiigmasA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SyO-ibaokc8n; Tue,  8 Aug 2023 15:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF7076117D;
	Tue,  8 Aug 2023 15:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF7076117D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9565A1BF404
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C839404A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:54:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C839404A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6fCU_SK7H1SG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 01:54:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 63D1D40447
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63D1D40447
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="350997470"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="350997470"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 18:54:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801162765"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="801162765"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.188])
 by fmsmga004.fm.intel.com with ESMTP; 07 Aug 2023 18:54:05 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Tue,  8 Aug 2023 09:57:33 +0800
Message-Id: <20230808015734.1060525-5-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230808015734.1060525-1-wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 08 Aug 2023 15:12:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691459647; x=1722995647;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rbWVT0KTryTCBVVHykvb3jQJC4j3FhkgtFI16t42Rr4=;
 b=N9e2zPajp0WUz+X9xfHE/zEE9aMj9u69WCLDvh9oij4JcCyeTh1dixe7
 o35/dlK7y00S7qLozta5eqktZSFun1AB8zTAViBohRM7oM7J+Z7Z11+HQ
 cSSmjiV8XxSdUz1EpZoKWksgR5meX/nkZPMna/3lUxlXJq43u3t+XjEE9
 wt89iuXZy4jI51871mHRcjYKf2HAR8xNTbLcRqQ/AVu25S5RNHQ2/2hgG
 Zm4yudmgMHQlKwpAOz6YTCpIz1ALT5JN2/2qivhhKX6UCU+85orD+2uaS
 MglWo0u/CYNyCvt/9lTqT6VbHm2LCDCLcB8JY20YkYKoTaXJ6c+qEtXxF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N9e2zPaj
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] iavf: Add devlink port
 function rate API support
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
Cc: anthony.l.nguyen@intel.com, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jun Zhang <xuejun.zhang@intel.com>

To allow user to configure queue based parameters, devlink port function
rate api functions are added for setting node tx_max and tx_share
parameters.

iavf rate tree with root node and  queue nodes is created and registered
with devlink rate when iavf adapter is configured.

Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_devlink.c    | 270 +++++++++++++++++-
 .../net/ethernet/intel/iavf/iavf_devlink.h    |  21 ++
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   7 +-
 3 files changed, 295 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.c b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
index 991d041e5922..a2bd5295c216 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_devlink.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
@@ -4,7 +4,273 @@
 #include "iavf.h"
 #include "iavf_devlink.h"
 
-static const struct devlink_ops iavf_devlink_ops = {};
+/**
+ * iavf_devlink_rate_init_rate_tree - export rate tree to devlink rate
+ * @adapter: iavf adapter struct instance
+ *
+ * This function builds Rate Tree based on iavf adapter configuration
+ * and exports it's contents to devlink rate.
+ */
+void iavf_devlink_rate_init_rate_tree(struct iavf_adapter *adapter)
+{
+	struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
+	struct iavf_dev_rate_node *iavf_r_node;
+	struct iavf_dev_rate_node *iavf_q_node;
+	struct devlink_rate *dl_root_node;
+	struct devlink_rate *dl_tmp_node;
+	int q_num, size, i;
+
+	if (!adapter->devlink_port.registered)
+		return;
+
+	iavf_r_node = &dl_priv->root_node;
+	memset(iavf_r_node, 0, sizeof(*iavf_r_node));
+	iavf_r_node->tx_max = adapter->link_speed;
+	strscpy(iavf_r_node->name, "iavf_root", IAVF_RATE_NODE_NAME);
+
+	devl_lock(adapter->devlink);
+	dl_root_node = devl_rate_node_create(adapter->devlink, iavf_r_node,
+					     iavf_r_node->name, NULL);
+	if (!dl_root_node || IS_ERR(dl_root_node))
+		goto err_node;
+
+	iavf_r_node->rate_node = dl_root_node;
+
+	/* Allocate queue nodes, and chain them under root */
+	q_num = adapter->num_active_queues;
+	if (q_num > 0) {
+		size = q_num * sizeof(struct iavf_dev_rate_node);
+		dl_priv->queue_nodes = kzalloc(size, GFP_KERNEL);
+		if (!dl_priv->queue_nodes)
+			goto err_node;
+
+		memset(dl_priv->queue_nodes, 0, size);
+
+		for (i = 0; i < q_num; ++i) {
+			iavf_q_node = &dl_priv->queue_nodes[i];
+			snprintf(iavf_q_node->name, IAVF_RATE_NODE_NAME,
+				 "txq_%d", i);
+			dl_tmp_node = devl_rate_node_create(adapter->devlink,
+							    iavf_q_node,
+							    iavf_q_node->name,
+							    dl_root_node);
+			if (!dl_tmp_node || IS_ERR(dl_tmp_node)) {
+				kfree(dl_priv->queue_nodes);
+				goto err_node;
+			}
+
+			iavf_q_node->rate_node = dl_tmp_node;
+			iavf_q_node->tx_max = IAVF_TX_DEFAULT;
+			iavf_q_node->tx_share = 0;
+		}
+	}
+
+	dl_priv->update_in_progress = false;
+	dl_priv->iavf_dev_rate_initialized = true;
+	devl_unlock(adapter->devlink);
+	return;
+err_node:
+	devl_rate_nodes_destroy(adapter->devlink);
+	dl_priv->iavf_dev_rate_initialized = false;
+	devl_unlock(adapter->devlink);
+}
+
+/**
+ * iavf_devlink_rate_deinit_rate_tree - Unregister rate tree with devlink rate
+ * @adapter: iavf adapter struct instance
+ *
+ * This function unregisters the current iavf rate tree registered with devlink
+ * rate and frees resources.
+ */
+void iavf_devlink_rate_deinit_rate_tree(struct iavf_adapter *adapter)
+{
+	struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
+
+	if (!dl_priv->iavf_dev_rate_initialized)
+		return;
+
+	devl_lock(adapter->devlink);
+	devl_rate_leaf_destroy(&adapter->devlink_port);
+	devl_rate_nodes_destroy(adapter->devlink);
+	kfree(dl_priv->queue_nodes);
+	devl_unlock(adapter->devlink);
+}
+
+/**
+ * iavf_check_update_config - check if updating queue parameters needed
+ * @adapter: iavf adapter struct instance
+ * @node: iavf rate node struct instance
+ *
+ * This function sets queue bw & quanta size configuration if all
+ * queue parameters are set
+ */
+static int iavf_check_update_config(struct iavf_adapter *adapter,
+				    struct iavf_dev_rate_node *node)
+{
+	/* Update queue bw if any one of the queues have been fully updated by
+	 * user, the other queues either use the default value or the last
+	 * fully updated value
+	 */
+	if (node->tx_update_flag ==
+	    (IAVF_FLAG_TX_MAX_UPDATED | IAVF_FLAG_TX_SHARE_UPDATED)) {
+		node->tx_max = node->tx_max_temp;
+		node->tx_share = node->tx_share_temp;
+	} else {
+		return 0;
+	}
+
+	/* Reconfig queue bw only when iavf driver on running state */
+	if (adapter->state != __IAVF_RUNNING)
+		return -EBUSY;
+
+	return 0;
+}
+
+/**
+ * iavf_update_queue_tx_share - sets tx min parameter
+ * @adapter: iavf adapter struct instance
+ * @node: iavf rate node struct instance
+ * @bw: bandwidth in bytes per second
+ * @extack: extended netdev ack structure
+ *
+ * This function sets min BW limit.
+ */
+static int iavf_update_queue_tx_share(struct iavf_adapter *adapter,
+				      struct iavf_dev_rate_node *node,
+				      u64 bw, struct netlink_ext_ack *extack)
+{
+	struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
+	u64 tx_share_sum = 0;
+
+	/* Keep in kbps */
+	node->tx_share_temp = div_u64(bw, IAVF_RATE_DIV_FACTOR);
+
+	if (ADV_LINK_SUPPORT(adapter)) {
+		int i;
+
+		for (i = 0; i < adapter->num_active_queues; ++i) {
+			if (node != &dl_priv->queue_nodes[i])
+				tx_share_sum +=
+					dl_priv->queue_nodes[i].tx_share;
+			else
+				tx_share_sum += node->tx_share_temp;
+		}
+
+		if (tx_share_sum / 1000  > adapter->link_speed_mbps)
+			return -EINVAL;
+	}
+
+	node->tx_update_flag |= IAVF_FLAG_TX_SHARE_UPDATED;
+	return iavf_check_update_config(adapter, node);
+}
+
+/**
+ * iavf_update_queue_tx_max - sets tx max parameter
+ * @adapter: iavf adapter struct instance
+ * @node: iavf rate node struct instance
+ * @bw: bandwidth in bytes per second
+ * @extack: extended netdev ack structure
+ *
+ * This function sets max BW limit.
+ */
+static int iavf_update_queue_tx_max(struct iavf_adapter *adapter,
+				    struct iavf_dev_rate_node *node,
+				    u64 bw, struct netlink_ext_ack *extack)
+{
+	/* Keep in kbps */
+	node->tx_max_temp = div_u64(bw, IAVF_RATE_DIV_FACTOR);
+	if (ADV_LINK_SUPPORT(adapter)) {
+		if (node->tx_max_temp / 1000 > adapter->link_speed_mbps)
+			return -EINVAL;
+	}
+
+	node->tx_update_flag |= IAVF_FLAG_TX_MAX_UPDATED;
+
+	return iavf_check_update_config(adapter, node);
+}
+
+/**
+ * iavf_devlink_rate_node_tx_max_set - devlink_rate API for setting tx max
+ * @rate_node: devlink rate struct instance
+ *
+ * This function implements rate_node_tx_max_set function of devlink_ops
+ */
+static int iavf_devlink_rate_node_tx_max_set(struct devlink_rate *rate_node,
+					     void *priv, u64 tx_max,
+					     struct netlink_ext_ack *extack)
+{
+	struct iavf_dev_rate_node *node = priv;
+	struct iavf_devlink *dl_priv;
+	struct iavf_adapter *adapter;
+
+	if (!node)
+		return 0;
+
+	dl_priv = devlink_priv(rate_node->devlink);
+	adapter = dl_priv->devlink_ref;
+
+	/* Check if last update is in progress */
+	if (dl_priv->update_in_progress)
+		return -EBUSY;
+
+	if (node == &dl_priv->root_node)
+		return 0;
+
+	return iavf_update_queue_tx_max(adapter, node, tx_max, extack);
+}
+
+/**
+ * iavf_devlink_rate_node_tx_share_set - devlink_rate API for setting tx share
+ * @rate_node: devlink rate struct instance
+ *
+ * This function implements rate_node_tx_share_set function of devlink_ops
+ */
+static int iavf_devlink_rate_node_tx_share_set(struct devlink_rate *rate_node,
+					       void *priv, u64 tx_share,
+					       struct netlink_ext_ack *extack)
+{
+	struct iavf_dev_rate_node *node = priv;
+	struct iavf_devlink *dl_priv;
+	struct iavf_adapter *adapter;
+
+	if (!node)
+		return 0;
+
+	dl_priv = devlink_priv(rate_node->devlink);
+	adapter = dl_priv->devlink_ref;
+
+	/* Check if last update is in progress */
+	if (dl_priv->update_in_progress)
+		return -EBUSY;
+
+	if (node == &dl_priv->root_node)
+		return 0;
+
+	return iavf_update_queue_tx_share(adapter, node, tx_share, extack);
+}
+
+static int iavf_devlink_rate_node_del(struct devlink_rate *rate_node,
+				      void *priv,
+				      struct netlink_ext_ack *extack)
+{
+	return -EINVAL;
+}
+
+static int iavf_devlink_set_parent(struct devlink_rate *devlink_rate,
+				   struct devlink_rate *parent,
+				   void *priv, void *parent_priv,
+				   struct netlink_ext_ack *extack)
+{
+	return -EINVAL;
+}
+
+static const struct devlink_ops iavf_devlink_ops = {
+	.rate_node_tx_share_set = iavf_devlink_rate_node_tx_share_set,
+	.rate_node_tx_max_set = iavf_devlink_rate_node_tx_max_set,
+	.rate_node_del = iavf_devlink_rate_node_del,
+	.rate_leaf_parent_set = iavf_devlink_set_parent,
+	.rate_node_parent_set = iavf_devlink_set_parent,
+};
 
 /**
  * iavf_devlink_register - Register allocated devlink instance for iavf adapter
@@ -30,7 +296,7 @@ int iavf_devlink_register(struct iavf_adapter *adapter)
 	adapter->devlink = devlink;
 	ref = devlink_priv(devlink);
 	ref->devlink_ref = adapter;
-
+	ref->iavf_dev_rate_initialized = false;
 	devlink_register(devlink);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.h b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
index 5c122278611a..897ff5fc87af 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_devlink.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
@@ -4,14 +4,35 @@
 #ifndef _IAVF_DEVLINK_H_
 #define _IAVF_DEVLINK_H_
 
+#define IAVF_RATE_NODE_NAME			12
+struct iavf_dev_rate_node {
+	char name[IAVF_RATE_NODE_NAME];
+	struct devlink_rate *rate_node;
+	u8 tx_update_flag;
+#define IAVF_FLAG_TX_SHARE_UPDATED		BIT(0)
+#define IAVF_FLAG_TX_MAX_UPDATED		BIT(1)
+	u64 tx_max;
+	u64 tx_share;
+	u64 tx_max_temp;
+	u64 tx_share_temp;
+#define IAVF_RATE_DIV_FACTOR			125
+#define IAVF_TX_DEFAULT				100000
+};
+
 /* iavf devlink structure pointing to iavf adapter */
 struct iavf_devlink {
 	struct iavf_adapter *devlink_ref;	/* ref to iavf adapter */
+	struct iavf_dev_rate_node root_node;
+	struct iavf_dev_rate_node *queue_nodes;
+	bool iavf_dev_rate_initialized;
+	bool update_in_progress;
 };
 
 int iavf_devlink_register(struct iavf_adapter *adapter);
 void iavf_devlink_unregister(struct iavf_adapter *adapter);
 int iavf_devlink_port_register(struct iavf_adapter *adapter);
 void iavf_devlink_port_unregister(struct iavf_adapter *adapter);
+void iavf_devlink_rate_init_rate_tree(struct iavf_adapter *adapter);
+void iavf_devlink_rate_deinit_rate_tree(struct iavf_adapter *adapter);
 
 #endif /* _IAVF_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index db010e68d5d2..7348b65f9f19 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2037,6 +2037,7 @@ static void iavf_finish_config(struct work_struct *work)
 				iavf_free_rss(adapter);
 				iavf_free_misc_irq(adapter);
 				iavf_reset_interrupt_capability(adapter);
+				iavf_devlink_rate_deinit_rate_tree(adapter);
 				iavf_devlink_port_unregister(adapter);
 				iavf_change_state(adapter,
 						  __IAVF_INIT_CONFIG_ADAPTER);
@@ -2709,8 +2710,10 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	if (err)
 		goto err_sw_init;
 
-	if (!adapter->netdev_registered)
+	if (!adapter->netdev_registered) {
 		iavf_devlink_port_register(adapter);
+		iavf_devlink_rate_init_rate_tree(adapter);
+	}
 
 	netif_carrier_off(netdev);
 	adapter->link_up = false;
@@ -2753,6 +2756,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 err_mem:
 	iavf_free_rss(adapter);
 	iavf_free_misc_irq(adapter);
+	iavf_devlink_rate_deinit_rate_tree(adapter);
 	iavf_devlink_port_unregister(adapter);
 err_sw_init:
 	iavf_reset_interrupt_capability(adapter);
@@ -5150,6 +5154,7 @@ static void iavf_remove(struct pci_dev *pdev)
 				 err);
 	}
 
+	iavf_devlink_rate_deinit_rate_tree(adapter);
 	iavf_devlink_port_unregister(adapter);
 	iavf_devlink_unregister(adapter);
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
