Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4713E4643AA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 00:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE8A780C83;
	Tue, 30 Nov 2021 23:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KL5r1VOvlDcJ; Tue, 30 Nov 2021 23:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8A8780CE2;
	Tue, 30 Nov 2021 23:54:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9B521BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EBF340177
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hhl0OMvEl6Mj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A14F401DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236164191"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="236164191"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 15:53:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="511726113"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2021 15:53:02 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 15:51:46 -0800
Message-Id: <20211130235146.28731-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
References: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 14/14] ice: Add ability for PF
 admin to enable VF VLAN pruning
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

VFs by default are able to see all tagged traffic regardless of trust
and VLAN filters. Based on legacy devices (i.e. ixgbe, i40e), customers
expect VFs to receive all VLAN tagged traffic with a matching
destination MAC.

Add an ethtool private flag 'vf-vlan-pruning' and set the default to
off so VFs will receive all VLAN traffic directed towards them. When
the flag is turned on, VF will only be able to receive untagged
traffic or traffic with VLAN tags it has created interfaces for.

Also, the flag cannot be changed while any VFs are allocated. This was
done to simplify the implementation. So, if this flag is needed, then
the PF admin must enable it. If the user tries to enable the flag while
VFs are active, then print an unsupported message with the
vf-vlan-pruning flag included. In case multiple flags were specified, this
makes it clear to the user which flag failed.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h           |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c   |  9 +++++++++
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c   | 18 ++++++++++++++++--
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c   | 14 ++++++++++++++
 4 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 14aaca8dbbb7..dc86f2562e0f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -486,6 +486,7 @@ enum ice_pf_flags {
 	ICE_FLAG_LEGACY_RX,
 	ICE_FLAG_VF_TRUE_PROMISC_ENA,
 	ICE_FLAG_MDD_AUTO_RESET_VF,
+	ICE_FLAG_VF_VLAN_PRUNING,
 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
 	ICE_PF_FLAGS_NBITS		/* must be last */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index e2e3ef7fba7f..28ead0b4712f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -164,6 +164,7 @@ static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 	ICE_PRIV_FLAG("vf-true-promisc-support",
 		      ICE_FLAG_VF_TRUE_PROMISC_ENA),
 	ICE_PRIV_FLAG("mdd-auto-reset-vf", ICE_FLAG_MDD_AUTO_RESET_VF),
+	ICE_PRIV_FLAG("vf-vlan-pruning", ICE_FLAG_VF_VLAN_PRUNING),
 	ICE_PRIV_FLAG("legacy-rx", ICE_FLAG_LEGACY_RX),
 };
 
@@ -1295,6 +1296,14 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 		change_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags);
 		ret = -EAGAIN;
 	}
+
+	if (test_bit(ICE_FLAG_VF_VLAN_PRUNING, change_flags) &&
+	    pf->num_alloc_vfs) {
+		dev_err(dev, "vf-vlan-pruning: VLAN pruning cannot be changed while VFs are active.\n");
+		/* toggle bit back to previous state */
+		change_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags);
+		ret = -EOPNOTSUPP;
+	}
 ethtool_exit:
 	clear_bit(ICE_FLAG_ETHTOOL_CTXT, pf->flags);
 	return ret;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
index 4be29f97365c..39f2d36cabba 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
@@ -43,7 +43,6 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 
 		/* outer VLAN ops regardless of port VLAN config */
 		vlan_ops->add_vlan = ice_vsi_add_vlan;
-		vlan_ops->ena_rx_filtering = ice_vsi_ena_rx_vlan_filtering;
 		vlan_ops->dis_rx_filtering = ice_vsi_dis_rx_vlan_filtering;
 		vlan_ops->ena_tx_filtering = ice_vsi_ena_tx_vlan_filtering;
 		vlan_ops->dis_tx_filtering = ice_vsi_dis_tx_vlan_filtering;
@@ -51,6 +50,8 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 		if (ice_vf_is_port_vlan_ena(vf)) {
 			/* setup outer VLAN ops */
 			vlan_ops->set_port_vlan = ice_vsi_set_outer_port_vlan;
+			vlan_ops->ena_rx_filtering =
+				ice_vsi_ena_rx_vlan_filtering;
 
 			/* setup inner VLAN ops */
 			vlan_ops = &vsi->inner_vlan_ops;
@@ -61,6 +62,12 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 			vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
 			vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
 		} else {
+			if (!test_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags))
+				vlan_ops->ena_rx_filtering = noop_vlan;
+			else
+				vlan_ops->ena_rx_filtering =
+					ice_vsi_ena_rx_vlan_filtering;
+
 			vlan_ops->del_vlan = ice_vsi_del_vlan;
 			vlan_ops->ena_stripping = ice_vsi_ena_outer_stripping;
 			vlan_ops->dis_stripping = ice_vsi_dis_outer_stripping;
@@ -80,14 +87,21 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 
 		/* inner VLAN ops regardless of port VLAN config */
 		vlan_ops->add_vlan = ice_vsi_add_vlan;
-		vlan_ops->ena_rx_filtering = ice_vsi_ena_rx_vlan_filtering;
 		vlan_ops->dis_rx_filtering = ice_vsi_dis_rx_vlan_filtering;
 		vlan_ops->ena_tx_filtering = ice_vsi_ena_tx_vlan_filtering;
 		vlan_ops->dis_tx_filtering = ice_vsi_dis_tx_vlan_filtering;
 
 		if (ice_vf_is_port_vlan_ena(vf)) {
 			vlan_ops->set_port_vlan = ice_vsi_set_inner_port_vlan;
+			vlan_ops->ena_rx_filtering =
+				ice_vsi_ena_rx_vlan_filtering;
 		} else {
+			if (!test_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags))
+				vlan_ops->ena_rx_filtering = noop_vlan;
+			else
+				vlan_ops->ena_rx_filtering =
+					ice_vsi_ena_rx_vlan_filtering;
+
 			vlan_ops->del_vlan = ice_vsi_del_vlan;
 			vlan_ops->ena_stripping = ice_vsi_ena_inner_stripping;
 			vlan_ops->dis_stripping = ice_vsi_dis_inner_stripping;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index f1802de98b82..674d27c1a81d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -807,6 +807,11 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
 		return err;
 	}
 
+	err = vlan_ops->ena_rx_filtering(vsi);
+	if (err)
+		dev_warn(dev, "failed to enable Rx VLAN filtering for VF %d VSI %d during VF rebuild, error %d\n",
+			 vf->vf_id, vsi->idx, err);
+
 	return 0;
 }
 
@@ -1791,6 +1796,7 @@ static void ice_vc_notify_vf_reset(struct ice_vf *vf)
  */
 static int ice_init_vf_vsi_res(struct ice_vf *vf)
 {
+	struct ice_vsi_vlan_ops *vlan_ops;
 	struct ice_pf *pf = vf->pf;
 	u8 broadcast[ETH_ALEN];
 	struct ice_vsi *vsi;
@@ -1811,6 +1817,14 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 		goto release_vsi;
 	}
 
+	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	err = vlan_ops->ena_rx_filtering(vsi);
+	if (err) {
+		dev_warn(dev, "Failed to enable Rx VLAN filtering for VF %d\n",
+			 vf->vf_id);
+		goto release_vsi;
+	}
+
 	eth_broadcast_addr(broadcast);
 	err = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
 	if (err) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
