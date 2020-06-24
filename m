Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A0A206DE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:39:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3054F84081;
	Wed, 24 Jun 2020 07:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eu7N7sjIMtqc; Wed, 24 Jun 2020 07:39:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1246D86256;
	Wed, 24 Jun 2020 07:39:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8690B1BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 80839204DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:39:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jd7zDHVt6FwP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:39:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B77B20489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:39:10 +0000 (UTC)
IronPort-SDR: Z2RcyYW63MT1QeimKICbMine2xIgoOYTnUVNtUV32dcVzwHMBqu0x5AXEWod0meHIXohmQH2YM
 rQ+HeTd/gl7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="142584338"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="142584338"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:39:10 -0700
IronPort-SDR: OHTlUq7woZ+HvjvOKXP1yeOZGNpwB1oBbvi8x1igqPN1SjCJ0L2Pjk31HNmeDbVtAlKODWnD8d
 11GU0aGk1FKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="479170383"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.119.213])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jun 2020 00:39:08 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jun 2020 15:29:35 +0800
Message-Id: <20200624072939.9363-2-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200624072939.9363-1-haiyue.wang@intel.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624072939.9363-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 1/5] ice: add the virtchnl handler for
 AdminQ command
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

The DCF (Device Config Function) is a named trust VF (alway with ID 0,
single entity per PF port) that can act as a sole controlling entity to
exercise advance functionality such as adding switch rules for the rest
of VFs.

To achieve this approach, this VF is permitted to send some basic AdminQ
commands to the PF through virtual channel (mailbox), then the PF driver
sends these commands to the firmware, and returns the response to the VF
again through virtual channel.

The AdminQ command from DCF is split into two parts: one is the AdminQ
descriptor, the other is the buffer (the descriptor has BUF flag set).
These two parts should be sent in order, so that the PF can handle them
correctly.

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_dcf.c      |  49 +++++++
 drivers/net/ethernet/intel/ice/ice_dcf.h      |  20 +++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 130 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
 include/linux/avf/virtchnl.h                  |  10 ++
 8 files changed, 219 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 980bbcc64b4b..eb83b5fe11c3 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -24,7 +24,7 @@ ice-y := ice_main.o	\
 	 ice_flow.o	\
 	 ice_devlink.o	\
 	 ice_ethtool.o
-ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o
+ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_dcf.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7486d010a619..a6e419a3f547 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -435,6 +435,8 @@ struct ice_pf {
 	u32 tx_timeout_recovery_level;
 	char int_name[ICE_INT_NAME_STR_LEN];
 	u32 sw_int_count;
+
+	struct ice_dcf dcf;
 };
 
 struct ice_netdev_priv {
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 92f82f2a8af4..90d679ef7502 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1868,6 +1868,12 @@ enum ice_adminq_opc {
 	ice_aqc_opc_update_vsi				= 0x0211,
 	ice_aqc_opc_free_vsi				= 0x0213,
 
+	/* recipe commands */
+	ice_aqc_opc_add_recipe				= 0x0290,
+	ice_aqc_opc_recipe_to_profile			= 0x0291,
+	ice_aqc_opc_get_recipe				= 0x0292,
+	ice_aqc_opc_get_recipe_to_profile		= 0x0293,
+
 	/* switch rules population commands */
 	ice_aqc_opc_add_sw_rules			= 0x02A0,
 	ice_aqc_opc_update_sw_rules			= 0x02A1,
diff --git a/drivers/net/ethernet/intel/ice/ice_dcf.c b/drivers/net/ethernet/intel/ice/ice_dcf.c
new file mode 100644
index 000000000000..cbe60a0cb2d2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_dcf.c
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2020, Intel Corporation. */
+
+#include "ice.h"
+
+static const enum ice_adminq_opc aqc_permitted_tbl[] = {
+	/* Generic Firmware Admin commands */
+	ice_aqc_opc_get_ver,
+	ice_aqc_opc_req_res,
+	ice_aqc_opc_release_res,
+	ice_aqc_opc_list_func_caps,
+	ice_aqc_opc_list_dev_caps,
+
+	/* Package Configuration Admin Commands */
+	ice_aqc_opc_update_pkg,
+	ice_aqc_opc_get_pkg_info_list,
+
+	/* PHY commands */
+	ice_aqc_opc_get_phy_caps,
+	ice_aqc_opc_get_link_status,
+
+	/* Switch Block */
+	ice_aqc_opc_get_sw_cfg,
+	ice_aqc_opc_alloc_res,
+	ice_aqc_opc_free_res,
+	ice_aqc_opc_add_recipe,
+	ice_aqc_opc_recipe_to_profile,
+	ice_aqc_opc_get_recipe,
+	ice_aqc_opc_get_recipe_to_profile,
+	ice_aqc_opc_add_sw_rules,
+	ice_aqc_opc_update_sw_rules,
+	ice_aqc_opc_remove_sw_rules,
+};
+
+/**
+ * ice_dcf_aq_cmd_permitted - validate the AdminQ command permitted or not
+ * @desc: descriptor describing the command
+ */
+bool ice_dcf_aq_cmd_permitted(struct ice_aq_desc *desc)
+{
+	u16 opc = le16_to_cpu(desc->opcode);
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(aqc_permitted_tbl); i++)
+		if (opc == aqc_permitted_tbl[i])
+			return true;
+
+	return false;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_dcf.h b/drivers/net/ethernet/intel/ice/ice_dcf.h
new file mode 100644
index 000000000000..9edb2d5d9d8f
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_dcf.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2020, Intel Corporation. */
+
+#ifndef _ICE_DCF_H_
+#define _ICE_DCF_H_
+
+struct ice_dcf {
+	/* Handle the AdminQ command between the DCF (Device Config Function)
+	 * and the firmware.
+	 */
+#define ICE_DCF_AQ_DESC_TIMEOUT	(HZ / 10)
+	struct ice_aq_desc aq_desc;
+	u8 aq_desc_received;
+	unsigned long aq_desc_expires;
+};
+
+#ifdef CONFIG_PCI_IOV
+bool ice_dcf_aq_cmd_permitted(struct ice_aq_desc *desc);
+#endif /* CONFIG_PCI_IOV */
+#endif /* _ICE_DCF_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index a368a89b25f3..ca0d4dd5953c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3651,6 +3651,130 @@ static int ice_vf_init_vlan_stripping(struct ice_vf *vf)
 		return ice_vsi_manage_vlan_stripping(vsi, false);
 }
 
+/**
+ * ice_dcf_handle_aq_cmd - handle the AdminQ command from DCF to FW
+ * @vf: pointer to the VF info
+ * @aq_desc: the AdminQ command descriptor
+ * @aq_buf: the AdminQ command buffer if aq_buf_size is non-zero
+ * @aq_buf_size: the AdminQ command buffer size
+ *
+ * The VF splits the AdminQ command into two parts: one is the descriptor of
+ * AdminQ command, the other is the buffer of AdminQ command (the descriptor
+ * has BUF flag set). When both of them are received by PF, this function will
+ * forward them to firmware once to get the AdminQ's response. And also, the
+ * filled descriptor and buffer of the response will be sent back to VF one by
+ * one through the virtchnl.
+ */
+static int
+ice_dcf_handle_aq_cmd(struct ice_vf *vf, struct ice_aq_desc *aq_desc,
+		      u8 *aq_buf, u16 aq_buf_size)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct ice_pf *pf = vf->pf;
+	enum virtchnl_ops v_op;
+	enum ice_status aq_ret;
+	u16 v_msg_len = 0;
+	u8 *v_msg = NULL;
+	int ret;
+
+	pf->dcf.aq_desc_received = false;
+
+	if ((aq_buf && !aq_buf_size) || (!aq_buf && aq_buf_size))
+		return -EINVAL;
+
+	aq_ret = ice_aq_send_cmd(&pf->hw, aq_desc, aq_buf, aq_buf_size, NULL);
+	/* It needs to send back the AQ response message if ICE_ERR_AQ_ERROR
+	 * returns, some AdminQ handlers will use the error code filled by FW
+	 * to do exception handling.
+	 */
+	if (aq_ret && aq_ret != ICE_ERR_AQ_ERROR) {
+		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
+		v_op = VIRTCHNL_OP_DCF_CMD_DESC;
+		goto err;
+	}
+
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DCF_CMD_DESC, v_ret,
+				    (u8 *)aq_desc, sizeof(*aq_desc));
+	/* Bail out so we don't send the VIRTCHNL_OP_DCF_CMD_BUFF message
+	 * below if failure happens or no AdminQ command buffer.
+	 */
+	if (ret || !aq_buf_size)
+		return ret;
+
+	v_op = VIRTCHNL_OP_DCF_CMD_BUFF;
+	v_msg_len = le16_to_cpu(aq_desc->datalen);
+
+	/* buffer is not updated if data length exceeds buffer size */
+	if (v_msg_len > aq_buf_size)
+		v_msg_len = 0;
+	else if (v_msg_len)
+		v_msg = aq_buf;
+
+	/* send the response back to the VF */
+err:
+	return ice_vc_send_msg_to_vf(vf, v_op, v_ret, v_msg, v_msg_len);
+}
+
+/**
+ * ice_vc_dcf_cmd_desc_msg - handle the DCF AdminQ command descriptor
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer which holds the command descriptor
+ * @len: length of the message
+ */
+static int ice_vc_dcf_cmd_desc_msg(struct ice_vf *vf, u8 *msg, u16 len)
+{
+	struct ice_aq_desc *aq_desc = (struct ice_aq_desc *)msg;
+	struct ice_pf *pf = vf->pf;
+
+	if (len != sizeof(*aq_desc) || !ice_dcf_aq_cmd_permitted(aq_desc)) {
+		/* In case to avoid the VIRTCHNL_OP_DCF_CMD_DESC message with
+		 * the ICE_AQ_FLAG_BUF set followed by another bad message
+		 * VIRTCHNL_OP_DCF_CMD_DESC.
+		 */
+		pf->dcf.aq_desc_received = false;
+		goto err;
+	}
+
+	/* The AdminQ descriptor needs to be stored for use when the followed
+	 * VIRTCHNL_OP_DCF_CMD_BUFF is received.
+	 */
+	if (aq_desc->flags & cpu_to_le16(ICE_AQ_FLAG_BUF)) {
+		pf->dcf.aq_desc = *aq_desc;
+		pf->dcf.aq_desc_received = true;
+		pf->dcf.aq_desc_expires = jiffies + ICE_DCF_AQ_DESC_TIMEOUT;
+		return 0;
+	}
+
+	return ice_dcf_handle_aq_cmd(vf, aq_desc, NULL, 0);
+
+	/* send the response back to the VF */
+err:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DCF_CMD_DESC,
+				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
+}
+
+/**
+ * ice_vc_dcf_cmd_buff_msg - handle the DCF AdminQ command buffer
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer which holds the command buffer
+ * @len: length of the message
+ */
+static int ice_vc_dcf_cmd_buff_msg(struct ice_vf *vf, u8 *msg, u16 len)
+{
+	struct ice_pf *pf = vf->pf;
+
+	if (!len || !pf->dcf.aq_desc_received ||
+	    time_is_before_jiffies(pf->dcf.aq_desc_expires))
+		goto err;
+
+	return ice_dcf_handle_aq_cmd(vf, &pf->dcf.aq_desc, msg, len);
+
+	/* send the response back to the VF */
+err:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DCF_CMD_BUFF,
+				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
+}
+
 /**
  * ice_vc_process_vf_msg - Process request from VF
  * @pf: pointer to the PF structure
@@ -3761,6 +3885,12 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
 		err = ice_vc_dis_vlan_stripping(vf);
 		break;
+	case VIRTCHNL_OP_DCF_CMD_DESC:
+		err = ice_vc_dcf_cmd_desc_msg(vf, msg, msglen);
+		break;
+	case VIRTCHNL_OP_DCF_CMD_BUFF:
+		err = ice_vc_dcf_cmd_buff_msg(vf, msg, msglen);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 67aa9110fdd1..4a257415f6a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -4,6 +4,7 @@
 #ifndef _ICE_VIRTCHNL_PF_H_
 #define _ICE_VIRTCHNL_PF_H_
 #include "ice.h"
+#include "ice_dcf.h"
 
 /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
 #define ICE_MAX_VLAN_PER_VF		8
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index a13690c3cc94..fa9a3a047dd4 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -136,6 +136,9 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_CHANNELS = 31,
 	VIRTCHNL_OP_ADD_CLOUD_FILTER = 32,
 	VIRTCHNL_OP_DEL_CLOUD_FILTER = 33,
+	/* opcode 34, 35, 36, 37 and 38 are reserved */
+	VIRTCHNL_OP_DCF_CMD_DESC = 39,
+	VIRTCHNL_OP_DCF_CMD_BUFF = 40,
 	/* New major set of opcodes introduced and so leaving room for
 	 * old misc opcodes to be added in future. Also these opcodes may only
 	 * be used if both the PF and VF have successfully negotiated the
@@ -1262,6 +1265,13 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DEL_CLOUD_FILTER:
 		valid_len = sizeof(struct virtchnl_filter);
 		break;
+	case VIRTCHNL_OP_DCF_CMD_DESC:
+	case VIRTCHNL_OP_DCF_CMD_BUFF:
+		/* These two opcodes are specific to handle the AdminQ command,
+		 * so the validation needs to be done in PF's context.
+		 */
+		valid_len = msglen;
+		break;
 	case VIRTCHNL_OP_GET_CAPS:
 		valid_len = sizeof(struct virtchnl_get_capabilities);
 		break;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
