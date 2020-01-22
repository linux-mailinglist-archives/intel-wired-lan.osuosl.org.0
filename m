Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D22145F7C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:54:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D31872014A;
	Wed, 22 Jan 2020 23:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZ8VMAgikNtE; Wed, 22 Jan 2020 23:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5015520361;
	Wed, 22 Jan 2020 23:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36FA11BF281
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 323278558D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAcWbnjluvan for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 178BD81EE9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651617"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:22 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:31 -0800
Message-Id: <20200122152138.41585-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 08/15] ice: Handle LAN overflow event
 for VF queues
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

From: Brett Creeley <brett.creeley@intel.com>

Currently we are not handling LAN overflow events. There can be cases
where LAN overflow events occur on VF queues, especially with Link Flow
Control (LFC) enabled on the controlling PF. In order to recover from
the LAN overflow event caused by a VF we need to determine if the queue
belongs to a VF and reset that VF accordingly.

The struct ice_aqc_event_lan_overflow returns a copy of the GLDCB_RTCTQ
register, which tells us what the queue index is in the global/device
space. The global queue index needs to first be converted to a PF space
queue index and then it can be used to find if a VF owns it.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 11 ++++
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 66 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  4 ++
 5 files changed, 86 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 210113eade20..801e4fd40b03 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1692,6 +1692,13 @@ struct ice_aqc_get_pkg_info_resp {
 	struct ice_aqc_get_pkg_info pkg_info[1];
 };
 
+/* Lan Queue Overflow Event (direct, 0x1001) */
+struct ice_aqc_event_lan_overflow {
+	__le32 prtdcb_ruptq;
+	__le32 qtx_ctl;
+	u8 reserved[8];
+};
+
 /**
  * struct ice_aq_desc - Admin Queue (AQ) descriptor
  * @flags: ICE_AQ_FLAG_* flags
@@ -1762,6 +1769,7 @@ struct ice_aq_desc {
 		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
 		struct ice_aqc_set_event_mask set_event_mask;
 		struct ice_aqc_get_link_status get_link_status;
+		struct ice_aqc_event_lan_overflow lan_overflow;
 	} params;
 };
 
@@ -1893,6 +1901,9 @@ enum ice_adminq_opc {
 	ice_aqc_opc_update_pkg				= 0x0C42,
 	ice_aqc_opc_get_pkg_info_list			= 0x0C43,
 
+	/* Standalone Commands/Events */
+	ice_aqc_opc_event_lan_overflow			= 0x1001,
+
 	/* debug commands */
 	ice_aqc_opc_fw_logging				= 0xFF09,
 	ice_aqc_opc_fw_logging_info			= 0xFF10,
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 306b8943cfc0..d767c398ac71 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -287,6 +287,8 @@
 #define GL_PWR_MODE_CTL				0x000B820C
 #define GL_PWR_MODE_CTL_CAR_MAX_BW_S		30
 #define GL_PWR_MODE_CTL_CAR_MAX_BW_M		ICE_M(0x3, 30)
+#define GLDCB_RTCTQ_RXQNUM_S			0
+#define GLDCB_RTCTQ_RXQNUM_M			ICE_M(0x7FF, 0)
 #define GLPRT_BPRCL(_i)				(0x00381380 + ((_i) * 8))
 #define GLPRT_BPTCL(_i)				(0x00381240 + ((_i) * 8))
 #define GLPRT_CRCERRS(_i)			(0x00380100 + ((_i) * 8))
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8816ac1ec573..4add2c3e830e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1032,6 +1032,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 			if (ice_handle_link_event(pf, &event))
 				dev_err(dev, "Could not handle link event\n");
 			break;
+		case ice_aqc_opc_event_lan_overflow:
+			ice_vf_lan_overflow_event(pf, &event);
+			break;
 		case ice_mbx_opc_send_msg_to_pf:
 			ice_vc_process_vf_msg(pf, &event);
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index cc5d9ed5e4ec..6f67a45a9026 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1488,6 +1488,72 @@ static void ice_vc_reset_vf(struct ice_vf *vf)
 	ice_reset_vf(vf, false);
 }
 
+/**
+ * ice_get_vf_from_pfq - get the VF who owns the PF space queue passed in
+ * @pf: PF used to index all VFs
+ * @pfq: queue index relative to the PF's function space
+ *
+ * If no VF is found who owns the pfq then return NULL, otherwise return a
+ * pointer to the VF who owns the pfq
+ */
+static struct ice_vf *ice_get_vf_from_pfq(struct ice_pf *pf, u16 pfq)
+{
+	int vf_id;
+
+	ice_for_each_vf(pf, vf_id) {
+		struct ice_vf *vf = &pf->vf[vf_id];
+		struct ice_vsi *vsi;
+		u16 rxq_idx;
+
+		vsi = pf->vsi[vf->lan_vsi_idx];
+
+		ice_for_each_rxq(vsi, rxq_idx)
+			if (vsi->rxq_map[rxq_idx] == pfq)
+				return vf;
+	}
+
+	return NULL;
+}
+
+/**
+ * ice_globalq_to_pfq - convert from global queue index to PF space queue index
+ * @pf: PF used for conversion
+ * @globalq: global queue index used to convert to PF space queue index
+ */
+static u32 ice_globalq_to_pfq(struct ice_pf *pf, u32 globalq)
+{
+	return globalq - pf->hw.func_caps.common_cap.rxq_first_id;
+}
+
+/**
+ * ice_vf_lan_overflow_event - handle LAN overflow event for a VF
+ * @pf: PF that the LAN overflow event happened on
+ * @event: structure holding the event information for the LAN overflow event
+ *
+ * Determine if the LAN overflow event was caused by a VF queue. If it was not
+ * caused by a VF, do nothing. If a VF caused this LAN overflow event trigger a
+ * reset on the offending VF.
+ */
+void
+ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
+{
+	u32 gldcb_rtctq, queue;
+	struct ice_vf *vf;
+
+	gldcb_rtctq = le32_to_cpu(event->desc.params.lan_overflow.prtdcb_ruptq);
+	dev_dbg(ice_pf_to_dev(pf), "GLDCB_RTCTQ: 0x%08x\n", gldcb_rtctq);
+
+	/* event returns device global Rx queue number */
+	queue = (gldcb_rtctq & GLDCB_RTCTQ_RXQNUM_M) >>
+		GLDCB_RTCTQ_RXQNUM_S;
+
+	vf = ice_get_vf_from_pfq(pf, ice_globalq_to_pfq(pf, queue));
+	if (!vf)
+		return;
+
+	ice_vc_reset_vf(vf);
+}
+
 /**
  * ice_vc_send_msg_to_vf - Send message to VF
  * @vf: pointer to the VF info
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index a1bb196d417a..c65269c15dfc 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -122,6 +122,9 @@ void ice_set_vf_state_qs_dis(struct ice_vf *vf);
 int
 ice_get_vf_stats(struct net_device *netdev, int vf_id,
 		 struct ifla_vf_stats *vf_stats);
+void
+ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
+
 #else /* CONFIG_PCI_IOV */
 #define ice_process_vflr_event(pf) do {} while (0)
 #define ice_free_vfs(pf) do {} while (0)
@@ -129,6 +132,7 @@ ice_get_vf_stats(struct net_device *netdev, int vf_id,
 #define ice_vc_notify_link_state(pf) do {} while (0)
 #define ice_vc_notify_reset(pf) do {} while (0)
 #define ice_set_vf_state_qs_dis(vf) do {} while (0)
+#define ice_vf_lan_overflow_event(pf, event) do {} while (0)
 
 static inline bool
 ice_reset_all_vfs(struct ice_pf __always_unused *pf,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
