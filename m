Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCECC1CE9F1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2020 03:04:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C38186822;
	Tue, 12 May 2020 01:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AN+-6u0S22IU; Tue, 12 May 2020 01:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34350868E5;
	Tue, 12 May 2020 01:04:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D06DE1BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA8B186822
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wCc08jaH8OWB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2020 01:04:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C2CB867CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 01:04:20 +0000 (UTC)
IronPort-SDR: CCysqOxZIejrVkBo3Ab6yfQJvqjQ6MB4ivkwLa40cnuUakEEty6cdxxHARBIqJPS8a9VXsVf0B
 rg6ZuLbPc2Mg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 18:04:19 -0700
IronPort-SDR: 2ll3ruKcy3tAw7cHSMpgLUMs06ePtb41asGpbv5AOqIZCOINRsmK9ZO4eExu17VbBsdBw7X/Us
 gJ847nbskeGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="409116463"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2020 18:04:19 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 May 2020 18:01:41 -0700
Message-Id: <20200512010146.41303-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S42 2/7] ice: Support displaying ntuple
 rules
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

From: Henry Tieman <henry.w.tieman@intel.com>

Add functionality for ethtool --show-ntuple, allowing for filters to be
displayed when set functionality is added. Add statistics related to
Flow Director matches and status.

Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   9 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 ++
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 161 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  33 ++++
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  47 +++++
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   9 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
 8 files changed, 280 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a070ddcc2cb3..51caf3a3c76b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -535,6 +535,11 @@ static inline struct ice_vsi *ice_get_ctrl_vsi(struct ice_pf *pf)
 	return pf->vsi[pf->ctrl_vsi_idx];
 }
 
+#define ICE_FD_STAT_CTR_BLOCK_COUNT	256
+#define ICE_FD_STAT_PF_IDX(base_idx) \
+			((base_idx) * ICE_FD_STAT_CTR_BLOCK_COUNT)
+#define ICE_FD_SB_STAT_IDX(base_idx) ICE_FD_STAT_PF_IDX(base_idx)
+
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
 int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
 int ice_vsi_open_ctrl(struct ice_vsi *vsi);
@@ -566,6 +571,10 @@ ice_for_each_peer(struct ice_pf *pf, void *data,
 const char *ice_stat_str(enum ice_status stat_err);
 const char *ice_aq_str(enum ice_aq_err aq_err);
 void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena);
+int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd);
+int
+ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
+		      u32 *rule_locs);
 void ice_fdir_release_flows(struct ice_hw *hw);
 int ice_fdir_create_dflt_rules(struct ice_pf *pf);
 int ice_open(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d11960b21474..f77db28e1e4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -130,6 +130,8 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
 	ICE_PF_STAT("illegal_bytes.nic", stats.illegal_bytes),
 	ICE_PF_STAT("mac_local_faults.nic", stats.mac_local_faults),
 	ICE_PF_STAT("mac_remote_faults.nic", stats.mac_remote_faults),
+	ICE_PF_STAT("fdir_sb_match.nic", stats.fd_sb_match),
+	ICE_PF_STAT("fdir_sb_status.nic", stats.fd_sb_status),
 };
 
 static const u32 ice_regs_dump_list[] = {
@@ -2558,12 +2560,27 @@ ice_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	int ret = -EOPNOTSUPP;
+	struct ice_hw *hw;
+
+	hw = &vsi->back->hw;
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
 		cmd->data = vsi->rss_size;
 		ret = 0;
 		break;
+	case ETHTOOL_GRXCLSRLCNT:
+		cmd->rule_cnt = hw->fdir_active_fltr;
+		/* report total rule count */
+		cmd->data = ice_get_fdir_cnt_all(hw);
+		ret = 0;
+		break;
+	case ETHTOOL_GRXCLSRULE:
+		ret = ice_get_ethtool_fdir_entry(hw, cmd);
+		break;
+	case ETHTOOL_GRXCLSRLALL:
+		ret = ice_get_fdir_fltr_ids(hw, cmd, (u32 *)rule_locs);
+		break;
 	case ETHTOOL_GRXFH:
 		ice_get_rss_hash_opt(vsi, cmd);
 		ret = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index f07f40cb70bd..a7349cdb5ed1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -12,6 +12,167 @@
  */
 #define TNL_SEG_CNT(_TNL_) ((_TNL_) + 1)
 
+/**
+ * ice_fltr_to_ethtool_flow - convert filter type values to ethtool
+ * flow type values
+ * @flow: filter type to be converted
+ *
+ * Returns the corresponding ethtool flow type.
+ */
+static int ice_fltr_to_ethtool_flow(enum ice_fltr_ptype flow)
+{
+	switch (flow) {
+	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
+		return TCP_V4_FLOW;
+	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
+		return UDP_V4_FLOW;
+	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
+		return SCTP_V4_FLOW;
+	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
+		return IPV4_USER_FLOW;
+	default:
+		/* 0 is undefined ethtool flow */
+		return 0;
+	}
+}
+
+/**
+ * ice_ethtool_flow_to_fltr - convert ethtool flow type to filter enum
+ * @eth: Ethtool flow type to be converted
+ *
+ * Returns flow enum
+ */
+static enum ice_fltr_ptype ice_ethtool_flow_to_fltr(int eth)
+{
+	switch (eth) {
+	case TCP_V4_FLOW:
+		return ICE_FLTR_PTYPE_NONF_IPV4_TCP;
+	case UDP_V4_FLOW:
+		return ICE_FLTR_PTYPE_NONF_IPV4_UDP;
+	case SCTP_V4_FLOW:
+		return ICE_FLTR_PTYPE_NONF_IPV4_SCTP;
+	case IPV4_USER_FLOW:
+		return ICE_FLTR_PTYPE_NONF_IPV4_OTHER;
+	default:
+		return ICE_FLTR_PTYPE_NONF_NONE;
+	}
+}
+
+/**
+ * ice_get_ethtool_fdir_entry - fill ethtool structure with fdir filter data
+ * @hw: hardware structure that contains filter list
+ * @cmd: ethtool command data structure to receive the filter data
+ *
+ * Returns 0 on success and -EINVAL on failure
+ */
+int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd)
+{
+	struct ethtool_rx_flow_spec *fsp;
+	struct ice_fdir_fltr *rule;
+	int ret = 0;
+	u16 idx;
+
+	fsp = (struct ethtool_rx_flow_spec *)&cmd->fs;
+
+	mutex_lock(&hw->fdir_fltr_lock);
+
+	rule = ice_fdir_find_fltr_by_idx(hw, fsp->location);
+
+	if (!rule || fsp->location != rule->fltr_id) {
+		ret = -EINVAL;
+		goto release_lock;
+	}
+
+	fsp->flow_type = ice_fltr_to_ethtool_flow(rule->flow_type);
+
+	memset(&fsp->m_u, 0, sizeof(fsp->m_u));
+	memset(&fsp->m_ext, 0, sizeof(fsp->m_ext));
+
+	switch (fsp->flow_type) {
+	case IPV4_USER_FLOW:
+		fsp->h_u.usr_ip4_spec.ip_ver = ETH_RX_NFC_IP4;
+		fsp->h_u.usr_ip4_spec.proto = 0;
+		fsp->h_u.usr_ip4_spec.l4_4_bytes = rule->ip.l4_header;
+		fsp->h_u.usr_ip4_spec.tos = rule->ip.tos;
+		fsp->h_u.usr_ip4_spec.ip4src = rule->ip.src_ip;
+		fsp->h_u.usr_ip4_spec.ip4dst = rule->ip.dst_ip;
+		fsp->m_u.usr_ip4_spec.ip4src = rule->mask.src_ip;
+		fsp->m_u.usr_ip4_spec.ip4dst = rule->mask.dst_ip;
+		fsp->m_u.usr_ip4_spec.ip_ver = 0xFF;
+		fsp->m_u.usr_ip4_spec.proto = 0;
+		fsp->m_u.usr_ip4_spec.l4_4_bytes = rule->mask.l4_header;
+		fsp->m_u.usr_ip4_spec.tos = rule->mask.tos;
+		break;
+	case TCP_V4_FLOW:
+	case UDP_V4_FLOW:
+	case SCTP_V4_FLOW:
+		fsp->h_u.tcp_ip4_spec.psrc = rule->ip.src_port;
+		fsp->h_u.tcp_ip4_spec.pdst = rule->ip.dst_port;
+		fsp->h_u.tcp_ip4_spec.ip4src = rule->ip.src_ip;
+		fsp->h_u.tcp_ip4_spec.ip4dst = rule->ip.dst_ip;
+		fsp->m_u.tcp_ip4_spec.psrc = rule->mask.src_port;
+		fsp->m_u.tcp_ip4_spec.pdst = rule->mask.dst_port;
+		fsp->m_u.tcp_ip4_spec.ip4src = rule->mask.src_ip;
+		fsp->m_u.tcp_ip4_spec.ip4dst = rule->mask.dst_ip;
+		break;
+	default:
+		break;
+	}
+
+	if (rule->dest_ctl == ICE_FLTR_PRGM_DESC_DEST_DROP_PKT)
+		fsp->ring_cookie = RX_CLS_FLOW_DISC;
+	else
+		fsp->ring_cookie = rule->q_index;
+
+	idx = ice_ethtool_flow_to_fltr(fsp->flow_type);
+	if (idx == ICE_FLTR_PTYPE_NONF_NONE) {
+		dev_err(ice_hw_to_dev(hw), "Missing input index for flow_type %d\n",
+			rule->flow_type);
+		ret = -EINVAL;
+	}
+
+release_lock:
+	mutex_unlock(&hw->fdir_fltr_lock);
+	return ret;
+}
+
+/**
+ * ice_get_fdir_fltr_ids - fill buffer with filter IDs of active filters
+ * @hw: hardware structure containing the filter list
+ * @cmd: ethtool command data structure
+ * @rule_locs: ethtool array passed in from OS to receive filter IDs
+ *
+ * Returns 0 as expected for success by ethtool
+ */
+int
+ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
+		      u32 *rule_locs)
+{
+	struct ice_fdir_fltr *f_rule;
+	unsigned int cnt = 0;
+	int val = 0;
+
+	/* report total rule count */
+	cmd->data = ice_get_fdir_cnt_all(hw);
+
+	mutex_lock(&hw->fdir_fltr_lock);
+
+	list_for_each_entry(f_rule, &hw->fdir_list_head, fltr_node) {
+		if (cnt == cmd->rule_cnt) {
+			val = -EMSGSIZE;
+			goto release_lock;
+		}
+		rule_locs[cnt] = f_rule->fltr_id;
+		cnt++;
+	}
+
+release_lock:
+	mutex_unlock(&hw->fdir_fltr_lock);
+	if (!val)
+		cmd->rule_cnt = cnt;
+	return val;
+}
+
 /**
  * ice_fdir_get_hw_prof - return the ice_fd_hw_proc associated with a flow
  * @hw: hardware structure containing the filter list
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index c43f79d0bd5a..68405882f63f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -52,3 +52,36 @@ ice_alloc_fd_shrd_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr)
 				  ICE_AQC_RES_TYPE_FLAG_DEDICATED, num_fltr,
 				  cntr_id);
 }
+
+/**
+ * ice_get_fdir_cnt_all - get the number of Flow Director filters
+ * @hw: hardware data structure
+ *
+ * Returns the number of filters available on device
+ */
+int ice_get_fdir_cnt_all(struct ice_hw *hw)
+{
+	return hw->func_caps.fd_fltr_guar + hw->func_caps.fd_fltr_best_effort;
+}
+
+/**
+ * ice_fdir_find_by_idx - find filter with idx
+ * @hw: pointer to hardware structure
+ * @fltr_idx: index to find.
+ *
+ * Returns pointer to filter if found or null
+ */
+struct ice_fdir_fltr *
+ice_fdir_find_fltr_by_idx(struct ice_hw *hw, u32 fltr_idx)
+{
+	struct ice_fdir_fltr *rule;
+
+	list_for_each_entry(rule, &hw->fdir_list_head, fltr_node) {
+		/* rule ID found in the list */
+		if (fltr_idx == rule->fltr_id)
+			return rule;
+		if (fltr_idx < rule->fltr_id)
+			break;
+	}
+	return NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 2cb8cb089d9f..d37171d1a306 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -3,10 +3,57 @@
 
 #ifndef _ICE_FDIR_H_
 #define _ICE_FDIR_H_
+
+enum ice_fltr_prgm_desc_dest {
+	ICE_FLTR_PRGM_DESC_DEST_DROP_PKT,
+	ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QINDEX,
+};
+
+struct ice_fdir_v4 {
+	__be32 dst_ip;
+	__be32 src_ip;
+	__be16 dst_port;
+	__be16 src_port;
+	__be32 l4_header;
+	__be32 sec_parm_idx;	/* security parameter index */
+	u8 tos;
+	u8 ip_ver;
+	u8 proto;
+};
+
+struct ice_fdir_extra {
+	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
+	u32 usr_def[2];		/* user data */
+	__be16 vlan_type;	/* VLAN ethertype */
+	__be16 vlan_tag;	/* VLAN tag info */
+};
+
+struct ice_fdir_fltr {
+	struct list_head fltr_node;
+	enum ice_fltr_ptype flow_type;
+
+	struct ice_fdir_v4 ip;
+	struct ice_fdir_v4 mask;
+
+	struct ice_fdir_extra ext_data;
+	struct ice_fdir_extra ext_mask;
+
+	/* filter control */
+	u16 q_index;
+	u16 dest_vsi;
+	u8 dest_ctl;
+	u8 fltr_status;
+	u16 cnt_index;
+	u32 fltr_id;
+};
+
 enum ice_status ice_alloc_fd_res_cntr(struct ice_hw *hw, u16 *cntr_id);
 enum ice_status ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id);
 enum ice_status
 ice_alloc_fd_guar_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
 enum ice_status
 ice_alloc_fd_shrd_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
+int ice_get_fdir_cnt_all(struct ice_hw *hw);
+struct ice_fdir_fltr *
+ice_fdir_find_fltr_by_idx(struct ice_hw *hw, u32 fltr_idx);
 #endif /* _ICE_FDIR_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 3a85138d526b..dd96409673d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -344,6 +344,7 @@
 #define GLPRT_TDOLD(_i)				(0x00381280 + ((_i) * 8))
 #define GLPRT_UPRCL(_i)				(0x00381300 + ((_i) * 8))
 #define GLPRT_UPTCL(_i)				(0x003811C0 + ((_i) * 8))
+#define GLSTAT_FD_CNT0L(_i)			(0x003A0000 + ((_i) * 8))
 #define GLV_BPRCL(_i)				(0x003B6000 + ((_i) * 8))
 #define GLV_BPTCL(_i)				(0x0030E000 + ((_i) * 8))
 #define GLV_GORCL(_i)				(0x003B0000 + ((_i) * 8))
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 83457d8ca587..bf7d070eaba1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4343,6 +4343,7 @@ void ice_update_pf_stats(struct ice_pf *pf)
 {
 	struct ice_hw_port_stats *prev_ps, *cur_ps;
 	struct ice_hw *hw = &pf->hw;
+	u16 fd_ctr_base;
 	u8 port;
 
 	port = hw->port_info->lport;
@@ -4431,6 +4432,12 @@ void ice_update_pf_stats(struct ice_pf *pf)
 	ice_stat_update40(hw, GLPRT_PTC9522L(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_size_big, &cur_ps->tx_size_big);
 
+	fd_ctr_base = hw->fd_ctr_base;
+
+	ice_stat_update40(hw,
+			  GLSTAT_FD_CNT0L(ICE_FD_SB_STAT_IDX(fd_ctr_base)),
+			  pf->stat_prev_loaded, &prev_ps->fd_sb_match,
+			  &cur_ps->fd_sb_match);
 	ice_stat_update32(hw, GLPRT_LXONRXC(port), pf->stat_prev_loaded,
 			  &prev_ps->link_xon_rx, &cur_ps->link_xon_rx);
 
@@ -4474,6 +4481,8 @@ void ice_update_pf_stats(struct ice_pf *pf)
 	ice_stat_update32(hw, GLPRT_RJC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_jabber, &cur_ps->rx_jabber);
 
+	cur_ps->fd_sb_status = test_bit(ICE_FLAG_FD_ENA, pf->flags) ? 1 : 0;
+
 	pf->stat_prev_loaded = true;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 571f707544c6..5291b687a75f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -695,6 +695,9 @@ struct ice_hw_port_stats {
 	u64 tx_size_1023;		/* ptc1023 */
 	u64 tx_size_1522;		/* ptc1522 */
 	u64 tx_size_big;		/* ptc9522 */
+	/* flow director stats */
+	u32 fd_sb_status;
+	u64 fd_sb_match;
 };
 
 /* Checksum and Shadow RAM pointers */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
