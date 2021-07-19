Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 556D03CD3CA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jul 2021 13:28:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0098440435;
	Mon, 19 Jul 2021 11:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ve2dAdp_Ov7; Mon, 19 Jul 2021 11:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B976140416;
	Mon, 19 Jul 2021 11:28:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C726C1BF427
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 11:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B31EA4040C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 11:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9VnrAJ4K70hT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jul 2021 11:28:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B4891403DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 11:28:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="232807350"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="232807350"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 04:28:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="432080043"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 19 Jul 2021 04:28:03 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 16JBS2ak021597; Mon, 19 Jul 2021 12:28:02 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Jul 2021 13:27:59 +0200
Message-Id: <1626694079-4328-1-git-send-email-wojciech.drewek@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix crash in switchdev mode
 during VFR
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During VF reset VF VSI is released, because of that there was
a risk of calling ice_repr_get_stats64 or ice_get_drvinfo when
VF VSI was NULL. The solution is to use ice_check_vf_ready_for_cfg
function.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c     | 27 ++++++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_repr.c        |  6 +++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h |  6 ++++++
 4 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2858805cdeea..1abe756f9f46 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -170,10 +170,9 @@ struct ice_priv_flag {
 #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
 
 static void
-ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
+__ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo,
+		  struct ice_vsi *vsi)
 {
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = ice_get_netdev_priv_vsi(np);
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_orom_info *orom;
@@ -196,6 +195,26 @@ struct ice_priv_flag {
 	drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
 }
 
+static void
+ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+
+	__ice_get_drvinfo(netdev, drvinfo, np->vsi);
+}
+
+static void
+ice_repr_get_drvinfo(struct net_device *netdev,
+		     struct ethtool_drvinfo *drvinfo)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
+
+	if (ice_check_vf_ready_for_cfg(repr->vf))
+		return;
+
+	__ice_get_drvinfo(netdev, drvinfo, repr->src_vsi);
+}
+
 static int ice_get_regs_len(struct net_device __always_unused *netdev)
 {
 	return sizeof(ice_regs_dump_list);
@@ -4061,7 +4080,7 @@ void ice_set_ethtool_safe_mode_ops(struct net_device *netdev)
 }
 
 static const struct ethtool_ops ice_ethtool_repr_ops = {
-	.get_drvinfo		= ice_get_drvinfo,
+	.get_drvinfo		= ice_repr_get_drvinfo,
 	.get_link		= ethtool_op_get_link,
 	.get_strings		= ice_get_strings,
 	.get_ethtool_stats      = ice_get_ethtool_stats,
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index ababed89f25a..b02e5462b851 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -48,8 +48,12 @@ static int ice_repr_get_sw_port_id(struct ice_repr *repr)
 ice_repr_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_vsi *vsi = np->repr->src_vsi;
 	struct ice_eth_stats *eth_stats;
+	struct ice_vsi *vsi;
+
+	if (ice_check_vf_ready_for_cfg(np->repr->vf))
+		return;
+	vsi = np->repr->src_vsi;
 
 	ice_update_vsi_stats(vsi);
 	eth_stats = &vsi->eth_stats;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 501331b6f70b..0600ccf096f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2815,7 +2815,7 @@ static void ice_wait_on_vf_reset(struct ice_vf *vf)
  * disabled, and initialized so it can be configured and/or queried by a host
  * administrator.
  */
-static int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
+int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
 {
 	struct ice_pf *pf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 6bad277d16fc..8aed26a86dd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -176,6 +176,8 @@ struct ice_vf {
 
 int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state);
 
+int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
+
 int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena);
 
 int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector);
@@ -203,6 +205,10 @@ static inline void ice_vc_notify_link_state(struct ice_pf *pf) { }
 static inline void ice_vc_notify_reset(struct ice_pf *pf) { }
 static inline void ice_vc_notify_vf_link_state(struct ice_vf *vf) { }
 static inline void ice_vc_change_ops_to_repr(struct ice_vc_vf_ops *ops) { }
+static inline int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
+{
+	return -EOPNOTSUPP;
+}
 static inline void ice_vc_set_dflt_vf_ops(struct ice_vc_vf_ops *ops) { }
 static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf) { }
 static inline
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
