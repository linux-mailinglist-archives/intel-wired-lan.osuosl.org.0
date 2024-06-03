Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CA98D7F35
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 11:46:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C36540979;
	Mon,  3 Jun 2024 09:46:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7rCKviSUiz_a; Mon,  3 Jun 2024 09:46:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9B0D40B69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717407988;
	bh=fDtLErO11EdQSJDDE0vVFKfIn+ruKE69yOTdM6APqfU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YFW0+iohiRPDcF2lUKBm41Ga++Khpf8ATtPlkWDn3N9FgttEaRo421hy8pmqsiuwa
	 EUa1gKQpXer5cbfGMqKgco9ekCUHLZJaSw7xyDyF96DCsv3PgyYDb8QGvHEzBgO3YA
	 QJhs+Hi30ZdIecgqK8NcxESC92WvET8lPYKvaYWEVkgl0YU7ZRWxEfjrA9OpSAiC/p
	 1ZMMOI7+9IO8S/H5DxVPE7DeAFLDHUsXOusXHMPFf/ZQ/0hag2d2BOGesYM0QQkWgM
	 yzlERG7p8vZm1djiTwBpdHq89+9Ia6WrUxckD0S4TlTnihShvYS0/9Ra7+qYixlDVy
	 9RhmLrlm+bwNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9B0D40B69;
	Mon,  3 Jun 2024 09:46:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 985E71BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82B974051B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TFDbW8QiZ0Uj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 09:46:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EBA8A4050B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBA8A4050B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBA8A4050B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:24 +0000 (UTC)
X-CSE-ConnectionGUID: +QvgMUt6TbOcoaYmtYw7Pg==
X-CSE-MsgGUID: fmreBAvRSTiTf3JeaOmEnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="17732767"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="17732767"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 02:46:25 -0700
X-CSE-ConnectionGUID: MOauaIVUQjybLamgWXfYug==
X-CSE-MsgGUID: Zegr6C/rSk2DN7JHJespZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="37448293"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa007.jf.intel.com with ESMTP; 03 Jun 2024 02:46:21 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jun 2024 11:50:25 +0200
Message-ID: <20240603095025.1395347-16-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
References: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717407985; x=1748943985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FkLjJd0fn+AnOo6nbkFZRki3fh9spobQfmWQrWV070w=;
 b=egQTE3zwdC2BAzQea77gas7SX7dmk6aUlu3BwKfOCUWPnvvqA+nuYTyM
 sCxPa+Y1xJNIvuZ6lOqx3MJTEzp++QOIv3Hw/mgp6r4fYbuu/4eLXd6mP
 +TU+4NFiDD4IUQFKnbP+MXh3keOR3vWOc8wIXNtBcDcT5K2MbsD/+PrdB
 DODrzgEsBmiXU9Bn9aSj3sDcO/CjVniox5lxO+e71viUOGtZB1MK0bJz9
 A7VrW51CQAgrfUSFWUYmmHQk/ZeJfgYIZdlc7UZCc2iS6vVD9phb6ZcUz
 c13Bxgeimw6JVWDTdHgQODpNqDkuj+8PKQPxhtdn6op8C9OOMX32rxnQy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=egQTE3zw
Subject: [Intel-wired-lan] [iwl-next v4 15/15] ice: allow to activate and
 deactivate subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Use previously implemented SF aux driver. It is probe during SF
activation and remove after deactivation.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../ethernet/intel/ice/devlink/devlink_port.c | 173 ++++++++++++++++++
 .../ethernet/intel/ice/devlink/devlink_port.h |   7 +
 drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 107 +++++++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h   |   3 +
 4 files changed, 290 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 4cfd90581d92..4abdc40d345e 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -530,6 +530,42 @@ void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
 	devl_port_unregister(&sf_dev->priv->devlink_port);
 }
 
+/**
+ * ice_activate_dynamic_port - Activate a dynamic port
+ * @dyn_port: dynamic port instance to activate
+ * @extack: extack for reporting error messages
+ *
+ * Activate the dynamic port based on its flavour.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_activate_dynamic_port(struct ice_dynamic_port *dyn_port,
+			  struct netlink_ext_ack *extack)
+{
+	int err;
+
+	err = ice_sf_eth_activate(dyn_port, extack);
+	if (err)
+		return err;
+
+	dyn_port->active = true;
+
+	return 0;
+}
+
+/**
+ * ice_deactivate_dynamic_port - Deactivate a dynamic port
+ * @dyn_port: dynamic port instance to deactivate
+ *
+ * Undo activation of a dynamic port.
+ */
+static void ice_deactivate_dynamic_port(struct ice_dynamic_port *dyn_port)
+{
+	ice_sf_eth_deactivate(dyn_port);
+	dyn_port->active = false;
+}
+
 /**
  * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
  * @dyn_port: dynamic port instance to deallocate
@@ -542,6 +578,9 @@ static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
 	struct devlink_port *devlink_port = &dyn_port->devlink_port;
 	struct ice_pf *pf = dyn_port->pf;
 
+	if (dyn_port->active)
+		ice_deactivate_dynamic_port(dyn_port);
+
 	xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
 	ice_eswitch_detach_sf(pf, dyn_port);
 	ice_vsi_free(dyn_port->vsi);
@@ -629,8 +668,142 @@ ice_devlink_port_del(struct devlink *devlink, struct devlink_port *port,
 	return 0;
 }
 
+/**
+ * ice_devlink_port_fn_hw_addr_set - devlink handler for mac address set
+ * @port: pointer to devlink port
+ * @hw_addr: hw address to set
+ * @hw_addr_len: hw address length
+ * @extack: extack for reporting error messages
+ *
+ * Sets mac address for the port, verifies arguments and copies address
+ * to the subfunction structure.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_fn_hw_addr_set(struct devlink_port *port, const u8 *hw_addr,
+				int hw_addr_len,
+				struct netlink_ext_ack *extack)
+{
+	struct ice_dynamic_port *dyn_port;
+
+	dyn_port = ice_devlink_port_to_dyn(port);
+
+	if (dyn_port->attached) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Ethernet address can be change only in detached state");
+		return -EBUSY;
+	}
+
+	if (hw_addr_len != ETH_ALEN || !is_valid_ether_addr(hw_addr)) {
+		NL_SET_ERR_MSG_MOD(extack, "Invalid ethernet address");
+		return -EADDRNOTAVAIL;
+	}
+
+	ether_addr_copy(dyn_port->hw_addr, hw_addr);
+
+	return 0;
+}
+
+/**
+ * ice_devlink_port_fn_hw_addr_get - devlink handler for mac address get
+ * @port: pointer to devlink port
+ * @hw_addr: hw address to set
+ * @hw_addr_len: hw address length
+ * @extack: extack for reporting error messages
+ *
+ * Returns mac address for the port.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_fn_hw_addr_get(struct devlink_port *port, u8 *hw_addr,
+				int *hw_addr_len,
+				struct netlink_ext_ack *extack)
+{
+	struct ice_dynamic_port *dyn_port;
+
+	dyn_port = ice_devlink_port_to_dyn(port);
+
+	ether_addr_copy(hw_addr, dyn_port->hw_addr);
+	*hw_addr_len = ETH_ALEN;
+
+	return 0;
+}
+
+/**
+ * ice_devlink_port_fn_state_set - devlink handler for port state set
+ * @port: pointer to devlink port
+ * @state: state to set
+ * @extack: extack for reporting error messages
+ *
+ * Activates or deactivates the port.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_fn_state_set(struct devlink_port *port,
+			      enum devlink_port_fn_state state,
+			      struct netlink_ext_ack *extack)
+{
+	struct ice_dynamic_port *dyn_port;
+
+	dyn_port = ice_devlink_port_to_dyn(port);
+
+	switch (state) {
+	case DEVLINK_PORT_FN_STATE_ACTIVE:
+		if (!dyn_port->active)
+			return ice_activate_dynamic_port(dyn_port, extack);
+		break;
+	case DEVLINK_PORT_FN_STATE_INACTIVE:
+		if (dyn_port->active)
+			ice_deactivate_dynamic_port(dyn_port);
+		break;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_port_fn_state_get - devlink handler for port state get
+ * @port: pointer to devlink port
+ * @state: admin configured state of the port
+ * @opstate: current port operational state
+ * @extack: extack for reporting error messages
+ *
+ * Gets port state.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_fn_state_get(struct devlink_port *port,
+			      enum devlink_port_fn_state *state,
+			      enum devlink_port_fn_opstate *opstate,
+			      struct netlink_ext_ack *extack)
+{
+	struct ice_dynamic_port *dyn_port;
+
+	dyn_port = ice_devlink_port_to_dyn(port);
+
+	if (dyn_port->active)
+		*state = DEVLINK_PORT_FN_STATE_ACTIVE;
+	else
+		*state = DEVLINK_PORT_FN_STATE_INACTIVE;
+
+	if (dyn_port->attached)
+		*opstate = DEVLINK_PORT_FN_OPSTATE_ATTACHED;
+	else
+		*opstate = DEVLINK_PORT_FN_OPSTATE_DETACHED;
+
+	return 0;
+}
+
 static const struct devlink_port_ops ice_devlink_port_sf_ops = {
 	.port_del = ice_devlink_port_del,
+	.port_fn_hw_addr_get = ice_devlink_port_fn_hw_addr_get,
+	.port_fn_hw_addr_set = ice_devlink_port_fn_hw_addr_set,
+	.port_fn_state_get = ice_devlink_port_fn_state_get,
+	.port_fn_state_set = ice_devlink_port_fn_state_set,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
index 479d2b976745..d60efc340945 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
@@ -11,22 +11,29 @@
  * struct ice_dynamic_port - Track dynamically added devlink port instance
  * @hw_addr: the HW address for this port
  * @active: true if the port has been activated
+ * @attached: true it the prot is attached
  * @devlink_port: the associated devlink port structure
  * @pf: pointer to the PF private structure
  * @vsi: the VSI associated with this port
  * @repr_id: the representor ID
  * @sfnum: the subfunction ID
+ * @sf_dev: pointer to the subfunction device
  *
  * An instance of a dynamically added devlink port. Each port flavour
  */
 struct ice_dynamic_port {
 	u8 hw_addr[ETH_ALEN];
 	u8 active: 1;
+	u8 attached: 1;
 	struct devlink_port devlink_port;
 	struct ice_pf *pf;
 	struct ice_vsi *vsi;
 	unsigned long repr_id;
 	u32 sfnum;
+	/* Flavour-specific implementation data */
+	union {
+		struct ice_sf_dev *sf_dev;
+	};
 };
 
 void ice_dealloc_all_dynamic_ports(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 3a540a2638d1..73bb9c5d273d 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -147,6 +147,7 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
 	devl_unlock(devlink);
 
 	devlink_register(devlink);
+	dyn_port->attached = true;
 
 	return 0;
 
@@ -186,6 +187,8 @@ static void ice_sf_dev_remove(struct auxiliary_device *adev)
 	devl_unlock(devlink);
 	devlink_free(devlink);
 	ice_vsi_decfg(vsi);
+
+	dyn_port->attached = false;
 }
 
 static const struct auxiliary_device_id ice_sf_dev_id_table[] = {
@@ -202,6 +205,8 @@ static struct auxiliary_driver ice_sf_driver = {
 	.id_table = ice_sf_dev_id_table
 };
 
+static DEFINE_XARRAY_ALLOC1(ice_sf_aux_id);
+
 /**
  * ice_sf_driver_register - Register new auxiliary subfunction driver
  *
@@ -220,3 +225,105 @@ void ice_sf_driver_unregister(void)
 {
 	auxiliary_driver_unregister(&ice_sf_driver);
 }
+
+/**
+ * ice_sf_dev_release - Release device associated with auxiliary device
+ * @device: pointer to the device
+ *
+ * Since most of the code for subfunction deactivation is handled in
+ * the remove handler, here just free tracking resources.
+ */
+static void ice_sf_dev_release(struct device *device)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(device);
+	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
+
+	xa_erase(&ice_sf_aux_id, adev->id);
+	kfree(sf_dev);
+}
+
+/**
+ * ice_sf_eth_activate - Activate Ethernet subfunction port
+ * @dyn_port: the dynamic port instance for this subfunction
+ * @extack: extack for reporting error messages
+ *
+ * Activate the dynamic port as an Ethernet subfunction. Setup the netdev
+ * resources associated and initialize the auxiliary device.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int
+ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
+		    struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = dyn_port->pf;
+	struct ice_sf_dev *sf_dev;
+	struct pci_dev *pdev;
+	int err;
+	u32 id;
+
+	err = xa_alloc(&ice_sf_aux_id, &id, NULL, xa_limit_32b,
+		       GFP_KERNEL);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Could not allocate subfunction ID");
+		return err;
+	}
+
+	sf_dev = kzalloc(sizeof(*sf_dev), GFP_KERNEL);
+	if (!sf_dev) {
+		err = -ENOMEM;
+		NL_SET_ERR_MSG_MOD(extack, "Could not allocate sf_dev memory");
+		goto xa_erase;
+	}
+	pdev = pf->pdev;
+
+	sf_dev->dyn_port = dyn_port;
+	sf_dev->adev.id = id;
+	sf_dev->adev.name = "sf";
+	sf_dev->adev.dev.release = ice_sf_dev_release;
+	sf_dev->adev.dev.parent = &pdev->dev;
+
+	err = auxiliary_device_init(&sf_dev->adev);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to initialize auxiliary device");
+		goto sf_dev_free;
+	}
+
+	err = auxiliary_device_add(&sf_dev->adev);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to add SF aux device");
+		goto aux_dev_uninit;
+	}
+
+	dyn_port->sf_dev = sf_dev;
+
+	return 0;
+
+aux_dev_uninit:
+	auxiliary_device_uninit(&sf_dev->adev);
+sf_dev_free:
+	kfree(sf_dev);
+xa_erase:
+	xa_erase(&ice_sf_aux_id, id);
+
+	return err;
+}
+
+/**
+ * ice_sf_eth_deactivate - Deactivate Ethernet subfunction port
+ * @dyn_port: the dynamic port instance for this subfunction
+ *
+ * Deactivate the Ethernet subfunction, removing its auxiliary device and the
+ * associated resources.
+ */
+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port)
+{
+	struct ice_sf_dev *sf_dev = dyn_port->sf_dev;
+
+	if (sf_dev) {
+		auxiliary_device_delete(&sf_dev->adev);
+		auxiliary_device_uninit(&sf_dev->adev);
+	}
+
+	dyn_port->sf_dev = NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
index e972c50f96c9..c558cad0a183 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.h
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
@@ -27,4 +27,7 @@ ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
 int ice_sf_driver_register(void);
 void ice_sf_driver_unregister(void);
 
+int ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
+			struct netlink_ext_ack *extack);
+void ice_sf_eth_deactivate(struct ice_dynamic_port *dyn_port);
 #endif /* _ICE_SF_ETH_H_ */
-- 
2.42.0

