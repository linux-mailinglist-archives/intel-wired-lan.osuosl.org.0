Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D30B15BADE5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Sep 2022 15:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59CB46120B;
	Fri, 16 Sep 2022 13:14:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59CB46120B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663334099;
	bh=dEOSnaK1HNELbd/Uf0ySjtQmfOVP7IRx6RhFQuzamOc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TNazv6DEkHIbl+NfnXhRVnLXowNQ/fXOR/Ojv+eivG0ih8xKshWSwb2lWG4/7Uqkq
	 /mGIdLcvbgbjLNu+Sg8p1LwkYWVSDVo7+O3c73Dyq1EN6XlQqj06dpsZCsQpZp4NWA
	 UnyLFne7NiDkmW4jlJFaKN/XNMYGLcHcZjYw9tOtbDrBRpHX785HCvNGuZzQsp1rqs
	 YReIe/il7MicE7OmovJnxM+MJJgSKLujBBfuS1DoAvJFVjhllTSTi3PzNEt4Qf4lMG
	 L3Tk+3ejDDBOsIzslmHO0zrfOXaF48xMIdquB3GtEo/q7IeeiHjJfVNazmJkQ4vj0d
	 Dc7PMB+USNAZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HOQw98pxFoVL; Fri, 16 Sep 2022 13:14:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9EDB61352;
	Fri, 16 Sep 2022 13:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9EDB61352
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52D111BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 13:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E3A6842F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 13:14:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E3A6842F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEfbs5iuZOt7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Sep 2022 13:14:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 142EB842D6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 142EB842D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 13:14:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="297711400"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="297711400"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 06:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="648254785"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga008.jf.intel.com with ESMTP; 16 Sep 2022 06:14:43 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Sep 2022 15:14:39 +0200
Message-Id: <20220916131440.566617-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663334085; x=1694870085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EP1t/mVLBhTFzyJCs5rvrchhrKM37OHMO8zvS7Pv5Rw=;
 b=PtKamqYdS9gHYhjSuyJHPibakWwUk8nPNnnwPj5zS4XgV8XNKDLVaLBp
 5k6FmMvZ/h3E10ZmcTBWUpgbKjBmNskup8V94gfWU6i2Yxp5IsEJ6UOBX
 fqHFp8JwUy4KDiEi+W0CSA6CAlLhMwvmIyiwbSIAQ/NDTsFJbHPiQz8zZ
 +eA2J3NeFSl7clgRQW8PG9qEgm1fNfqaJOOtAZ8XHJ+bmdF2Jcv9WNEyz
 5EJR8etfBQCWn+nf+iVLnkv5CXz1251JcbzWIKkv4yj/4grWHKYSaiZBG
 KP0pDsJNIJ6iJwcsGoIO+hrcRqYm2817LiOyVXI42+IoGYUx0+PoZl+md
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PtKamqYd
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: Add GPIO pin support
 for E823 products
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add GPIO pin setup for E823, which is only 1PPS input and output.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 25 ++++++++
 drivers/net/ethernet/intel/ice/ice_common.h |  1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 64 +++++++++++++++++++++
 3 files changed, 90 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2a4b68ef7d55..11cc17372b74 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -193,6 +193,31 @@ bool ice_is_e810t(struct ice_hw *hw)
 	return false;
 }
 
+/**
+ * ice_is_e823
+ * @hw: pointer to the hardware structure
+ *
+ * returns true if the device is E823-L or E823-C based, false if not.
+ */
+bool ice_is_e823(struct ice_hw *hw)
+{
+	switch (hw->device_id) {
+	case ICE_DEV_ID_E823L_BACKPLANE:
+	case ICE_DEV_ID_E823L_SFP:
+	case ICE_DEV_ID_E823L_10G_BASE_T:
+	case ICE_DEV_ID_E823L_1GBE:
+	case ICE_DEV_ID_E823L_QSFP:
+	case ICE_DEV_ID_E823C_BACKPLANE:
+	case ICE_DEV_ID_E823C_QSFP:
+	case ICE_DEV_ID_E823C_SFP:
+	case ICE_DEV_ID_E823C_10G_BASE_T:
+	case ICE_DEV_ID_E823C_SGMII:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index f339bdc48062..858b89a39cb6 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -198,6 +198,7 @@ void
 ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 		  u64 *prev_stat, u64 *cur_stat);
 bool ice_is_e810t(struct ice_hw *hw);
+bool ice_is_e823(struct ice_hw *hw);
 int
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 011b727ab190..408beddc1210 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1788,6 +1788,38 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 	return err;
 }
 
+/**
+ * ice_ptp_gpio_enable_e823 - Enable/disable ancillary features of PHC
+ * @info: the driver's PTP info structure
+ * @rq: The requested feature to change
+ * @on: Enable/disable flag
+ */
+static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
+				    struct ptp_clock_request *rq, int on)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_perout_channel clk_cfg = {0};
+	int err;
+
+	switch (rq->type) {
+	case PTP_CLK_REQ_PPS:
+		clk_cfg.gpio_pin = PPS_PIN_INDEX;
+		clk_cfg.period = NSEC_PER_SEC;
+		clk_cfg.ena = !!on;
+
+		err = ice_ptp_cfg_clkout(pf, PPS_CLK_GEN_CHAN, &clk_cfg, true);
+		break;
+	case PTP_CLK_REQ_EXTTS:
+		err = ice_ptp_cfg_extts(pf, !!on, rq->extts.index,
+					TIME_SYNC_PIN_INDEX, rq->extts.flags);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return err;
+}
+
 /**
  * ice_ptp_gettimex64 - Get the time of the clock
  * @info: the driver's PTP info structure
@@ -2239,6 +2271,19 @@ ice_ptp_setup_pins_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 	}
 }
 
+/**
+ * ice_ptp_setup_pins_e823 - Setup PTP pins in sysfs
+ * @pf: pointer to the PF instance
+ * @info: PTP clock capabilities
+ */
+static void
+ice_ptp_setup_pins_e823(struct ice_pf *pf, struct ptp_clock_info *info)
+{
+	info->pps = 1;
+	info->n_per_out = 0;
+	info->n_ext_ts = 1;
+}
+
 /**
  * ice_ptp_set_funcs_e822 - Set specialized functions for E822 support
  * @pf: Board private structure
@@ -2276,6 +2321,23 @@ ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 	ice_ptp_setup_pins_e810(pf, info);
 }
 
+/**
+ * ice_ptp_set_funcs_e823 - Set specialized functions for E823 support
+ * @pf: Board private structure
+ * @info: PTP info to fill
+ *
+ * Assign functions to the PTP capabiltiies structure for E823 devices.
+ * Functions which operate across all device families should be set directly
+ * in ice_ptp_set_caps. Only add functions here which are distinct for e823
+ * devices.
+ */
+static void
+ice_ptp_set_funcs_e823(struct ice_pf *pf, struct ptp_clock_info *info)
+{
+	info->enable = ice_ptp_gpio_enable_e823;
+	ice_ptp_setup_pins_e823(pf, info);
+}
+
 /**
  * ice_ptp_set_caps - Set PTP capabilities
  * @pf: Board private structure
@@ -2296,6 +2358,8 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 
 	if (ice_is_e810(&pf->hw))
 		ice_ptp_set_funcs_e810(pf, info);
+	else if (ice_is_e823(&pf->hw))
+		ice_ptp_set_funcs_e823(pf, info);
 	else
 		ice_ptp_set_funcs_e822(pf, info);
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
