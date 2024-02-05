Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB92849B82
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 14:13:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46E1F60FF3;
	Mon,  5 Feb 2024 13:13:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46E1F60FF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707138794;
	bh=aQ+/vcdXiq5wy+0eXDb1FYoJhIY2TDPOzJ49alK7Z6g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LQ/zGNwnSkBLqyHBop93dzx8c/UDwJfVYEo/gnEviDA42joHCJaDeiPEGfcrjlUdm
	 tD2/hew20nRmGaW2E1qVerTBeega24nOYHS2vgyjoInyazr8Ipt6Ro0eK+toAShkM1
	 MqRfQJJN7Zm4d/EDXNDAA5TMuw/2gnuEJ/ZnafVV2DGbKXWfk8tuM/PYalu7duvHY/
	 SkBGqTWCz5ywgWzth9eZrjCLb2LpzFTvXiU5N9W+ptRvMHrxF5ZhvPsTdNC4E34z4u
	 0DH0g25V3Cn7J4xklbHIFeuTamxE/9SUO4nqYoCVV+2lgLxqyEvUZap/wZC8JVF1PL
	 rEb2SviLSX4aA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gPRAOs1m9XDQ; Mon,  5 Feb 2024 13:13:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B506360FC6;
	Mon,  5 Feb 2024 13:13:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B506360FC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 586C61BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 13:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D738605B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 13:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D738605B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgFRyfy622b5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Feb 2024 13:13:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2240D606E6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 13:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2240D606E6
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="407545"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="407545"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:05:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="933151692"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="933151692"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 05 Feb 2024 05:05:53 -0800
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8F5F327BB4;
 Mon,  5 Feb 2024 13:05:52 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Feb 2024 14:03:56 +0100
Message-Id: <20240205130357.106665-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240205130357.106665-1-wojciech.drewek@intel.com>
References: <20240205130357.106665-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707138783; x=1738674783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fZJPZe5qe/7Wio8r76osPMYdSXcrSQOPifU2To16zD4=;
 b=RWW3kRXdds2FGAw2wfEyDuk4T1/P2IZP3wKKVyd2qUtJphJ4reMLGVN3
 eF0qu/H+M9whz80s2g2pVhvT1FZUVJAYektHtEzX5diFCja0Yule1p/zF
 9ERtovJkEJizBFNrK+liqcSS+fO9wUX63fX95J3jEA8g6gF8p3MowaBzx
 nVevFbbh5EX6THd9SoWvyO4NvlpbD94EGuhqR3E5G2QeWuiedspiVkRry
 p0WVJgijXqgsl3kk3DFQy+bGuq/FgRm/kWiFFLNzusxQsz2D/7etPjTQl
 dgOZ0gRVD8Ka08pUrJwywfEKPRj6et7HeDatufJJDulelQ13lAgeLiXcv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RWW3kRXd
Subject: [Intel-wired-lan] [PATCH iwl-next v5 1/2] ice: Remove and readd
 netdev during devlink reload
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
Cc: vadim.fedorenko@linux.dev, bcreeley@amd.com, netdev@vger.kernel.org,
 paul.m.stillwell.jr@intel.com, przemyslaw.kitszel@intel.com, jiri@resnulli.us
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Recent changes to the devlink reload (commit 9b2348e2d6c9
("devlink: warn about existing entities during reload-reinit"))
force the drivers to destroy devlink ports during reinit.
Adjust ice driver to this requirement, unregister netdvice, destroy
devlink port. ice_init_eth() was removed and all the common code
between probe and reload was moved to ice_load().

During devlink reload we can't take devl_lock (it's already taken)
and in ice_probe() we have to lock it. Use devl_* variant of the API
which does not acquire and release devl_lock. Guard ice_load()
with devl_lock only in case of probe.

Suggested-by: Jiri Pirko <jiri@nvidia.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Brett Creeley <brett.creeley@amd.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: empty init removed in ice_devlink_reinit_up
v3: refactor locking pattern as Brett suggested
v4: fix wrong function name in commit message
v5: move debugfs changes to separate commit
---
 drivers/net/ethernet/intel/ice/ice.h         |   2 +
 drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
 drivers/net/ethernet/intel/ice/ice_main.c    | 186 ++++++-------------
 3 files changed, 125 insertions(+), 131 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a4ba60e17d0b..118e84835720 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -983,6 +983,8 @@ void ice_service_task_schedule(struct ice_pf *pf);
 int ice_load(struct ice_pf *pf);
 void ice_unload(struct ice_pf *pf);
 void ice_adv_lnk_speed_maps_init(void);
+int ice_init_dev(struct ice_pf *pf);
+void ice_deinit_dev(struct ice_pf *pf);
 
 /**
  * ice_set_rdma_cap - enable RDMA support
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 97182bacafa3..cc717175178b 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -444,6 +444,20 @@ ice_devlink_reload_empr_start(struct ice_pf *pf,
 	return 0;
 }
 
+/**
+ * ice_devlink_reinit_down - unload given PF
+ * @pf: pointer to the PF struct
+ */
+static void ice_devlink_reinit_down(struct ice_pf *pf)
+{
+	/* No need to take devl_lock, it's already taken by devlink API */
+	ice_unload(pf);
+	rtnl_lock();
+	ice_vsi_decfg(ice_get_main_vsi(pf));
+	rtnl_unlock();
+	ice_deinit_dev(pf);
+}
+
 /**
  * ice_devlink_reload_down - prepare for reload
  * @devlink: pointer to the devlink instance to reload
@@ -477,7 +491,7 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 					   "Remove all VFs before doing reinit\n");
 			return -EOPNOTSUPP;
 		}
-		ice_unload(pf);
+		ice_devlink_reinit_down(pf);
 		return 0;
 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
 		return ice_devlink_reload_empr_start(pf, extack);
@@ -1269,6 +1283,45 @@ static int ice_devlink_set_parent(struct devlink_rate *devlink_rate,
 	return status;
 }
 
+/**
+ * ice_devlink_reinit_up - do reinit of the given PF
+ * @pf: pointer to the PF struct
+ */
+static int ice_devlink_reinit_up(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	struct ice_vsi_cfg_params params;
+	int err;
+
+	err = ice_init_dev(pf);
+	if (err)
+		return err;
+
+	params = ice_vsi_to_params(vsi);
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	rtnl_lock();
+	err = ice_vsi_cfg(vsi, &params);
+	rtnl_unlock();
+	if (err)
+		goto err_vsi_cfg;
+
+	/* No need to take devl_lock, it's already taken by devlink API */
+	err = ice_load(pf);
+	if (err)
+		goto err_load;
+
+	return 0;
+
+err_load:
+	rtnl_lock();
+	ice_vsi_decfg(vsi);
+	rtnl_unlock();
+err_vsi_cfg:
+	ice_deinit_dev(pf);
+	return err;
+}
+
 /**
  * ice_devlink_reload_up - do reload up after reinit
  * @devlink: pointer to the devlink instance reloading
@@ -1289,7 +1342,7 @@ ice_devlink_reload_up(struct devlink *devlink,
 	switch (action) {
 	case DEVLINK_RELOAD_ACTION_DRIVER_REINIT:
 		*actions_performed = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT);
-		return ice_load(pf);
+		return ice_devlink_reinit_up(pf);
 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
 		*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
 		return ice_devlink_reload_empr_finish(pf, extack);
@@ -1695,6 +1748,7 @@ static const struct devlink_port_ops ice_devlink_port_ops = {
  * @pf: the PF to create a devlink port for
  *
  * Create and register a devlink_port for this PF.
+ * This function has to be called under devl_lock.
  *
  * Return: zero on success or an error code on failure.
  */
@@ -1707,6 +1761,8 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
 	struct device *dev;
 	int err;
 
+	devlink = priv_to_devlink(pf);
+
 	dev = ice_pf_to_dev(pf);
 
 	devlink_port = &pf->devlink_port;
@@ -1727,10 +1783,9 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
 	ice_devlink_set_switch_id(pf, &attrs.switch_id);
 
 	devlink_port_attrs_set(devlink_port, &attrs);
-	devlink = priv_to_devlink(pf);
 
-	err = devlink_port_register_with_ops(devlink, devlink_port, vsi->idx,
-					     &ice_devlink_port_ops);
+	err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
+					  &ice_devlink_port_ops);
 	if (err) {
 		dev_err(dev, "Failed to create devlink port for PF %d, error %d\n",
 			pf->hw.pf_id, err);
@@ -1745,10 +1800,11 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
  * @pf: the PF to cleanup
  *
  * Unregisters the devlink_port structure associated with this PF.
+ * This function has to be called under devl_lock.
  */
 void ice_devlink_destroy_pf_port(struct ice_pf *pf)
 {
-	devlink_port_unregister(&pf->devlink_port);
+	devl_port_unregister(&pf->devlink_port);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1fa3f40743f5..85a996ad2c1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4574,90 +4574,6 @@ static void ice_decfg_netdev(struct ice_vsi *vsi)
 	vsi->netdev = NULL;
 }
 
-static int ice_start_eth(struct ice_vsi *vsi)
-{
-	int err;
-
-	err = ice_init_mac_fltr(vsi->back);
-	if (err)
-		return err;
-
-	err = ice_vsi_open(vsi);
-	if (err)
-		ice_fltr_remove_all(vsi);
-
-	return err;
-}
-
-static void ice_stop_eth(struct ice_vsi *vsi)
-{
-	ice_fltr_remove_all(vsi);
-	ice_vsi_close(vsi);
-}
-
-static int ice_init_eth(struct ice_pf *pf)
-{
-	struct ice_vsi *vsi = ice_get_main_vsi(pf);
-	int err;
-
-	if (!vsi)
-		return -EINVAL;
-
-	/* init channel list */
-	INIT_LIST_HEAD(&vsi->ch_list);
-
-	err = ice_cfg_netdev(vsi);
-	if (err)
-		return err;
-	/* Setup DCB netlink interface */
-	ice_dcbnl_setup(vsi);
-
-	err = ice_init_mac_fltr(pf);
-	if (err)
-		goto err_init_mac_fltr;
-
-	err = ice_devlink_create_pf_port(pf);
-	if (err)
-		goto err_devlink_create_pf_port;
-
-	SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
-
-	err = ice_register_netdev(vsi);
-	if (err)
-		goto err_register_netdev;
-
-	err = ice_tc_indir_block_register(vsi);
-	if (err)
-		goto err_tc_indir_block_register;
-
-	ice_napi_add(vsi);
-
-	return 0;
-
-err_tc_indir_block_register:
-	ice_unregister_netdev(vsi);
-err_register_netdev:
-	ice_devlink_destroy_pf_port(pf);
-err_devlink_create_pf_port:
-err_init_mac_fltr:
-	ice_decfg_netdev(vsi);
-	return err;
-}
-
-static void ice_deinit_eth(struct ice_pf *pf)
-{
-	struct ice_vsi *vsi = ice_get_main_vsi(pf);
-
-	if (!vsi)
-		return;
-
-	ice_vsi_close(vsi);
-	ice_unregister_netdev(vsi);
-	ice_devlink_destroy_pf_port(pf);
-	ice_tc_indir_block_unregister(vsi);
-	ice_decfg_netdev(vsi);
-}
-
 /**
  * ice_wait_for_fw - wait for full FW readiness
  * @hw: pointer to the hardware structure
@@ -4683,7 +4599,7 @@ static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
 	return -ETIMEDOUT;
 }
 
-static int ice_init_dev(struct ice_pf *pf)
+int ice_init_dev(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
@@ -4776,7 +4692,7 @@ static int ice_init_dev(struct ice_pf *pf)
 	return err;
 }
 
-static void ice_deinit_dev(struct ice_pf *pf)
+void ice_deinit_dev(struct ice_pf *pf)
 {
 	ice_free_irq_msix_misc(pf);
 	ice_deinit_pf(pf);
@@ -5081,31 +4997,47 @@ static void ice_deinit(struct ice_pf *pf)
 /**
  * ice_load - load pf by init hw and starting VSI
  * @pf: pointer to the pf instance
+ *
+ * This function has to be called under devl_lock.
  */
 int ice_load(struct ice_pf *pf)
 {
-	struct ice_vsi_cfg_params params = {};
 	struct ice_vsi *vsi;
 	int err;
 
-	err = ice_init_dev(pf);
+	devl_assert_locked(priv_to_devlink(pf));
+
+	vsi = ice_get_main_vsi(pf);
+
+	/* init channel list */
+	INIT_LIST_HEAD(&vsi->ch_list);
+
+	err = ice_cfg_netdev(vsi);
 	if (err)
 		return err;
 
-	vsi = ice_get_main_vsi(pf);
+	/* Setup DCB netlink interface */
+	ice_dcbnl_setup(vsi);
 
-	params = ice_vsi_to_params(vsi);
-	params.flags = ICE_VSI_FLAG_INIT;
+	err = ice_init_mac_fltr(pf);
+	if (err)
+		goto err_init_mac_fltr;
 
-	rtnl_lock();
-	err = ice_vsi_cfg(vsi, &params);
+	err = ice_devlink_create_pf_port(pf);
 	if (err)
-		goto err_vsi_cfg;
+		goto err_devlink_create_pf_port;
 
-	err = ice_start_eth(ice_get_main_vsi(pf));
+	SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
+
+	err = ice_register_netdev(vsi);
+	if (err)
+		goto err_register_netdev;
+
+	err = ice_tc_indir_block_register(vsi);
 	if (err)
-		goto err_start_eth;
-	rtnl_unlock();
+		goto err_tc_indir_block_register;
+
+	ice_napi_add(vsi);
 
 	err = ice_init_rdma(pf);
 	if (err)
@@ -5119,29 +5051,35 @@ int ice_load(struct ice_pf *pf)
 	return 0;
 
 err_init_rdma:
-	ice_vsi_close(ice_get_main_vsi(pf));
-	rtnl_lock();
-err_start_eth:
-	ice_vsi_decfg(ice_get_main_vsi(pf));
-err_vsi_cfg:
-	rtnl_unlock();
-	ice_deinit_dev(pf);
+	ice_tc_indir_block_unregister(vsi);
+err_tc_indir_block_register:
+	ice_unregister_netdev(vsi);
+err_register_netdev:
+	ice_devlink_destroy_pf_port(pf);
+err_devlink_create_pf_port:
+err_init_mac_fltr:
+	ice_decfg_netdev(vsi);
 	return err;
 }
 
 /**
  * ice_unload - unload pf by stopping VSI and deinit hw
  * @pf: pointer to the pf instance
+ *
+ * This function has to be called under devl_lock.
  */
 void ice_unload(struct ice_pf *pf)
 {
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+
+	devl_assert_locked(priv_to_devlink(pf));
+
 	ice_deinit_features(pf);
 	ice_deinit_rdma(pf);
-	rtnl_lock();
-	ice_stop_eth(ice_get_main_vsi(pf));
-	ice_vsi_decfg(ice_get_main_vsi(pf));
-	rtnl_unlock();
-	ice_deinit_dev(pf);
+	ice_tc_indir_block_unregister(vsi);
+	ice_unregister_netdev(vsi);
+	ice_devlink_destroy_pf_port(pf);
+	ice_decfg_netdev(vsi);
 }
 
 /**
@@ -5239,27 +5177,23 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	if (err)
 		goto err_init;
 
-	err = ice_init_eth(pf);
+	devl_lock(priv_to_devlink(pf));
+	err = ice_load(pf);
+	devl_unlock(priv_to_devlink(pf));
 	if (err)
-		goto err_init_eth;
-
-	err = ice_init_rdma(pf);
-	if (err)
-		goto err_init_rdma;
+		goto err_load;
 
 	err = ice_init_devlink(pf);
 	if (err)
 		goto err_init_devlink;
 
-	ice_init_features(pf);
-
 	return 0;
 
 err_init_devlink:
-	ice_deinit_rdma(pf);
-err_init_rdma:
-	ice_deinit_eth(pf);
-err_init_eth:
+	devl_lock(priv_to_devlink(pf));
+	ice_unload(pf);
+	devl_unlock(priv_to_devlink(pf));
+err_load:
 	ice_deinit(pf);
 err_init:
 	pci_disable_device(pdev);
@@ -5357,12 +5291,14 @@ static void ice_remove(struct pci_dev *pdev)
 
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
-	ice_deinit_features(pf);
+
 	ice_deinit_devlink(pf);
-	ice_deinit_rdma(pf);
-	ice_deinit_eth(pf);
-	ice_deinit(pf);
 
+	devl_lock(priv_to_devlink(pf));
+	ice_unload(pf);
+	devl_unlock(priv_to_devlink(pf));
+
+	ice_deinit(pf);
 	ice_vsi_release_all(pf);
 
 	ice_setup_mc_magic_wake(pf);
-- 
2.40.1

