Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D618A838D4F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 12:21:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1BC981EA0;
	Tue, 23 Jan 2024 11:21:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1BC981EA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706008861;
	bh=Hf8SrdBXTytIXrcdFupiIG1hXQeVWIEOQBXoaSBrTxE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JVk0fYSPmG9QLOlriaBXdvX8HvVW6osr1v5+Ajid7LKP2NwevWmexBrQGIF9qEcov
	 ziVh+h7q8ZuEvi3meVhzFTz6gzr5RwBrzf+twHN2FODJIMM4TPEf57oiHez2+abSzo
	 MpY2QU4z2AaE7VaPS1bOPqISBZ3OQwGbLx0SzLQSyfukNbav7eOaq3H6WFYG3xhHhe
	 f+2pBM+IF6O1mHKoQ0nmQgTF0GDEeZYLpr4O12ItP5Fo37q5PuB2czq8CM721EOlUx
	 NFEXkowaiSnkyRuqMJR8HQ/8YzoRs2zW65UKHSUHwLh/hEnRWGwD7Zg78JSsoW6JXc
	 5CaAu2XnFPWxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWclhPyc8W_R; Tue, 23 Jan 2024 11:21:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6D4F81E7C;
	Tue, 23 Jan 2024 11:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6D4F81E7C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 348551BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18E0881E7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18E0881E7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5R9ozcVmyylA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 11:20:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C896181E7A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C896181E7A
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="432649260"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="432649260"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 03:20:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="20300081"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 23 Jan 2024 03:20:48 -0800
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 25D0C369EB;
 Tue, 23 Jan 2024 11:20:47 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 12:18:49 +0100
Message-Id: <20240123111849.9367-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706008852; x=1737544852;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ju1IrMj8tl7GfNY24P5SXF5CwXUPvQE32RnOdIMtC7c=;
 b=dOKrKpYcTkiF8InLRPRYk6ikY48KgbkOjqzsPfxxkTcikLp1+yubRTLt
 X3uzO5l10/c1EwkWl+xorsoiAtrZXFuMCvJejmLs/UC5vLq3QEjifEDCv
 NBOdpCTxszlkqf9YuzBYe/EjhgLOPPDJNc31HSvoGByZ3mdxo0cC0gzwH
 Y5R/mVfBIHOz1N6y8BdGMqxnfgM3Y73lesz8leINDJHqHNci/j1paTBTt
 5Q6QaqKOltpzFSA8tUbwuRWO6e7YzWAVVbitVIYE1GbdKWk8yNEj/vjyG
 ppEpsCVs8+DHdTUNN4SvNTYc2zPojjubTgZFm0jX2520Z+sD7ktsxV/CQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dOKrKpYc
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Remove and readd netdev
 during devlink reload
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
Cc: netdev@vger.kernel.org, jiri@resnulli.us
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

Introduce ice_debugfs_fwlog_deinit() in order to release PF's
debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().

Suggested-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   3 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
 drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
 5 files changed, 139 insertions(+), 133 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e841f6c4f1c4..39734e5b9d56 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -897,6 +897,7 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
 }
 
 void ice_debugfs_fwlog_init(struct ice_pf *pf);
+void ice_debugfs_fwlog_deinit(struct ice_pf *pf);
 void ice_debugfs_init(void);
 void ice_debugfs_exit(void);
 void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module);
@@ -984,6 +985,8 @@ void ice_service_task_schedule(struct ice_pf *pf);
 int ice_load(struct ice_pf *pf);
 void ice_unload(struct ice_pf *pf);
 void ice_adv_lnk_speed_maps_init(void);
+int ice_init_dev(struct ice_pf *pf);
+void ice_deinit_dev(struct ice_pf *pf);
 
 /**
  * ice_set_rdma_cap - enable RDMA support
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index c2bfba6b9ead..8fdcdfb804b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -647,6 +647,16 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 	kfree(fw_modules);
 }
 
+/**
+ * ice_debugfs_fwlog_deinit - cleanup PF's debugfs
+ * @pf: pointer to the PF struct
+ */
+void ice_debugfs_fwlog_deinit(struct ice_pf *pf)
+{
+	debugfs_remove_recursive(pf->ice_debugfs_pf);
+	pf->ice_debugfs_pf = NULL;
+}
+
 /**
  * ice_debugfs_init - create root directory for debugfs entries
  */
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 97182bacafa3..bece01a2b2ea 100644
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
+	struct ice_vsi_cfg_params params = {};
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
+	if (err)
+		goto err_vsi_cfg;
+	rtnl_unlock();
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
+err_vsi_cfg:
+	rtnl_unlock();
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
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 92b5dac481cd..b2acfa05f118 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -188,6 +188,8 @@ void ice_fwlog_deinit(struct ice_hw *hw)
 	if (hw->bus.func)
 		return;
 
+	ice_debugfs_fwlog_deinit(hw->back);
+
 	/* make sure FW logging is disabled to not put the FW in a weird state
 	 * for the next driver load
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 77ba737a50df..5f9b616b90dc 100644
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
+
+	SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
 
-	err = ice_start_eth(ice_get_main_vsi(pf));
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
 	if (err)
-		goto err_init_eth;
-
-	err = ice_init_rdma(pf);
-	if (err)
-		goto err_init_rdma;
+		goto err_load;
+	devl_unlock(priv_to_devlink(pf));
 
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
+err_load:
+	devl_unlock(priv_to_devlink(pf));
 	ice_deinit(pf);
 err_init:
 	pci_disable_device(pdev);
@@ -5342,8 +5276,6 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
-	ice_debugfs_exit();
-
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
 		ice_free_vfs(pf);
@@ -5357,12 +5289,14 @@ static void ice_remove(struct pci_dev *pdev)
 
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
@@ -5847,6 +5781,7 @@ module_init(ice_module_init);
 static void __exit ice_module_exit(void)
 {
 	pci_unregister_driver(&ice_driver);
+	ice_debugfs_exit();
 	destroy_workqueue(ice_wq);
 	destroy_workqueue(ice_lag_wq);
 	pr_info("module unloaded\n");
-- 
2.40.1

