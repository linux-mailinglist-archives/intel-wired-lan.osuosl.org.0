Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADE398AC48
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 20:45:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F638810E5;
	Mon, 30 Sep 2024 18:45:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oa9uHTKqOpLR; Mon, 30 Sep 2024 18:45:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F45C810F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727721911;
	bh=MUClUKpQfc23zxiJZSdMVtErYP+G1RVn+bQ0a5ys23A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sxdmrBKg7NKPBPP+Y8z3zOqIS9O4tYgxCfKAy3L95fVb669uOJrix4lupmmQHbGS9
	 Q7ex36hhPV9zAVaoEIvWjkMszFKvwfRlDAppC0iNWWCKEHDIBvaKdsYVQ9zC86GX0Q
	 az8j3/Z3ZMMaiZhIXDBQIBRbckUzvLRmHHiQnZSh2nLWjv2nWWlS04OIZIBqEjushI
	 W5P0WpHM7DPt4O//oskx0s7QpMVEEO5BR1qD/QD2FUSCmf5CXVsSNAIbcyHe1rpgIO
	 SKyxcNibXjVa21NX3YEE7kfVnGbYtgstIiMW4AwQlU5+jWWoEZPucMo56qfBW+wi4f
	 BAxxY00qNfvgQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F45C810F0;
	Mon, 30 Sep 2024 18:45:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DDEA1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2878C401FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:45:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jPcqwWacj6ff for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 18:45:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED5DF401FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED5DF401FD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED5DF401FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:45:08 +0000 (UTC)
X-CSE-ConnectionGUID: L5qXhS3rQUuScG6vh9+3WQ==
X-CSE-MsgGUID: PSuGzjlhSAqG6Dpt20ZtaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="38186203"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="38186203"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 11:45:08 -0700
X-CSE-ConnectionGUID: EL3fg291Q2eX0Si3hdxnBg==
X-CSE-MsgGUID: 0z4n/GG9Q8aAiOolFQ6UcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="78132956"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa005.jf.intel.com with ESMTP; 30 Sep 2024 11:45:07 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 20:40:30 +0200
Message-Id: <20240930184030.897689-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727721909; x=1759257909;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SGqynGKinBv5jBfsCL0Buy9wuaQnB/uu+XPokXuZgzU=;
 b=gGPEnOJ9m0pPMx4YcGjmfwNAmB9fFljJRfdxtn+ePGZaKZPKE0Dab92b
 YDG5ZkgWqO0XiKtwju+1SNYqMD5KUlYuFLqDeuqaZr0l/nlY3fgHwHbd1
 5Wdamy8ekB0CGmKIwkhUz3oidWsK+QtQDCJj0vpjWPfQDj8XOn9KOY7kC
 5HX/GStz7+frFsAv+YeXuwXG1NVrdVZ6bog9tDHe4/RdhPrV/1hT3rKbe
 DPohB8A0Z3cttBp9AirPOtxVpnPT3CnheUCDM/Pq3xcf3QCToquR6xCJu
 oIA+2HmQvfMBixZdOWsT6cObDNdyvVJIh1LnUlEZVDxC8iKywEHm3/BbD
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gGPEnOJ9
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix crash on probe for
 DPLL enabled E810 LOM
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The E810 Lan On Motherboard (LOM) design is vendor specific. Intel
provides the reference design, but it is up to vendor on the final
product design. For some cases, like Linux DPLL support, the static
values defined in the driver does not reflect the actual LOM design.
Current implementation of output pins is causing the crash on probe
of the ice driver for such DPLL enabled E810 LOM designs:

WARNING: (...) at drivers/dpll/dpll_core.c:495 dpll_pin_get+0x2c4/0x330
...
Call Trace:
 <TASK>
 ? __warn+0x83/0x130
 ? dpll_pin_get+0x2c4/0x330
 ? report_bug+0x1b7/0x1d0
 ? handle_bug+0x42/0x70
 ? exc_invalid_op+0x18/0x70
 ? asm_exc_invalid_op+0x1a/0x20
 ? dpll_pin_get+0x117/0x330
 ? dpll_pin_get+0x2c4/0x330
 ? dpll_pin_get+0x117/0x330
 ice_dpll_get_pins.isra.0+0x52/0xe0 [ice]
...

The number of output pins enabled by LOM vendor is greater than expected
and defined in the driver for Intel designed NICs, which causes the crash.

Prevent the crash and allow generic output pin initialization within
Linux DPLL subsystem for DPLL enabled E810 LOM designs.

Newly designed solution for described issue will be based on "per HW
design" pin initialization. It requires pin information dynamically
acquired from the firmware and is already in progress, planned for
next-tree only.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 44 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 19 +++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
 3 files changed, 64 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 74c0e7319a4c..4bb4d74a7eb8 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -2063,6 +2063,48 @@ static int ice_dpll_init_worker(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_dpll_init_info_output_pins_generic - initializes generic output pins info
+ * @pf: board private structure
+ *
+ * Init information for generic output pins, cache them in PF's pins structures.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - init failure reason
+ */
+static int ice_dpll_init_info_output_pins_generic(struct ice_pf *pf)
+{
+#define ICE_DPLL_GEN_OUT_NUM   16
+#define ICE_DPLL_GEN_OUT_LEN   3
+	static const char labels[ICE_DPLL_GEN_OUT_NUM][ICE_DPLL_GEN_OUT_LEN] = {
+		"0", "1", "2", "3", "4", "5", "6", "7", "8",
+		"9", "10", "11", "12", "13", "14", "15" };
+	u32 cap = DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+	struct ice_dpll_pin *pins = pf->dplls.outputs;
+	int i, ret;
+
+	if (pf->dplls.num_outputs > ICE_DPLL_GEN_OUT_NUM)
+		return -EINVAL;
+	for (i = 0; i < pf->dplls.num_outputs; i++) {
+		pins[i].idx = i;
+		pins[i].prop.board_label = labels[i];
+		pins[i].prop.type = DPLL_PIN_TYPE_EXT;
+		pins[i].prop.phase_range.min =
+			pf->dplls.output_phase_adj_max;
+		pins[i].prop.phase_range.max =
+			-pf->dplls.output_phase_adj_max;
+		pins[i].prop.capabilities = cap;
+		pins[i].pf = pf;
+		ret = ice_dpll_pin_state_update(pf, &pins[i],
+						ICE_DPLL_PIN_TYPE_OUTPUT, NULL);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
 /**
  * ice_dpll_init_info_direct_pins - initializes direct pins info
  * @pf: board private structure
@@ -2097,6 +2139,8 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 		pins = pf->dplls.outputs;
 		num_pins = pf->dplls.num_outputs;
 		input = false;
+		if (num_pins != ice_cgu_get_pin_num(hw, input))
+			return ice_dpll_init_info_output_pins_generic(pf);
 		break;
 	default:
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3a33e6b9b313..e4ab76496d3a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5964,6 +5964,25 @@ ice_cgu_get_pin_desc(struct ice_hw *hw, bool input, int *size)
 	return t;
 }
 
+/**
+ * ice_cgu_get_pin_desc - get pin description array size
+ * @hw: pointer to the hw struct
+ * @input: if request is done against input or output pins
+ *
+ * Return: size of pin description array for given hw.
+ */
+int ice_cgu_get_pin_num(struct ice_hw *hw, bool input)
+{
+	const struct ice_cgu_pin_desc *t;
+	int size;
+
+	t = ice_cgu_get_pin_desc(hw, input, &size);
+	if (t)
+		return size;
+
+	return 0;
+}
+
 /**
  * ice_cgu_get_pin_type - get pin's type
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 0852a34ade91..f28cbae924dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -404,6 +404,7 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
+int ice_cgu_get_pin_num(struct ice_hw *hw, bool input);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
 ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
-- 
2.38.1

