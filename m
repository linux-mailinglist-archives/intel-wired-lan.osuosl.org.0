Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C73198D1357
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 06:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E143B405C9;
	Tue, 28 May 2024 04:33:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q5XbXXHBwbsK; Tue, 28 May 2024 04:33:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B59AC405B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716870802;
	bh=rQhGneTehdRLE2DPSMi7APH3NV1jBd+8aVsXVg6UAnc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3rbWuGB01Iqkb73OiAZ0XjdkkFeqbf5ilDHXOtXUfXN4mYg0t6alTicmRXz8kNjzj
	 O9Z1zskENUBaB23q2aT0EUyWh25nU/uBFGsW4mqLtx/c23LI52+uqYAXMdxtv329ql
	 U6QaEuXCmZTN6ObAR6Xqe7jUD+9BuLCn3ClO9TxHAzRoT/oYaJoOhCvjBOB33Bdxgp
	 0SapjZII2RbpPrhc18eK6z5/+oYYZ03kn8CY5HSkRGDjZAaQB11Y2wy2E89r1oAGmZ
	 MlqRcd5sKxbGdLW0el+cFpAoysICaDtV8vCqmq84omZ8YTL6aEYGljHF0XZBwoBhp5
	 wy13+WN7esJLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B59AC405B3;
	Tue, 28 May 2024 04:33:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 401DA1D23BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A10440592
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vfS2m1onG5DL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 04:33:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 89D3240597
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89D3240597
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89D3240597
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:18 +0000 (UTC)
X-CSE-ConnectionGUID: L+J/fLS2RZmBTn1bH3qELA==
X-CSE-MsgGUID: 62YlIhCSQ167o6kmIRb4dg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13020084"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13020084"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 21:33:18 -0700
X-CSE-ConnectionGUID: V8rC5fVaQMaT9Yc2Tl/lyw==
X-CSE-MsgGUID: e5IiV6FUTDOGPXDjNE06Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="66152407"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 27 May 2024 21:33:15 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 06:38:01 +0200
Message-ID: <20240528043813.1342483-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716870798; x=1748406798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QEizgbLk5/cVwAjdfzECIn6OnavrSPyw8CQHN+6Y9wM=;
 b=FNhkRvhS3fb2myMTcKAmDn+9XHWe25Qf3izq7OBWMWboB/Vf2rcjyjce
 VD6Sgf0D0H9ezdfqpbSbmJaeFPnCVBuhF3cBVMBnT4QrGjnIxcpbw84Wd
 VmwHVisquzVthkwGkN0iu2r34g6FyfNz+D/LsoFuYTMFe1x0Wgr36vwl6
 0EIoif7wB5Aq5tCUPcNR3sfIY0tnbhVCyaLUP+z/uPOhy4s/550R2NwXV
 3hortnJsAylyXqP9GSw2l41VPwCeOOSdHqxydJtrb7voZANTOd1fZbD7L
 xcTf2ylE5h8m+Kb8UI69ZxA1l0RLvQeahHjwoFyzTwnDCuOpsWUiW31/r
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FNhkRvhS
Subject: [Intel-wired-lan] [iwl-next v3 03/15] ice: add basic devlink
 subfunctions support
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Implement devlink port handlers responsible for ethernet type devlink
subfunctions. Create subfunction devlink port and setup all resources
needed for a subfunction netdev to operate. Configure new VSI for each
new subfunction, initialize and configure interrupts and Tx/Rx resources.
Set correct MAC filters and create new netdev.

For now, subfunction is limited to only one Tx/Rx queue pair.

Only allocate new subfunction VSI with devlink port new command.
Allocate and free subfunction MSIX interrupt vectors using new API
calls with pci_msix_alloc_irq_at and pci_msix_free_irq.

Support both automatic and manual subfunction numbers. If no subfunction
number is provided, use xa_alloc to pick a number automatically. This
will find the first free index and use that as the number. This reduces
burden on users in the simple case where a specific number is not
required. It may also be slightly faster to check that a number exists
since xarray lookup should be faster than a linear scan of the dyn_ports
xarray.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  |   3 +
 .../ethernet/intel/ice/devlink/devlink_port.c | 288 ++++++++++++++++++
 .../ethernet/intel/ice/devlink/devlink_port.h |  34 +++
 drivers/net/ethernet/intel/ice/ice.h          |   4 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   7 +
 7 files changed, 341 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index f774781ab514..bfb3d5b59a62 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -6,6 +6,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "devlink.h"
+#include "devlink_port.h"
 #include "ice_eswitch.h"
 #include "ice_fw_update.h"
 #include "ice_dcb_lib.h"
@@ -1277,6 +1278,8 @@ static const struct devlink_ops ice_devlink_ops = {
 
 	.rate_leaf_parent_set = ice_devlink_set_parent,
 	.rate_node_parent_set = ice_devlink_set_parent,
+
+	.port_new = ice_devlink_port_new,
 };
 
 static int
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 00fed5a61d62..5d1fe08e4bab 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -5,6 +5,9 @@
 
 #include "ice.h"
 #include "devlink.h"
+#include "devlink_port.h"
+#include "ice_lib.h"
+#include "ice_fltr.h"
 
 static int ice_active_port_option = -1;
 
@@ -485,3 +488,288 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
 	devl_rate_leaf_destroy(&vf->devlink_port);
 	devl_port_unregister(&vf->devlink_port);
 }
+
+/**
+ * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
+ * @dyn_port: dynamic port instance to deallocate
+ *
+ * Free resources associated with a dynamically added devlink port. Will
+ * deactivate the port if its currently active.
+ */
+static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
+{
+	struct devlink_port *devlink_port = &dyn_port->devlink_port;
+	struct ice_pf *pf = dyn_port->pf;
+
+	xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
+	devl_port_unregister(devlink_port);
+	ice_vsi_free(dyn_port->vsi);
+	xa_erase(&pf->dyn_ports, dyn_port->vsi->idx);
+	kfree(dyn_port);
+}
+
+/**
+ * ice_dealloc_all_dynamic_ports - Deallocate all dynamic devlink ports
+ * @pf: pointer to the pf structure
+ */
+void ice_dealloc_all_dynamic_ports(struct ice_pf *pf)
+{
+	struct ice_dynamic_port *dyn_port;
+	unsigned long index;
+
+	xa_for_each(&pf->dyn_ports, index, dyn_port)
+		ice_dealloc_dynamic_port(dyn_port);
+}
+
+/**
+ * ice_devlink_port_new_check_attr - Check that new port attributes are valid
+ * @pf: pointer to the PF structure
+ * @new_attr: the attributes for the new port
+ * @extack: extack for reporting error messages
+ *
+ * Check that the attributes for the new port are valid before continuing to
+ * allocate the devlink port.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_new_check_attr(struct ice_pf *pf,
+				const struct devlink_port_new_attrs *new_attr,
+				struct netlink_ext_ack *extack)
+{
+	if (new_attr->flavour != DEVLINK_PORT_FLAVOUR_PCI_SF) {
+		NL_SET_ERR_MSG_MOD(extack, "Flavour other than pcisf is not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (new_attr->controller_valid) {
+		NL_SET_ERR_MSG_MOD(extack, "Setting controller is not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (new_attr->port_index_valid) {
+		NL_SET_ERR_MSG_MOD(extack, "Port index is invalid");
+		return -EOPNOTSUPP;
+	}
+
+	if (new_attr->pfnum != pf->hw.bus.func) {
+		NL_SET_ERR_MSG_MOD(extack, "Incorrect pfnum supplied");
+		return -EINVAL;
+	}
+
+	if (!pci_msix_can_alloc_dyn(pf->pdev)) {
+		NL_SET_ERR_MSG_MOD(extack, "Dynamic MSIX-X interrupt allocation is not supported");
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_port_del - devlink handler for port delete
+ * @devlink: pointer to devlink
+ * @port: devlink port to be deleted
+ * @extack: pointer to extack
+ *
+ * Deletes devlink port and deallocates all resources associated with
+ * created subfunction.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_del(struct devlink *devlink, struct devlink_port *port,
+		     struct netlink_ext_ack *extack)
+{
+	struct ice_dynamic_port *dyn_port;
+
+	dyn_port = ice_devlink_port_to_dyn(port);
+	ice_dealloc_dynamic_port(dyn_port);
+
+	return 0;
+}
+
+static const struct devlink_port_ops ice_devlink_port_sf_ops = {
+	.port_del = ice_devlink_port_del,
+};
+
+/**
+ * ice_reserve_sf_num - Reserve a subfunction number for this port
+ * @pf: pointer to the pf structure
+ * @new_attr: devlink port attributes requested
+ * @extack: extack for reporting error messages
+ * @sfnum: on success, the sf number reserved
+ *
+ * Reserve a subfunction number for this port. Only called for
+ * DEVLINK_PORT_FLAVOUR_PCI_SF ports.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_reserve_sf_num(struct ice_pf *pf,
+		   const struct devlink_port_new_attrs *new_attr,
+		   struct netlink_ext_ack *extack, u32 *sfnum)
+{
+	int err;
+
+	/* If user didn't request an explicit number, pick one */
+	if (!new_attr->sfnum_valid)
+		return xa_alloc(&pf->sf_nums, sfnum, NULL, xa_limit_32b,
+				GFP_KERNEL);
+
+	/* Otherwise, check and use the number provided */
+	err = xa_insert(&pf->sf_nums, new_attr->sfnum, NULL, GFP_KERNEL);
+	if (err) {
+		if (err == -EBUSY)
+			NL_SET_ERR_MSG_MOD(extack, "Subfunction with given sfnum already exists");
+		return err;
+	}
+
+	*sfnum = new_attr->sfnum;
+
+	return 0;
+}
+
+/**
+ * ice_devlink_create_sf_port - Register PCI subfunction devlink port
+ * @dyn_port: the dynamic port instance structure for this subfunction
+ *
+ * Register PCI subfunction flavour devlink port for a dynamically added
+ * subfunction port.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port)
+{
+	struct devlink_port_attrs attrs = {};
+	struct devlink_port *devlink_port;
+	struct devlink *devlink;
+	struct ice_vsi *vsi;
+	struct ice_pf *pf;
+
+	vsi = dyn_port->vsi;
+	pf = dyn_port->pf;
+
+	devlink_port = &dyn_port->devlink_port;
+
+	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_SF;
+	attrs.pci_sf.pf = pf->hw.bus.func;
+	attrs.pci_sf.sf = dyn_port->sfnum;
+
+	devlink_port_attrs_set(devlink_port, &attrs);
+	devlink = priv_to_devlink(pf);
+
+	return devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
+					   &ice_devlink_port_sf_ops);
+}
+
+/**
+ * ice_devlink_destroy_sf_port - Destroy the devlink_port for this SF
+ * @dyn_port: the dynamic port instance structure for this subfunction
+ *
+ * Unregisters the devlink_port structure associated with this SF.
+ */
+void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port)
+{
+	devl_port_unregister(&dyn_port->devlink_port);
+}
+
+/**
+ * ice_alloc_dynamic_port - Allocate new dynamic port
+ * @pf: pointer to the pf structure
+ * @new_attr: devlink port attributes requested
+ * @extack: extack for reporting error messages
+ * @devlink_port: index of newly created devlink port
+ *
+ * Allocate a new dynamic port instance and prepare it for configuration
+ * with devlink.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_alloc_dynamic_port(struct ice_pf *pf,
+		       const struct devlink_port_new_attrs *new_attr,
+		       struct netlink_ext_ack *extack,
+		       struct devlink_port **devlink_port)
+{
+	struct ice_dynamic_port *dyn_port;
+	struct ice_vsi *vsi;
+	u32 sfnum;
+	int err;
+
+	err = ice_reserve_sf_num(pf, new_attr, extack, &sfnum);
+	if (err)
+		return err;
+
+	dyn_port = kzalloc(sizeof(*dyn_port), GFP_KERNEL);
+	if (!dyn_port) {
+		err = -ENOMEM;
+		goto unroll_reserve_sf_num;
+	}
+
+	vsi = ice_vsi_alloc(pf);
+	if (!vsi) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to allocate VSI");
+		err = -ENOMEM;
+		goto unroll_dyn_port_alloc;
+	}
+
+	dyn_port->vsi = vsi;
+	dyn_port->pf = pf;
+	dyn_port->sfnum = sfnum;
+	eth_random_addr(dyn_port->hw_addr);
+
+	err = xa_insert(&pf->dyn_ports, vsi->idx, dyn_port, GFP_KERNEL);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Port index reservation failed");
+		goto unroll_vsi_alloc;
+	}
+
+	err = ice_devlink_create_sf_port(dyn_port);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Port registration failed");
+		goto unroll_xa_insert;
+	}
+
+	*devlink_port = &dyn_port->devlink_port;
+
+	return 0;
+
+unroll_xa_insert:
+	xa_erase(&pf->dyn_ports, vsi->idx);
+unroll_vsi_alloc:
+	ice_vsi_free(vsi);
+unroll_dyn_port_alloc:
+	kfree(dyn_port);
+unroll_reserve_sf_num:
+	xa_erase(&pf->sf_nums, sfnum);
+
+	return err;
+}
+
+/**
+ * ice_devlink_port_new - devlink handler for the new port
+ * @devlink: pointer to devlink
+ * @new_attr: pointer to the port new attributes
+ * @extack: extack for reporting error messages
+ * @devlink_port: pointer to a new port
+ *
+ * Creates new devlink port, checks new port attributes and reject
+ * any unsupported parameters, allocates new subfunction for that port.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int
+ice_devlink_port_new(struct devlink *devlink,
+		     const struct devlink_port_new_attrs *new_attr,
+		     struct netlink_ext_ack *extack,
+		     struct devlink_port **devlink_port)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	int err;
+
+	err = ice_devlink_port_new_check_attr(pf, new_attr, extack);
+	if (err)
+		return err;
+
+	return ice_alloc_dynamic_port(pf, new_attr, extack, devlink_port);
+}
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
index 9223bcdb6444..08ebf56664a5 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
@@ -4,9 +4,43 @@
 #ifndef _DEVLINK_PORT_H_
 #define _DEVLINK_PORT_H_
 
+#include "../ice.h"
+
+/**
+ * struct ice_dynamic_port - Track dynamically added devlink port instance
+ * @hw_addr: the HW address for this port
+ * @active: true if the port has been activated
+ * @devlink_port: the associated devlink port structure
+ * @pf: pointer to the PF private structure
+ * @vsi: the VSI associated with this port
+ * @sfnum: the subfunction ID
+ *
+ * An instance of a dynamically added devlink port. Each port flavour
+ */
+struct ice_dynamic_port {
+	u8 hw_addr[ETH_ALEN];
+	u8 active: 1;
+	struct devlink_port devlink_port;
+	struct ice_pf *pf;
+	struct ice_vsi *vsi;
+	u32 sfnum;
+};
+
+void ice_dealloc_all_dynamic_ports(struct ice_pf *pf);
+
 int ice_devlink_create_pf_port(struct ice_pf *pf);
 void ice_devlink_destroy_pf_port(struct ice_pf *pf);
 int ice_devlink_create_vf_port(struct ice_vf *vf);
 void ice_devlink_destroy_vf_port(struct ice_vf *vf);
+int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port);
+void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port);
+
+#define ice_devlink_port_to_dyn(port) \
+	container_of(port, struct ice_dynamic_port, devlink_port)
 
+int
+ice_devlink_port_new(struct devlink *devlink,
+		     const struct devlink_port_new_attrs *new_attr,
+		     struct netlink_ext_ack *extack,
+		     struct devlink_port **devlink_port);
 #endif /* _DEVLINK_PORT_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 06e556884e3c..a73e3b5b62f5 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -650,6 +650,9 @@ struct ice_pf {
 	struct ice_eswitch eswitch;
 	struct ice_esw_br_port *br_port;
 
+	struct xarray dyn_ports;
+	struct xarray sf_nums;
+
 #define ICE_INVALID_AGG_NODE_ID		0
 #define ICE_PF_AGG_NODE_ID_START	1
 #define ICE_MAX_PF_AGG_NODES		32
@@ -917,6 +920,7 @@ int ice_vsi_open(struct ice_vsi *vsi);
 void ice_set_ethtool_ops(struct net_device *netdev);
 void ice_set_ethtool_repr_ops(struct net_device *netdev);
 void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
+void ice_set_ethtool_sf_ops(struct net_device *netdev);
 u16 ice_get_avail_txq_count(struct ice_pf *pf);
 u16 ice_get_avail_rxq_count(struct ice_pf *pf);
 int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 56bbc3ebf9dc..eabdaf624793 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -7,6 +7,7 @@
 #include "ice_lib.h"
 #include "ice_fltr.h"
 #include "ice_dcb_lib.h"
+#include "ice_type.h"
 #include "ice_vsi_vlan_ops.h"
 
 /**
@@ -432,7 +433,7 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
  * This deallocates the VSI's queue resources, removes it from the PF's
  * VSI array if necessary, and deallocates the VSI
  */
-static void ice_vsi_free(struct ice_vsi *vsi)
+void ice_vsi_free(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = NULL;
 	struct device *dev;
@@ -604,7 +605,7 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
  *
  * returns a pointer to a VSI on success, NULL on failure.
  */
-static struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
+struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index f9ee461c5c06..5de0cc50552c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -66,6 +66,8 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
 
 int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
 int ice_vsi_cfg(struct ice_vsi *vsi);
+struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf);
+void ice_vsi_free(struct ice_vsi *vsi);
 
 bool ice_is_reset_in_progress(unsigned long *state);
 int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2529fbd11663..d1d9b63822f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3985,6 +3985,9 @@ static void ice_deinit_pf(struct ice_pf *pf)
 
 	if (pf->ptp.clock)
 		ptp_clock_unregister(pf->ptp.clock);
+
+	xa_destroy(&pf->dyn_ports);
+	xa_destroy(&pf->sf_nums);
 }
 
 /**
@@ -4078,6 +4081,9 @@ static int ice_init_pf(struct ice_pf *pf)
 	hash_init(pf->vfs.table);
 	ice_mbx_init_snapshot(&pf->hw);
 
+	xa_init(&pf->dyn_ports);
+	xa_init(&pf->sf_nums);
+
 	return 0;
 }
 
@@ -5403,6 +5409,7 @@ static void ice_remove(struct pci_dev *pdev)
 		ice_remove_arfs(pf);
 
 	devl_lock(priv_to_devlink(pf));
+	ice_dealloc_all_dynamic_ports(pf);
 	ice_deinit_devlink(pf);
 
 	ice_unload(pf);
-- 
2.42.0

