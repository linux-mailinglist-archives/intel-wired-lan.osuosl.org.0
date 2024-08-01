Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655994485F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 11:31:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3037B40EB1;
	Thu,  1 Aug 2024 09:31:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8BWO8G05NTuS; Thu,  1 Aug 2024 09:31:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3639E4037C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722504687;
	bh=kxIZAApVH3VTffm+6+wz10Qdn58hT5fgbG4R9JleFf4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GRnd9yQEUXFMDnLORtneUTOwYBWb25O1fPOMnJivrtW0kxKN0Z8WM6ENzQ7lCXS2M
	 h1MTRVOAZOoBtQo5nNylX/1R58QWjbkiXkb7Tcydq5pwwwjVQMAQo0sOPIgssvHY/s
	 V7NOlh0lOdjPN6jNWsJDKmHpXCxC0+S75AfjMEICaUyfiejP8oVjioCdqDt4DJtI0t
	 lZZW2WCkjTFhoJ5yfPsAvUGb5YtOS4V0sPts+AKXTKvyjrDUXgdZ0XlqdNd7ENlaQB
	 nXwgs1yLfmfYT2VSsEeL+eoNgEV7mygSTYHdx5u9R02yNHUxWMJRS4I5iW83PwpdXP
	 7QLIY4rrKY04Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3639E4037C;
	Thu,  1 Aug 2024 09:31:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 102A91BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F16EA40E71
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JiYQjweA2Zdo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 09:31:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6EABE40282
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EABE40282
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EABE40282
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 09:31:22 +0000 (UTC)
X-CSE-ConnectionGUID: DvlC+BlGTV2xAAlGQEQAMQ==
X-CSE-MsgGUID: vm7n2UW5S7OcCDsbvU5MgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="23363389"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="23363389"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 02:31:22 -0700
X-CSE-ConnectionGUID: pV4XdsrKQlyWgFyrUBgRBg==
X-CSE-MsgGUID: WLqWMfBORp6fWpPB/k1agg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="59628137"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 01 Aug 2024 02:31:19 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Aug 2024 11:31:09 +0200
Message-ID: <20240801093115.8553-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240801093115.8553-1-michal.swiatkowski@linux.intel.com>
References: <20240801093115.8553-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722504682; x=1754040682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cG+WzJnldN6AspxjE5Sb+zHbBlyClLYI6+7C8fTvhlk=;
 b=n1pyAZGjo9D5LxJaLhJBBf5BATs2hov1X5Jute2LI7l7kQ7/3x43InYK
 qdMS18FyytcyOkXa2zMPJDbpv/ccvLZeQd0hs/iUoF/TYWkShtcM85Fkx
 rZXaUOFngl+c/1lBN5ge45MS20nXrJHeXE7wn3jqQoZ9SZDW5VAwR10uD
 9XvgpCrnc9U+KfUwh9pWnit3FAYoz5cnlEsyVSNae+yDiv38Vm78HPzz0
 lZDde0uEIGNNoHe7cx0xkcw7yic2NokuBozzNGwPG83XZfwXs07PDAIoQ
 Pq7YEc5NtulxWQUH1kZfxUMpS4un4G6w9BG5NDxI/EtFSobRJQUJCGWIP
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n1pyAZGj
Subject: [Intel-wired-lan] [iwl-next v2 1/7] ice: devlink PF MSI-X max and
 min parameter
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use generic devlink PF MSI-X parameter to allow user to change MSI-X
range.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 56 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice.h          |  8 +++
 drivers/net/ethernet/intel/ice/ice_irq.c      | 14 ++++-
 3 files changed, 76 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index 29a5f822cb8b..bdc22ea13e0f 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1518,6 +1518,32 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+static int
+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
+				 union devlink_param_value val,
+				 struct netlink_ext_ack *extack)
+{
+	if (val.vu16 > ICE_MAX_MSIX) {
+		NL_SET_ERR_MSG_MOD(extack, "PF max MSI-X is too high");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int
+ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
+				 union devlink_param_value val,
+				 struct netlink_ext_ack *extack)
+{
+	if (val.vu16 <= ICE_MIN_MSIX) {
+		NL_SET_ERR_MSG_MOD(extack, "PF min MSI-X is too low");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 enum ice_param_id {
 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
@@ -1535,6 +1561,15 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
 			      ice_devlink_enable_iw_validate),
 };
 
+static const struct devlink_param ice_dvl_msix_params[] = {
+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
+			      NULL, NULL, ice_devlink_msix_max_pf_validate),
+	DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
+			      BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
+			      NULL, NULL, ice_devlink_msix_min_pf_validate),
+};
+
 static const struct devlink_param ice_dvl_sched_params[] = {
 	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
 			     "tx_scheduling_layers",
@@ -1637,6 +1672,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
 int ice_devlink_register_params(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
+	union devlink_param_value value;
 	struct ice_hw *hw = &pf->hw;
 	int status;
 
@@ -1645,11 +1681,27 @@ int ice_devlink_register_params(struct ice_pf *pf)
 	if (status)
 		return status;
 
+	status = devl_params_register(devlink, ice_dvl_msix_params,
+				      ARRAY_SIZE(ice_dvl_msix_params));
+	if (status)
+		return status;
+
 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
 		status = devl_params_register(devlink, ice_dvl_sched_params,
 					      ARRAY_SIZE(ice_dvl_sched_params));
+	if (status)
+		return status;
 
-	return status;
+	value.vu16 = pf->msix.max;
+	devl_param_driverinit_value_set(devlink,
+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
+					value);
+	value.vu16 = pf->msix.min;
+	devl_param_driverinit_value_set(devlink,
+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
+					value);
+
+	return 0;
 }
 
 void ice_devlink_unregister_params(struct ice_pf *pf)
@@ -1659,6 +1711,8 @@ void ice_devlink_unregister_params(struct ice_pf *pf)
 
 	devl_params_unregister(devlink, ice_dvl_rdma_params,
 			       ARRAY_SIZE(ice_dvl_rdma_params));
+	devl_params_unregister(devlink, ice_dvl_msix_params,
+			       ARRAY_SIZE(ice_dvl_msix_params));
 
 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
 		devl_params_unregister(devlink, ice_dvl_sched_params,
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 4c563b0d57ac..f58a5bae578a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -95,6 +95,7 @@
 #define ICE_MIN_LAN_TXRX_MSIX	1
 #define ICE_MIN_LAN_OICR_MSIX	1
 #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
+#define ICE_MAX_MSIX		256
 #define ICE_FDIR_MSIX		2
 #define ICE_RDMA_NUM_AEQ_MSIX	4
 #define ICE_MIN_RDMA_MSIX	2
@@ -543,6 +544,12 @@ struct ice_agg_node {
 	u8 valid;
 };
 
+struct ice_pf_msix {
+	u16 cur;
+	u16 min;
+	u16 max;
+};
+
 struct ice_pf {
 	struct pci_dev *pdev;
 	struct ice_adapter *adapter;
@@ -613,6 +620,7 @@ struct ice_pf {
 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
+	struct ice_pf_msix msix;
 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
 	u16 num_lan_tx;		/* num LAN Tx queues setup */
 	u16 num_lan_rx;		/* num LAN Rx queues setup */
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index ad82ff7d1995..4e559fd6e49f 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -252,7 +252,19 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
 int ice_init_interrupt_scheme(struct ice_pf *pf)
 {
 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
-	int vectors, max_vectors;
+	union devlink_param_value value;
+	int vectors, max_vectors, err;
+
+	/* load default PF MSI-X range */
+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
+					      &value);
+	pf->msix.min = err ? ICE_MIN_MSIX : value.vu16;
+
+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
+					      &value);
+	pf->msix.max = err ? total_vectors / 2 : value.vu16;
 
 	vectors = ice_ena_msix_range(pf);
 
-- 
2.42.0

