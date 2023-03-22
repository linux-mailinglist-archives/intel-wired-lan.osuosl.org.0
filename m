Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE08E6C4B60
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 14:12:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2A32419C3;
	Wed, 22 Mar 2023 13:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2A32419C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679490773;
	bh=uQoXz5UwwPZDR7jTijhGr5zd4AAOCqUDl2r5lMfavXU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F2tk+DpHEbqcCXrw7Omm944sQXe726acgjctKcjbFrSmNCbreAEZRcsP9Ae3N1vbo
	 tE5TNXWR68Io63B+lme1WLXvW/ONOXX5JIiTlh7H9C6xrUpgNC2isoFHM3qNlCzkE0
	 ylA8Jr1Gc8ZigORgYFGos8PzFl+ewXbBhBPTtaaQXFoSG6UlU65oxuuhJAbtw+RSx6
	 gZ0/sSEyD8kfST6qFtBEN1d5EWBfYpp+kW+lzZs9+E85Hz7m/XjM4jwhHU/KOW5hrN
	 j4qThdITLAYPTgt7J1DCllvqwx8WZgPBWypKbdIBDO3U9gcI0eiaUwhLERLaXxqafV
	 Y9nxllZ6ysZUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mklzp9NHuYPp; Wed, 22 Mar 2023 13:12:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D71341B70;
	Wed, 22 Mar 2023 13:12:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D71341B70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E97B1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83F9841B70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83F9841B70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XScBhlvOYq_0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 13:12:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5FB1419C3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5FB1419C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340743704"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340743704"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714394659"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="714394659"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:41 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 14:12:23 +0100
Message-Id: <20230322131227.244687-2-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230322131227.244687-1-michal.wilczynski@intel.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679490763; x=1711026763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wj8Z3CN+u0KvbU3c3VAaXRcSbWwLVA/Olok2zqTGI+M=;
 b=P54j36cCV7Z/NvJOwkxJQ2wMzcAasMD2+HTkt47NH2jew4uFXyyRDTQp
 9i/KO/EO0nqfDC9zW9XwG7+1kH4gq38Eh8XZw6NdIBGRwQkCTcaT1yymM
 lhyRIKJuO16ZxXdomXqG1YfWXbdmtplo5jgkyQwkaahwRIkA6T1Awn2VO
 4pHxNprI4/RWKbcUEWQ8LfPSLQ4uXCEzle9dmeYFgQFU9s0CzKI9izSZK
 9sF5M8WUayQ7NKkpeCEd9peJkiqFf4rRT8VJmaEgnZjdSJFFW6DpogWL4
 UgUT4I801XbQxjrLTBfecxs57O7oUprlXicNlNVwXKHDmEoK4FNVpS85Z
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P54j36cC
Subject: [Intel-wired-lan] [PATCH net-next v11 1/5] ice: Support 5 layer
 topology
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
Cc: Raj Victor <victor.raj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Raj Victor <victor.raj@intel.com>

There is a performance issue reported when the number of VSIs are not
multiple of 8. This is caused due to the max children limitation per
node(8) in 9 layer topology. The BW credits are shared evenly among the
children by default. Assume one node has 8 children and the other has 1.
The parent of these nodes share the BW credit equally among them.
Apparently this causes a problem for the first node which has 8 children.
The 9th VM get more BW credits than the first 8 VMs.

Example:

1) With 8 VM's:
for x in 0 1 2 3 4 5 6 7;
do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done

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
for x in 0 1 2 3 4 5 6 7 8;
do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done

tx_queue_0_packets: 24163396
tx_queue_1_packets: 24164623
tx_queue_2_packets: 24163188
tx_queue_3_packets: 24163701
tx_queue_4_packets: 24163683
tx_queue_5_packets: 24164668
tx_queue_6_packets: 23327200
tx_queue_7_packets: 24163853
tx_queue_8_packets: 91101417

So on average queue 8 statistics show that 3.7 times more packets were
send there than to the other queues.

The FW starting with version 3.20, has increased the max number of
children per node by reducing the number of layers from 9 to 5. Reflect
this on driver side.

Signed-off-by: Raj Victor <victor.raj@intel.com>
Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |   6 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 201 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ddp.h      |   7 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 6 files changed, 238 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 838d9b274d68..ef2d30dc996d 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -120,6 +120,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
 #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
 #define ICE_AQC_CAPS_NVM_MGMT				0x0080
+#define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
 
 	u8 major_ver;
 	u8 minor_ver;
@@ -798,6 +799,23 @@ struct ice_aqc_get_topo {
 	__le32 addr_low;
 };
 
+/* Get/Set Tx Topology (indirect 0x0418/0x0417) */
+struct ice_aqc_get_set_tx_topo {
+	u8 set_flags;
+#define ICE_AQC_TX_TOPO_FLAGS_CORRER		BIT(0)
+#define ICE_AQC_TX_TOPO_FLAGS_SRC_RAM		BIT(1)
+#define ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW		BIT(4)
+#define ICE_AQC_TX_TOPO_FLAGS_ISSUED		BIT(5)
+
+	u8 get_flags;
+#define ICE_AQC_TX_TOPO_GET_RAM	2
+
+	__le16 reserved1;
+	__le32 reserved2;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
 /* Update TSE (indirect 0x0403)
  * Get TSE (indirect 0x0404)
  * Add TSE (indirect 0x0401)
@@ -2197,6 +2215,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_link_topo get_link_topo;
 		struct ice_aqc_i2c read_write_i2c;
 		struct ice_aqc_read_i2c_resp read_i2c_resp;
+		struct ice_aqc_get_set_tx_topo get_set_tx_topo;
 	} params;
 };
 
@@ -2302,6 +2321,9 @@ enum ice_adminq_opc {
 	ice_aqc_opc_query_sched_res			= 0x0412,
 	ice_aqc_opc_remove_rl_profiles			= 0x0415,
 
+	ice_aqc_opc_set_tx_topo				= 0x0417,
+	ice_aqc_opc_get_tx_topo				= 0x0418,
+
 	/* PHY commands */
 	ice_aqc_opc_get_phy_caps			= 0x0600,
 	ice_aqc_opc_set_phy_cfg				= 0x0601,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c2fda4fa4188..37f27b147122 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1696,6 +1696,8 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
 	case ice_aqc_opc_set_port_params:
 	case ice_aqc_opc_get_vlan_mode_parameters:
 	case ice_aqc_opc_set_vlan_mode_parameters:
+	case ice_aqc_opc_set_tx_topo:
+	case ice_aqc_opc_get_tx_topo:
 	case ice_aqc_opc_add_recipe:
 	case ice_aqc_opc_recipe_to_profile:
 	case ice_aqc_opc_get_recipe:
@@ -2252,6 +2254,10 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 			  "%s: reset_restrict_support = %d\n", prefix,
 			  caps->reset_restrict_support);
 		break;
+	case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
+		caps->tx_sched_topo_comp_mode_en = (number == 1);
+		break;
+
 	default:
 		/* Not one of the recognized common capabilities */
 		found = false;
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index d71ed210f9c4..d83a5ad2fd51 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -4,6 +4,7 @@
 #include "ice_common.h"
 #include "ice.h"
 #include "ice_ddp.h"
+#include "ice_sched.h"
 
 /* For supporting double VLAN mode, it is necessary to enable or disable certain
  * boost tcam entries. The metadata labels names that match the following
@@ -1895,3 +1896,203 @@ enum ice_ddp_state ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf,
 
 	return state;
 }
+
+/**
+ * ice_get_set_tx_topo - get or set Tx topology
+ * @hw: pointer to the HW struct
+ * @buf: pointer to Tx topology buffer
+ * @buf_size: buffer size
+ * @cd: pointer to command details structure or NULL
+ * @flags: pointer to descriptor flags
+ * @set: 0-get, 1-set topology
+ *
+ * The function will get or set Tx topology
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
+		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_tx_topo);
+		cmd->set_flags = ICE_AQC_TX_TOPO_FLAGS_ISSUED;
+		/* requested to update a new topology, not a default topology */
+		if (buf)
+			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
+					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
+	} else {
+		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
+		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
+	}
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
+ * ice_cfg_tx_topo - Initialize new Tx topology if available
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
+	u16 size = 0, offset;
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
+		ice_debug(hw, ICE_DBG_INIT, "Update Tx topology was done by another PF\n");
+		/* add a small delay before exiting */
+		msleep(2000);
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
+	status = ice_acquire_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, ICE_RES_WRITE,
+				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
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
+		ice_debug(hw, ICE_DBG_INIT, "Set Tx topology is failed\n");
+		return status;
+	}
+
+	/* new topology is updated, delay 1 second before issuing the CORRER */
+	msleep(1000);
+	ice_reset(hw, ICE_RESET_CORER);
+	/* CORER will clear the global lock, so no explicit call
+	 * required for release
+	 */
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index 37eadb3d27a8..2427b9db88e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -100,8 +100,9 @@ struct ice_pkg_hdr {
 
 /* generic segment */
 struct ice_generic_seg_hdr {
-#define SEGMENT_TYPE_METADATA 0x00000001
-#define SEGMENT_TYPE_ICE 0x00000010
+#define SEGMENT_TYPE_METADATA		0x00000001
+#define SEGMENT_TYPE_ICE		0x00000010
+#define SEGMENT_TYPE_ICE_RUN_TIME_CFG	0x00000020
 	__le32 seg_type;
 	struct ice_pkg_ver seg_format_ver;
 	__le32 seg_size;
@@ -442,4 +443,6 @@ void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 
 struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf);
 
+int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);
+
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 9c100747445a..1d01a1898b8b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -6,6 +6,9 @@
 
 #include "ice_common.h"
 
+#define ICE_SCHED_5_LAYERS	5
+#define ICE_SCHED_9_LAYERS	9
+
 #define SCHED_NODE_NAME_MAX_LEN 32
 
 #define ICE_QGRP_LAYER_OFFSET	2
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a09556e57803..5602695243a8 100644
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
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
