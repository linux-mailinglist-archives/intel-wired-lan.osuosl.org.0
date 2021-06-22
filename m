Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACF63B1309
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 06:55:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED9583BBD;
	Wed, 23 Jun 2021 04:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwmA9fxGDv02; Wed, 23 Jun 2021 04:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F5CD83BBA;
	Wed, 23 Jun 2021 04:55:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11EF71BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF4CF60694
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id acGP9B2TJ_uU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 04:55:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B18226069C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:38 +0000 (UTC)
IronPort-SDR: 0DNSfN3GPoiAF+YWleiWpNGdDF9WmoYqoPGpHaavSusty3GgJwYCR8fVg/QAD+WYiHgzN6DlhP
 FEe7VLU88BzQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="204185975"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="204185975"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 21:55:36 -0700
IronPort-SDR: jycwq2ZY8IUT809Zwhn4Rkfd8Ex5pVpNTVEKbgOm5Ohm/AcjfHP4EmuSkdyuRisJlvCj2D5gpT
 SDWvnm6jqVQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="490547867"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2021 21:55:35 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jun 2021 23:21:25 +0200
Message-Id: <20210622212134.341728-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
References: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 02/12] ice: Move devlink port
 to PF/VF struct
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Keeping devlink port inside VSI data structure causes some issues.
Since VF VSI is released during reset that means that we have to
unregister devlink port and register it again every time reset is
triggered. With the new changes in devlink API it
might cause deadlock issues. After calling
devlink_port_register/devlink_port_unregister devlink API is going to
lock rtnl_mutex. It's an issue when VF reset is triggered in netlink
operation context (like setting VF MAC address or VLAN),
because rtnl_lock is already taken by netlink. Another call of
rtnl_lock from devlink API results in dead-lock.

By moving devlink port to PF/VF we avoid creating/destroying it
during reset. Since this patch, devlink ports are created during
ice_probe, destroyed during ice_remove for PF and created during
ice_repr_add, destroyed during ice_repr_rem for VF.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   7 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 106 +++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   6 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   4 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   2 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   9 ++
 7 files changed, 100 insertions(+), 37 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 729d375fbebc..0baac650122a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -302,10 +302,6 @@ struct ice_vsi {
 	spinlock_t arfs_lock;	/* protects aRFS hash table and filter state */
 	atomic_t *arfs_last_fltr_id;
 
-	/* devlink port data */
-	struct devlink_port devlink_port;
-	bool devlink_port_registered;
-
 	u16 max_frame;
 	u16 rx_buf_len;
 
@@ -417,6 +413,9 @@ struct ice_pf {
 	struct devlink_region *nvm_region;
 	struct devlink_region *devcaps_region;
 
+	/* devlink port data */
+	struct devlink_port devlink_port;
+
 	/* OS reserved IRQ details */
 	struct msix_entry *msix_entries;
 	struct ice_res_tracker *irq_tracker;
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index de6d0a8ba1a8..59ae94266fcf 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -602,61 +602,113 @@ void ice_devlink_unregister(struct ice_pf *pf)
 }
 
 /**
- * ice_devlink_create_port - Create a devlink port for this VSI
- * @vsi: the VSI to create a port for
+ * ice_devlink_create_pf_port - Create a devlink port for this PF
+ * @pf: the PF to create a devlink port for
  *
- * Create and register a devlink_port for this VSI.
+ * Create and register a devlink_port for this PF.
  *
  * Return: zero on success or an error code on failure.
  */
-int ice_devlink_create_port(struct ice_vsi *vsi)
+int ice_devlink_create_pf_port(struct ice_pf *pf)
 {
 	struct devlink_port_attrs attrs = {};
-	struct ice_port_info *pi;
+	struct devlink_port *devlink_port;
 	struct devlink *devlink;
+	struct ice_vsi *vsi;
 	struct device *dev;
-	struct ice_pf *pf;
 	int err;
 
-	/* Currently we only create devlink_port instances for PF VSIs */
-	if (vsi->type != ICE_VSI_PF)
-		return -EINVAL;
-
-	pf = vsi->back;
-	devlink = priv_to_devlink(pf);
 	dev = ice_pf_to_dev(pf);
-	pi = pf->hw.port_info;
+
+	devlink_port = &pf->devlink_port;
+	vsi = ice_get_main_vsi(pf);
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
-	attrs.phys.port_number = pi->lport;
-	devlink_port_attrs_set(&vsi->devlink_port, &attrs);
+	attrs.phys.port_number = vsi->port_info->lport;
 
-	err = devlink_port_register(devlink, &vsi->devlink_port, vsi->idx);
+	devlink_port_attrs_set(devlink_port, &attrs);
+	devlink = priv_to_devlink(pf);
+
+	err = devlink_port_register(devlink, devlink_port, vsi->idx);
 	if (err) {
-		dev_err(dev, "devlink_port_register failed: %d\n", err);
+		dev_err(dev, "Failed to create devlink port for PF %d, error %d\n",
+			pf->hw.pf_id, err);
 		return err;
 	}
 
-	vsi->devlink_port_registered = true;
+	return 0;
+}
+
+/**
+ * ice_devlink_destroy_pf_port - Destroy the devlink_port for this PF
+ * @pf: the PF to cleanup
+ *
+ * Unregisters the devlink_port structure associated with this PF.
+ */
+void ice_devlink_destroy_pf_port(struct ice_pf *pf)
+{
+	struct devlink_port *devlink_port;
+
+	devlink_port = &pf->devlink_port;
+
+	devlink_port_type_clear(devlink_port);
+	devlink_port_unregister(devlink_port);
+}
+
+/**
+ * ice_devlink_create_vf_port - Create a devlink port for this VF
+ * @vf: the VF to create a port for
+ *
+ * Create and register a devlink_port for this VF.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int ice_devlink_create_vf_port(struct ice_vf *vf)
+{
+	struct devlink_port_attrs attrs = {};
+	struct devlink_port *devlink_port;
+	struct devlink *devlink;
+	struct ice_vsi *vsi;
+	struct device *dev;
+	struct ice_pf *pf;
+	int err;
+
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
+	vsi = ice_get_vf_vsi(vf);
+	devlink_port = &vf->devlink_port;
+
+	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
+	attrs.pci_vf.pf = pf->hw.bus.func;
+	attrs.pci_vf.vf = vf->vf_id;
+
+	devlink_port_attrs_set(devlink_port, &attrs);
+	devlink = priv_to_devlink(pf);
+
+	err = devlink_port_register(devlink, devlink_port, vsi->idx);
+	if (err) {
+		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
+			vf->vf_id, err);
+		return err;
+	}
 
 	return 0;
 }
 
 /**
- * ice_devlink_destroy_port - Destroy the devlink_port for this VSI
- * @vsi: the VSI to cleanup
+ * ice_devlink_destroy_vf_port - Destroy the devlink_port for this VF
+ * @vf: the VF to cleanup
  *
- * Unregisters the devlink_port structure associated with this VSI.
+ * Unregisters the devlink_port structure associated with this VF.
  */
-void ice_devlink_destroy_port(struct ice_vsi *vsi)
+void ice_devlink_destroy_vf_port(struct ice_vf *vf)
 {
-	if (!vsi->devlink_port_registered)
-		return;
+	struct devlink_port *devlink_port;
 
-	devlink_port_type_clear(&vsi->devlink_port);
-	devlink_port_unregister(&vsi->devlink_port);
+	devlink_port = &vf->devlink_port;
 
-	vsi->devlink_port_registered = false;
+	devlink_port_type_clear(devlink_port);
+	devlink_port_unregister(devlink_port);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
index e07e74426bde..e30284ccbed4 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.h
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -8,8 +8,10 @@ struct ice_pf *ice_allocate_pf(struct device *dev);
 
 int ice_devlink_register(struct ice_pf *pf);
 void ice_devlink_unregister(struct ice_pf *pf);
-int ice_devlink_create_port(struct ice_vsi *vsi);
-void ice_devlink_destroy_port(struct ice_vsi *vsi);
+int ice_devlink_create_pf_port(struct ice_pf *pf);
+void ice_devlink_destroy_pf_port(struct ice_pf *pf);
+int ice_devlink_create_vf_port(struct ice_vf *vf);
+void ice_devlink_destroy_vf_port(struct ice_vf *vf);
 
 void ice_devlink_init_regions(struct ice_pf *pf);
 void ice_devlink_destroy_regions(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 2e553b8cceaf..274cbca8b1c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2856,7 +2856,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
 	}
 
-	ice_devlink_destroy_port(vsi);
+	if (vsi->type == ICE_VSI_PF)
+		ice_devlink_destroy_pf_port(pf);
 
 	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 		ice_rss_clean(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ff057bdc96e2..99d786ca6fed 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4177,11 +4177,11 @@ static int ice_register_netdev(struct ice_pf *pf)
 	set_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
 	netif_carrier_off(vsi->netdev);
 	netif_tx_stop_all_queues(vsi->netdev);
-	err = ice_devlink_create_port(vsi);
+	err = ice_devlink_create_pf_port(pf);
 	if (err)
 		goto err_devlink_create;
 
-	devlink_port_type_eth_set(&vsi->devlink_port, vsi->netdev);
+	devlink_port_type_eth_set(&pf->devlink_port, vsi->netdev);
 
 	return 0;
 err_devlink_create:
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 699e0a842b85..938cba6a0470 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -251,7 +251,7 @@ ice_vc_hash_field_match_type ice_vc_hash_field_list_comms[] = {
  * ice_get_vf_vsi - get VF's VSI based on the stored index
  * @vf: VF used to get VSI
  */
-static struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
+struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
 {
 	return vf->pf->vsi[vf->lan_vsi_idx];
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 842cb077df86..38b4dc82c5c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -111,9 +111,13 @@ struct ice_vf {
 	struct ice_mdd_vf_events mdd_rx_events;
 	struct ice_mdd_vf_events mdd_tx_events;
 	DECLARE_BITMAP(opcodes_allowlist, VIRTCHNL_OP_MAX);
+
+	/* devlink port data */
+	struct devlink_port devlink_port;
 };
 
 #ifdef CONFIG_PCI_IOV
+struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
 void ice_process_vflr_event(struct ice_pf *pf);
 int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
 int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
@@ -171,6 +175,11 @@ static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
 static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
 static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
 
+static inline struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
+{
+	return NULL;
+}
+
 static inline bool
 ice_is_malicious_vf(struct ice_pf __always_unused *pf,
 		    struct ice_rq_event_info __always_unused *event,
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
