Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E03876399
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 12:47:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75A20832FF;
	Fri,  8 Mar 2024 11:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9e4kcYI1vpFw; Fri,  8 Mar 2024 11:47:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41CF4832BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709898460;
	bh=DLXCNX+KY+7cBYITA9MUaSofBCbe9XcAjN8jEXiBwRA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wYGaVKNN9bgcF2M4KKl23cG+7pp2mzS3J9OCwrOy1b0Zm2602e1GuVi7m7XWoLJAR
	 Gvl/T1NAjH/ZPam4B7W6rpkUiouhJ9I6JSvzK956tgQgIi24LX8U3thB+pbfi/+rrQ
	 QJ4Rz/bBkHfpMQKYnYsrQRmEHQCocIrS7oDStKfmfN9iyBi8Y+r3SqEIHGfi9TtTqC
	 ArLFiJtSxKlKeOKQeVpS1KGXP0j9p3zNOz5xTYUgFdfxyQc7rc6SNwzm0SLtawTC1i
	 3VFX4kjVNmxr+trin4ddOZM3+0hsD+xZ/Bu9qVI1H+Bml/QnSVvNpZeriPOmE5d6Ww
	 /D68sfmRutUIQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41CF4832BF;
	Fri,  8 Mar 2024 11:47:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9D481BF317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 11:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D640D610FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 11:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBP2hGKXAb1T for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 11:47:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 81F83610FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81F83610FA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81F83610FA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 11:47:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="7559168"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="7559168"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 03:47:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10341767"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa007.fm.intel.com with ESMTP; 08 Mar 2024 03:47:32 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 528173496C;
 Fri,  8 Mar 2024 11:47:30 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Mar 2024 06:39:15 -0500
Message-Id: <20240308113919.11787-3-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240308113919.11787-1-mateusz.polchlopek@intel.com>
References: <20240308113919.11787-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709898456; x=1741434456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ItqS37fU+v81Q0NRgtcbe6Oz9zccNe4LhvENtywP1cI=;
 b=DyA4om0AohVyZNkeY67DFflTYFscfXNXoGjitaGNTQl65xYjndxxN/pp
 P5xFVbN/b/0GFuQAhblmgKUvt9puWWpLHbBikpmQwipL8PxupkNwbBQLa
 QMwYDjEOVVgv1FhFRD1HgjPKC4FhTbbuNUCOLtDk/dnsRQhNt1tWzel6C
 5pnWoCV4QHy8/E+nE5ZzgMBLtziakEtCt5wxczhviyIvTG3W50tqqpkhi
 syKFdeJ5aVXVRjfrFLUQgyIBIwpcs3WyDpqDWcaXkDefAdZPH+j9k1hS2
 QSa1NhkiTUsBlDeTtk8EcTsdVpxffgH22PkF2VrvAbdojPssTe707NKkZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DyA4om0A
Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/6] ice: Support 5 layer
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Raj Victor <victor.raj@intel.com>

There is a performance issue when the number of VSIs are not multiple
of 8. This is caused due to the max children limitation per node(8) in
9 layer topology. The BW credits are shared evenly among the children
by default. Assume one node has 8 children and the other has 1.
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
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  23 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 199 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ddp.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 6 files changed, 233 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 540c0bdca936..0487c425ae24 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -121,6 +121,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
 #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
 #define ICE_AQC_CAPS_NVM_MGMT				0x0080
+#define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
 #define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
 #define ICE_AQC_BIT_ROCEV2_LAG				0x01
 #define ICE_AQC_BIT_SRIOV_LAG				0x02
@@ -810,6 +811,23 @@ struct ice_aqc_get_topo {
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
+#define ICE_AQC_TX_TOPO_GET_RAM		2
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
@@ -2538,6 +2556,7 @@ struct ice_aq_desc {
 		struct ice_aqc_get_link_topo get_link_topo;
 		struct ice_aqc_i2c read_write_i2c;
 		struct ice_aqc_read_i2c_resp read_i2c_resp;
+		struct ice_aqc_get_set_tx_topo get_set_tx_topo;
 	} params;
 };
 
@@ -2644,6 +2663,10 @@ enum ice_adminq_opc {
 	ice_aqc_opc_query_sched_res			= 0x0412,
 	ice_aqc_opc_remove_rl_profiles			= 0x0415,
 
+	/* tx topology commands */
+	ice_aqc_opc_set_tx_topo				= 0x0417,
+	ice_aqc_opc_get_tx_topo				= 0x0418,
+
 	/* PHY commands */
 	ice_aqc_opc_get_phy_caps			= 0x0600,
 	ice_aqc_opc_set_phy_cfg				= 0x0601,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f4ac3c30b124..b11f52b10edf 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1617,6 +1617,8 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
 	case ice_aqc_opc_set_port_params:
 	case ice_aqc_opc_get_vlan_mode_parameters:
 	case ice_aqc_opc_set_vlan_mode_parameters:
+	case ice_aqc_opc_set_tx_topo:
+	case ice_aqc_opc_get_tx_topo:
 	case ice_aqc_opc_add_recipe:
 	case ice_aqc_opc_recipe_to_profile:
 	case ice_aqc_opc_get_recipe:
@@ -2173,6 +2175,9 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %u\n",
 			  prefix, caps->sriov_lag);
 		break;
+	case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
+		caps->tx_sched_topo_comp_mode_en = (number == 1);
+		break;
 	default:
 		/* Not one of the recognized common capabilities */
 		found = false;
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 7532d11ad7f3..766437944774 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -4,6 +4,7 @@
 #include "ice_common.h"
 #include "ice.h"
 #include "ice_ddp.h"
+#include "ice_sched.h"
 
 /* For supporting double VLAN mode, it is necessary to enable or disable certain
  * boost tcam entries. The metadata labels names that match the following
@@ -2263,3 +2264,201 @@ enum ice_ddp_state ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf,
 
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
+	u16 offset, size = 0;
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
+	/* Get the current Tx topology */
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
+		ice_debug(hw, ICE_DBG_INIT, "Default topology already applied\n");
+		return -EEXIST;
+	}
+
+	/* Is new topology already applied ? */
+	if ((flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
+	    hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS) {
+		ice_debug(hw, ICE_DBG_INIT, "New topology already applied\n");
+		return -EEXIST;
+	}
+
+	/* Setting topology already issued? */
+	if (flags & ICE_AQC_TX_TOPO_FLAGS_ISSUED) {
+		ice_debug(hw, ICE_DBG_INIT, "Update Tx topology was done by another PF\n");
+		/* Add a small delay before exiting */
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
+		ice_debug(hw, ICE_DBG_INIT, "Failed to verify pkg (err: %d)\n",
+			  state);
+		return -EIO;
+	}
+
+	/* Find runtime configuration segment */
+	seg = (struct ice_run_time_cfg_seg *)
+	      ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE_RUN_TIME_CFG, pkg_hdr);
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
+	/* Make sure the section fits in the buffer */
+	if (offset + size > ICE_PKG_BUF_SIZE) {
+		ice_debug(hw, ICE_DBG_INIT, "5 layer topology buffer > 4K\n");
+		return -EIO;
+	}
+
+	/* Get the new topology buffer */
+	new_topo = ((u8 *)section) + offset;
+
+update_topo:
+	/* Acquire global lock to make sure that set topology issued
+	 * by one PF.
+	 */
+	status = ice_acquire_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, ICE_RES_WRITE,
+				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to acquire global lock\n");
+		return status;
+	}
+
+	/* Check if reset was triggered already. */
+	reg = rd32(hw, GLGEN_RSTAT);
+	if (reg & GLGEN_RSTAT_DEVSTATE_M) {
+		/* Reset is in progress, re-init the HW again */
+		ice_debug(hw, ICE_DBG_INIT, "Reset is in progress. Layer topology might be applied already\n");
+		ice_check_reset(hw);
+		return 0;
+	}
+
+	/* Set new topology */
+	status = ice_get_set_tx_topo(hw, new_topo, size, NULL, NULL, true);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed setting Tx topology\n");
+		return status;
+	}
+
+	/* New topology is updated, delay 1 second before issuing the CORER */
+	msleep(1000);
+	ice_reset(hw, ICE_RESET_CORER);
+	/* CORER will clear the global lock, so no explicit call
+	 * required for release.
+	 */
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index ff66c2ffb1a2..622543f08b43 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -454,4 +454,6 @@ u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld);
 void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 			   u32 sect_type);
 
+int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);
+
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 1aef05ea5a57..9baff6a857d8 100644
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
index 370e9bf5df2f..620ff1d87c2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -296,6 +296,7 @@ struct ice_hw_common_caps {
 	bool pcie_reset_avoidance;
 	/* Post update reset restriction */
 	bool reset_restrict_support;
+	bool tx_sched_topo_comp_mode_en;
 };
 
 /* IEEE 1588 TIME_SYNC specific info */
-- 
2.38.1

