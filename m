Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D31368C53
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 06:46:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CE8B40F94;
	Fri, 23 Apr 2021 04:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N4lxRhIXEpfp; Fri, 23 Apr 2021 04:46:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8579640F93;
	Fri, 23 Apr 2021 04:46:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB4ED1BF909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 04:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6BE44027A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 04:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6HN6hEfJzJ6b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 04:46:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF6BB400BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 04:46:08 +0000 (UTC)
IronPort-SDR: ofBbTyMxG5+9i3RIxvX7Nh9+yOedK8aM3EGy6dy4O4RR090ka3o0BRu30uuccl+lInaex9S8Qu
 5v6e4xMLvJxA==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="176138560"
X-IronPort-AV: E=Sophos;i="5.82,244,1613462400"; d="scan'208";a="176138560"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 21:46:03 -0700
IronPort-SDR: O09sjDeWglvg1S3fg1YvPW+eB8/0QtT7qJYeWveJzt2FTMeoINqrjePnUw/cw/4uG+7BQE/diy
 j9rte2eFrU9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,244,1613462400"; d="scan'208";a="453475593"
Received: from arch-m10.jf.intel.com ([10.166.174.52])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Apr 2021 21:46:03 -0700
From: Sridhar Samudrala <sridhar.samudrala@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 sridhar.samudrala@intel.com
Date: Thu, 22 Apr 2021 21:46:03 -0700
Message-Id: <20210423044603.1391-1-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Enable configuration of
 number of qps per VF via devlink
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

Introduce a devlink parameter 'num_qps_per_vf' to allow user
to configure the maximum number of queue pairs given to SR-IOV
VFs before they are created.

This is currently determined by the driver based on the number
of SR-IOV VFs created. In order to keep this behavior by default
the parameter is initialized to 0. To change the default behavior,
user can set num_qps_per_vf parameter via devlink and this will
be used as the preferred value to determine the queues and vectors
assigned per VF.

USAGE:
On a 2 port NIC
 # devlink dev param show
 pci/0000:42:00.0:
   name num_qps_per_vf type driver-specific
     values:
       cmode runtime value 0
 pci/0000:42:00.1:
   name num_qps_per_vf type driver-specific
     values:
       cmode runtime value 0

 /* Set num_qps_per_vf to 4 */
 # devlink dev param set pci/0000:42:00.0 name num_qps_per_vf value 4 cmode runtime

 # devlink dev param show pci/0000:42:00.0 name num_qps_per_vf
 pci/0000:42:00.0:
   name num_qps_per_vf type driver-specific
     values:
       cmode runtime value 4

 # echo 8 > /sys/class/net/enp66s0f0/device/sriov_numvfs

This will create 8 VFs with 4 queue pairs and 5 vectors per VF
compared to the default behavior of 16 queue pairs and 17 vectors
per VF.

Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 Documentation/networking/devlink/ice.rst      |  23 ++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 110 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   5 +-
 4 files changed, 139 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index a432dc419fa4..38bed190fa48 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -193,3 +193,26 @@ Users can request an immediate capture of a snapshot via the
     0000000000000210 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 
     $ devlink region delete pci/0000:01:00.0/device-caps snapshot 1
+
+Parameters
+==========
+
+The ``ice`` driver implements the following driver-specific
+parameters.
+
+.. list-table:: Driver-specific parameters implemented
+   :widths: 5 5 5 85
+
+   * - Name
+     - Type
+     - Mode
+     - Description
+   * - ``num_qps_per_vf``
+     - u16
+     - runtime
+     - Number of queue pairs assigned to SR-IOV VFs. The default
+       value is 0 indicating that the driver will determine based
+       on the number of SR-IOV VFs created and the available resources.
+       It can be set to a value between 1 to 16 and is used as a
+       preferred value in determining the queues and vectors assigned
+       per VF.
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index cf685eeea198..8df265235565 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -479,6 +479,102 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
 	return devlink_priv(devlink);
 }
 
+enum ice_devlink_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	ICE_DEVLINK_PARAM_ID_NUM_QPS_PER_VF,
+};
+
+/**
+ * ice_devlink_num_qps_per_vf_get - Get the current number of qps per vf
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to get
+ * @ctx: context to return the parameter value
+ *
+ * Returns: zero on success, or an error code on failure.
+ */
+static int
+ice_devlink_num_qps_per_vf_get(struct devlink *devlink, u32 id,
+			       struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);
+
+	if (id != ICE_DEVLINK_PARAM_ID_NUM_QPS_PER_VF)
+		return -EINVAL;
+
+	ctx->val.vu16 = pf->num_qps_per_vf;
+
+	return 0;
+}
+
+/**
+ * ice_devlink_num_qps_per_vf_validate - Validate the number of qps per vf
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to validate
+ * @ctx: context to return the parameter value
+ * @extack: netlink extended ACK structure
+ *
+ * Check that the value passed is less than the max qps allowed for a VF and
+ * no VFs are created yet.
+ * Returns: zero on success, or an error code on failure and extack with a
+ * reason for failure.
+ */
+static int
+ice_devlink_num_qps_per_vf_validate(struct devlink *devlink, u32 id,
+				    union devlink_param_value val,
+				    struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);
+
+	if (id != ICE_DEVLINK_PARAM_ID_NUM_QPS_PER_VF)
+		return -EINVAL;
+
+	if (val.vu16 > ICE_MAX_RSS_QS_PER_VF) {
+		NL_SET_ERR_MSG_MOD(extack, "Value is greater than max allowed");
+		return -EINVAL;
+	}
+
+	if (pf->num_alloc_vfs) {
+		NL_SET_ERR_MSG_MOD(extack, "Cannot set after VFs are created");
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_num_qps_per_vf_set - Set the number of qps per vf
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to return the parameter value
+ *
+ * Returns: zero on success, or an error code on failure.
+ */
+static int
+ice_devlink_num_qps_per_vf_set(struct devlink *devlink, u32 id,
+			       struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);
+
+	if (id != ICE_DEVLINK_PARAM_ID_NUM_QPS_PER_VF)
+		return -EINVAL;
+
+	pf->num_qps_per_vf = ctx->val.vu16;
+	pf->num_msix_per_vf = pf->num_qps_per_vf + 1;
+
+	return 0;
+}
+
+/* devlink parameters for the ice driver */
+static const struct devlink_param ice_devlink_params[] = {
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_NUM_QPS_PER_VF,
+			     "num_qps_per_vf",
+			     DEVLINK_PARAM_TYPE_U16,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_num_qps_per_vf_get,
+			     ice_devlink_num_qps_per_vf_set,
+			     ice_devlink_num_qps_per_vf_validate),
+};
+
 /**
  * ice_devlink_register - Register devlink interface for this PF
  * @pf: the PF to register the devlink for.
@@ -499,6 +595,13 @@ int ice_devlink_register(struct ice_pf *pf)
 		return err;
 	}
 
+	err = devlink_params_register(devlink, ice_devlink_params,
+				      ARRAY_SIZE(ice_devlink_params));
+	if (err) {
+		dev_err(dev, "devlink params registration failed: %d\n", err);
+		return err;
+	}
+
 	return 0;
 }
 
@@ -510,7 +613,11 @@ int ice_devlink_register(struct ice_pf *pf)
  */
 void ice_devlink_unregister(struct ice_pf *pf)
 {
-	devlink_unregister(priv_to_devlink(pf));
+	struct devlink *devlink = priv_to_devlink(pf);
+
+	devlink_params_unregister(devlink, ice_devlink_params,
+				  ARRAY_SIZE(ice_devlink_params));
+	devlink_unregister(devlink);
 }
 
 /**
@@ -542,6 +649,7 @@ int ice_devlink_create_port(struct ice_vsi *vsi)
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
 	attrs.phys.port_number = pi->lport;
 	devlink_port_attrs_set(&vsi->devlink_port, &attrs);
+
 	err = devlink_port_register(devlink, &vsi->devlink_port, vsi->idx);
 	if (err) {
 		dev_err(dev, "devlink_port_register failed: %d\n", err);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4ee85a217c6f..89f30255b711 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4092,6 +4092,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	}
 
 	ice_devlink_init_regions(pf);
+	devlink_params_publish(priv_to_devlink(pf));
 
 	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
 	pf->hw.udp_tunnel_nic.unset_port = ice_udp_tunnel_unset_port;
@@ -4285,6 +4286,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	devm_kfree(dev, pf->vsi);
 err_init_pf_unroll:
 	ice_deinit_pf(pf);
+	devlink_params_unpublish(priv_to_devlink(pf));
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(hw);
 err_exit_unroll:
@@ -4398,6 +4400,7 @@ static void ice_remove(struct pci_dev *pdev)
 		ice_vsi_free_q_vectors(pf->vsi[i]);
 	}
 	ice_deinit_pf(pf);
+	devlink_params_unpublish(priv_to_devlink(pf));
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(&pf->hw);
 	ice_devlink_unregister(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index a1d22d2aa0bd..18538b1c57c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -637,6 +637,7 @@ void ice_free_vfs(struct ice_pf *pf)
 
 	tmp = pf->num_alloc_vfs;
 	pf->num_qps_per_vf = 0;
+	pf->num_msix_per_vf = 0;
 	pf->num_alloc_vfs = 0;
 	for (i = 0; i < tmp; i++) {
 		if (test_bit(ICE_VF_STATE_INIT, pf->vf[i].vf_states)) {
@@ -1228,7 +1229,9 @@ static int ice_set_per_vf_res(struct ice_pf *pf)
 	msix_avail_for_sriov = pf->hw.func_caps.common_cap.num_msix_vectors -
 		pf->irq_tracker->num_entries;
 	msix_avail_per_vf = msix_avail_for_sriov / pf->num_alloc_vfs;
-	if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_MED) {
+	if (pf->num_msix_per_vf && msix_avail_per_vf >= pf->num_msix_per_vf) {
+		num_msix_per_vf = pf->num_msix_per_vf;
+	} else if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_MED) {
 		num_msix_per_vf = ICE_NUM_VF_MSIX_MED;
 	} else if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_SMALL) {
 		num_msix_per_vf = ICE_NUM_VF_MSIX_SMALL;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
