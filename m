Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E422542ABF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 20:33:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F3B681C44;
	Tue, 12 Oct 2021 18:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJyZnoJqLrub; Tue, 12 Oct 2021 18:33:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 387E180E8D;
	Tue, 12 Oct 2021 18:33:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E5DD1BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E2264028C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6S3nj9AVLLM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 18:33:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCC0840293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 18:33:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="250640571"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="250640571"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 11:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="491100329"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga008.jf.intel.com with ESMTP; 12 Oct 2021 11:33:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Oct 2021 11:31:03 -0700
Message-Id: <20211012183106.2315477-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
References: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2 1/4] ice: support for indirect
 notification
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Implement indirect notification mechanism to support offloading TC rules
on tunnel devices.

Keep indirect block list in netdev priv. Notification will call setting
tc cls flower function.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        |   8 +
 drivers/net/ethernet/intel/ice/ice_main.c   | 198 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |   6 +
 3 files changed, 210 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 5c651c7c58bf..afd46ef70bd8 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -34,6 +34,7 @@
 #include <linux/if_bridge.h>
 #include <linux/ctype.h>
 #include <linux/bpf.h>
+#include <linux/btf.h>
 #include <linux/auxiliary_bus.h>
 #include <linux/avf/virtchnl.h>
 #include <linux/cpu_rmap.h>
@@ -544,6 +545,13 @@ struct ice_pf {
 struct ice_netdev_priv {
 	struct ice_vsi *vsi;
 	struct ice_repr *repr;
+	/* indirect block callbacks on registered higher level devices
+	 * (e.g. tunnel devices)
+	 *
+	 * tc_indr_block_cb_priv_list is used to lookup indirect callback
+	 * private data
+	 */
+	struct list_head tc_indr_block_priv_list;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 51e12e5896b2..600c8444d23b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -55,6 +55,12 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
 
 static void ice_vsi_release_all(struct ice_pf *pf);
 
+static int
+ice_indr_setup_tc_cb(struct net_device *netdev, struct Qdisc *sch,
+		     void *cb_priv, enum tc_setup_type type, void *type_data,
+		     void *data,
+		     void (*cleanup)(struct flow_block_cb *block_cb));
+
 bool netif_is_ice(struct net_device *dev)
 {
 	return dev && (dev->netdev_ops == &ice_netdev_ops);
@@ -3399,6 +3405,63 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	return ret;
 }
 
+/**
+ * ice_rep_indr_tc_block_unbind
+ * @cb_priv: indirection block private data
+ */
+static void ice_rep_indr_tc_block_unbind(void *cb_priv)
+{
+	struct ice_indr_block_priv *indr_priv = cb_priv;
+
+	list_del(&indr_priv->list);
+	kfree(indr_priv);
+}
+
+/**
+ * ice_tc_indir_block_unregister - Unregister TC indirect block notifications
+ * @vsi: VSI struct which has the netdev
+ */
+static void ice_tc_indir_block_unregister(struct ice_vsi *vsi)
+{
+	struct ice_netdev_priv *np = netdev_priv(vsi->netdev);
+
+	flow_indr_dev_unregister(ice_indr_setup_tc_cb, np,
+				 ice_rep_indr_tc_block_unbind);
+}
+
+/**
+ * ice_tc_indir_block_remove - clean indirect TC block notifications
+ * @pf: PF structure
+ */
+static void ice_tc_indir_block_remove(struct ice_pf *pf)
+{
+	struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
+
+	if (!pf_vsi)
+		return;
+
+	ice_tc_indir_block_unregister(pf_vsi);
+}
+
+/**
+ * ice_tc_indir_block_register - Register TC indirect block notifications
+ * @vsi: VSI struct which has the netdev
+ *
+ * Returns 0 on success, negative value on failure
+ */
+static int ice_tc_indir_block_register(struct ice_vsi *vsi)
+{
+	struct ice_netdev_priv *np;
+
+	if (!vsi || !vsi->netdev)
+		return -EINVAL;
+
+	np = netdev_priv(vsi->netdev);
+
+	INIT_LIST_HEAD(&np->tc_indr_block_priv_list);
+	return flow_indr_dev_register(ice_indr_setup_tc_cb, np);
+}
+
 /**
  * ice_setup_pf_sw - Setup the HW switch on startup or after reset
  * @pf: board private structure
@@ -3407,6 +3470,7 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
  */
 static int ice_setup_pf_sw(struct ice_pf *pf)
 {
+	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi;
 	int status = 0;
 
@@ -3425,6 +3489,13 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	/* netdev has to be configured before setting frame size */
 	ice_vsi_cfg_frame_size(vsi);
 
+	/* init indirect block notifications */
+	status = ice_tc_indir_block_register(vsi);
+	if (status) {
+		dev_err(dev, "Failed to register netdev notifier\n");
+		goto unroll_cfg_netdev;
+	}
+
 	/* Setup DCB netlink interface */
 	ice_dcbnl_setup(vsi);
 
@@ -3436,7 +3507,7 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 
 	status = ice_set_cpu_rx_rmap(vsi);
 	if (status) {
-		dev_err(ice_pf_to_dev(pf), "Failed to set CPU Rx map VSI %d error %d\n",
+		dev_err(dev, "Failed to set CPU Rx map VSI %d error %d\n",
 			vsi->vsi_num, status);
 		status = -EINVAL;
 		goto unroll_napi_add;
@@ -3449,8 +3520,9 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 
 free_cpu_rx_map:
 	ice_free_cpu_rx_rmap(vsi);
-
 unroll_napi_add:
+	ice_tc_indir_block_unregister(vsi);
+unroll_cfg_netdev:
 	if (vsi) {
 		ice_napi_del(vsi);
 		if (vsi->netdev) {
@@ -4727,6 +4799,8 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	ice_tc_indir_block_remove(pf);
+
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
 		ice_free_vfs(pf);
@@ -7272,6 +7346,126 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 	return -EOPNOTSUPP;
 }
 
+static struct ice_indr_block_priv *
+ice_indr_block_priv_lookup(struct ice_netdev_priv *np,
+			   struct net_device *netdev)
+{
+	struct ice_indr_block_priv *cb_priv;
+
+	/* All callback list access should be protected by RTNL. */
+	ASSERT_RTNL();
+
+	list_for_each_entry(cb_priv, &np->tc_indr_block_priv_list, list) {
+		if (!cb_priv->netdev)
+			return NULL;
+		if (cb_priv->netdev == netdev)
+			return cb_priv;
+	}
+	return NULL;
+}
+
+static int
+ice_indr_setup_block_cb(enum tc_setup_type type, void *type_data,
+			void *indr_priv)
+{
+	struct ice_indr_block_priv *priv = indr_priv;
+	struct ice_netdev_priv *np = priv->np;
+
+	switch (type) {
+	case TC_SETUP_CLSFLOWER:
+		return ice_setup_tc_cls_flower(np, priv->netdev,
+					       (struct flow_cls_offload *)
+					       type_data);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int
+ice_indr_setup_tc_block(struct net_device *netdev, struct Qdisc *sch,
+			struct ice_netdev_priv *np,
+			struct flow_block_offload *f, void *data,
+			void (*cleanup)(struct flow_block_cb *block_cb))
+{
+	struct ice_indr_block_priv *indr_priv;
+	struct flow_block_cb *block_cb;
+
+	int tunnel_type = 0;
+
+	if (tunnel_type != TNL_VXLAN && tunnel_type != TNL_GENEVE &&
+	    !(is_vlan_dev(netdev) &&
+	    vlan_dev_real_dev(netdev) == np->vsi->netdev))
+		return -EOPNOTSUPP;
+
+	if (f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS)
+		return -EOPNOTSUPP;
+
+	switch (f->command) {
+	case FLOW_BLOCK_BIND:
+		indr_priv = ice_indr_block_priv_lookup(np, netdev);
+		if (indr_priv)
+			return -EEXIST;
+
+		indr_priv = kzalloc(sizeof(*indr_priv), GFP_KERNEL);
+		if (!indr_priv)
+			return -ENOMEM;
+
+		indr_priv->netdev = netdev;
+		indr_priv->np = np;
+		list_add(&indr_priv->list, &np->tc_indr_block_priv_list);
+
+		block_cb =
+			flow_indr_block_cb_alloc(ice_indr_setup_block_cb,
+						 indr_priv, indr_priv,
+						 ice_rep_indr_tc_block_unbind,
+						 f, netdev, sch, data, np,
+						 cleanup);
+
+		if (IS_ERR(block_cb)) {
+			list_del(&indr_priv->list);
+			kfree(indr_priv);
+			return PTR_ERR(block_cb);
+		}
+		flow_block_cb_add(block_cb, f);
+		list_add_tail(&block_cb->driver_list, &ice_block_cb_list);
+		return 0;
+	case FLOW_BLOCK_UNBIND:
+		indr_priv = ice_indr_block_priv_lookup(np, netdev);
+		if (!indr_priv)
+			return -ENOENT;
+
+		block_cb = flow_block_cb_lookup(f->block,
+						ice_indr_setup_block_cb,
+						indr_priv);
+		if (!block_cb)
+			return -ENOENT;
+
+		flow_indr_block_cb_remove(block_cb, f);
+
+		list_del(&block_cb->driver_list);
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+	return 0;
+}
+
+static int
+ice_indr_setup_tc_cb(struct net_device *netdev, struct Qdisc *sch,
+		     void *cb_priv, enum tc_setup_type type, void *type_data,
+		     void *data,
+		     void (*cleanup)(struct flow_block_cb *block_cb))
+{
+	switch (type) {
+	case TC_SETUP_BLOCK:
+		return ice_indr_setup_tc_block(netdev, sch, cb_priv, type_data,
+					       data, cleanup);
+
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 /**
  * ice_open - Called when a network interface becomes active
  * @netdev: network interface device structure
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index d90e9e37ae25..332c70342f1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -23,6 +23,12 @@
 #define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
 
+struct ice_indr_block_priv {
+	struct net_device *netdev;
+	struct ice_netdev_priv *np;
+	struct list_head list;
+};
+
 struct ice_tc_flower_action {
 	u32 tc_class;
 	enum ice_sw_fwd_act_type fltr_act;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
