Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706146DF76C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 15:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94CC7408CF;
	Wed, 12 Apr 2023 13:40:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94CC7408CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681306804;
	bh=VYA+AnmXFyer4gnFc5cuw/qU4F1TIhgYm6mGH0yKLGs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Jj29KMwha6uY0ksxvo9yIOVJieMhswdSqn7wUBtQ/eBG4ndBxeTDdy35BPRTUHnQd
	 tm4A3qrS4YDiAdQFe/nj8dGDTvtvdPZpUj8j3p9eAdplYd0OyJbUJsGx9jFV2vvVKu
	 eCIzVPuUxIuyHujzSdvS6dPzUtEECIuNjC7wYGQTwl1b+s4w9vnOSUqkoj9Zv6fTLV
	 0LurqTwQ2YxYiWLc3jGdyg4r2Z0hTrV5oSLSwCy9IjrFS88srBeO3yRlG0x2sgEETg
	 zMLmagjsrklKeb0dKkShotM9XQcX4sJpv0GCJ0usY7XIoA0vhThVT21eNUk8+funK5
	 bwgr4mawoJb6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Riz0VSjYe2cl; Wed, 12 Apr 2023 13:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42B3D404EF;
	Wed, 12 Apr 2023 13:40:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42B3D404EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 321B41BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 13:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13B8483B59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 13:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13B8483B59
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BdwsTiRJmUHj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 13:39:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF66283B57
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF66283B57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 13:39:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="341390512"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="341390512"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 06:39:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="639232458"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="639232458"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga003.jf.intel.com with ESMTP; 12 Apr 2023 06:39:52 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: jiri@resnulli.us, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, corbet@lwn.net,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Apr 2023 15:38:11 +0200
Message-Id: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681306796; x=1712842796;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4GCFBR6AvRzdkg82R+k92xqDhMfr7gxMVkai6zQEA5c=;
 b=nA3QXfUIg45/qb6gt/NXWQyG7fhozk1cfjwFrMD9wFj61Jlcf0l80S2s
 +TmHeHlUK09hal93ZTd9tjk+kmib6znejLXmgLW7LDA8efLBE8VpPF/m/
 INeLaMIaL/D/yrtLt6naB5pLi5fbvAMhYlZjDVU+K2mrOyWOwyF5CranF
 e5R1fnvvd4Fx95BgZ/bPXJOSfEHrXQpfW7y2Y1p0Y1/nuzQ9sMVyobTn7
 VxXxMw6BbcF4up4V1tkVQ7o7mgVZwDp2HE6gEaC0p8xjumTMEjuYjYHOD
 AgKahtzXSReYXsZRZI+lx6EIZ7jYU1eOelOTpSKkX36Pseq6JAf7bOgmF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nA3QXfUI
Subject: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink info
 callback
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If Clock Generation Unit and dplls are present on NIC board user shall
know its details.
Provide the devlink info callback with a new:
- fixed type object `cgu.id` - hardware variant of onboard CGU
- running type object `fw.cgu` - CGU firmware version
- running type object `fw.cgu.build` - CGU configuration build version

These information shall be known for debugging purposes.

Test (on NIC board with CGU)
$ devlink dev info <bus_name>/<dev_name> | grep cgu
        cgu.id 8032
        fw.cgu 6021
        fw.cgu.build 0x1030001

Test (on NIC board without CGU)
$ devlink dev info <bus_name>/<dev_name> | grep cgu -c
0

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 Documentation/networking/devlink/ice.rst     | 14 +++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c | 30 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  5 +++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 12 ++++----
 drivers/net/ethernet/intel/ice/ice_type.h    |  9 +++++-
 5 files changed, 62 insertions(+), 8 deletions(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 10f282c2117c..3a54421c503d 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -23,6 +23,11 @@ The ``ice`` driver reports the following versions
       - fixed
       - K65390-000
       - The Product Board Assembly (PBA) identifier of the board.
+    * - ``cgu.id``
+      - fixed
+      - 8032
+      - The Clock Generation Unit (CGU) hardware version identifier on the
+        board.
     * - ``fw.mgmt``
       - running
       - 2.1.7
@@ -89,6 +94,15 @@ The ``ice`` driver reports the following versions
       - running
       - 0xee16ced7
       - The first 4 bytes of the hash of the netlist module contents.
+    * - ``fw.cgu``
+      - running
+      - 6021
+      - Version of Clock Generation Unit (CGU) firmware.
+    * - ``fw.cgu.build``
+      - running
+      - 0x1030001
+      - Version of Clock Generation Unit (CGU) firmware configuration build.
+
 
 Flash Update
 ============
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index bc44cc220818..06fe895739af 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -193,6 +193,33 @@ ice_info_pending_netlist_build(struct ice_pf __always_unused *pf,
 		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
 }
 
+static void ice_info_cgu_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
+		struct ice_hw *hw = &pf->hw;
+
+		snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.id);
+	}
+}
+
+static void ice_info_cgu_fw_version(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
+		struct ice_hw *hw = &pf->hw;
+
+		snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.fw_ver);
+	}
+}
+
+static void ice_info_cgu_fw_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
+		struct ice_hw *hw = &pf->hw;
+
+		snprintf(ctx->buf, sizeof(ctx->buf), "0x%x", hw->cgu.cfg_ver);
+	}
+}
+
 #define fixed(key, getter) { ICE_VERSION_FIXED, key, getter, NULL }
 #define running(key, getter) { ICE_VERSION_RUNNING, key, getter, NULL }
 #define stored(key, getter, fallback) { ICE_VERSION_STORED, key, getter, fallback }
@@ -224,6 +251,7 @@ static const struct ice_devlink_version {
 	void (*fallback)(struct ice_pf *pf, struct ice_info_ctx *ctx);
 } ice_devlink_versions[] = {
 	fixed(DEVLINK_INFO_VERSION_GENERIC_BOARD_ID, ice_info_pba),
+	fixed("cgu.id", ice_info_cgu_id),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, ice_info_fw_mgmt),
 	running("fw.mgmt.api", ice_info_fw_api),
 	running("fw.mgmt.build", ice_info_fw_build),
@@ -235,6 +263,8 @@ static const struct ice_devlink_version {
 	running("fw.app.bundle_id", ice_info_ddp_pkg_bundle_id),
 	combined("fw.netlist", ice_info_netlist_ver, ice_info_pending_netlist_ver),
 	combined("fw.netlist.build", ice_info_netlist_build, ice_info_pending_netlist_build),
+	running("fw.cgu", ice_info_cgu_fw_version),
+	running("fw.cgu.build", ice_info_cgu_fw_build),
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6b28b95a7254..a3adc03bdd0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4822,8 +4822,11 @@ static void ice_init_features(struct ice_pf *pf)
 		ice_gnss_init(pf);
 
 	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
-	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
+	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK)) {
+		ice_aq_get_cgu_info(&pf->hw, &pf->hw.cgu.id,
+				    &pf->hw.cgu.cfg_ver, &pf->hw.cgu.fw_ver);
 		ice_dpll_init(pf);
+	}
 
 	/* Note: Flow director init failure is non-fatal to load */
 	if (ice_init_fdir(pf))
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 39b692945f73..90c1cc1e4401 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3481,13 +3481,13 @@ bool ice_is_cgu_present(struct ice_hw *hw)
 	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
 				   ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
 				   NULL)) {
-		hw->cgu_part_number = ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
+		hw->cgu.part_number = ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
 		return true;
 	} else if (!ice_find_netlist_node(hw,
 					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
 					  ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384,
 					  NULL)) {
-		hw->cgu_part_number = ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384;
+		hw->cgu.part_number = ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384;
 		return true;
 	}
 
@@ -3507,7 +3507,7 @@ ice_cgu_get_pin_desc_e823(struct ice_hw *hw, bool input, int *size)
 {
 	static const struct ice_cgu_pin_desc *t;
 
-	if (hw->cgu_part_number ==
+	if (hw->cgu.part_number ==
 	    ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032) {
 		if (input) {
 			t = ice_e823_zl_cgu_inputs;
@@ -3516,7 +3516,7 @@ ice_cgu_get_pin_desc_e823(struct ice_hw *hw, bool input, int *size)
 			t = ice_e823_zl_cgu_outputs;
 			*size = ARRAY_SIZE(ice_e823_zl_cgu_outputs);
 		}
-	} else if (hw->cgu_part_number ==
+	} else if (hw->cgu.part_number ==
 		   ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384) {
 		if (input) {
 			t = ice_e823_si_cgu_inputs;
@@ -3778,10 +3778,10 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num)
 	case ICE_DEV_ID_E823C_SGMII:
 		*pin_num = ICE_E822_RCLK_PINS_NUM;
 		ret = 0;
-		if (hw->cgu_part_number ==
+		if (hw->cgu.part_number ==
 		    ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032)
 			*base_idx = ZL_REF1P;
-		else if (hw->cgu_part_number ==
+		else if (hw->cgu.part_number ==
 			 ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384)
 			*base_idx = SI_REF1P;
 		else
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 128bc4d326f9..814166d959ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -820,6 +820,13 @@ struct ice_mbx_data {
 	u16 async_watermark_val;
 };
 
+struct ice_cgu_info {
+	u32 id;
+	u32 cfg_ver;
+	u32 fw_ver;
+	u8 part_number;
+};
+
 /* Port hardware description */
 struct ice_hw {
 	u8 __iomem *hw_addr;
@@ -963,7 +970,7 @@ struct ice_hw {
 	DECLARE_BITMAP(hw_ptype, ICE_FLOW_PTYPE_MAX);
 	u8 dvm_ena;
 	u16 io_expander_handle;
-	u8 cgu_part_number;
+	struct ice_cgu_info cgu;
 };
 
 /* Statistics collected by each port, VSI, VEB, and S-channel */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
