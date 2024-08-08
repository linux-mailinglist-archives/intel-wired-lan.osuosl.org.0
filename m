Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A014F94B795
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 09:20:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F7EC81496;
	Thu,  8 Aug 2024 07:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QqnQEkXCITvj; Thu,  8 Aug 2024 07:20:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 240878144E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723101630;
	bh=0eM/MSAybzdG43x8zln4KkRpSlbf4jE3U30r45cWqnQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vAAGIUxEoUbY/uvjKILdEuXjVEAcLeSPyJ6Ymu8FiMBcKImkge62cfT1MTWa6Q/Tn
	 sMs1ytLe7v6yuA0kKOcXqNTBCDPZaSNmBCtN9sY6c5mEsHrXLRcZ11qezN6jwZXlNT
	 3E9vtuQ3IvgGtQY4/ZGBXXr9OH47cFJKrVOf/RDiczIOWxcu1pPRaWDMq2yI7/apEo
	 1WrxcDt0+XZ+bKEqAYaqhZ80mI0R0Un5AfS9qqIE/OBrisKiormhLq8zsEXInhky4O
	 wcmdO47SmZQ/8xQOcsu0VBroSFxdg+w+fbcBgCu+xXCiXspwmWrge3H6ntRtTy6M1I
	 MUTweyejB3lwA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 240878144E;
	Thu,  8 Aug 2024 07:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A45671BF369
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 992B760772
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GDrkXDgCn017 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 07:20:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BFE82607F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFE82607F3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFE82607F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:22 +0000 (UTC)
X-CSE-ConnectionGUID: ajmEEgjqSAqsAGvs5K7fag==
X-CSE-MsgGUID: tCK4vscGQZeVBrL/8BTQpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21361338"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="21361338"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 00:20:22 -0700
X-CSE-ConnectionGUID: XLpM+XxkRR2LtDAwpT0TYg==
X-CSE-MsgGUID: GgCcubMuSLanyRL3Ext6RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="57073455"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa008.fm.intel.com with ESMTP; 08 Aug 2024 00:20:19 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 09:20:09 +0200
Message-ID: <20240808072016.10321-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723101623; x=1754637623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xptcCGYuG32q+AtCv8x+/YYVF/62bjFzUKScHMnQ76o=;
 b=UDknW9hvjxnq6Lc5//2jIKZQEDI9MhL++zPLvfD9rQXtg1vEPN3wihp3
 IqZAqAlXhZ8nij/RldHVGWAJIBzdHyyWVzzNxrvggfAspWAtIB3DnxaxR
 5p6tXGnGWvlPcRZGYXiG/7669CDLC4+hT8sCI9LrepcsfJnce9y4vdWl/
 zeP+dK29Uy20zWlKPAVFAlkOEr1nmuNTED4bTcHfLtG8YkkJLAB/sQ8Lf
 pg2K/B3VyObWv1Lx2W1HlCPpkER9YdguxrUt6lobt7FsNWE6UiUJautdz
 kXVmKVOZtEg1zd2K4DR2Qpr2KSVViKcIJH823pY3BfjXRu3S8VqnWSFgc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UDknW9hv
Subject: [Intel-wired-lan] [iwl-next v3 1/8] ice: devlink PF MSI-X max and
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
index d6f80da30dec..a67456057c77 100644
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
@@ -545,6 +546,12 @@ struct ice_agg_node {
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
@@ -615,6 +622,7 @@ struct ice_pf {
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

