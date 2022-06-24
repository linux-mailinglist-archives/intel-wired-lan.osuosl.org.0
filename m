Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E0A5597B9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 12:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 012EE84913;
	Fri, 24 Jun 2022 10:21:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 012EE84913
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656066098;
	bh=G//mYixD4zvYPPr5DOyY/Ds6lt0b4RuZOC9hC9wtHiQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WdvImnlzZiu3qcm2eCcbrkgCBC8XliIQOL6MHPNda9EHbxhiMpJpdC8NtsFovjAm9
	 a/0FA9uEgiMtF1W0m5xh8DmYgqGdJ8Y2wTro38LFee837iUX58YD9Senm5XKDm9l8+
	 NoiMWEsT7GwS5JII5lWnIMMUzp6Fr+qCNpcoOU/YC97m6BtHL0egVpJA1U9KqKTR4e
	 w3tXFx3qmzw/bnQj91GZ2pFRp8eJ8HBpTgiAJTDGKRxDXAesewz/z/4f/S9qjGln7s
	 blNkS+TTDx3Qu5IH5of4WFnCLmcWVO/bb+TLqEkaYhKCKwLTs9TZlW/t21RQLjzvJU
	 IfAlaMKTsjaSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7FkDp1AD0H69; Fri, 24 Jun 2022 10:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 731098490A;
	Fri, 24 Jun 2022 10:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 731098490A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E860F1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D07C8402A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:21:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D07C8402A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nazceMRlgC-l for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 10:21:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B37D401F4
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B37D401F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:21:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="261397347"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="261397347"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 03:21:29 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="593165369"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 03:21:28 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Jun 2022 12:21:09 +0200
Message-Id: <20220624102110.1008410-2-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220624102110.1008410-1-michal.wilczynski@intel.com>
References: <20220624102110.1008410-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656066090; x=1687602090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/I6mjyTGSWCUDU/ESvs210IUwAMyyUXJkt77C/tULCs=;
 b=ERpk2ajhPrtKfuOeZw+sgNOB4zFWxSFvCPI9w49H8zAlfPLbuj2PpZyl
 b/DFZWpF3leU5qsy05/8/cAW5CIq4DzQeY5sNcUHWU1e/zq6fpY1zNVo/
 6MH+Fmqll5nDPP5ac5by7mihXrZlik9y2Pp01zCi+RvjZNZN/Yq0C2NrG
 5CJmpeEHMwZ3CKzWvfhniUgLfIVNVKEYPlI++Vi3VreIVMqkrrPT0HEbw
 fJAegnQMvSfYDjZZN5Jzic0fprlbY61zK8kCeEiGknojf97EQ7spEUPLb
 Nx542OdnPQWYdF1qlS55M8ohG6Vk/3X3l+wJCqWY5VfYNomKVJFTQTUuk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ERpk2ajh
Subject: [Intel-wired-lan] [PATCH net-next v2 1/2] ice: Code added to
 support 5 layer topology
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
Cc: Raj Victor <victor.raj@intel.com>,
 Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Raj Victor <victor.raj@intel.com>

There was a performance issue reported when the number of VSIs were
not multiple of 8. This was caused due to the max children limitation
per node(8) in 9 layer topology. The BW credits are shared evenly
among the children by default. Assume one node has 8 children and
the other has 1. The parent of these nodes share the BW credit equally
among them. Apparently this casued a problem for the first node which
has 8 children. The 9th VM got more BW credits than the first 8 VMs.

Example:
1) With 8 VM's:
tx_queue_0_packets: 23283027
tx_queue_1_packets: 23292289
tx_queue_2_packets: 23276136
tx_queue_3_packets: 23279828
tx_queue_4_packets: 23279828
tx_queue_5_packets: 23279333
tx_queue_6_packets: 23277745
tx_queue_7_packets: 23279950
tx_queue_8_packets: 0

2) With 9 VM's:
tx_queue_0_packets: 24163396
tx_queue_1_packets: 24164623
tx_queue_2_packets: 24163188
tx_queue_3_packets: 24163701
tx_queue_4_packets: 24163683
tx_queue_5_packets: 24164668
tx_queue_6_packets: 23327200
tx_queue_7_packets: 24163853
tx_queue_8_packets: 91101417

So on average queue 8 statistics show that 3.7 times
more packets were send there than from the other queues.

The FW has increased the max number of children per node by reducing
the number of layers from 9 to 5. Reflect this on driver side.

Signed-off-by: Raj Victor <victor.raj@intel.com>
Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  23 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 202 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 6 files changed, 247 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 05cb9dd7035a..2d1da00b4926 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -120,6 +120,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
 #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
 #define ICE_AQC_CAPS_NVM_MGMT				0x0080
+#define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
 
 	u8 major_ver;
 	u8 minor_ver;
@@ -798,6 +799,24 @@ struct ice_aqc_get_topo {
 	__le32 addr_low;
 };
 
+/* Get/Set Tx Topology (indirect 0x0418/0x0417) */
+struct ice_aqc_get_set_tx_topo {
+	u8 set_flags;
+#define ICE_AQC_TX_TOPO_FLAGS_CORRER		BIT(0)
+#define ICE_AQC_TX_TOPO_FLAGS_SRC_RAM		BIT(1)
+#define ICE_AQC_TX_TOPO_FLAGS_SET_PSM		BIT(2)
+#define ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW		BIT(4)
+#define ICE_AQC_TX_TOPO_FLAGS_ISSUED		BIT(5)
+	u8 get_flags;
+#define ICE_AQC_TX_TOPO_GET_NO_UPDATE		0
+#define ICE_AQC_TX_TOPO_GET_PSM			1
+#define ICE_AQC_TX_TOPO_GET_RAM			2
+	__le16 reserved1;
+	__le32 reserved2;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
 /* Update TSE (indirect 0x0403)
  * Get TSE (indirect 0x0404)
  * Add TSE (indirect 0x0401)
@@ -2126,6 +2145,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_link_topo get_link_topo;
 		struct ice_aqc_i2c read_i2c;
 		struct ice_aqc_read_i2c_resp read_i2c_resp;
+		struct ice_aqc_get_set_tx_topo get_set_tx_topo;
 	} params;
 };
 
@@ -2231,6 +2251,9 @@ enum ice_adminq_opc {
 	ice_aqc_opc_query_sched_res			= 0x0412,
 	ice_aqc_opc_remove_rl_profiles			= 0x0415,
 
+	ice_aqc_opc_set_tx_topo				= 0x0417,
+	ice_aqc_opc_get_tx_topo				= 0x0418,
+
 	/* PHY commands */
 	ice_aqc_opc_get_phy_caps			= 0x0600,
 	ice_aqc_opc_set_phy_cfg				= 0x0601,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9619bdb9e49a..8b65e2bfb160 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2091,6 +2091,9 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 			  "%s: reset_restrict_support = %d\n", prefix,
 			  caps->reset_restrict_support);
 		break;
+	case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
+		caps->tx_sched_topo_comp_mode_en = (number == 1);
+		break;
 	default:
 		/* Not one of the recognized common capabilities */
 		found = false;
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index c73cdab44f70..b3bd345ea0f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -4,6 +4,7 @@
 #include "ice_common.h"
 #include "ice_flex_pipe.h"
 #include "ice_flow.h"
+#include "ice_sched.h"
 #include "ice.h"
 
 /* For supporting double VLAN mode, it is necessary to enable or disable certain
@@ -1783,6 +1784,207 @@ bool ice_is_init_pkg_successful(enum ice_ddp_state state)
 	}
 }
 
+/**
+ * ice_get_set_tx_topo - get or set tx topology
+ * @hw: pointer to the HW struct
+ * @buf: pointer to tx topology buffer
+ * @buf_size: buffer size
+ * @cd: pointer to command details structure or NULL
+ * @flags: pointer to descriptor flags
+ * @set: 0-get, 1-set topology
+ *
+ * The function will get or set tx topology
+ */
+static int
+ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
+		    struct ice_sq_cd *cd, u8 *flags, bool set)
+{
+	struct ice_aqc_get_set_tx_topo *cmd;
+	struct ice_aq_desc desc;
+	int status;
+
+	cmd = &desc.params.get_set_tx_topo;
+	if (set) {
+		cmd->set_flags = ICE_AQC_TX_TOPO_FLAGS_ISSUED;
+		/* requested to update a new topology, not a default topology */
+		if (buf)
+			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
+					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
+	} else {
+		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
+	}
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
+	if (status)
+		return status;
+	/* read the return flag values (first byte) for get operation */
+	if (!set && flags)
+		*flags = desc.params.get_set_tx_topo.set_flags;
+
+	return 0;
+}
+
+/**
+ * ice_cfg_tx_topo - Initialize new tx topology if available
+ * @hw: pointer to the HW struct
+ * @buf: pointer to Tx topology buffer
+ * @len: buffer size
+ *
+ * The function will apply the new Tx topology from the package buffer
+ * if available.
+ */
+int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
+{
+	u8 *current_topo, *new_topo = NULL;
+	struct ice_run_time_cfg_seg *seg;
+	struct ice_buf_hdr *section;
+	struct ice_pkg_hdr *pkg_hdr;
+	enum ice_ddp_state state;
+	u16 i, size = 0, offset;
+	u32 reg = 0;
+	int status;
+	u8 flags;
+
+	if (!buf || !len)
+		return -EINVAL;
+
+	/* Does FW support new Tx topology mode ? */
+	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
+		ice_debug(hw, ICE_DBG_INIT, "FW doesn't support compatibility mode\n");
+		return -EOPNOTSUPP;
+	}
+
+	current_topo = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
+
+	if (!current_topo)
+		return -ENOMEM;
+
+	/* get the current Tx topology */
+	status = ice_get_set_tx_topo(hw, current_topo, ICE_AQ_MAX_BUF_LEN, NULL,
+				     &flags, false);
+
+	kfree(current_topo);
+
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Get current topology is failed\n");
+		return status;
+	}
+
+	/* Is default topology already applied ? */
+	if (!(flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
+	    hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS) {
+		ice_debug(hw, ICE_DBG_INIT, "Loaded default topology\n");
+		/* Already default topology is loaded */
+		return -EEXIST;
+	}
+
+	/* Is new topology already applied ? */
+	if ((flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
+	    hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS) {
+		ice_debug(hw, ICE_DBG_INIT, "Loaded new topology\n");
+		/* Already new topology is loaded */
+		return -EEXIST;
+	}
+
+	/* Is set topology issued already ? */
+	if (flags & ICE_AQC_TX_TOPO_FLAGS_ISSUED) {
+		ice_debug(hw, ICE_DBG_INIT, "Update tx topology was done by another PF\n");
+		/* add a small delay before exiting */
+		for (i = 0; i < 20; i++)
+			msleep(100);
+		return -EEXIST;
+	}
+
+	/* Change the topology from new to default (5 to 9) */
+	if (!(flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
+	    hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS) {
+		ice_debug(hw, ICE_DBG_INIT, "Change topology from 5 to 9 layers\n");
+		goto update_topo;
+	}
+
+	pkg_hdr = (struct ice_pkg_hdr *)buf;
+	state = ice_verify_pkg(pkg_hdr, len);
+	if (state) {
+		ice_debug(hw, ICE_DBG_INIT, "failed to verify pkg (err: %d)\n",
+			  state);
+		return -EIO;
+	}
+
+	/* find run time configuration segment */
+	seg = (struct ice_run_time_cfg_seg *)
+		ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE_RUN_TIME_CFG, pkg_hdr);
+	if (!seg) {
+		ice_debug(hw, ICE_DBG_INIT, "5 layer topology segment is missing\n");
+		return -EIO;
+	}
+
+	if (le32_to_cpu(seg->buf_table.buf_count) < ICE_MIN_S_COUNT) {
+		ice_debug(hw, ICE_DBG_INIT, "5 layer topology segment count(%d) is wrong\n",
+			  seg->buf_table.buf_count);
+		return -EIO;
+	}
+
+	section = ice_pkg_val_buf(seg->buf_table.buf_array);
+
+	if (!section || le32_to_cpu(section->section_entry[0].type) !=
+		ICE_SID_TX_5_LAYER_TOPO) {
+		ice_debug(hw, ICE_DBG_INIT, "5 layer topology section type is wrong\n");
+		return -EIO;
+	}
+
+	size = le16_to_cpu(section->section_entry[0].size);
+	offset = le16_to_cpu(section->section_entry[0].offset);
+	if (size < ICE_MIN_S_SZ || size > ICE_MAX_S_SZ) {
+		ice_debug(hw, ICE_DBG_INIT, "5 layer topology section size is wrong\n");
+		return -EIO;
+	}
+
+	/* make sure the section fits in the buffer */
+	if (offset + size > ICE_PKG_BUF_SIZE) {
+		ice_debug(hw, ICE_DBG_INIT, "5 layer topology buffer > 4K\n");
+		return -EIO;
+	}
+
+	/* Get the new topology buffer */
+	new_topo = ((u8 *)section) + offset;
+
+update_topo:
+	/* acquire global lock to make sure that set topology issued
+	 * by one PF
+	 */
+	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to acquire global lock\n");
+		return status;
+	}
+
+	/* check reset was triggered already or not */
+	reg = rd32(hw, GLGEN_RSTAT);
+	if (reg & GLGEN_RSTAT_DEVSTATE_M) {
+		/* Reset is in progress, re-init the hw again */
+		ice_debug(hw, ICE_DBG_INIT, "Reset is in progress. layer topology might be applied already\n");
+		ice_check_reset(hw);
+		return 0;
+	}
+
+	/* set new topology */
+	status = ice_get_set_tx_topo(hw, new_topo, size, NULL, NULL, true);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Set tx topology is failed\n");
+		return status;
+	}
+
+	/* new topology is updated, delay 1 second before issuing the CORRER */
+	for (i = 0; i < 10; i++)
+		msleep(100);
+	ice_reset(hw, ICE_RESET_CORER);
+	/* CORER will clear the global lock, so no explicit call
+	 * required for release
+	 */
+	return 0;
+}
+
 /**
  * ice_pkg_buf_alloc
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 974d14a83b2e..ebbb5a1db8c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -29,8 +29,9 @@ struct ice_pkg_hdr {
 
 /* generic segment */
 struct ice_generic_seg_hdr {
-#define SEGMENT_TYPE_METADATA	0x00000001
-#define SEGMENT_TYPE_ICE	0x00000010
+#define SEGMENT_TYPE_METADATA	      0x00000001
+#define SEGMENT_TYPE_ICE	      0x00000010
+#define SEGMENT_TYPE_ICE_RUN_TIME_CFG 0x00000020
 	__le32 seg_type;
 	struct ice_pkg_ver seg_format_ver;
 	__le32 seg_size;
@@ -73,6 +74,12 @@ struct ice_buf_table {
 	struct ice_buf buf_array[];
 };
 
+struct ice_run_time_cfg_seg {
+	struct ice_generic_seg_hdr hdr;
+	u8 rsvd[8];
+	struct ice_buf_table buf_table;
+};
+
 /* global metadata specific segment */
 struct ice_global_metadata_seg {
 	struct ice_generic_seg_hdr hdr;
@@ -181,6 +188,9 @@ struct ice_meta_sect {
 /* The following define MUST be updated to reflect the last label section ID */
 #define ICE_SID_LBL_LAST		0x80000038
 
+/* Label ICE runtime configuration section IDs */
+#define ICE_SID_TX_5_LAYER_TOPO		0x10
+
 enum ice_block {
 	ICE_BLK_SW = 0,
 	ICE_BLK_ACL,
@@ -706,4 +716,7 @@ struct ice_meta_init_section {
 	__le16 offset;
 	struct ice_meta_init_entry entry;
 };
+
+int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);
+
 #endif /* _ICE_FLEX_TYPE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 4f91577fed56..86dc0f1f4255 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -6,6 +6,9 @@
 
 #include "ice_common.h"
 
+#define ICE_SCHED_5_LAYERS	5
+#define ICE_SCHED_9_LAYERS	9
+
 #define ICE_QGRP_LAYER_OFFSET	2
 #define ICE_VSI_LAYER_OFFSET	4
 #define ICE_AGG_LAYER_OFFSET	6
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f2a518a1fd94..ff793fe2a2e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -290,6 +290,7 @@ struct ice_hw_common_caps {
 	bool pcie_reset_avoidance;
 	/* Post update reset restriction */
 	bool reset_restrict_support;
+	bool tx_sched_topo_comp_mode_en;
 };
 
 /* IEEE 1588 TIME_SYNC specific info */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
