Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DFB20AE63
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 10:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 418E887C4E;
	Fri, 26 Jun 2020 08:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-8-lT2pbOhZ; Fri, 26 Jun 2020 08:26:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBA9A87A87;
	Fri, 26 Jun 2020 08:26:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 789DC1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 08:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 74F5A2279E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 08:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gsQyMzS1rdLy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2020 08:26:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 41008204DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 08:26:17 +0000 (UTC)
IronPort-SDR: bxejANuupz96VbU9PXTWpHgZyrc7i6F5IspnZMacyndWmOG0V0ILUVPDjyTb0qz/3ogjVF2hSn
 YVsjxIDHfYBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="124889158"
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="124889158"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 01:26:17 -0700
IronPort-SDR: MEcBRA31cXEkuAVIS87ccK1d29T/BqOc/pWAmU8XnSvPmMV/nf1ge0pYD8ApZJ6x8j3jnSCud1
 wzjXTNy+UH2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="319954798"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.119.213])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jun 2020 01:26:15 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Jun 2020 16:16:37 +0800
Message-Id: <20200626081639.86278-4-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200626081639.86278-1-haiyue.wang@intel.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200626081639.86278-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next,
 v5 3/5] ice: support to get the VSI mapping
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
Cc: Beilei Xing <beilei.xing@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The DCF needs the mapping information of the VF ID to logical hardware
VSI ID, so that it can create the switch flow rules for other VFs.

Signed-off-by: Beilei Xing <beilei.xing@intel.com>
Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
Tested-by: Nannan Lu <nannan.lu@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 61 +++++++++++++++++++
 include/linux/avf/virtchnl.h                  | 21 +++++++
 2 files changed, 82 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 622b16efae0b..2584c3f199e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3848,6 +3848,64 @@ static int ice_vc_dis_dcf_cap(struct ice_vf *vf)
 				     v_ret, NULL, 0);
 }
 
+/**
+ * ice_vc_dcf_get_vsi_map - get VSI mapping table
+ * @vf: pointer to the VF info
+ */
+static int ice_vc_dcf_get_vsi_map(struct ice_vf *vf)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_dcf_vsi_map *vsi_map = NULL;
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *pf_vsi;
+	u16 len = 0;
+	int vf_id;
+	int ret;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	if (!ice_is_vf_dcf(vf) || ice_dcf_get_state(pf) != ICE_DCF_STATE_ON) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	len = struct_size(vsi_map, vf_vsi, pf->num_alloc_vfs - 1);
+	vsi_map = kzalloc(len, GFP_KERNEL);
+	if (!vsi_map) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		len = 0;
+		goto err;
+	}
+
+	pf_vsi = ice_get_main_vsi(pf);
+	if (!pf_vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		len = 0;
+		goto err;
+	}
+
+	vsi_map->pf_vsi = pf_vsi->vsi_num;
+	vsi_map->num_vfs = pf->num_alloc_vfs;
+
+	ice_for_each_vf(pf, vf_id) {
+		struct ice_vf *tmp_vf = &pf->vf[vf_id];
+
+		if (!ice_is_vf_disabled(tmp_vf) &&
+		    test_bit(ICE_VF_STATE_INIT, tmp_vf->vf_states))
+			vsi_map->vf_vsi[vf_id] = tmp_vf->lan_vsi_num |
+				VIRTCHNL_DCF_VF_VSI_VALID;
+	}
+
+err:
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DCF_GET_VSI_MAP, v_ret,
+				    (u8 *)vsi_map, len);
+	kfree(vsi_map);
+	return ret;
+}
+
 /**
  * ice_vc_process_vf_msg - Process request from VF
  * @pf: pointer to the PF structure
@@ -3967,6 +4025,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_DCF_DISABLE:
 		err = ice_vc_dis_dcf_cap(vf);
 		break;
+	case VIRTCHNL_OP_DCF_GET_VSI_MAP:
+		err = ice_vc_dcf_get_vsi_map(vf);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index e219cafabccd..ef07cff40662 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -140,6 +140,7 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DCF_CMD_DESC = 39,
 	VIRTCHNL_OP_DCF_CMD_BUFF = 40,
 	VIRTCHNL_OP_DCF_DISABLE = 41,
+	VIRTCHNL_OP_DCF_GET_VSI_MAP = 42,
 	/* New major set of opcodes introduced and so leaving room for
 	 * old misc opcodes to be added in future. Also these opcodes may only
 	 * be used if both the PF and VF have successfully negotiated the
@@ -627,6 +628,25 @@ struct virtchnl_filter {
 
 VIRTCHNL_CHECK_STRUCT_LEN(272, virtchnl_filter);
 
+/* VIRTCHNL_OP_DCF_GET_VSI_MAP
+ * VF sends this message to get VSI mapping table.
+ * PF responds with an indirect message containing VF's
+ * HW VSI IDs.
+ * The index of vf_vsi array is the logical VF ID, the
+ * value of vf_vsi array is the VF's HW VSI ID with its
+ * valid configuration.
+ */
+struct virtchnl_dcf_vsi_map {
+	u16 pf_vsi;	/* PF's HW VSI ID */
+	u16 num_vfs;	/* The actual number of VFs allocated */
+#define VIRTCHNL_DCF_VF_VSI_ID_S	0
+#define VIRTCHNL_DCF_VF_VSI_ID_M	(0xFFF << VIRTCHNL_DCF_VF_VSI_ID_S)
+#define VIRTCHNL_DCF_VF_VSI_VALID	BIT(15)
+	u16 vf_vsi[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_dcf_vsi_map);
+
 /* VIRTCHNL_OP_EVENT
  * PF sends this message to inform the VF driver of events that may affect it.
  * No direct response is expected from the VF, though it may generate other
@@ -1280,6 +1300,7 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 		valid_len = msglen;
 		break;
 	case VIRTCHNL_OP_DCF_DISABLE:
+	case VIRTCHNL_OP_DCF_GET_VSI_MAP:
 		break;
 	case VIRTCHNL_OP_GET_CAPS:
 		valid_len = sizeof(struct virtchnl_get_capabilities);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
