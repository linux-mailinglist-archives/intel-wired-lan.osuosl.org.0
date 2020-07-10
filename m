Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 207B421AC57
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 03:03:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C14D98903A;
	Fri, 10 Jul 2020 01:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VNNgPM2kHai3; Fri, 10 Jul 2020 01:03:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A39E89596;
	Fri, 10 Jul 2020 01:03:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CBD61BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C90089170
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:03:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 52zMtpaQD11b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 01:03:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AF0E389519
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:02:59 +0000 (UTC)
IronPort-SDR: W32a/sqADh4iYqnBXv+gVBzQJLz+bD86x4s7+d1S7n9LXGlsEvkPjITO/hp1KBkj1/Ac1SNLd2
 6vsdBXFIfSvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209663006"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="209663006"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 18:02:59 -0700
IronPort-SDR: d/D8YE1BfbEFDw7AbdYMCJBNQze5TsP3SCqivtUViyJVZZWl2DCCvqwkiyRX/gWBkSVDXCJzOJ
 UwYqnjpQtsdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="458118897"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2020 18:02:58 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Jul 2020 09:06:38 +0800
Message-Id: <20200710010644.33817-11-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20200710010644.33817-1-qi.z.zhang@intel.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
Subject: [Intel-wired-lan] [PATCH S48 v5 10/16] ice: Support FDIR configure
 for AVF
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
Cc: qi.z.zhang@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add virtual channel support for iAVF FDIR add/validate/delete filter.
iAVF FDIR is Flow Director for Intel Adaptive Virtual Function which can
direct Ethernet packets to the queues of the Network Interface Card.
Add/delete command is adding or deleting one rule for each virtual
channel message, while validate command is just verifying if this rule
is valid without any other operations.

To add or delete one rule, driver needs to config TCAM and Profile,
build training packets which contains the input set value, and send
the training packets through FDIR Tx queue. In addition, driver needs to
manage the software context to avoid adding duplicated rules, deleting
non-existent rule, input set conflicts and other invalid cases.

NOTE:
Supported pattern/actions and their parse functions are not be included in
this patch, they will be added in a separate one.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Simei Su <simei.su@intel.com>
Signed-off-by: Beilei Xing <beilei.xing@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile            |    2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c  |    4 +
 drivers/net/ethernet/intel/ice/ice_fdir.c          |    6 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h          |    6 +
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h     |    2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 1035 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h |   24 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c   |   17 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h   |    6 +
 include/linux/avf/virtchnl.h                       |  120 +++
 10 files changed, 1216 insertions(+), 6 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index eb83b5fe11c3..229740c3c1e1 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -24,7 +24,7 @@ ice-y := ice_main.o	\
 	 ice_flow.o	\
 	 ice_devlink.o	\
 	 ice_ethtool.o
-ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_dcf.o
+ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_dcf.o ice_virtchnl_fdir.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index d7430ce6af26..5655e54e8a56 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1675,6 +1675,10 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 		input->flex_offset = userdata.flex_offset;
 	}
 
+	input->cnt_ena = ICE_FXD_FLTR_QW0_STAT_ENA_PKTS;
+	input->fdid_prio = ICE_FXD_FLTR_QW1_FDID_PRI_THREE;
+	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
+
 	/* input struct is added to the HW filter list */
 	ice_fdir_update_list_entry(pf, input, fsp->location);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 6834df14332f..b02c42bcb3d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -378,7 +378,7 @@ ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		fdir_fltr_ctx.drop = ICE_FXD_FLTR_QW0_DROP_NO;
 		fdir_fltr_ctx.qindex = input->q_index;
 	}
-	fdir_fltr_ctx.cnt_ena = ICE_FXD_FLTR_QW0_STAT_ENA_PKTS;
+	fdir_fltr_ctx.cnt_ena = input->cnt_ena;
 	fdir_fltr_ctx.cnt_index = input->cnt_index;
 	fdir_fltr_ctx.fd_vsi = ice_get_hw_vsi_num(hw, input->dest_vsi);
 	fdir_fltr_ctx.evict_ena = ICE_FXD_FLTR_QW0_EVICT_ENA_FALSE;
@@ -387,8 +387,8 @@ ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		ICE_FXD_FLTR_QW1_PCMD_REMOVE;
 	fdir_fltr_ctx.swap = ICE_FXD_FLTR_QW1_SWAP_NOT_SET;
 	fdir_fltr_ctx.comp_q = ICE_FXD_FLTR_QW0_COMP_Q_ZERO;
-	fdir_fltr_ctx.comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
-	fdir_fltr_ctx.fdid_prio = 3;
+	fdir_fltr_ctx.comp_report = input->comp_report;
+	fdir_fltr_ctx.fdid_prio = input->fdid_prio;
 	fdir_fltr_ctx.desc_prof = 1;
 	fdir_fltr_ctx.desc_prof_prio = 3;
 	ice_set_fd_desc_val(&fdir_fltr_ctx, fdesc);
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 1c587766daab..1bdd4199530b 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -25,6 +25,9 @@
 #define ICE_IPV6_UDP_DST_PORT_OFFSET	56
 #define ICE_IPV6_SCTP_SRC_PORT_OFFSET	54
 #define ICE_IPV6_SCTP_DST_PORT_OFFSET	56
+
+#define ICE_FDIR_MAX_FLTRS		16384
+
 /* IP v4 has 2 flag bits that enable fragment processing: DF and MF. DF
  * requests that the packet not be fragmented. MF indicates that a packet has
  * been fragmented.
@@ -129,9 +132,12 @@ struct ice_fdir_fltr {
 	u16 q_index;
 	u16 dest_vsi;
 	u8 dest_ctl;
+	u8 cnt_ena;
 	u8 fltr_status;
 	u16 cnt_index;
 	u32 fltr_id;
+	u8 fdid_prio;
+	u8 comp_report;
 };
 
 /* Dummy packet filter definition structure */
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 14dfbbc1b2cf..1382c498e1f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -55,6 +55,7 @@ struct ice_fltr_desc {
 #define ICE_FXD_FLTR_QW0_COMP_REPORT_M	\
 				(0x3ULL << ICE_FXD_FLTR_QW0_COMP_REPORT_S)
 #define ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL	0x1ULL
+#define ICE_FXD_FLTR_QW0_COMP_REPORT_SW		0x2ULL
 
 #define ICE_FXD_FLTR_QW0_FD_SPACE_S	14
 #define ICE_FXD_FLTR_QW0_FD_SPACE_M	(0x3ULL << ICE_FXD_FLTR_QW0_FD_SPACE_S)
@@ -128,6 +129,7 @@ struct ice_fltr_desc {
 #define ICE_FXD_FLTR_QW1_FDID_PRI_S	25
 #define ICE_FXD_FLTR_QW1_FDID_PRI_M	(0x7ULL << ICE_FXD_FLTR_QW1_FDID_PRI_S)
 #define ICE_FXD_FLTR_QW1_FDID_PRI_ONE	0x1ULL
+#define ICE_FXD_FLTR_QW1_FDID_PRI_THREE	0x3ULL
 
 #define ICE_FXD_FLTR_QW1_FDID_MDID_S	28
 #define ICE_FXD_FLTR_QW1_FDID_MDID_M	(0xFULL << ICE_FXD_FLTR_QW1_FDID_MDID_S)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
new file mode 100644
index 000000000000..98d70e51456d
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -0,0 +1,1035 @@
+
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2020, Intel Corporation. */
+
+#include "ice.h"
+#include "ice_base.h"
+#include "ice_lib.h"
+#include "ice_flow.h"
+
+#define to_fltr_conf_from_desc(p) \
+	container_of(p, struct virtchnl_fdir_fltr_conf, input)
+
+#define ICE_FLOW_PROF_TYPE_S	0
+#define ICE_FLOW_PROF_TYPE_M	(0xFFFFFFFFULL << ICE_FLOW_PROF_TYPE_S)
+#define ICE_FLOW_PROF_VSI_S	32
+#define ICE_FLOW_PROF_VSI_M	(0xFFFFFFFFULL << ICE_FLOW_PROF_VSI_S)
+
+/* Flow profile ID format:
+ * [0:31] - flow type, flow + tun_offs
+ * [32:63] - VSI index
+ */
+#define ICE_FLOW_PROF_FD(vsi, flow, tun_offs) \
+	(u64)(((((flow) + (tun_offs)) & ICE_FLOW_PROF_TYPE_M)) | \
+	      (((u64)(vsi) << ICE_FLOW_PROF_VSI_S) & ICE_FLOW_PROF_VSI_M))
+
+struct virtchnl_fdir_fltr_conf {
+	struct ice_fdir_fltr input;
+};
+
+struct virtchnl_fdir_inset_map {
+	enum virtchnl_proto_hdr_field field;
+	enum ice_flow_field fld;
+};
+
+static const struct virtchnl_fdir_inset_map fdir_inset_map[] = {
+	{VIRTCHNL_PROTO_HDR_IPV4_SRC, ICE_FLOW_FIELD_IDX_IPV4_SA},
+	{VIRTCHNL_PROTO_HDR_IPV4_DST, ICE_FLOW_FIELD_IDX_IPV4_DA},
+	{VIRTCHNL_PROTO_HDR_IPV4_DSCP, ICE_FLOW_FIELD_IDX_IPV4_DSCP},
+	{VIRTCHNL_PROTO_HDR_IPV4_TTL, ICE_FLOW_FIELD_IDX_IPV4_TTL},
+	{VIRTCHNL_PROTO_HDR_IPV4_PROT, ICE_FLOW_FIELD_IDX_IPV4_PROT},
+	{VIRTCHNL_PROTO_HDR_IPV6_SRC, ICE_FLOW_FIELD_IDX_IPV6_SA},
+	{VIRTCHNL_PROTO_HDR_IPV6_DST, ICE_FLOW_FIELD_IDX_IPV6_DA},
+	{VIRTCHNL_PROTO_HDR_IPV6_TC, ICE_FLOW_FIELD_IDX_IPV6_DSCP},
+	{VIRTCHNL_PROTO_HDR_IPV6_HOP_LIMIT, ICE_FLOW_FIELD_IDX_IPV6_TTL},
+	{VIRTCHNL_PROTO_HDR_IPV6_PROT, ICE_FLOW_FIELD_IDX_IPV6_PROT},
+	{VIRTCHNL_PROTO_HDR_UDP_SRC_PORT, ICE_FLOW_FIELD_IDX_UDP_SRC_PORT},
+	{VIRTCHNL_PROTO_HDR_UDP_DST_PORT, ICE_FLOW_FIELD_IDX_UDP_DST_PORT},
+	{VIRTCHNL_PROTO_HDR_TCP_SRC_PORT, ICE_FLOW_FIELD_IDX_TCP_SRC_PORT},
+	{VIRTCHNL_PROTO_HDR_TCP_DST_PORT, ICE_FLOW_FIELD_IDX_TCP_DST_PORT},
+	{VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT, ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT},
+	{VIRTCHNL_PROTO_HDR_SCTP_DST_PORT, ICE_FLOW_FIELD_IDX_SCTP_DST_PORT},
+};
+
+/**
+ * ice_vc_fdir_param_check
+ * @vf: pointer to the VF structure
+ * @vsi_id: VF relative VSI ID
+ *
+ * Check for the valid VSI ID, PF's state and VF's state
+ *
+ * Return: 0 on success, and -EINVAL on error.
+ */
+static int
+ice_vc_fdir_param_check(struct ice_vf *vf, u16 vsi_id)
+{
+	struct ice_pf *pf = vf->pf;
+
+	if (!test_bit(ICE_FLAG_FD_ENA, pf->flags))
+		return -EINVAL;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
+		return -EINVAL;
+
+	if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_FDIR_PF))
+		return -EINVAL;
+
+	if (vsi_id != vf->lan_vsi_num)
+		return -EINVAL;
+
+	if (!ice_vc_isvalid_vsi_id(vf, vsi_id))
+		return -EINVAL;
+
+	if (!pf->vsi[vf->lan_vsi_idx])
+		return -EINVAL;
+
+	return 0;
+}
+
+/**
+ * ice_vf_start_ctrl_vsi
+ * @vf: pointer to the VF structure
+ *
+ * Allocate ctrl_vsi for the first time and open the ctrl_vsi port for VF
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int ice_vf_start_ctrl_vsi(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *ctrl_vsi;
+	struct device *dev;
+	int err;
+
+	dev = ice_pf_to_dev(pf);
+	if (vf->ctrl_vsi_idx != ICE_NO_VSI)
+		return -EEXIST;
+
+	ctrl_vsi = ice_vf_ctrl_vsi_setup(vf);
+	if (!ctrl_vsi) {
+		dev_dbg(dev, "Could not setup control VSI for VF %d\n",
+			vf->vf_id);
+		return -ENOMEM;
+	}
+
+	err = ice_vsi_open_ctrl(ctrl_vsi);
+	if (err) {
+		dev_dbg(dev, "Could not open control VSI for VF %d\n",
+			vf->vf_id);
+		goto err_vsi_open;
+	}
+
+	return 0;
+
+err_vsi_open:
+	ice_vsi_release(ctrl_vsi);
+	if (vf->ctrl_vsi_idx != ICE_NO_VSI) {
+		pf->vsi[vf->ctrl_vsi_idx] = NULL;
+		vf->ctrl_vsi_idx = ICE_NO_VSI;
+	}
+	return err;
+}
+
+/**
+ * ice_vc_fdir_alloc_prof - allocate profile for this filter flow type
+ * @vf: pointer to the VF structure
+ * @flow: filter flow type
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_alloc_prof(struct ice_vf *vf, enum ice_fltr_ptype flow)
+{
+	struct ice_vf_fdir *fdir = &vf->fdir;
+
+	if (!fdir->fdir_prof) {
+		fdir->fdir_prof = devm_kcalloc(ice_pf_to_dev(vf->pf),
+					       ICE_FLTR_PTYPE_MAX,
+					       sizeof(*fdir->fdir_prof),
+					       GFP_KERNEL);
+		if (!fdir->fdir_prof)
+			return -ENOMEM;
+	}
+
+	if (!fdir->fdir_prof[flow]) {
+		fdir->fdir_prof[flow] = devm_kzalloc(ice_pf_to_dev(vf->pf),
+						     sizeof(**fdir->fdir_prof),
+						     GFP_KERNEL);
+		if (!fdir->fdir_prof[flow])
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vc_fdir_free_prof - free profile for this filter flow type
+ * @vf: pointer to the VF structure
+ * @flow: filter flow type
+ */
+static void
+ice_vc_fdir_free_prof(struct ice_vf *vf, enum ice_fltr_ptype flow)
+{
+	struct ice_vf_fdir *fdir = &vf->fdir;
+
+	if (!fdir->fdir_prof)
+		return;
+
+	if (!fdir->fdir_prof[flow])
+		return;
+
+	devm_kfree(ice_pf_to_dev(vf->pf), fdir->fdir_prof[flow]);
+	fdir->fdir_prof[flow] = NULL;
+}
+
+/**
+ * ice_vc_fdir_free_prof_all - free all the profile for this VF
+ * @vf: pointer to the VF structure
+ */
+static void ice_vc_fdir_free_prof_all(struct ice_vf *vf)
+{
+	struct ice_vf_fdir *fdir = &vf->fdir;
+	enum ice_fltr_ptype flow;
+
+	if (!fdir->fdir_prof)
+		return;
+
+	for (flow = ICE_FLTR_PTYPE_NONF_NONE; flow < ICE_FLTR_PTYPE_MAX; flow++)
+		ice_vc_fdir_free_prof(vf, flow);
+
+	devm_kfree(ice_pf_to_dev(vf->pf), fdir->fdir_prof);
+	fdir->fdir_prof = NULL;
+}
+
+/**
+ * ice_vc_fdir_parse_flow_fld
+ * @proto_hdr: virtual channel protocol filter header
+ * @conf: FDIR configuration for each filter
+ * @fld: field type array
+ * @fld_cnt: field counter
+ *
+ * Parse the virtual channel filter header and store them into field type array
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_parse_flow_fld(struct virtchnl_proto_hdr *proto_hdr,
+			   struct virtchnl_fdir_fltr_conf *conf,
+			   enum ice_flow_field *fld, int *fld_cnt)
+{
+	struct virtchnl_proto_hdr hdr;
+	u32 i;
+
+	memcpy(&hdr, proto_hdr, sizeof(hdr));
+
+	for (i = 0; (i < ARRAY_SIZE(fdir_inset_map)) &&
+	     VIRTCHNL_GET_PROTO_HDR_FIELD(&hdr); i++)
+		if (VIRTCHNL_TEST_PROTO_HDR(&hdr, fdir_inset_map[i].field)) {
+			fld[*fld_cnt] = fdir_inset_map[i].fld;
+			*fld_cnt += 1;
+			if (*fld_cnt >= ICE_FLOW_FIELD_IDX_MAX)
+				return -EINVAL;
+			VIRTCHNL_DEL_PROTO_HDR_FIELD(&hdr,
+						     fdir_inset_map[i].field);
+		}
+
+	return 0;
+}
+
+/**
+ * ice_vc_fdir_set_flow_fld
+ * @vf: pointer to the VF structure
+ * @fltr: virtual channel add cmd buffer
+ * @conf: FDIR configuration for each filter
+ * @seg: array of one or more packet segments that describe the flow
+ *
+ * Parse the virtual channel add msg buffer's field vector and store them into
+ * flow's packet segment field
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_set_flow_fld(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
+			 struct virtchnl_fdir_fltr_conf *conf,
+			 struct ice_flow_seg_info *seg)
+{
+	struct virtchnl_fdir_rule *rule = &fltr->rule_cfg;
+	enum ice_flow_field fld[ICE_FLOW_FIELD_IDX_MAX];
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct virtchnl_proto_hdrs *proto;
+	int fld_cnt = 0;
+	int i;
+
+	proto = &rule->proto_hdrs;
+	for (i = 0; i < proto->count; i++) {
+		struct virtchnl_proto_hdr *hdr = &proto->proto_hdr[i];
+		int ret;
+
+		ret = ice_vc_fdir_parse_flow_fld(hdr, conf, fld, &fld_cnt);
+		if (ret)
+			return ret;
+	}
+
+	if (fld_cnt == 0) {
+		dev_dbg(dev, "Empty input set for VF %d\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < fld_cnt; i++)
+		ice_flow_set_fld(seg, fld[i],
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+
+	return 0;
+}
+
+/**
+ * ice_vc_fdir_set_flow_fld - config the flow's packet segment header
+ * @vf: pointer to the VF structure
+ * @conf: FDIR configuration for each filter
+ * @seg: array of one or more packet segments that describe the flow
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
+			 struct virtchnl_fdir_fltr_conf *conf,
+			 struct ice_flow_seg_info *seg)
+{
+	enum ice_fltr_ptype flow = conf->input.flow_type;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+
+	switch (flow) {
+	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_TCP |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_UDP |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_SCTP |
+				  ICE_FLOW_SEG_HDR_IPV4 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_TCP |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_UDP |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_SCTP |
+				  ICE_FLOW_SEG_HDR_IPV6 |
+				  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		break;
+	default:
+		dev_dbg(dev, "Invalid flow type 0x%x for VF %d failed\n",
+			flow, vf->vf_id);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vc_fdir_rem_prof - remove profile for this filter flow type
+ * @vf: pointer to the VF structure
+ * @flow: filter flow type
+ * @tun: 0 implies non-tunnel type filter, 1 implies tunnel type filter
+ */
+static void
+ice_vc_fdir_rem_prof(struct ice_vf *vf, enum ice_fltr_ptype flow, int tun)
+{
+	struct ice_vf_fdir *fdir = &vf->fdir;
+	struct ice_fd_hw_prof *vf_prof;
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vf_vsi;
+	struct device *dev;
+	struct ice_hw *hw;
+	u64 prof_id;
+	int i;
+
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+	if (!fdir->fdir_prof || !fdir->fdir_prof[flow])
+		return;
+
+	vf_prof = fdir->fdir_prof[flow];
+
+	vf_vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vf_vsi) {
+		dev_dbg(dev, "NULL vf %d vsi pointer\n", vf->vf_id);
+		return;
+	}
+
+	if (!fdir->prof_entry_cnt[flow][tun])
+		return;
+
+	prof_id = ICE_FLOW_PROF_FD(vf_vsi->vsi_num,
+				   flow, tun ? ICE_FLTR_PTYPE_MAX : 0);
+
+	for (i = 0; i < fdir->prof_entry_cnt[flow][tun]; i++)
+		if (vf_prof->entry_h[i][tun]) {
+			u16 vsi_num = ice_get_hw_vsi_num(hw, vf_prof->vsi_h[i]);
+
+			ice_rem_prof_id_flow(hw, ICE_BLK_FD, vsi_num, prof_id);
+			ice_flow_rem_entry(hw, ICE_BLK_FD,
+					   vf_prof->entry_h[i][tun]);
+			vf_prof->entry_h[i][tun] = 0;
+		}
+
+	ice_flow_rem_prof(hw, ICE_BLK_FD, prof_id);
+	devm_kfree(dev, vf_prof->fdir_seg[tun]);
+	vf_prof->fdir_seg[tun] = NULL;
+
+	for (i = 0; i < vf_prof->cnt; i++)
+		vf_prof->vsi_h[i] = 0;
+
+	fdir->prof_entry_cnt[flow][tun] = 0;
+}
+
+/**
+ * ice_vc_fdir_rem_prof_all - remove profile for this VF
+ * @vf: pointer to the VF structure
+ */
+static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
+{
+	enum ice_fltr_ptype flow;
+
+	for (flow = ICE_FLTR_PTYPE_NONF_NONE;
+	     flow < ICE_FLTR_PTYPE_MAX; flow++) {
+		ice_vc_fdir_rem_prof(vf, flow, 0);
+		ice_vc_fdir_rem_prof(vf, flow, 1);
+	}
+}
+
+/**
+ * ice_vc_fdir_write_flow_prof
+ * @vf: pointer to the VF structure
+ * @flow: filter flow type
+ * @seg: array of one or more packet segments that describe the flow
+ * @tun: 0 implies non-tunnel type filter, 1 implies tunnel type filter
+ *
+ * Write the flow's profile config and packet segment into the hardware
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
+			    struct ice_flow_seg_info *seg, int tun)
+{
+	struct ice_vf_fdir *fdir = &vf->fdir;
+	struct ice_vsi *vf_vsi, *ctrl_vsi;
+	struct ice_flow_seg_info *old_seg;
+	struct ice_flow_prof *prof = NULL;
+	struct ice_fd_hw_prof *vf_prof;
+	enum ice_status status;
+	struct device *dev;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	u64 entry1_h = 0;
+	u64 entry2_h = 0;
+	u64 prof_id;
+	int ret;
+
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+	vf_vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vf_vsi)
+		return -EINVAL;
+
+	ctrl_vsi = pf->vsi[vf->ctrl_vsi_idx];
+	if (!ctrl_vsi)
+		return -EINVAL;
+
+	vf_prof = fdir->fdir_prof[flow];
+	old_seg = vf_prof->fdir_seg[tun];
+	if (old_seg) {
+		if (!memcmp(old_seg, seg, sizeof(*seg))) {
+			dev_dbg(dev, "Duplicated profile for VF %d!\n",
+				vf->vf_id);
+			return -EEXIST;
+		}
+
+		if (fdir->fdir_fltr_cnt[flow][tun]) {
+			ret = -EINVAL;
+			dev_dbg(dev, "Input set conflicts for VF %d\n",
+				vf->vf_id);
+			goto err_exit;
+		}
+
+		/* remove previously allocated profile */
+		ice_vc_fdir_rem_prof(vf, flow, tun);
+	}
+
+	prof_id = ICE_FLOW_PROF_FD(vf_vsi->vsi_num,
+				   flow, tun ? ICE_FLTR_PTYPE_MAX : 0);
+
+	status = ice_flow_add_prof(hw, ICE_BLK_FD, ICE_FLOW_RX, prof_id, seg,
+				   tun + 1, &prof);
+	ret = ice_status_to_errno(status);
+	if (ret) {
+		dev_dbg(dev, "Could not add VSI flow 0x%x for VF %d\n",
+			flow, vf->vf_id);
+		goto err_exit;
+	}
+
+	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, vf_vsi->idx,
+				    vf_vsi->idx, ICE_FLOW_PRIO_NORMAL,
+				    seg, &entry1_h);
+	ret = ice_status_to_errno(status);
+	if (ret) {
+		dev_dbg(dev, "Could not add flow 0x%x VSI entry for VF %d\n",
+			flow, vf->vf_id);
+		goto err_prof;
+	}
+
+	status = ice_flow_add_entry(hw, ICE_BLK_FD, prof_id, vf_vsi->idx,
+				    ctrl_vsi->idx, ICE_FLOW_PRIO_NORMAL,
+				    seg, &entry2_h);
+	ret = ice_status_to_errno(status);
+	if (ret) {
+		dev_dbg(dev,
+			"Could not add flow 0x%x Ctrl VSI entry for VF %d\n",
+			flow, vf->vf_id);
+		goto err_entry_1;
+	}
+
+	vf_prof->fdir_seg[tun] = seg;
+	vf_prof->cnt = 0;
+	fdir->prof_entry_cnt[flow][tun] = 0;
+
+	vf_prof->entry_h[vf_prof->cnt][tun] = entry1_h;
+	vf_prof->vsi_h[vf_prof->cnt] = vf_vsi->idx;
+	vf_prof->cnt++;
+	fdir->prof_entry_cnt[flow][tun]++;
+
+	vf_prof->entry_h[vf_prof->cnt][tun] = entry2_h;
+	vf_prof->vsi_h[vf_prof->cnt] = ctrl_vsi->idx;
+	vf_prof->cnt++;
+	fdir->prof_entry_cnt[flow][tun]++;
+
+	return 0;
+
+err_entry_1:
+	ice_rem_prof_id_flow(hw, ICE_BLK_FD,
+			     ice_get_hw_vsi_num(hw, vf_vsi->idx), prof_id);
+	ice_flow_rem_entry(hw, ICE_BLK_FD, entry1_h);
+err_prof:
+	ice_flow_rem_prof(hw, ICE_BLK_FD, prof_id);
+err_exit:
+	return ret;
+}
+
+/**
+ * ice_vc_fdir_config_input_set
+ * @vf: pointer to the VF structure
+ * @fltr: virtual channel add cmd buffer
+ * @conf: FDIR configuration for each filter
+ * @tun: 0 implies non-tunnel type filter, 1 implies tunnel type filter
+ *
+ * Config the input set type and value for virtual channel add msg buffer
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
+			     struct virtchnl_fdir_fltr_conf *conf, int tun)
+{
+	struct ice_fdir_fltr *input = &conf->input;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_flow_seg_info *seg;
+	enum ice_fltr_ptype flow;
+	int ret;
+
+	flow = input->flow_type;
+	ret = ice_vc_fdir_alloc_prof(vf, flow);
+	if (ret) {
+		dev_dbg(dev, "Alloc flow prof for VF %d failed\n", vf->vf_id);
+		return ret;
+	}
+
+	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
+	if (!seg)
+		return -ENOMEM;
+
+	ret = ice_vc_fdir_set_flow_fld(vf, fltr, conf, seg);
+	if (ret) {
+		dev_dbg(dev, "Set flow field for VF %d failed\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	ret = ice_vc_fdir_set_flow_hdr(vf, conf, seg);
+	if (ret) {
+		dev_dbg(dev, "Set flow hdr for VF %d failed\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	ret = ice_vc_fdir_write_flow_prof(vf, flow, seg, tun);
+	if (ret == -EEXIST) {
+		devm_kfree(dev, seg);
+	} else if (ret) {
+		dev_dbg(dev, "Write flow profile for VF %d failed\n",
+			vf->vf_id);
+		goto err_exit;
+	}
+
+	return 0;
+
+err_exit:
+	devm_kfree(dev, seg);
+	return ret;
+}
+
+/**
+ * ice_vc_validate_fdir_fltr - validate the virtual channel filter
+ * @vf: pointer to the VF info
+ * @fltr: virtual channel add cmd buffer
+ * @conf: FDIR configuration for each filter
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_validate_fdir_fltr(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
+			  struct virtchnl_fdir_fltr_conf *conf)
+{
+	/* Todo: rule validation */
+	return -EINVAL;
+}
+
+/**
+ * ice_vc_fdir_comp_rules - compare if two filter rules have the same value
+ * @conf_a: FDIR configuration for filter a
+ * @conf_b: FDIR configuration for filter b
+ *
+ * Return: 0 on success, and other on error.
+ */
+static bool
+ice_vc_fdir_comp_rules(struct virtchnl_fdir_fltr_conf *conf_a,
+		       struct virtchnl_fdir_fltr_conf *conf_b)
+{
+	struct ice_fdir_fltr *a = &conf_a->input;
+	struct ice_fdir_fltr *b = &conf_b->input;
+
+	if (a->flow_type != b->flow_type)
+		return false;
+	if (memcmp(&a->ip, &b->ip, sizeof(a->ip)))
+		return false;
+	if (memcmp(&a->mask, &b->mask, sizeof(a->mask)))
+		return false;
+	if (memcmp(&a->ext_data, &b->ext_data, sizeof(a->ext_data)))
+		return false;
+	if (memcmp(&a->ext_mask, &b->ext_mask, sizeof(a->ext_mask)))
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_vc_fdir_is_dup_fltr
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ *
+ * Check if there is duplicated rule with same conf value
+ *
+ * Return: 0 true success, and false on error.
+ */
+static bool
+ice_vc_fdir_is_dup_fltr(struct ice_vf *vf, struct virtchnl_fdir_fltr_conf *conf)
+{
+	struct ice_fdir_fltr *desc;
+	bool ret;
+
+	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
+		struct virtchnl_fdir_fltr_conf *node =
+				to_fltr_conf_from_desc(desc);
+
+		ret = ice_vc_fdir_comp_rules(node, conf);
+		if (ret)
+			return true;
+	}
+
+	return false;
+}
+
+/**
+ * ice_vc_fdir_insert_entry
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ * @id: pointer to ID value allocated by driver
+ *
+ * Insert FDIR conf entry into list and allocate ID for this filter
+ *
+ * Return: 0 true success, and other on error.
+ */
+static int
+ice_vc_fdir_insert_entry(struct ice_vf *vf,
+			 struct virtchnl_fdir_fltr_conf *conf, u32 *id)
+{
+	struct ice_fdir_fltr *input = &conf->input;
+	int i;
+
+	/* alloc ID corresponding with conf */
+	i = idr_alloc(&vf->fdir.fdir_rule_idr, conf, 0,
+		      ICE_FDIR_MAX_FLTRS, GFP_KERNEL);
+	if (i < 0)
+		return -EINVAL;
+	*id = i;
+
+	list_add(&input->fltr_node, &vf->fdir.fdir_rule_list);
+	return 0;
+}
+
+/**
+ * ice_vc_fdir_remove_entry - remove FDIR conf entry by ID value
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ * @id: filter rule's ID
+ */
+static void
+ice_vc_fdir_remove_entry(struct ice_vf *vf,
+			 struct virtchnl_fdir_fltr_conf *conf, u32 id)
+{
+	struct ice_fdir_fltr *input = &conf->input;
+
+	idr_remove(&vf->fdir.fdir_rule_idr, id);
+	list_del(&input->fltr_node);
+}
+
+/**
+ * ice_vc_fdir_lookup_entry - lookup FDIR conf entry by ID value
+ * @vf: pointer to the VF info
+ * @id: filter rule's ID
+ *
+ * Return: NULL on error, and other on success.
+ */
+static struct virtchnl_fdir_fltr_conf *
+ice_vc_fdir_lookup_entry(struct ice_vf *vf, u32 id)
+{
+	return idr_find(&vf->fdir.fdir_rule_idr, id);
+}
+
+/**
+ * ice_vc_fdir_flush_entry - remove all FDIR conf entry
+ * @vf: pointer to the VF info
+ */
+static void ice_vc_fdir_flush_entry(struct ice_vf *vf)
+{
+	struct virtchnl_fdir_fltr_conf *conf;
+	struct ice_fdir_fltr *desc, *temp;
+
+	list_for_each_entry_safe(desc, temp,
+				 &vf->fdir.fdir_rule_list, fltr_node) {
+		conf = to_fltr_conf_from_desc(desc);
+		list_del(&desc->fltr_node);
+		devm_kfree(ice_pf_to_dev(vf->pf), conf);
+	}
+}
+
+/**
+ * ice_vc_fdir_write_fltr - write filter rule into hardware
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ * @add: true implies add rule, false implies del rules
+ * @is_tun: false implies non-tunnel type filter, true implies tunnel filter
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
+				  struct virtchnl_fdir_fltr_conf *conf,
+				  bool add, bool is_tun)
+{
+	struct ice_fdir_fltr *input = &conf->input;
+	struct ice_vsi *vsi, *ctrl_vsi;
+	struct ice_fltr_desc desc;
+	enum ice_status status;
+	struct device *dev;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	int ret;
+	u8 *pkt;
+
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vsi) {
+		dev_dbg(dev, "Invalid vsi for VF %d\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	input->dest_vsi = vsi->idx;
+	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
+
+	ctrl_vsi = pf->vsi[vf->ctrl_vsi_idx];
+	if (!ctrl_vsi) {
+		dev_dbg(dev, "Invalid ctrl_vsi for VF %d\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	pkt = devm_kzalloc(dev, ICE_FDIR_MAX_RAW_PKT_SIZE, GFP_KERNEL);
+	if (!pkt)
+		return -ENOMEM;
+
+	ice_fdir_get_prgm_desc(hw, input, &desc, add);
+	status = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
+	ret = ice_status_to_errno(status);
+	if (ret) {
+		dev_dbg(dev, "Gen training pkt for VF %d ptype %d failed\n",
+			vf->vf_id, input->flow_type);
+		goto err_free_pkt;
+	}
+
+	ret = ice_prgm_fdir_fltr(ctrl_vsi, &desc, pkt);
+	if (ret)
+		goto err_free_pkt;
+
+	return 0;
+
+err_free_pkt:
+	devm_kfree(dev, pkt);
+	return ret;
+}
+
+/**
+ * ice_vc_add_fdir_fltr - add a FDIR filter for VF by the msg buffer
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer
+ *
+ * Return: 0 on success, and other on error.
+ */
+int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
+{
+	struct virtchnl_fdir_add *fltr = (struct virtchnl_fdir_add *)msg;
+	struct virtchnl_fdir_add *stat = NULL;
+	struct virtchnl_fdir_fltr_conf *conf;
+	enum virtchnl_status_code v_ret;
+	struct device *dev;
+	struct ice_pf *pf;
+	int is_tun = 0;
+	int len = 0;
+	int ret;
+
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
+	ret = ice_vc_fdir_param_check(vf, fltr->vsi_id);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		dev_dbg(dev, "Parameter check for VF %d failed\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	ret = ice_vf_start_ctrl_vsi(vf);
+	if (ret && (ret != -EEXIST)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		dev_err(dev, "Init FDIR for VF %d failed, ret:%d\n",
+			vf->vf_id, ret);
+		goto err_exit;
+	}
+
+	stat = kzalloc(sizeof(*stat), GFP_KERNEL);
+	if (!stat) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		dev_dbg(dev, "Alloc stat for VF %d failed\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	conf = devm_kzalloc(dev, sizeof(*conf), GFP_KERNEL);
+	if (!conf) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		dev_dbg(dev, "Alloc conf for VF %d failed\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	len = sizeof(*stat);
+	ret = ice_vc_validate_fdir_fltr(vf, fltr, conf);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_INVALID;
+		dev_dbg(dev, "Invalid FDIR filter from VF %d\n", vf->vf_id);
+		goto err_free_conf;
+	}
+
+	if (fltr->validate_only) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_SUCCESS;
+		devm_kfree(dev, conf);
+		ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_FDIR_FILTER,
+					    v_ret, (u8 *)stat, len);
+		goto exit;
+	}
+
+	ret = ice_vc_fdir_config_input_set(vf, fltr, conf, is_tun);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_CONFLICT;
+		dev_err(dev, "VF %d: FDIR input set configure failed, ret:%d\n",
+			vf->vf_id, ret);
+		goto err_free_conf;
+	}
+
+	ret = ice_vc_fdir_is_dup_fltr(vf, conf);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_EXIST;
+		dev_dbg(dev, "VF %d: duplicated FDIR rule detected\n",
+			vf->vf_id);
+		goto err_free_conf;
+	}
+
+	ret = ice_vc_fdir_insert_entry(vf, conf, &stat->flow_id);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_dbg(dev, "VF %d: insert FDIR list failed\n", vf->vf_id);
+		goto err_free_conf;
+	}
+
+	ret = ice_vc_fdir_write_fltr(vf, conf, true, is_tun);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "VF %d: writing FDIR rule failed, ret:%d\n",
+			vf->vf_id, ret);
+		goto err_rem_entry;
+	}
+
+	vf->fdir.fdir_fltr_cnt[conf->input.flow_type][is_tun]++;
+
+	v_ret = VIRTCHNL_STATUS_SUCCESS;
+	stat->status = VIRTCHNL_FDIR_SUCCESS;
+exit:
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_FDIR_FILTER, v_ret,
+				    (u8 *)stat, len);
+	kfree(stat);
+	return ret;
+
+err_rem_entry:
+	ice_vc_fdir_remove_entry(vf, conf, stat->flow_id);
+err_free_conf:
+	devm_kfree(dev, conf);
+err_exit:
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_FDIR_FILTER, v_ret,
+				    (u8 *)stat, len);
+	kfree(stat);
+	return ret;
+}
+
+/**
+ * ice_vc_del_fdir_fltr - delete a FDIR filter for VF by the msg buffer
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer
+ *
+ * Return: 0 on success, and other on error.
+ */
+int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
+{
+	struct virtchnl_fdir_del *fltr = (struct virtchnl_fdir_del *)msg;
+	struct virtchnl_fdir_del *stat = NULL;
+	struct virtchnl_fdir_fltr_conf *conf;
+	enum virtchnl_status_code v_ret;
+	struct device *dev;
+	struct ice_pf *pf;
+	int is_tun = 0;
+	int len = 0;
+	int ret;
+
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
+	ret = ice_vc_fdir_param_check(vf, fltr->vsi_id);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		dev_dbg(dev, "Parameter check for VF %d failed\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	stat = kzalloc(sizeof(*stat), GFP_KERNEL);
+	if (!stat) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		dev_dbg(dev, "Alloc stat for VF %d failed\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	len = sizeof(*stat);
+
+	conf = ice_vc_fdir_lookup_entry(vf, fltr->flow_id);
+	if (!conf) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST;
+		dev_dbg(dev, "VF %d: FDIR invalid flow_id:0x%X\n",
+			vf->vf_id, fltr->flow_id);
+		goto err_exit;
+	}
+
+	/* Just return failure when ctrl_vsi idx is invalid */
+	if (vf->ctrl_vsi_idx == ICE_NO_VSI) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "Invalid FDIR ctrl_vsi for VF %d\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	ret = ice_vc_fdir_write_fltr(vf, conf, false, is_tun);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "VF %d: writing FDIR rule failed, ret:%d\n",
+			vf->vf_id, ret);
+		goto err_exit;
+	}
+
+	ice_vc_fdir_remove_entry(vf, conf, fltr->flow_id);
+	devm_kfree(dev, conf);
+	vf->fdir.fdir_fltr_cnt[conf->input.flow_type][is_tun]--;
+
+	v_ret = VIRTCHNL_STATUS_SUCCESS;
+	stat->status = VIRTCHNL_FDIR_SUCCESS;
+
+err_exit:
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_FDIR_FILTER, v_ret,
+				    (u8 *)stat, len);
+	kfree(stat);
+	return ret;
+}
+
+/**
+ * ice_vf_fdir_init - init FDIR resource for VF
+ * @vf: pointer to the VF info
+ */
+void ice_vf_fdir_init(struct ice_vf *vf)
+{
+	struct ice_vf_fdir *fdir = &vf->fdir;
+
+	idr_init(&fdir->fdir_rule_idr);
+	INIT_LIST_HEAD(&fdir->fdir_rule_list);
+}
+
+/**
+ * ice_vf_fdir_exit - destroy FDIR resource for VF
+ * @vf: pointer to the VF info
+ */
+void ice_vf_fdir_exit(struct ice_vf *vf)
+{
+	ice_vc_fdir_flush_entry(vf);
+	idr_destroy(&vf->fdir.fdir_rule_idr);
+	ice_vc_fdir_rem_prof_all(vf);
+	ice_vc_fdir_free_prof_all(vf);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
new file mode 100644
index 000000000000..676de402475e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2020, Intel Corporation. */
+
+#ifndef _ICE_VIRTCHNL_FDIR_H_
+#define _ICE_VIRTCHNL_FDIR_H_
+
+struct ice_vf;
+
+/* VF FDIR information structure */
+struct ice_vf_fdir {
+	u16 fdir_fltr_cnt[ICE_FLTR_PTYPE_MAX][ICE_FD_HW_SEG_MAX];
+	int prof_entry_cnt[ICE_FLTR_PTYPE_MAX][ICE_FD_HW_SEG_MAX];
+	struct ice_fd_hw_prof **fdir_prof;
+
+	struct idr fdir_rule_idr;
+	struct list_head fdir_rule_list;
+};
+
+int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg);
+int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg);
+void ice_vf_fdir_init(struct ice_vf *vf);
+void ice_vf_fdir_exit(struct ice_vf *vf);
+
+#endif /* _ICE_VIRTCHNL_FDIR_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 42fdefdfd3b5..7c02f278ff88 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -473,6 +473,7 @@ static void ice_free_vf_res(struct ice_vf *vf)
 	 * accessing the VF's VSI after it's freed or invalidated.
 	 */
 	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
+	ice_vf_fdir_exit(vf);
 	/* free VF control VSI */
 	if (vf->ctrl_vsi_idx != ICE_NO_VSI)
 		ice_vf_ctrl_vsi_release(vf);
@@ -1512,6 +1513,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	ice_for_each_vf(pf, v) {
 		vf = &pf->vf[v];
 
+		ice_vf_fdir_exit(vf);
 		/* clean VF control VSI when resetting VFs since it should be
 		 * setup only when iAVF creates its first FDIR rule.
 		 */
@@ -1639,6 +1641,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 			dev_err(dev, "disabling promiscuous mode failed\n");
 	}
 
+	ice_vf_fdir_exit(vf);
 	/* clean VF control VSI when resetting VF since it should be setup
 	 * only when iAVF creates its first FDIR rule.
 	 */
@@ -1840,6 +1843,7 @@ static void ice_set_dflt_settings_vfs(struct ice_pf *pf)
 		 * creates its first fdir rule.
 		 */
 		ice_vf_ctrl_invalidate_vsi(vf);
+		ice_vf_fdir_init(vf);
 	}
 }
 
@@ -2162,7 +2166,7 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
  *
  * send msg to VF
  */
-static int
+int
 ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
 {
@@ -2290,6 +2294,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC;
 
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_FDIR_PF)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_FDIR_PF;
+
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2;
 
@@ -2405,7 +2412,7 @@ static struct ice_vsi *ice_find_vsi_from_id(struct ice_pf *pf, u16 id)
  *
  * check for the valid VSI ID
  */
-static bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
+bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 {
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
@@ -4749,6 +4756,12 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_DEL_RSS_CFG:
 		err = ice_vc_handle_rss_cfg(vf, msg, false);
 		break;
+	case VIRTCHNL_OP_ADD_FDIR_FILTER:
+		err = ice_vc_add_fdir_fltr(vf, msg);
+		break;
+	case VIRTCHNL_OP_DEL_FDIR_FILTER:
+		err = ice_vc_del_fdir_fltr(vf, msg);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 61e7daf7861e..d3a00fdf1ee4 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -4,6 +4,7 @@
 #ifndef _ICE_VIRTCHNL_PF_H_
 #define _ICE_VIRTCHNL_PF_H_
 #include "ice.h"
+#include "ice_virtchnl_fdir.h"
 #include "ice_dcf.h"
 
 /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
@@ -74,6 +75,7 @@ struct ice_vf {
 	u16 vf_id;			/* VF ID in the PF space */
 	u16 lan_vsi_idx;		/* index into PF struct */
 	u16 ctrl_vsi_idx;
+	struct ice_vf_fdir fdir;
 	/* first vector index of this VF in the PF space */
 	int first_vector_idx;
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
@@ -142,6 +144,10 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_print_vfs_mdd_events(struct ice_pf *pf);
 void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
+int
+ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
+		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
+bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
 #else /* CONFIG_PCI_IOV */
 #define ice_process_vflr_event(pf) do {} while (0)
 #define ice_free_vfs(pf) do {} while (0)
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index c7df6e810a1e..2a0c104943ac 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -145,6 +145,8 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_GET_SUPPORTED_RXDIDS = 44,
 	VIRTCHNL_OP_ADD_RSS_CFG = 45,
 	VIRTCHNL_OP_DEL_RSS_CFG = 46,
+	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
+	VIRTCHNL_OP_DEL_FDIR_FILTER = 48,
 	/* New major set of opcodes introduced and so leaving room for
 	 * old misc opcodes to be added in future. Also these opcodes may only
 	 * be used if both the PF and VF have successfully negotiated the
@@ -286,6 +288,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_ADQ			0X00800000
 #define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	0X04000000
 #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		0X08000000
+#define VIRTCHNL_VF_OFFLOAD_FDIR_PF		0X10000000
 #define VIRTCHNL_VF_CAP_DCF			0X40000000
 
 /* Define below the capability flags that are not offloads */
@@ -624,6 +627,9 @@ enum virtchnl_action {
 	/* action types */
 	VIRTCHNL_ACTION_DROP = 0,
 	VIRTCHNL_ACTION_TC_REDIRECT,
+	VIRTCHNL_ACTION_QUEUE,
+	VIRTCHNL_ACTION_MARK,
+	VIRTCHNL_ACTION_COUNT,
 };
 
 enum virtchnl_flow_type {
@@ -947,6 +953,114 @@ struct virtchnl_rss_cfg {
 
 VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl_rss_cfg);
 
+/* action configuration for FDIR */
+struct virtchnl_filter_action {
+	enum virtchnl_action type;
+	union {
+		/* used for queue and qgroup action */
+		struct {
+			u16 index;
+			u8 region;
+		} queue;
+		/* used for count action */
+		struct {
+			/* share counter ID with other flow rules */
+			u8 shared;
+			u32 id; /* counter ID */
+		} count;
+		/* used for mark action */
+		u32 mark_id;
+		u8 reserve[32];
+	} act_conf;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(36, virtchnl_filter_action);
+
+#define VIRTCHNL_MAX_NUM_ACTIONS  8
+
+struct virtchnl_filter_action_set {
+	/* action number must be less then VIRTCHNL_MAX_NUM_ACTIONS */
+	int count;
+	struct virtchnl_filter_action actions[VIRTCHNL_MAX_NUM_ACTIONS];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(292, virtchnl_filter_action_set);
+
+/* pattern and action for FDIR rule */
+struct virtchnl_fdir_rule {
+	struct virtchnl_proto_hdrs proto_hdrs;
+	struct virtchnl_filter_action_set action_set;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(2604, virtchnl_fdir_rule);
+
+/* Status returned to VF after VF requests FDIR commands
+ * VIRTCHNL_FDIR_SUCCESS
+ * VF FDIR related request is successfully done by PF
+ * The request can be OP_ADD/DEL.
+ *
+ * VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE
+ * OP_ADD_FDIR_FILTER request is failed due to no Hardware resource.
+ *
+ * VIRTCHNL_FDIR_FAILURE_RULE_EXIST
+ * OP_ADD_FDIR_FILTER request is failed due to the rule is already existed.
+ *
+ * VIRTCHNL_FDIR_FAILURE_RULE_CONFLICT
+ * OP_ADD_FDIR_FILTER request is failed due to conflict with existing rule.
+ *
+ * VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST
+ * OP_DEL_FDIR_FILTER request is failed due to this rule doesn't exist.
+ *
+ * VIRTCHNL_FDIR_FAILURE_RULE_INVALID
+ * OP_ADD_FDIR_FILTER request is failed due to parameters validation
+ * or HW doesn't support.
+ *
+ * VIRTCHNL_FDIR_FAILURE_RULE_TIMEOUT
+ * OP_ADD/DEL_FDIR_FILTER request is failed due to timing out
+ * for programming.
+ */
+enum virtchnl_fdir_prgm_status {
+	VIRTCHNL_FDIR_SUCCESS = 0,
+	VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE,
+	VIRTCHNL_FDIR_FAILURE_RULE_EXIST,
+	VIRTCHNL_FDIR_FAILURE_RULE_CONFLICT,
+	VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST,
+	VIRTCHNL_FDIR_FAILURE_RULE_INVALID,
+	VIRTCHNL_FDIR_FAILURE_RULE_TIMEOUT,
+};
+
+/* VIRTCHNL_OP_ADD_FDIR_FILTER
+ * VF sends this request to PF by filling out vsi_id,
+ * validate_only and rule_cfg. PF will return flow_id
+ * if the request is successfully done and return add_status to VF.
+ */
+struct virtchnl_fdir_add {
+	u16 vsi_id;  /* INPUT */
+	/*
+	 * 1 for validating a fdir rule, 0 for creating a fdir rule.
+	 * Validate and create share one ops: VIRTCHNL_OP_ADD_FDIR_FILTER.
+	 */
+	u16 validate_only; /* INPUT */
+	u32 flow_id;       /* OUTPUT */
+	struct virtchnl_fdir_rule rule_cfg; /* INPUT */
+	enum virtchnl_fdir_prgm_status status; /* OUTPUT */
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(2616, virtchnl_fdir_add);
+
+/* VIRTCHNL_OP_DEL_FDIR_FILTER
+ * VF sends this request to PF by filling out vsi_id
+ * and flow_id. PF will return del_status to VF.
+ */
+struct virtchnl_fdir_del {
+	u16 vsi_id;  /* INPUT */
+	u16 pad;
+	u32 flow_id; /* INPUT */
+	enum virtchnl_fdir_prgm_status status; /* OUTPUT */
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_fdir_del);
+
 /* PF capability flags
  * VIRTCHNL_CAP_STATELESS_OFFLOADS flag indicates stateless offloads
  * such as TX/RX Checksum offloading and TSO for non-tunneled packets. Please
@@ -1506,6 +1620,12 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DEL_RSS_CFG:
 		valid_len = sizeof(struct virtchnl_rss_cfg);
 		break;
+	case VIRTCHNL_OP_ADD_FDIR_FILTER:
+		valid_len = sizeof(struct virtchnl_fdir_add);
+		break;
+	case VIRTCHNL_OP_DEL_FDIR_FILTER:
+		valid_len = sizeof(struct virtchnl_fdir_del);
+		break;
 	case VIRTCHNL_OP_GET_CAPS:
 		valid_len = sizeof(struct virtchnl_get_capabilities);
 		break;
-- 
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
