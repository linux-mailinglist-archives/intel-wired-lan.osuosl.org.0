Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C2C9D34DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Nov 2024 08:56:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6507B606C5;
	Wed, 20 Nov 2024 07:56:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ND7NRBSRNbcn; Wed, 20 Nov 2024 07:56:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A80C0614C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732089362;
	bh=TRNDG2pyaaHxl/g8rTII6FkKjlDIrSBV4ymcXh4+x54=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0ppBdJpkH+zPgjwx7LGcE4kbExE5HZgO6EGHOwR42kV3i1r75q8nyFWLXtRKJFEEx
	 rTXEVPuWVRNdvtwtDGipRMO4kBX5EpoZxMkMxCymjC51kdeStlOasU06YS0MAEsRx5
	 m+cOIBY9murs28H04pJ9WnQv8cME8FTanbmo29Hks7VTZ+huvdDmBdzaPRYpE5ELUt
	 kbryac99VnNMeI7nlr9rsnqeyjnkuawI+v8dCe4Z2cIvIR7ObTnWFadM/BxK1oQY4H
	 qxblei16jL9MjDnX+R4qpGyo5kIeV6VIUMjud1Z7Fmt/YkCFZ3KOOHgK6LTV50Ypu7
	 2lbsAITquQcbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A80C0614C7;
	Wed, 20 Nov 2024 07:56:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E358DB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 07:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07FFA40920
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 07:56:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ypRIGotoVp3R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Nov 2024 07:55:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5EDD74023C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EDD74023C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EDD74023C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 07:55:59 +0000 (UTC)
X-CSE-ConnectionGUID: WztcDMJFTgaOQRrmJhQI3w==
X-CSE-MsgGUID: n2DDXwclR+SZArfq5MX45g==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32381948"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32381948"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 23:55:58 -0800
X-CSE-ConnectionGUID: eEAgKmNRQNi3xKI2j+nOJg==
X-CSE-MsgGUID: mF/peicRQhSY8tRkTvZLGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89984155"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa008.fm.intel.com with ESMTP; 19 Nov 2024 23:55:57 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 20 Nov 2024 08:51:12 +0100
Message-Id: <20241120075112.1662138-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732089359; x=1763625359;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ymgRt1r8OSosi9epgbbUpFLxfOaNFCyEGnN/25izfP0=;
 b=IEMzsPieMzYS2Ut91ZmlywKVv0H551f3O+pDbxPMxGn2HG/d9Y0dfc+F
 79ZthEfYscK7B5fWGJkMuh6TTKPFi5vBDVXuSp+VH6IrnebLLbusTjx+A
 wu/IB5U23wAtN4cwp6FugvDSldpKAy4aOjwg+RcN6mI83kkVn/5lMeadg
 MtUF6MjmLHdkMS3aZ428ak29RgUEbuS46cg7DgJiBr8kCuUQ/AHZW5+vc
 n31Dn9DdBOwa9Mc8bTR0liSf7DiWH3UHynwjfzO2Y3TigAAovBp+GwgD0
 2/ss+88mWjkWz8CSD6v+YW1AUkMQCRqueS5R0LujIgDXfaS49eE/VF6a/
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IEMzsPie
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix max values for dpll pin
 phase adjust
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mask admin command returned max phase adjust value for both input and
output pins. Only 31 bits are relevant, last released data sheet wrongly
points that 32 bits are valid - see [1] 3.2.6.4.1 Get CCU Capabilities
Command for reference. Fix of the datasheet itself is in progress.

Fix the min/max assignment logic, previously the value was wrongly
considered as negative value due to most significant bit being set.

Example of previous broken behavior:
$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-get --json '{"id":1}'| grep phase-adjust
 'phase-adjust': 0,
 'phase-adjust-max': 16723,
 'phase-adjust-min': -16723,

Correct behavior with the fix:
$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
--do pin-get --json '{"id":1}'| grep phase-adjust
 'phase-adjust': 0,
 'phase-adjust-max': 2147466925,
 'phase-adjust-min': -2147466925,

[1] https://cdrdv2.intel.com/v1/dl/getContent/613875?explicitVersion=true

Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 ++
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 35 ++++++++++++-------
 2 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 547c96b9c1d5..80f3dfd27124 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2239,6 +2239,8 @@ struct ice_aqc_get_pkg_info_resp {
 	struct ice_aqc_get_pkg_info pkg_info[];
 };
 
+#define ICE_AQC_GET_CGU_MAX_PHASE_ADJ	GENMASK(30, 0)
+
 /* Get CGU abilities command response data structure (indirect 0x0C61) */
 struct ice_aqc_get_cgu_abilities {
 	u8 num_inputs;
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index d5ad6d84007c..38e151c7ea23 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -2064,6 +2064,18 @@ static int ice_dpll_init_worker(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_dpll_phase_range_set - initialize phase adjust range helper
+ * @range: pointer to phase adjust range struct to be initialized
+ * @phase_adj: a value to be used as min(-)/max(+) boundary
+ */
+static void ice_dpll_phase_range_set(struct dpll_pin_phase_adjust_range *range,
+				     u32 phase_adj)
+{
+	range->min = -phase_adj;
+	range->max = phase_adj;
+}
+
 /**
  * ice_dpll_init_info_pins_generic - initializes generic pins info
  * @pf: board private structure
@@ -2105,8 +2117,8 @@ static int ice_dpll_init_info_pins_generic(struct ice_pf *pf, bool input)
 	for (i = 0; i < pin_num; i++) {
 		pins[i].idx = i;
 		pins[i].prop.board_label = labels[i];
-		pins[i].prop.phase_range.min = phase_adj_max;
-		pins[i].prop.phase_range.max = -phase_adj_max;
+		ice_dpll_phase_range_set(&pins[i].prop.phase_range,
+					 phase_adj_max);
 		pins[i].prop.capabilities = cap;
 		pins[i].pf = pf;
 		ret = ice_dpll_pin_state_update(pf, &pins[i], pin_type, NULL);
@@ -2152,6 +2164,7 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 	struct ice_hw *hw = &pf->hw;
 	struct ice_dpll_pin *pins;
 	unsigned long caps;
+	u32 phase_adj_max;
 	u8 freq_supp_num;
 	bool input;
 
@@ -2159,11 +2172,13 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 	case ICE_DPLL_PIN_TYPE_INPUT:
 		pins = pf->dplls.inputs;
 		num_pins = pf->dplls.num_inputs;
+		phase_adj_max = pf->dplls.input_phase_adj_max;
 		input = true;
 		break;
 	case ICE_DPLL_PIN_TYPE_OUTPUT:
 		pins = pf->dplls.outputs;
 		num_pins = pf->dplls.num_outputs;
+		phase_adj_max = pf->dplls.output_phase_adj_max;
 		input = false;
 		break;
 	default:
@@ -2188,19 +2203,13 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 				return ret;
 			caps |= (DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE |
 				 DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE);
-			pins[i].prop.phase_range.min =
-				pf->dplls.input_phase_adj_max;
-			pins[i].prop.phase_range.max =
-				-pf->dplls.input_phase_adj_max;
 		} else {
-			pins[i].prop.phase_range.min =
-				pf->dplls.output_phase_adj_max;
-			pins[i].prop.phase_range.max =
-				-pf->dplls.output_phase_adj_max;
 			ret = ice_cgu_get_output_pin_state_caps(hw, i, &caps);
 			if (ret)
 				return ret;
 		}
+		ice_dpll_phase_range_set(&pins[i].prop.phase_range,
+					 phase_adj_max);
 		pins[i].prop.capabilities = caps;
 		ret = ice_dpll_pin_state_update(pf, &pins[i], pin_type, NULL);
 		if (ret)
@@ -2308,8 +2317,10 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 	dp->dpll_idx = abilities.pps_dpll_idx;
 	d->num_inputs = abilities.num_inputs;
 	d->num_outputs = abilities.num_outputs;
-	d->input_phase_adj_max = le32_to_cpu(abilities.max_in_phase_adj);
-	d->output_phase_adj_max = le32_to_cpu(abilities.max_out_phase_adj);
+	d->input_phase_adj_max = le32_to_cpu(abilities.max_in_phase_adj) &
+		ICE_AQC_GET_CGU_MAX_PHASE_ADJ;
+	d->output_phase_adj_max = le32_to_cpu(abilities.max_out_phase_adj) &
+		ICE_AQC_GET_CGU_MAX_PHASE_ADJ;
 
 	alloc_size = sizeof(*d->inputs) * d->num_inputs;
 	d->inputs = kzalloc(alloc_size, GFP_KERNEL);

base-commit: a76d2631397d9331132688105313d8e3da8f4010
-- 
2.38.1

