Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5D09E13A1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 07:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF3F240732;
	Tue,  3 Dec 2024 06:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bKbQnpIL5LfW; Tue,  3 Dec 2024 06:58:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9212940119
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733209113;
	bh=DluE78lr3Rg4yDvqG77mRuOLHBqIV7nrbJV9apZyNIw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ThoUaZ2YUaXtWhxuWxCtGZhE8dY14lrevvLT4J1ZOiMmr172ODn81k6l3wHWvWg4+
	 poV6umGjIW6pJ46MKBZr5V9PswYVub23Vy/Obw0XwaS3ySBcvKQTzc4WmnEqEXiOCK
	 o1wdL28XNCSymorpWtTqP2+kSZGEnh262SQUOTecmIVO1Zh3G/Ybov3C2QXZuCcoNG
	 5FaQjkF32ZUu5eIU2TA/XoBhKiwa/Bh2dfni3TdebxbXtTHbLWJMpicfcHIOYxlkir
	 GAdgOsyZV2wSVA5nGReAhixPEULvZU/g6Z+W2xKPqBxfKssCgm0DWRNxoD7pm1lloV
	 9VyyLu6sqVzbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9212940119;
	Tue,  3 Dec 2024 06:58:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F51C60
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F738405C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hG28kUQBYf8H for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 06:58:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0ABA2403AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ABA2403AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0ABA2403AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 06:58:29 +0000 (UTC)
X-CSE-ConnectionGUID: T+RiK6SIRsGjdMAT5FBLbQ==
X-CSE-MsgGUID: qXN5NeuYTjmviYJYvN5Clw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33330484"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33330484"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 22:58:30 -0800
X-CSE-ConnectionGUID: yf08w6lVSw27FcyUXz156Q==
X-CSE-MsgGUID: xjomLBFWQ/OTo7EzQH5CvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="93673695"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa010.fm.intel.com with ESMTP; 02 Dec 2024 22:58:26 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Dec 2024 07:58:10 +0100
Message-ID: <20241203065817.13475-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
References: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733209110; x=1764745110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lzQwXakw1Aj8Twed4g97IiZZmRFEZcBT3/HECDKscL8=;
 b=b6L9+b7LLAfiUGyy7qVl09Y6qxVneTiZzewdRcaK67dXg6V30nWt5fDR
 RuN3vrd3Yx93UVUDUf3APKAqGZit3kJNUUxsCTCVzMxG22LNnV7S5iNXE
 8VOhZJlz5bdTbaPTzVB4u/byVaLx3ZKD/rsvb15ikDZmzrstHpGwO1CTL
 hWuAFzV80VKo+qAyQBA2L+4cgIHUMxeNbZnij3946MqJokpehuQceP+Un
 JavIhUdYLDgAUWSULyV8Zj/pemHS2VwHJHkf17i5G37oypysZQds3b+uG
 ZpHZ2za1XVAlsKQaZYEzlI/9+BJYe9GevfU1RhCYdniILAU28WvUhFptw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b6L9+b7L
Subject: [Intel-wired-lan] [iwl-next v9 2/9] ice: devlink PF MSI-X max and
 min parameter
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: himasekharx.reddy.pucha@intel.com, pmenzel@molgen.mpg.de,
 wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 rafal.romanowski@intel.com, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, horms@kernel.org, David.Laight@ACULAB.COM,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use generic devlink PF MSI-X parameter to allow user to change MSI-X
range.

Add notes about this parameters into ice devlink documentation.

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 Documentation/networking/devlink/ice.rst      | 11 +++
 drivers/net/ethernet/intel/ice/ice.h          |  7 ++
 .../net/ethernet/intel/ice/devlink/devlink.c  | 88 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_irq.c      |  7 ++
 4 files changed, 113 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index e3972d03cea0..792e9f8c846a 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -69,6 +69,17 @@ Parameters
 
        To verify that value has been set:
        $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_layers
+   * - ``msix_vec_per_pf_max``
+     - driverinit
+     - Set the max MSI-X that can be used by the PF, rest can be utilized for
+       SRIOV. The range is from min value set in msix_vec_per_pf_min to
+       2k/number of ports.
+   * - ``msix_vec_per_pf_min``
+     - driverinit
+     - Set the min MSI-X that will be used by the PF. This value inform how many
+       MSI-X will be allocated statically. The range is from 2 to value set
+       in msix_vec_per_pf_max.
+
 .. list-table:: Driver specific parameters implemented
     :widths: 5 5 90
 
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7997745686b3..5baa36a5a500 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -543,6 +543,12 @@ struct ice_agg_node {
 	u8 valid;
 };
 
+struct ice_pf_msix {
+	u32 cur;
+	u32 min;
+	u32 max;
+};
+
 struct ice_pf {
 	struct pci_dev *pdev;
 	struct ice_adapter *adapter;
@@ -613,6 +619,7 @@ struct ice_pf {
 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
+	struct ice_pf_msix msix;
 	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
 	u16 num_lan_tx;		/* num LAN Tx queues setup */
 	u16 num_lan_rx;		/* num LAN Rx queues setup */
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index d116e2b10bce..c53baecf8a90 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1202,6 +1202,25 @@ static int ice_devlink_set_parent(struct devlink_rate *devlink_rate,
 	return status;
 }
 
+static void ice_set_min_max_msix(struct ice_pf *pf)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	union devlink_param_value val;
+	int err;
+
+	err = devl_param_driverinit_value_get(devlink,
+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
+					      &val);
+	if (!err)
+		pf->msix.min = val.vu32;
+
+	err = devl_param_driverinit_value_get(devlink,
+					      DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
+					      &val);
+	if (!err)
+		pf->msix.max = val.vu32;
+}
+
 /**
  * ice_devlink_reinit_up - do reinit of the given PF
  * @pf: pointer to the PF struct
@@ -1217,6 +1236,9 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 		return err;
 	}
 
+	/* load MSI-X values */
+	ice_set_min_max_msix(pf);
+
 	err = ice_init_dev(pf);
 	if (err)
 		goto unroll_hw_init;
@@ -1530,6 +1552,37 @@ static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+static int
+ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
+				 union devlink_param_value val,
+				 struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	if (val.vu32 > pf->hw.func_caps.common_cap.num_msix_vectors ||
+	    val.vu32 < pf->msix.min) {
+		NL_SET_ERR_MSG_MOD(extack, "Value is invalid");
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
+	struct ice_pf *pf = devlink_priv(devlink);
+
+	if (val.vu32 < ICE_MIN_MSIX || val.vu32 > pf->msix.max) {
+		NL_SET_ERR_MSG_MOD(extack, "Value is invalid");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 enum ice_param_id {
 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
@@ -1547,6 +1600,15 @@ static const struct devlink_param ice_dvl_rdma_params[] = {
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
@@ -1648,6 +1710,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
 int ice_devlink_register_params(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
+	union devlink_param_value value;
 	struct ice_hw *hw = &pf->hw;
 	int status;
 
@@ -1656,10 +1719,33 @@ int ice_devlink_register_params(struct ice_pf *pf)
 	if (status)
 		return status;
 
+	status = devl_params_register(devlink, ice_dvl_msix_params,
+				      ARRAY_SIZE(ice_dvl_msix_params));
+	if (status)
+		goto unregister_rdma_params;
+
 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
 		status = devl_params_register(devlink, ice_dvl_sched_params,
 					      ARRAY_SIZE(ice_dvl_sched_params));
+	if (status)
+		goto unregister_msix_params;
+
+	value.vu32 = pf->msix.max;
+	devl_param_driverinit_value_set(devlink,
+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MAX,
+					value);
+	value.vu32 = pf->msix.min;
+	devl_param_driverinit_value_set(devlink,
+					DEVLINK_PARAM_GENERIC_ID_MSIX_VEC_PER_PF_MIN,
+					value);
+	return 0;
 
+unregister_msix_params:
+	devl_params_unregister(devlink, ice_dvl_msix_params,
+			       ARRAY_SIZE(ice_dvl_msix_params));
+unregister_rdma_params:
+	devl_params_unregister(devlink, ice_dvl_rdma_params,
+			       ARRAY_SIZE(ice_dvl_rdma_params));
 	return status;
 }
 
@@ -1670,6 +1756,8 @@ void ice_devlink_unregister_params(struct ice_pf *pf)
 
 	devl_params_unregister(devlink, ice_dvl_rdma_params,
 			       ARRAY_SIZE(ice_dvl_rdma_params));
+	devl_params_unregister(devlink, ice_dvl_msix_params,
+			       ARRAY_SIZE(ice_dvl_msix_params));
 
 	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
 		devl_params_unregister(devlink, ice_dvl_sched_params,
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index ad82ff7d1995..0659b96b9b8c 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -254,6 +254,13 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
 	int vectors, max_vectors;
 
+	/* load default PF MSI-X range */
+	if (!pf->msix.min)
+		pf->msix.min = ICE_MIN_MSIX;
+
+	if (!pf->msix.max)
+		pf->msix.max = total_vectors / 2;
+
 	vectors = ice_ena_msix_range(pf);
 
 	if (vectors < 0)
-- 
2.42.0

