Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 121B04B5CCE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Feb 2022 22:29:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82B5A4154F;
	Mon, 14 Feb 2022 21:29:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfgQxrLNSo_h; Mon, 14 Feb 2022 21:29:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A849E40902;
	Mon, 14 Feb 2022 21:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36D3E1BF275
 for <intel-wired-lan@osuosl.org>; Mon, 14 Feb 2022 21:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2871A813E3
 for <intel-wired-lan@osuosl.org>; Mon, 14 Feb 2022 21:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YS12nu2wM3dF for <intel-wired-lan@osuosl.org>;
 Mon, 14 Feb 2022 21:29:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 97832813E0
 for <intel-wired-lan@osuosl.org>; Mon, 14 Feb 2022 21:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644874176; x=1676410176;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JjdLttRdWP3CrRF6vv4L0wDGDmD+7sHQrWZa7jM/Bbg=;
 b=UVjzSmildjSxAuIZpMSgMe64Xtpevtc+tMMf704QYtm0PNH27Fo0FOjd
 x1qBzdh7Noq8LvZgj2tpOOl1NSBrMC71drlOTkux/2mTs8vl+y9uJ8m46
 SCiS9g7N3wI8DptRugs6XE3xg3AwJ3bQrgMMJq9qGktKy0qANeaZnlJMn
 undGb4ses7/C+ilCmyShwTU1D94KDxgiUCGRYitjg/TbYEaVR8W2QIXW+
 mXqewq7dpBmBl5KObr00SdDq9x+pMuvSIkBcf6GNYOZ5l5J1Ds7dNsk9P
 cpkDHGjabqgfLLHFFBCSNPK2XcXcXCpv6vgexyf02hzLETVvTPAB7AIiG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="274761723"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="274761723"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 13:25:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="570474921"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga001.jf.intel.com with ESMTP; 14 Feb 2022 13:25:29 -0800
From: sudheer.mogilappagari@intel.com
To: intel-wired-lan@osuosl.org
Date: Mon, 14 Feb 2022 13:24:04 -0800
Message-Id: <20220214212404.107502-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: Add inline flow director
 support for channels
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

From: Kiran Patil <kiran.patil@intel.com>

Inline flow director allows uniform distribution of flows among
a queue group (TC). At first, a queue is chosen at random from
the group of queues for the first flow and susequent queue is
used for next flow and wrapping around as needed.

Inline flow director can be configured for each TC via devlink
params based interface.

/* Create 4 TCs */
tc qdisc add dev enp175s0f0 root mqprio num_tc 4 map 0 1 2 3 \
             queues 2@0 8@2 8@10 8@18 hw 1 mode channel

/* Enable inline flow director for TC1 and TC2 */
devlink dev param set pci/0000:af:00.0 \
        name tc_inline_fd value 6 cmode runtime

/* Dump inline flow director setting */
devlink dev param show  pci/0000:af:00.0 name tc_inline_fd
pci/0000:af:00.0:
  name tc2_inline_fd type driver-specific
    values:
      cmode runtime value 6

Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  82 +++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 133 ++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   1 +
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  25 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   5 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 173 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 294 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   8 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 13 files changed, 732 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b562128e7024..8142d49f610a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -26,6 +26,7 @@
 #include <linux/timer.h>
 #include <linux/delay.h>
 #include <linux/bitmap.h>
+#include <linux/bitfield.h>
 #include <linux/log2.h>
 #include <linux/ip.h>
 #include <linux/sctp.h>
@@ -39,6 +40,8 @@
 #include <linux/avf/virtchnl.h>
 #include <linux/cpu_rmap.h>
 #include <linux/dim.h>
+#include <linux/atomic.h>
+#include <linux/jiffies.h>
 #include <net/pkt_cls.h>
 #include <net/tc_act/tc_mirred.h>
 #include <net/tc_act/tc_gact.h>
@@ -219,6 +222,15 @@ struct ice_channel {
 	u64 max_tx_rate;
 	u64 min_tx_rate;
 	atomic_t num_sb_fltr;
+	/* counter index when side-band FD is used */
+	u32 fd_cnt_index;
+	/* queue used to setup inline-FD */
+	atomic_t fd_queue;
+	/* packets services thru' inline-FD filter */
+	u64 fd_pkt_cnt;
+	u8 inline_fd:1;
+	u8 fd_enabled:1;
+	u8 switch_fd_to_rss:1;
 	struct ice_vsi *ch_vsi;
 };
 
@@ -428,6 +440,19 @@ struct ice_vsi {
 	 * they were before
 	 */
 	u16 orig_rss_size;
+#define ICE_TBL_FULL_TIMES	5
+	/* how many times HW table is flushed */
+	u64 cnt_table_flushed;
+	/* keeps track of how many times SW detected that HW table remain full
+	 * once SW state is switches back to RSS.
+	 */
+	int cnt_tbl_full;
+
+	/* SW based counter which keeps track of active
+	 * inline-FD filter entries in table
+	 */
+	atomic_t inline_fd_active_cnt;
+
 	/* this keeps tracks of all enabled TC with and without DCB
 	 * and inclusive of ADQ, vsi->mqprio_opt keeps track of queue
 	 * information
@@ -440,6 +465,7 @@ struct ice_vsi {
 	u16 old_ena_tc;
 
 	struct ice_channel *ch;
+	u8 num_tc_devlink_params;
 
 	/* setup back reference, to which aggregator node this VSI
 	 * corresponds to
@@ -474,6 +500,8 @@ struct ice_q_vector {
 	char name[ICE_INT_NAME_STR_LEN];
 
 	u16 total_events;	/* net_dim(): number of interrupts processed */
+
+	atomic_t inline_fd_cnt;
 } ____cacheline_internodealigned_in_smp;
 
 enum ice_pf_flags {
@@ -768,6 +796,30 @@ static inline struct ice_vsi *ice_get_netdev_priv_vsi(struct ice_netdev_priv *np
 		return np->vsi;
 }
 
+/**
+ * ice_get_current_fd_cnt - Get total FD filters programmed for this VSI
+ * @vsi: ptr to VSI
+ */
+static inline u32 ice_get_current_fd_cnt(struct ice_vsi *vsi)
+{
+	u32 val = rd32(&vsi->back->hw, VSIQF_FD_CNT(vsi->vsi_num));
+
+	return FIELD_GET(VSIQF_FD_CNT_FD_GCNT_M, val) +
+	       FIELD_GET(VSIQF_FD_CNT_FD_BCNT_M, val);
+}
+
+/**
+ * ice_fd_read_cntr - read counter value using counter_index
+ * @pf: ptr to PF
+ * @counter_index: index of counter to be read
+ */
+static inline u64 ice_fd_read_cntr(struct ice_pf *pf, u32 counter_index)
+{
+	/* Read the HW counter based on counter_index */
+	return ((u64)rd32(&pf->hw, GLSTAT_FD_CNT0H(counter_index)) << 32) |
+		rd32(&pf->hw, GLSTAT_FD_CNT0L(counter_index));
+}
+
 /**
  * ice_get_ctrl_vsi - Get the control VSI
  * @pf: PF instance
@@ -781,6 +833,24 @@ static inline struct ice_vsi *ice_get_ctrl_vsi(struct ice_pf *pf)
 	return pf->vsi[pf->ctrl_vsi_idx];
 }
 
+/**
+ * ice_is_vsi_fd_table_full - VSI specific FD table is full or not
+ * @vsi: ptr to VSI
+ * @cnt: fd count, specific to VSI
+ *
+ * Retutn true if HW FD table specific to VSI is full, otherwise false
+ */
+static inline bool ice_is_vsi_fd_table_full(struct ice_vsi *vsi, u32 cnt)
+{
+	if (!cnt || !(vsi->num_gfltr || vsi->num_bfltr))
+		return false;
+
+	/* determine if 'cnt' reached max_allowed for specified VSI,
+	 * if so, return HW table full for that specific VSI
+	 */
+	return cnt >= vsi->num_gfltr + vsi->num_bfltr - 1;
+}
+
 /**
  * ice_is_switchdev_running - check if switchdev is configured
  * @pf: pointer to PF structure
@@ -793,6 +863,18 @@ static inline bool ice_is_switchdev_running(struct ice_pf *pf)
 	return pf->switchdev.is_running;
 }
 
+/**
+ * ice_fd_clear_cntr - initialize counter to zero
+ * @pf: ptr to PF
+ * @counter_index: index of counter to be initialized
+ */
+static inline void ice_fd_clear_cntr(struct ice_pf *pf, u32 counter_index)
+{
+	/* Clear the HW counter based on counter_index */
+	wr32(&pf->hw, GLSTAT_FD_CNT0H(counter_index), 0);
+	wr32(&pf->hw, GLSTAT_FD_CNT0L(counter_index), 0);
+}
+
 /**
  * ice_set_sriov_cap - enable SRIOV in PF flags
  * @pf: PF struct
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index a23a9ea10751..cfb0fc6f28f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1775,6 +1775,15 @@ struct ice_aqc_get_set_rss_lut {
 	__le32 addr_low;
 };
 
+/* Clear FD Table Command (direct, 0x0B06) */
+struct ice_aqc_clear_fd_table {
+	u8 clear_type;
+#define CL_FD_VM_VF_TYPE_VSI_IDX	1
+	u8 rsvd;
+	__le16 vsi_index;
+	u8 reserved[12];
+};
+
 /* Sideband Control Interface Commands */
 /* Neighbor Device Request (indirect 0x0C00); also used for the response. */
 struct ice_aqc_neigh_dev_req {
@@ -2113,6 +2122,7 @@ struct ice_aq_desc {
 		struct ice_aqc_lldp_filter_ctrl lldp_filter_ctrl;
 		struct ice_aqc_get_set_rss_lut get_set_rss_lut;
 		struct ice_aqc_get_set_rss_key get_set_rss_key;
+		struct ice_aqc_clear_fd_table clear_fd_table;
 		struct ice_aqc_neigh_dev_req neigh_dev;
 		struct ice_aqc_add_txqs add_txqs;
 		struct ice_aqc_dis_txqs dis_txqs;
@@ -2280,6 +2290,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_set_rss_lut				= 0x0B03,
 	ice_aqc_opc_get_rss_key				= 0x0B04,
 	ice_aqc_opc_get_rss_lut				= 0x0B05,
+	ice_aqc_opc_clear_fd_table			= 0x0B06,
 
 	/* Sideband Control Interface commands */
 	ice_aqc_opc_neighbour_device_request		= 0x0C00,
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index a230edb38466..3ddc04f640f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1030,3 +1030,136 @@ void ice_devlink_destroy_regions(struct ice_pf *pf)
 	if (pf->devcaps_region)
 		devlink_region_destroy(pf->devcaps_region);
 }
+
+#define ICE_DEVLINK_PARAM_ID_TC_INLINE_FD	100
+
+/**
+ * ice_devlink_tc_inline_fd_get - Get inline FD settings of configured TC's
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to get
+ * @ctx: context to return the parameter value
+ *
+ * Returns: zero on success, or an error code on failure.
+ */
+static int
+ice_devlink_tc_inline_fd_get(struct devlink *devlink, u32 id,
+			     struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_vsi *ch_vsi;
+	struct ice_vsi *vsi;
+	u8 tc_num;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!(vsi && id == ICE_DEVLINK_PARAM_ID_TC_INLINE_FD))
+		return -EINVAL;
+
+	ctx->val.vu16 = 0;
+	for (tc_num = 1; tc_num < vsi->all_numtc; tc_num++) {
+		ch_vsi = vsi->tc_map_vsi[tc_num];
+		if (!ch_vsi || !ch_vsi->ch)
+			return -EINVAL;
+
+		if (ch_vsi->ch->inline_fd)
+			ctx->val.vu16 |= (1U << tc_num);
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_tc_inline_fd_validate - Validate inline_fd setting
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to validate
+ * @val: value to be validated
+ * @extack: netlink extended ACK structure
+ *
+ * Validate inline fd
+ * Returns: zero on success, or an error code on failure and extack with a
+ * reason for failure.
+ */
+static int
+ice_devlink_tc_inline_fd_validate(struct devlink *devlink, u32 id,
+				  union devlink_param_value val,
+				  struct netlink_ext_ack *extack)
+{
+	if (id != ICE_DEVLINK_PARAM_ID_TC_INLINE_FD) {
+		NL_SET_ERR_MSG_MOD(extack, "Invalid TC param");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_tc_inline_fd_set - Enable/Disable inline flow director
+ * @devlink: pointer to the devlink instance
+ * @id: the parameter ID to set
+ * @ctx: context to return the parameter value
+ *
+ * Returns: zero on success, or an error code on failure.
+ */
+static int
+ice_devlink_tc_inline_fd_set(struct devlink *devlink, u32 id,
+			     struct devlink_param_gset_ctx *ctx)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct ice_vsi *ch_vsi;
+	struct ice_vsi *vsi;
+	u8 tc_num;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!(vsi && id == ICE_DEVLINK_PARAM_ID_TC_INLINE_FD))
+		return -EINVAL;
+
+	for (tc_num = 1; tc_num < vsi->all_numtc; tc_num++) {
+		ch_vsi = vsi->tc_map_vsi[tc_num];
+		if (!ch_vsi || !ch_vsi->ch)
+			return -EINVAL;
+
+		if (ctx->val.vu16 & (1U << tc_num))
+			ch_vsi->ch->inline_fd = 1;
+		else
+			ch_vsi->ch->inline_fd = 0;
+	}
+
+	return 0;
+}
+
+static const struct devlink_param ice_devlink_inline_fd_params[] = {
+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TC_INLINE_FD,
+			     "tc_inline_fd",
+			     DEVLINK_PARAM_TYPE_U16,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     ice_devlink_tc_inline_fd_get,
+			     ice_devlink_tc_inline_fd_set,
+			     ice_devlink_tc_inline_fd_validate),
+};
+
+int ice_devlink_tc_params_register(struct ice_vsi *vsi)
+{
+	struct devlink *devlink = priv_to_devlink(vsi->back);
+	struct device *dev = ice_pf_to_dev(vsi->back);
+	int err;
+
+	if (vsi->all_numtc <= 1)
+		return 0;
+
+	err = devlink_params_register(devlink,
+				      ice_devlink_inline_fd_params,
+				      ARRAY_SIZE(ice_devlink_inline_fd_params));
+	if (err)
+		dev_err(dev, "devlink inline_fd params registration failed %d",
+			err);
+
+	return err;
+}
+
+void ice_devlink_tc_params_unregister(struct ice_vsi *vsi)
+{
+	struct devlink *devlink = priv_to_devlink(vsi->back);
+
+	devlink_params_unregister(devlink,
+				  ice_devlink_inline_fd_params,
+				  ARRAY_SIZE(ice_devlink_inline_fd_params));
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
index fe006d9946f8..f749614ad949 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.h
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -18,4 +18,6 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf);
 void ice_devlink_init_regions(struct ice_pf *pf);
 void ice_devlink_destroy_regions(struct ice_pf *pf);
 
+int ice_devlink_tc_params_register(struct ice_vsi *vsi);
+void ice_devlink_tc_params_unregister(struct ice_vsi *vsi);
 #endif /* _ICE_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a3492754d0d3..2c304b2db714 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -136,6 +136,7 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
 	ICE_PF_STAT("mac_remote_faults.nic", stats.mac_remote_faults),
 	ICE_PF_STAT("fdir_sb_match.nic", stats.fd_sb_match),
 	ICE_PF_STAT("fdir_sb_status.nic", stats.fd_sb_status),
+	ICE_PF_STAT("chnl_inline_fd_match", stats.ch_atr_match),
 };
 
 static const u32 ice_regs_dump_list[] = {
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index ae089d32ee9d..9568a51a5e2c 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -569,7 +569,7 @@ static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
  * ice_set_dflt_val_fd_desc
  * @fd_fltr_ctx: pointer to fd filter descriptor
  */
-static void ice_set_dflt_val_fd_desc(struct ice_fd_fltr_desc_ctx *fd_fltr_ctx)
+void ice_set_dflt_val_fd_desc(struct ice_fd_fltr_desc_ctx *fd_fltr_ctx)
 {
 	fd_fltr_ctx->comp_q = ICE_FXD_FLTR_QW0_COMP_Q_ZERO;
 	fd_fltr_ctx->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
@@ -597,7 +597,7 @@ static void ice_set_dflt_val_fd_desc(struct ice_fd_fltr_desc_ctx *fd_fltr_ctx)
  * @ctx: pointer to fd filter descriptor context
  * @fdir_desc: populated with fd filter descriptor values
  */
-static void
+void
 ice_set_fd_desc_val(struct ice_fd_fltr_desc_ctx *ctx,
 		    struct ice_fltr_desc *fdir_desc)
 {
@@ -1300,3 +1300,24 @@ bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_fdir_fltr *input)
 
 	return ret;
 }
+
+/**
+ * ice_clear_vsi_fd_table - admin command to clear FD table for a VSI
+ * @hw: hardware data structure
+ * @vsi_num: vsi_num (HW VSI num)
+ *
+ * Clears FD table entries by issuing admin command (direct, 0x0B06)
+ * Must to pass valid vsi_num as returned by "AddVSI".
+ */
+int ice_clear_vsi_fd_table(struct ice_hw *hw, u16 vsi_num)
+{
+	struct ice_aqc_clear_fd_table *cmd;
+	struct ice_aq_desc desc;
+
+	cmd = &desc.params.clear_fd_table;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_clear_fd_table);
+	cmd->clear_type = CL_FD_VM_VF_TYPE_VSI_IDX;
+
+	cmd->vsi_index = cpu_to_le16(vsi_num);
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 1b9b84490689..eb796b7ba4c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -204,8 +204,13 @@ struct ice_fdir_base_pkt {
 
 int ice_alloc_fd_res_cntr(struct ice_hw *hw, u16 *cntr_id);
 int ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id);
+void
+ice_set_fd_desc_val(struct ice_fd_fltr_desc_ctx *fd_fltr_ctx,
+		    struct ice_fltr_desc *fdir_desc);
+void ice_set_dflt_val_fd_desc(struct ice_fd_fltr_desc_ctx *fd_fltr_ctx);
 int ice_alloc_fd_guar_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
 int ice_alloc_fd_shrd_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
+int ice_clear_vsi_fd_table(struct ice_hw *hw, u16 vsi_num);
 void
 ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		       struct ice_fltr_desc *fdesc, bool add);
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index d16738a3d3a7..9a3544b358e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -429,6 +429,7 @@
 #define GLPRT_TDOLD(_i)				(0x00381280 + ((_i) * 8))
 #define GLPRT_UPRCL(_i)				(0x00381300 + ((_i) * 8))
 #define GLPRT_UPTCL(_i)				(0x003811C0 + ((_i) * 8))
+#define GLSTAT_FD_CNT0H(_i)			(0x003A0004 + ((_i) * 8))
 #define GLSTAT_FD_CNT0L(_i)			(0x003A0000 + ((_i) * 8))
 #define GLV_BPRCL(_i)				(0x003B6000 + ((_i) * 8))
 #define GLV_BPTCL(_i)				(0x0030E000 + ((_i) * 8))
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index b3baf7c3f910..7e4d0b491dd6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -54,6 +54,7 @@ struct ice_fltr_desc {
 #define ICE_FXD_FLTR_QW0_COMP_REPORT_S	12
 #define ICE_FXD_FLTR_QW0_COMP_REPORT_M	\
 				(0x3ULL << ICE_FXD_FLTR_QW0_COMP_REPORT_S)
+#define ICE_FXD_FLTR_QW0_COMP_REPORT_NONE	0x0ULL
 #define ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL	0x1ULL
 #define ICE_FXD_FLTR_QW0_COMP_REPORT_SW		0x2ULL
 
@@ -397,6 +398,8 @@ enum ice_flg64_bits {
 /* for ice_32byte_rx_flex_desc.ptype_flexi_flags0 member */
 #define ICE_RX_FLEX_DESC_PTYPE_M	(0x3FF) /* 10-bits */
 
+#define ICE_RX_FLEX_DESC_FLEXI_FLAGS0_M		GENMASK(15, 10)
+
 /* for ice_32byte_rx_flex_desc.pkt_length member */
 #define ICE_RX_FLX_DESC_PKT_LEN_M	(0x3FFF) /* 14-bits */
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index fdd143040fb9..99cfefd85e80 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -70,6 +70,140 @@ bool netif_is_ice(struct net_device *dev)
 	return dev && (dev->netdev_ops == &ice_netdev_ops);
 }
 
+/**
+ * ice_flush_vsi_fd_fltrs - flush VSI specific FD entries
+ * @vsi: ptr to VSI
+ *
+ * This function flushes all FD entries specific to VSI from
+ * HW FD table
+ */
+static inline void ice_flush_vsi_fd_fltrs(struct ice_vsi *vsi)
+{
+	struct device *dev = ice_pf_to_dev(vsi->back);
+	int status;
+
+	status = ice_clear_vsi_fd_table(&vsi->back->hw, vsi->vsi_num);
+	if (status)
+		dev_err(dev, "Failed to clear FD table for %s, vsi_num: %u, status: %d\n",
+			ice_vsi_type_str(vsi->type), vsi->vsi_num, status);
+}
+
+/**
+ * ice_chnl_handle_fd_transition - handle VSI specific FD transition
+ * @main_vsi: ptr to main VSI (ICE_VSI_PF)
+ * @ch: ptr to channel
+ * @hw_fd_cnt: HW FD count specific to VSI
+ * @fd_pkt_cnt: packets services through inline-FD filter
+ * @sw_fd_cnt: SW tracking of number of inline-FD filters programmed per VSI
+ *
+ * This function determines whether given VSI should continue to use inline-FD
+ * resources or not and sets the bit accordingly. It flushes the FD entries
+ * occupied per VSI if HW table full condition is detected for 'n' runs of
+ * service task and no more packets are serviced using inline-FD filter.
+ */
+static void
+ice_chnl_handle_fd_transition(struct ice_vsi *main_vsi, struct ice_channel *ch,
+			      u32 hw_fd_cnt, u64 fd_pkt_cnt, int sw_fd_cnt)
+{
+	struct ice_vsi *vsi = ch->ch_vsi;
+
+	/* check to see if given VSI reached max limit of FD entries */
+	if (ice_is_vsi_fd_table_full(vsi, hw_fd_cnt)) {
+		/* check to see if there are any hits using inline-FD filters,
+		 * if not start "table_full" counter
+		 */
+		if (!ch->fd_pkt_cnt && !fd_pkt_cnt &&
+		    ch->fd_pkt_cnt == fd_pkt_cnt) {
+			/* HW table is FULL. No more packets are being serviced
+			 * through inline-FD filters.
+			 */
+			vsi->cnt_tbl_full++;
+			main_vsi->cnt_tbl_full++;
+		} else {
+			vsi->cnt_tbl_full = 0;
+		}
+
+		/* detected that HW table remained full during last 'n' runs of
+		 * service task, now it is the time to purge HW table entries.
+		 */
+		if (vsi->cnt_tbl_full < ICE_TBL_FULL_TIMES)
+			return;
+
+		/* if we are here, then safe to flush HW inline-FD filters */
+		ice_flush_vsi_fd_fltrs(vsi);
+
+		/* reset VSI specific counters */
+		atomic_set(&vsi->inline_fd_active_cnt, 0);
+		vsi->cnt_tbl_full = 0;
+		/* clear the feature flag for inline-FD/RSS */
+		ch->switch_fd_to_rss = 0;
+	} else if ((u32)sw_fd_cnt > hw_fd_cnt) {
+		/* HW table (inline-FD filters) is not full and SW count is
+		 * higher than actual entries in HW table, time to sync SW
+		 * counter with HW counter (tracking inline-FD filter count)
+		 * and transition back to using inline-FD filters
+		 */
+		atomic_set(&vsi->inline_fd_active_cnt, hw_fd_cnt);
+		vsi->cnt_tbl_full = 0;
+
+		/* clear the feature flag for inline-FD/RSS */
+		ch->switch_fd_to_rss = 0;
+	}
+}
+
+/**
+ * ice_channel_sync_global_cntrs - sync SW and HW FD specific counters
+ * @pf: ptr to PF
+ *
+ * This function iterates thru' all channel VSIs and handles transition of
+ * FD (Flow-director) -> RSS and vice versa, if needed also flushes VSI
+ * specific FD entries from HW table
+ */
+static void ice_channel_sync_global_cntrs(struct ice_pf *pf)
+{
+	struct ice_vsi *main_vsi;
+	struct ice_channel *ch;
+
+	main_vsi = ice_get_main_vsi(pf);
+	if (!main_vsi)
+		return;
+
+	list_for_each_entry(ch, &main_vsi->ch_list, list) {
+		struct ice_vsi *ch_vsi;
+		u64 fd_pkt_cnt;
+		int sw_fd_cnt;
+		u32 hw_fd_cnt;
+
+		ch_vsi = ch->ch_vsi;
+		if (!ch_vsi)
+			continue;
+		if (!ch->fd_enabled || !ch->switch_fd_to_rss)
+			continue;
+
+		/* first counter index is always taken by sideband flow
+		 * director, hence channel specific counter index has
+		 * to be non-zero, otherwise skip...
+		 */
+		if (!ch->fd_cnt_index)
+			continue;
+
+		/* read SW count */
+		sw_fd_cnt = atomic_read(&ch_vsi->inline_fd_active_cnt);
+		/* Read HW count */
+		hw_fd_cnt = ice_get_current_fd_cnt(ch_vsi);
+		/* Read the HW counter which was associated with inline-FD */
+		fd_pkt_cnt = ice_fd_read_cntr(pf, ch->fd_cnt_index);
+
+		/* handle VSI specific transition: inline-FD/RSS
+		 * if needed flush FD entries specific to VSI
+		 */
+		ice_chnl_handle_fd_transition(main_vsi, ch, hw_fd_cnt,
+					      fd_pkt_cnt, sw_fd_cnt);
+		/* store the value of fd_pkt_cnt per channel */
+		ch->fd_pkt_cnt = fd_pkt_cnt;
+	}
+}
+
 /**
  * ice_get_tx_pending - returns number of Tx descriptors not processed
  * @ring: the ring of descriptors
@@ -118,7 +252,7 @@ static void ice_check_for_hang_subtask(struct ice_pf *pf)
 
 		if (!tx_ring)
 			continue;
-		if (ice_ring_ch_enabled(tx_ring))
+		if (ice_txring_ch_enabled(tx_ring))
 			continue;
 
 		if (tx_ring->desc) {
@@ -2276,6 +2410,7 @@ static void ice_service_task(struct work_struct *work)
 		return;
 	}
 
+	ice_channel_sync_global_cntrs(pf);
 	ice_process_vflr_event(pf);
 	ice_clean_mailboxq_subtask(pf);
 	ice_clean_sbq_subtask(pf);
@@ -6345,6 +6480,10 @@ void ice_update_pf_stats(struct ice_pf *pf)
 			  GLSTAT_FD_CNT0L(ICE_FD_SB_STAT_IDX(fd_ctr_base)),
 			  pf->stat_prev_loaded, &prev_ps->fd_sb_match,
 			  &cur_ps->fd_sb_match);
+	ice_stat_update40(hw,
+			  GLSTAT_FD_CNT0L(ICE_FD_CH_STAT_IDX(fd_ctr_base)),
+			  pf->stat_prev_loaded, &prev_ps->ch_atr_match,
+			  &cur_ps->ch_atr_match);
 	ice_stat_update32(hw, GLPRT_LXONRXC(port), pf->stat_prev_loaded,
 			  &prev_ps->link_xon_rx, &cur_ps->link_xon_rx);
 
@@ -7730,8 +7869,10 @@ static int ice_add_vsi_to_fdir(struct ice_pf *pf, struct ice_vsi *vsi)
 			flow);
 	}
 
-	if (!added)
+	if (!added) {
 		dev_dbg(dev, "VSI idx %d not added to fdir groups\n", vsi->idx);
+		return -EFAULT;
+	}
 
 	return 0;
 }
@@ -7748,6 +7889,7 @@ static int ice_add_channel(struct ice_pf *pf, u16 sw_id, struct ice_channel *ch)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi;
+	int status;
 
 	if (ch->type != ICE_VSI_CHNL) {
 		dev_err(dev, "add new VSI failed, ch->type %d\n", ch->type);
@@ -7760,7 +7902,10 @@ static int ice_add_channel(struct ice_pf *pf, u16 sw_id, struct ice_channel *ch)
 		return -EINVAL;
 	}
 
-	ice_add_vsi_to_fdir(pf, vsi);
+	ch->fd_enabled = 0;
+	status = ice_add_vsi_to_fdir(pf, vsi);
+	if (!status)
+		ch->fd_enabled = 1;
 
 	ch->sw_id = sw_id;
 	ch->vsi_num = vsi->vsi_num;
@@ -7803,6 +7948,8 @@ static void ice_chnl_cfg_res(struct ice_vsi *vsi, struct ice_channel *ch)
 		tx_ring->ch = ch;
 		rx_ring->ch = ch;
 
+		tx_ring->ch_inline_fd_cnt_index = ch->fd_cnt_index;
+
 		/* following code block sets up vector specific attributes */
 		tx_q_vector = tx_ring->q_vector;
 		rx_q_vector = rx_ring->q_vector;
@@ -7844,7 +7991,20 @@ static void ice_chnl_cfg_res(struct ice_vsi *vsi, struct ice_channel *ch)
 static void
 ice_cfg_chnl_all_res(struct ice_vsi *vsi, struct ice_channel *ch)
 {
-	/* configure channel (aka ADQ) resources such as queues, vectors,
+	struct ice_pf *pf = vsi->back;
+
+	/* setup inline-FD counter index per channel, eventually
+	 * used separate counter index per channel, to offer
+	 * better granularity and QoS per channel for RSS and FD
+	 */
+	ch->fd_cnt_index = ICE_FD_CH_STAT_IDX(pf->hw.fd_ctr_base);
+	/* reset source for all counters is CORER, typically upon
+	 * driver load, those counters may have stale value, hence
+	 * initialize counter to zero, access type for counters is RWC
+	 */
+	ice_fd_clear_cntr(pf, ch->fd_cnt_index);
+
+	/* configure channel (i.e. ADQ) resources such as queues, vectors,
 	 * ITR settings for channel specific vectors and anything else
 	 */
 	ice_chnl_cfg_res(vsi, ch);
@@ -8453,6 +8613,11 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
 	if (vsi->ch_rss_size)
 		ice_vsi_cfg_rss_lut_key(vsi);
 
+	if (hw)
+		ret = ice_devlink_tc_params_register(vsi);
+	else
+		ice_devlink_tc_params_unregister(vsi);
+
 exit:
 	/* if error, reset the all_numtc and all_enatc */
 	if (ret) {
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index a2283ad694de..c5546b705f1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -7,6 +7,7 @@
 #include <linux/netdevice.h>
 #include <linux/prefetch.h>
 #include <linux/bpf_trace.h>
+#include <net/busy_poll.h>
 #include <net/dsfield.h>
 #include <net/xdp.h>
 #include "ice_txrx_lib.h"
@@ -1092,6 +1093,165 @@ ice_is_non_eop(struct ice_rx_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc)
 	return true;
 }
 
+/**
+ * ice_detect_dis_inline_fd_usage  - detect and disable usage of inline-fd
+ * @ch_vsi : ptr to channel VSI
+ *
+ * This function to detect FD table full condition and if so,
+ * return true otherwise false
+ */
+static bool
+ice_detect_dis_inline_fd_usage(struct ice_vsi *ch_vsi)
+{
+	int total_fd_allowed = ch_vsi->num_gfltr + ch_vsi->num_bfltr;
+	struct ice_channel *ch = ch_vsi->ch;
+	int inline_fd_active;
+
+	/* detect if transitioned to RSS mode, if so return true */
+	if (ch->switch_fd_to_rss)
+		return true;
+
+	/* for some reason if channel VSI doesn't have any FD resources
+	 * reserved (from guaranteed or best effort pool), stay in RSS
+	 */
+	if (!total_fd_allowed) {
+		ch->switch_fd_to_rss = 1;
+		return true;
+	}
+
+	/* inline_fd_active_cnt is decremented from ice_chnl_inline_fd
+	 * function when evicting FD entry upon FIN/RST transmit
+	 */
+	inline_fd_active = atomic_inc_return(&ch_vsi->inline_fd_active_cnt) - 1;
+	if (inline_fd_active >= total_fd_allowed) {
+		ch->switch_fd_to_rss = 1;
+		return true;
+	}
+
+	return false;
+}
+
+/* Rx desc:flexi_flags are bits 15:10 applicable when RXDID=2 as defined
+ * by package
+ */
+#define ICE_RX_FLEXI_FLAGS_ACK	BIT(2)
+#define ICE_RX_FLEXI_FLAGS_FIN	BIT(3)
+#define ICE_RX_FLEXI_FLAGS_SYN	BIT(4)
+#define ICE_RX_FLEXI_FLAGS_RST	BIT(5)
+
+/* Rx desc:flexi_flags2, applicable when RXDID=2 */
+#define ICE_RX_FLEXI_FLAGS2_TNL_0 BIT(5)
+#define ICE_RX_FLEXI_FLAGS2_TNL_1 BIT(6)
+#define ICE_RX_SUPPORTED_TNL_FLEXI_FLAGS (ICE_RX_FLEXI_FLAGS2_TNL_0 | \
+					  ICE_RX_FLEXI_FLAGS2_TNL_1)
+
+/**
+ * ice_is_tcp_syn_pkt - determine if given packet is SYN but not SYN+ACK
+ * @rx_desc: ptr to Rx descriptor
+ * @ptype: packet type
+ *
+ * Function returns true if the corresponding descriptor is for TCP SYN
+ * but not SYN+ACK.
+ */
+static bool
+ice_is_tcp_syn_pkt(const union ice_32b_rx_flex_desc *rx_desc,
+		   const u16 ptype)
+{
+	const struct ice_32b_rx_flex_desc_nic *nic_mdid;
+	struct ice_rx_ptype_decoded decoded;
+	u16 flags;
+
+	/* RXDID must be set to FLEX, otherwise no guarantee that
+	 * "flags" will be available in Rx desc.flexi_flags0
+	 */
+	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
+		return false;
+
+	/* process PTYPE from Rx desc */
+	decoded = ice_decode_rx_desc_ptype(ptype);
+	if (!decoded.known)
+		return false;
+
+	/* Make sure packet is L4 and L4 proto (inner most) is TCP */
+	if (!(decoded.payload_layer == ICE_RX_PTYPE_PAYLOAD_LAYER_PAY4 &&
+	      decoded.inner_prot == ICE_RX_PTYPE_INNER_PROT_TCP))
+		return false;
+
+	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
+	flags = le16_get_bits(nic_mdid->ptype_flexi_flags0,
+			      ICE_RX_FLEX_DESC_FLEXI_FLAGS0_M);
+
+	/* Compare if SYN is set and not ACK */
+	if (!((flags & (ICE_RX_FLEXI_FLAGS_ACK | ICE_RX_FLEXI_FLAGS_SYN)) ==
+	      ICE_RX_FLEXI_FLAGS_SYN))
+		return false;
+
+	/* if reached here, means packet has only SYN bit set */
+	return true;
+}
+
+/**
+ * ice_rx_queue_override - override Rx queue if needed and update skb
+ * @skb: receive buffer
+ * @rx_ring: ptr to Rx ring
+ * @rx_desc: pointer to Rx descriptor
+ * @rx_ptype: the packet type decoded by hardware
+ *
+ * Override Rx queue if packet being processed is SYN only and records
+ * new Rx queue in skb. This is applicable only for TCP/IPv4[6].
+ */
+static void
+ice_rx_queue_override(struct sk_buff *skb, struct ice_rx_ring *rx_ring,
+		      union ice_32b_rx_flex_desc *rx_desc, u16 rx_ptype)
+{
+	struct ice_channel *ch = rx_ring->ch;
+	struct ice_vsi *vsi = rx_ring->vsi;
+	struct ice_rx_ring *ring;
+	int queue_to_use;
+
+	if (!ice_rxring_ch_enabled(rx_ring))
+		return;
+
+	if (!ice_is_tcp_syn_pkt(rx_desc, rx_ptype))
+		return;
+
+	/* make sure channel VSI is FD capable and enabled for
+	 * inline flow-director usage
+	 */
+	if (!ch->fd_enabled || !ch->inline_fd)
+		return;
+
+	/* Detection logic to check if HW table is about to get full,
+	 * if so, switch to RSS mode, means don't change Rx queue
+	 */
+	if (ice_detect_dis_inline_fd_usage(ch->ch_vsi))
+		return;
+
+	/* Pick the Rx queue based on round-robin policy for the
+	 * connection, limited to queue region of specific channel
+	 */
+	queue_to_use = (atomic_inc_return(&ch->fd_queue) - 1) % ch->num_rxq;
+
+	/* adjust the queue based on channel's base_queue, so that
+	 * correct Rx queue number is recorded in skb
+	 */
+	queue_to_use += ch->base_q;
+
+	/* Get the selected ring ptr */
+	ring = vsi->rx_rings[queue_to_use];
+	if (!ring || !ring->q_vector)
+		return;
+
+	/* re-record selected queue as Rx queue in SKB */
+	skb_record_rx_queue(skb, queue_to_use);
+
+	/* mark selected queue vector for inline filter usage by
+	 * incrementing atomic variable, it can't be flag because
+	 * during ATR eviction, this needs to be decremented
+	 */
+	atomic_inc(&ring->q_vector->inline_fd_cnt);
+}
+
 /**
  * ice_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: Rx descriptor ring to transact packets on
@@ -1255,6 +1415,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 
 		ice_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
 
+		ice_rx_queue_override(skb, rx_ring, rx_desc, rx_ptype);
+
 		ice_trace(clean_rx_irq_indicate, rx_ring, rx_desc, skb);
 		/* send completed skb up the stack */
 		ice_receive_skb(rx_ring, skb, vlan_tag);
@@ -2249,6 +2411,136 @@ ice_tstamp(struct ice_tx_ring *tx_ring, struct sk_buff *skb,
 	first->tx_flags |= ICE_TX_FLAGS_TSYN;
 }
 
+/**
+ * ice_chnl_inline_fd - Add a Flow director ATR filter
+ * @tx_ring: ring to add programming descriptor
+ * @skb: send buffer
+ * @tx_flags: Tx flags
+ */
+static void
+ice_chnl_inline_fd(struct ice_tx_ring *tx_ring, const struct sk_buff *skb,
+		   const u32 tx_flags)
+{
+	struct ice_q_vector *qv = tx_ring->q_vector;
+	struct ice_fd_fltr_desc_ctx fd_ctx = { };
+	struct ice_channel *ch = tx_ring->ch;
+	struct ice_fltr_desc *fdir_desc;
+	union {
+		unsigned char *network;
+		struct iphdr *ipv4;
+	} hdr;
+	struct tcphdr *th;
+	unsigned int hlen;
+	u16 q_index = 0;
+	u8 l4_proto = 0;
+	u16 i, vsi_num;
+
+	if (!ice_txring_ch_enabled(tx_ring))
+		return;
+
+	/* Currently only IPv4/IPv6 with TCP is supported */
+	if (!(tx_flags & (ICE_TX_FLAGS_IPV4 | ICE_TX_FLAGS_IPV6)))
+		return;
+
+	/* make sure channel VSI is valid and vector is channel enabled */
+	if (!ch->ch_vsi || !qv->ch)
+		return;
+
+	/* do not support inline-FD usage for queues which are
+	 * not in range of channel's queue region.
+	 */
+	if (tx_ring->q_index < ch->base_q)
+		return;
+
+	/* make sure channel VSI is FD capable and enabled for
+	 * inline flow-director usage
+	 */
+	if (!ch->fd_enabled || !ch->inline_fd)
+		return;
+
+	/* snag network header to get L4 type and address */
+	hdr.network = (tx_flags & ICE_TX_FLAGS_TUNNEL) ?
+		      skb_inner_network_header(skb) : skb_network_header(skb);
+
+	if (tx_flags & ICE_TX_FLAGS_IPV4) {
+		/* access ihl as u8 to avoid unaligned access on ia64 */
+		hlen = (hdr.network[0] & 0x0F) << 2;
+		hdr.ipv4 = ip_hdr(skb);
+		l4_proto = hdr.ipv4->protocol;
+	} else if (tx_flags & ICE_TX_FLAGS_IPV6) {
+		/* find the start of the innermost ipv6 header */
+		unsigned int inner_hlen = hdr.network - skb->data;
+		unsigned int h_offset = inner_hlen;
+
+		/* this function updates h_offset to the end of the header */
+		l4_proto = ipv6_find_hdr(skb, &h_offset, IPPROTO_TCP, NULL,
+					 NULL);
+		hlen = h_offset - inner_hlen;
+	}
+
+	/* Currently ATR is supported only for TCP */
+	if (l4_proto != IPPROTO_TCP)
+		return;
+
+	th = (struct tcphdr *)(hdr.network + hlen);
+
+	/* proceed only for SYN, SYN+ACK, RST, FIN packets */
+	if (!th->syn && !th->rst && !th->fin)
+		return;
+
+	/* update queue as needed using channel's base_q, this queue number
+	 * gets programmed in filter descriptor while adding inline-FD entry
+	 */
+	if (th->ack || th->fin || th->rst)  {
+		/* server side connection setup || connection_termination */
+		q_index = tx_ring->q_index - ch->base_q;
+	} else if (th->syn) {
+		/* just SYN, client side connection establishment.
+		 * since channel's num_txq and num_rxq has to be same,
+		 * using either num_rxq or num_txq is OK, but for readability
+		 * perspective, using 'num_txq' since this is transmit flow
+		 */
+		q_index = (atomic_inc_return(&ch->fd_queue) - 1) % ch->num_txq;
+	} else {
+		/* dont proceed */
+		return;
+	}
+
+	/* use channel specific HW VSI number */
+	vsi_num = ch->ch_vsi->vsi_num;
+
+	if (th->syn && th->ack &&
+	    atomic_dec_if_positive(&qv->inline_fd_cnt) < 0)
+		return;
+
+	/* grab the next descriptor */
+	i = tx_ring->next_to_use;
+	fdir_desc = ICE_TX_FDIRDESC(tx_ring, i);
+
+	i++;
+	tx_ring->next_to_use = i < tx_ring->count ? i : 0;
+
+	ice_set_dflt_val_fd_desc(&fd_ctx);
+
+	/* set report completion to NONE, means flow-director programming
+	 * status won't be informed to SW.
+	 */
+	fd_ctx.comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_NONE;
+
+	/* Do not want auto-eviction of filter due to FIN/RST, eviction
+	 * is managed by SW, to avoid possible problems with TCP half-close
+	 * OR TCP simultaneous close from both side.
+	 */
+	fd_ctx.evict_ena = ICE_FXD_FLTR_QW0_EVICT_ENA_FALSE;
+	fd_ctx.qindex = q_index;
+	fd_ctx.cnt_index = tx_ring->ch_inline_fd_cnt_index;
+	fd_ctx.cnt_ena = ICE_FXD_FLTR_QW0_STAT_ENA_PKTS;
+	fd_ctx.pcmd = (th->fin || th->rst) ?
+		       ICE_FXD_FLTR_QW1_PCMD_REMOVE : ICE_FXD_FLTR_QW1_PCMD_ADD;
+	fd_ctx.fd_vsi = vsi_num;
+	ice_set_fd_desc_val(&fd_ctx, fdir_desc);
+}
+
 /**
  * ice_xmit_frame_ring - Sends buffer on Tx ring
  * @skb: send buffer
@@ -2350,6 +2642,8 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 		cdesc->qw1 = cpu_to_le64(offload.cd_qw1);
 	}
 
+	ice_chnl_inline_fd(tx_ring, skb, first->tx_flags);
+
 	ice_tx_map(tx_ring, first, &offload);
 	return NETDEV_TX_OK;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index cead3eb149bd..2d57c70a5d50 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -341,6 +341,7 @@ struct ice_tx_ring {
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
 	u8 ptp_tx;
+	u32 ch_inline_fd_cnt_index;
 } ____cacheline_internodealigned_in_smp;
 
 static inline bool ice_ring_uses_build_skb(struct ice_rx_ring *ring)
@@ -358,7 +359,12 @@ static inline void ice_clear_ring_build_skb_ena(struct ice_rx_ring *ring)
 	ring->flags &= ~ICE_RX_FLAGS_RING_BUILD_SKB;
 }
 
-static inline bool ice_ring_ch_enabled(struct ice_tx_ring *ring)
+static inline bool ice_txring_ch_enabled(const struct ice_tx_ring *ring)
+{
+	return !!ring->ch;
+}
+
+static inline bool ice_rxring_ch_enabled(const struct ice_rx_ring *ring)
 {
 	return !!ring->ch;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 28fcab26b868..e82d23b3bc96 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1016,6 +1016,7 @@ struct ice_hw_port_stats {
 	/* flow director stats */
 	u32 fd_sb_status;
 	u64 fd_sb_match;
+	u64 ch_atr_match;
 };
 
 enum ice_sw_fwd_act_type {
-- 
2.27.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

