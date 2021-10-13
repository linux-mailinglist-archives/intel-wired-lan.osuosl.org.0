Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C3842C64C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 18:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00E594021F;
	Wed, 13 Oct 2021 16:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PB2zWQbG9nrw; Wed, 13 Oct 2021 16:25:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C253401F1;
	Wed, 13 Oct 2021 16:25:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 529721BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 16:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 432C040780
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 16:25:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pFQZDvim5_ZO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 16:25:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C9CC40819
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 16:25:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227755628"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="227755628"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 09:23:07 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="547977088"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.209.137.17])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 09:23:03 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 13 Oct 2021 11:22:40 -0500
Message-Id: <20211013162241.689-3-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20211013162241.689-1-shiraz.saleem@intel.com>
References: <20211013162241.689-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 2/3] net/ice: Add support for
 enable_iwarp and enable_roce devlink param
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

Allow support for 'enable_iwarp' and 'enable_roce' devlink params to turn
on/off iWARP or RoCE protocol support for E800 devices.

For example, a user can turn on iWARP functionality with,

devlink dev param set pci/0000:07:00.0 name enable_iwarp value true cmode runtime

This add an iWARP auxiliary rdma device, ice.iwarp.<>, under this PF.

A user request to enable both iWARP and RoCE under the same PF is rejected
since this device does not support both protocols simultaneously on the
same port.

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   1 +
 drivers/net/ethernet/intel/ice/ice_devlink.c | 137 ++++++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_devlink.h |   7 +-
 drivers/net/ethernet/intel/ice/ice_idc.c     |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  11 ++-
 include/linux/net/intel/iidc.h               |   7 +-
 6 files changed, 158 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 6bfbf70..7873da6 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -505,6 +505,7 @@ struct ice_pf {
 	struct ice_hw_port_stats stats_prev;
 	struct ice_hw hw;
 	u8 stat_prev_loaded:1; /* has previous stats been loaded */
+	u8 rdma_mode;
 	u16 dcbx_cap;
 	u32 tx_timeout_count;
 	unsigned long tx_timeout_last_recovery;
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 55353bf..56065cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -430,6 +430,120 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	.flash_update = ice_devlink_flash_update,
 };
 
+static int
+ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
+			    struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	ctx->val.vbool = pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2;
+
+	return 0;
+}
+
+static int
+ice_devlink_enable_roce_set(struct devlink *devlink, u32 id,
+			    struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	bool roce_ena = ctx->val.vbool;
+	int ret;
+
+	if (!roce_ena) {
+		ice_unplug_aux_dev(pf);
+		pf->rdma_mode &= ~IIDC_RDMA_PROTOCOL_ROCEV2;
+		return 0;
+	}
+
+	pf->rdma_mode |= IIDC_RDMA_PROTOCOL_ROCEV2;
+	ret = ice_plug_aux_dev(pf);
+	if (ret)
+		pf->rdma_mode &= ~IIDC_RDMA_PROTOCOL_ROCEV2;
+
+	return ret;
+}
+
+static int
+ice_devlink_enable_roce_validate(struct devlink *devlink, u32 id,
+				 union devlink_param_value val,
+				 struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	if (!test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
+		return -EOPNOTSUPP;
+
+	if (pf->rdma_mode & IIDC_RDMA_PROTOCOL_IWARP) {
+		NL_SET_ERR_MSG_MOD(extack, "iWARP is currently enabled. This device cannot enable iWARP and RoCEv2 simultaneously");
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+static int
+ice_devlink_enable_iw_get(struct devlink *devlink, u32 id,
+			  struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	ctx->val.vbool = pf->rdma_mode & IIDC_RDMA_PROTOCOL_IWARP;
+
+	return 0;
+}
+
+static int
+ice_devlink_enable_iw_set(struct devlink *devlink, u32 id,
+			  struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	bool iw_ena = ctx->val.vbool;
+	int ret;
+
+	if (!iw_ena) {
+		ice_unplug_aux_dev(pf);
+		pf->rdma_mode &= ~IIDC_RDMA_PROTOCOL_IWARP;
+		return 0;
+	}
+
+	pf->rdma_mode |= IIDC_RDMA_PROTOCOL_IWARP;
+	ret = ice_plug_aux_dev(pf);
+	if (ret)
+		pf->rdma_mode &= ~IIDC_RDMA_PROTOCOL_IWARP;
+
+	return ret;
+}
+
+static int
+ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
+			       union devlink_param_value val,
+			       struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	if (!test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
+		return -EOPNOTSUPP;
+
+	if (pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2) {
+		NL_SET_ERR_MSG_MOD(extack, "RoCEv2 is currently enabled. This device cannot enable iWARP and RoCEv2 simultaneously");
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+static const struct devlink_param ice_devlink_params[] = {
+	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			      ice_devlink_enable_roce_get,
+			      ice_devlink_enable_roce_set,
+			      ice_devlink_enable_roce_validate),
+	DEVLINK_PARAM_GENERIC(ENABLE_IWARP, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			      ice_devlink_enable_iw_get,
+			      ice_devlink_enable_iw_set,
+			      ice_devlink_enable_iw_validate),
+
+};
+
 static void ice_devlink_free(void *devlink_ptr)
 {
 	devlink_free((struct devlink *)devlink_ptr);
@@ -468,11 +582,30 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
  *
  * Return: zero on success or an error code on failure.
  */
-void ice_devlink_register(struct ice_pf *pf)
+int ice_devlink_register(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
+	union devlink_param_value value;
+	int err;
+
+	err = devlink_params_register(devlink, ice_devlink_params,
+				      ARRAY_SIZE(ice_devlink_params));
+	if (err)
+		return err;
+
+	value.vbool = false;
+	devlink_param_driverinit_value_set(devlink,
+					   DEVLINK_PARAM_GENERIC_ID_ENABLE_IWARP,
+					   value);
+
+	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags) ? true : false;
+	devlink_param_driverinit_value_set(devlink,
+					   DEVLINK_PARAM_GENERIC_ID_ENABLE_ROCE,
+					   value);
 
 	devlink_register(devlink);
+
+	return 0;
 }
 
 /**
@@ -484,6 +617,8 @@ void ice_devlink_register(struct ice_pf *pf)
 void ice_devlink_unregister(struct ice_pf *pf)
 {
 	devlink_unregister(priv_to_devlink(pf));
+	devlink_params_unregister(priv_to_devlink(pf), ice_devlink_params,
+				  ARRAY_SIZE(ice_devlink_params));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
index b7f9551e..3cd788cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.h
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -4,14 +4,19 @@
 #ifndef _ICE_DEVLINK_H_
 #define _ICE_DEVLINK_H_
 
+enum ice_devlink_param_id {
+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+};
+
 struct ice_pf *ice_allocate_pf(struct device *dev);
 
-void ice_devlink_register(struct ice_pf *pf);
+int ice_devlink_register(struct ice_pf *pf);
 void ice_devlink_unregister(struct ice_pf *pf);
 int ice_devlink_create_pf_port(struct ice_pf *pf);
 void ice_devlink_destroy_pf_port(struct ice_pf *pf);
 int ice_devlink_create_vf_port(struct ice_vf *vf);
 void ice_devlink_destroy_vf_port(struct ice_vf *vf);
+void ice_devlink_params_publish(struct ice_pf *pf);
 
 void ice_devlink_init_regions(struct ice_pf *pf);
 void ice_devlink_destroy_regions(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index adcc9a2..fc35801 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -288,7 +288,7 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 	adev->id = pf->aux_idx;
 	adev->dev.release = ice_adev_release;
 	adev->dev.parent = &pf->pdev->dev;
-	adev->name = IIDC_RDMA_ROCE_NAME;
+	adev->name = pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2 ? "roce" : "iwarp";
 
 	ret = auxiliary_device_init(adev);
 	if (ret) {
@@ -335,6 +335,6 @@ int ice_init_rdma(struct ice_pf *pf)
 		dev_err(dev, "failed to reserve vectors for RDMA\n");
 		return ret;
 	}
-
+	pf->rdma_mode |= IIDC_RDMA_PROTOCOL_ROCEV2;
 	return ice_plug_aux_dev(pf);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ceb0912..1f53c688 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4488,6 +4488,10 @@ static int ice_register_netdev(struct ice_pf *pf)
 	if (err)
 		goto err_netdev_reg;
 
+	err = ice_devlink_register(pf);
+	if (err)
+		goto err_netdev_reg;
+
 	/* ready to go, so clear down state bit */
 	clear_bit(ICE_DOWN, pf->state);
 	if (ice_is_aux_ena(pf)) {
@@ -4495,7 +4499,7 @@ static int ice_register_netdev(struct ice_pf *pf)
 		if (pf->aux_idx < 0) {
 			dev_err(dev, "Failed to allocate device ID for AUX driver\n");
 			err = -ENOMEM;
-			goto err_netdev_reg;
+			goto err_devlink_reg;
 		}
 
 		err = ice_init_rdma(pf);
@@ -4508,12 +4512,13 @@ static int ice_register_netdev(struct ice_pf *pf)
 		dev_warn(dev, "RDMA is not supported on this device\n");
 	}
 
-	ice_devlink_register(pf);
 	return 0;
 
 err_init_aux_unroll:
 	pf->adev = NULL;
 	ida_free(&ice_aux_ida, pf->aux_idx);
+err_devlink_reg:
+	ice_devlink_unregister(pf);
 err_netdev_reg:
 err_send_version_unroll:
 	ice_vsi_release_all(pf);
@@ -4608,7 +4613,6 @@ static void ice_remove(struct pci_dev *pdev)
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 	int i;
 
-	ice_devlink_unregister(pf);
 	for (i = 0; i < ICE_MAX_RESET_WAIT; i++) {
 		if (!ice_is_reset_in_progress(pf->state))
 			break;
@@ -4625,6 +4629,7 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_aq_cancel_waiting_tasks(pf);
 	ice_unplug_aux_dev(pf);
 	ida_free(&ice_aux_ida, pf->aux_idx);
+	ice_devlink_unregister(pf);
 	set_bit(ICE_DOWN, pf->state);
 
 	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
index e32f671..1289593 100644
--- a/include/linux/net/intel/iidc.h
+++ b/include/linux/net/intel/iidc.h
@@ -26,6 +26,11 @@ enum iidc_reset_type {
 	IIDC_GLOBR,
 };
 
+enum iidc_rdma_protocol {
+	IIDC_RDMA_PROTOCOL_IWARP = BIT(0),
+	IIDC_RDMA_PROTOCOL_ROCEV2 = BIT(1),
+};
+
 #define IIDC_MAX_USER_PRIORITY		8
 
 /* Struct to hold per RDMA Qset info */
@@ -70,8 +75,6 @@ struct iidc_event {
 int ice_rdma_update_vsi_filter(struct ice_pf *pf, u16 vsi_id, bool enable);
 void ice_get_qos_params(struct ice_pf *pf, struct iidc_qos_params *qos);
 
-#define IIDC_RDMA_ROCE_NAME	"roce"
-
 /* Structure representing auxiliary driver tailored information about the core
  * PCI dev, each auxiliary driver using the IIDC interface will have an
  * instance of this struct dedicated to it.
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
