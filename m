Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5751537BDA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 May 2022 15:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54ED060AE4;
	Mon, 30 May 2022 13:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SEaDu1l_NCnA; Mon, 30 May 2022 13:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10E776115A;
	Mon, 30 May 2022 13:28:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45C3E1BF357
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 13:28:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 329E26115A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 13:28:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZUHLXbnc_wYl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 May 2022 13:28:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04B7B60AE4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 13:28:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 371B4B80D84;
 Mon, 30 May 2022 13:28:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E97AC385B8;
 Mon, 30 May 2022 13:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653917291;
 bh=bGfe+XYml5vTZnnP/P6GhNopkUPsUwTEgTIBai+RAio=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VeW2XIppxFWqvhI265VRppxPHoea/Yd1hrC3gVGOYzKD1/EWLy1mAuBb9S3uCrQeg
 0HlR12427XBnpmO9iWDgXRtrS/+BZMJuR3+qZFQ16L667fYOsDO3KudrMRX9pold1Z
 ws2BIZyX+LLsy1hxoUzHpWGP6/LY4tJeRw13L+mQaAXkGDzyAtcjDyBxZaibekx6jO
 82fDHEChbLpNrkED/Ow8DJAug4Jw6SFewlrHbH0CM7prpSkQ2ELlSISRtdEmiJL5ov
 at67ulgUMBrfTxehNQxdnPSnF8euZYsze+PO6TmX0dAmUoCDb/6kvXRkEw+Ca++8uX
 hQql+SIKNUP8Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 30 May 2022 09:23:10 -0400
Message-Id: <20220530132425.1929512-85-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530132425.1929512-1-sashal@kernel.org>
References: <20220530132425.1929512-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.18 085/159] ice: always check VF
 VSI pointer values
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
Cc: Sasha Levin <sashal@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>,
 intel-wired-lan@lists.osuosl.org, edumazet@google.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

[ Upstream commit baeb705fd6a7245cc1fa69ed991a9cffdf44a174 ]

The ice_get_vf_vsi function can return NULL in some cases, such as if
handling messages during a reset where the VSI is being removed and
recreated.

Several places throughout the driver do not bother to check whether this
VSI pointer is valid. Static analysis tools maybe report issues because
they detect paths where a potentially NULL pointer could be dereferenced.

Fix this by checking the return value of ice_get_vf_vsi everywhere.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  5 ++-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  7 +++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 32 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 28 +++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  5 +++
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  7 +++-
 6 files changed, 77 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index a230edb38466..4a9de59121d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -753,9 +753,12 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 
 	pf = vf->pf;
 	dev = ice_pf_to_dev(pf);
-	vsi = ice_get_vf_vsi(vf);
 	devlink_port = &vf->devlink_port;
 
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi)
+		return -EINVAL;
+
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
 	attrs.pci_vf.pf = pf->hw.bus.func;
 	attrs.pci_vf.vf = vf->vf_id;
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 848f2adea563..a91b81c3088b 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -293,8 +293,13 @@ static int ice_repr_add(struct ice_vf *vf)
 	struct ice_q_vector *q_vector;
 	struct ice_netdev_priv *np;
 	struct ice_repr *repr;
+	struct ice_vsi *vsi;
 	int err;
 
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi)
+		return -EINVAL;
+
 	repr = kzalloc(sizeof(*repr), GFP_KERNEL);
 	if (!repr)
 		return -ENOMEM;
@@ -313,7 +318,7 @@ static int ice_repr_add(struct ice_vf *vf)
 		goto err_alloc;
 	}
 
-	repr->src_vsi = ice_get_vf_vsi(vf);
+	repr->src_vsi = vsi;
 	repr->vf = vf;
 	vf->repr = repr;
 	np = netdev_priv(repr->netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 0c438219f7a3..bb1721f1321d 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -46,7 +46,12 @@ static void ice_free_vf_entries(struct ice_pf *pf)
  */
 static void ice_vf_vsi_release(struct ice_vf *vf)
 {
-	ice_vsi_release(ice_get_vf_vsi(vf));
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+	if (WARN_ON(!vsi))
+		return;
+
+	ice_vsi_release(vsi);
 	ice_vf_invalidate_vsi(vf);
 }
 
@@ -104,6 +109,8 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
 
 	hw = &pf->hw;
 	vsi = ice_get_vf_vsi(vf);
+	if (WARN_ON(!vsi))
+		return;
 
 	dev = ice_pf_to_dev(pf);
 	wr32(hw, VPINT_ALLOC(vf->vf_id), 0);
@@ -341,6 +348,9 @@ static void ice_ena_vf_q_mappings(struct ice_vf *vf, u16 max_txq, u16 max_rxq)
 	struct ice_hw *hw = &vf->pf->hw;
 	u32 reg;
 
+	if (WARN_ON(!vsi))
+		return;
+
 	/* set regardless of mapping mode */
 	wr32(hw, VPLAN_TXQ_MAPENA(vf->vf_id), VPLAN_TXQ_MAPENA_TX_ENA_M);
 
@@ -386,6 +396,9 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
+	if (WARN_ON(!vsi))
+		return;
+
 	ice_ena_vf_msix_mappings(vf);
 	ice_ena_vf_q_mappings(vf, vsi->alloc_txq, vsi->alloc_rxq);
 }
@@ -1128,6 +1141,8 @@ static struct ice_vf *ice_get_vf_from_pfq(struct ice_pf *pf, u16 pfq)
 		u16 rxq_idx;
 
 		vsi = ice_get_vf_vsi(vf);
+		if (!vsi)
+			continue;
 
 		ice_for_each_rxq(vsi, rxq_idx)
 			if (vsi->rxq_map[rxq_idx] == pfq) {
@@ -1521,8 +1536,15 @@ static int ice_calc_all_vfs_min_tx_rate(struct ice_pf *pf)
 static bool
 ice_min_tx_rate_oversubscribed(struct ice_vf *vf, int min_tx_rate)
 {
-	int link_speed_mbps = ice_get_link_speed_mbps(ice_get_vf_vsi(vf));
-	int all_vfs_min_tx_rate = ice_calc_all_vfs_min_tx_rate(vf->pf);
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	int all_vfs_min_tx_rate;
+	int link_speed_mbps;
+
+	if (WARN_ON(!vsi))
+		return false;
+
+	link_speed_mbps = ice_get_link_speed_mbps(vsi);
+	all_vfs_min_tx_rate = ice_calc_all_vfs_min_tx_rate(vf->pf);
 
 	/* this VF's previous rate is being overwritten */
 	all_vfs_min_tx_rate -= vf->min_tx_rate;
@@ -1566,6 +1588,10 @@ ice_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
 		goto out_put_vf;
 
 	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		ret = -EINVAL;
+		goto out_put_vf;
+	}
 
 	/* when max_tx_rate is zero that means no max Tx rate limiting, so only
 	 * check if max_tx_rate is non-zero
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 6578059d9479..aefd66a4db80 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -220,8 +220,10 @@ static void ice_vf_clear_counters(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
+	if (vsi)
+		vsi->num_vlan = 0;
+
 	vf->num_mac = 0;
-	vsi->num_vlan = 0;
 	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
 	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
 }
@@ -251,6 +253,9 @@ static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 	struct ice_pf *pf = vf->pf;
 
+	if (WARN_ON(!vsi))
+		return -EINVAL;
+
 	if (ice_vsi_rebuild(vsi, true)) {
 		dev_err(ice_pf_to_dev(pf), "failed to rebuild VF %d VSI\n",
 			vf->vf_id);
@@ -514,6 +519,10 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	ice_trigger_vf_reset(vf, flags & ICE_VF_RESET_VFLR, false);
 
 	vsi = ice_get_vf_vsi(vf);
+	if (WARN_ON(!vsi)) {
+		err = -EIO;
+		goto out_unlock;
+	}
 
 	ice_dis_vf_qs(vf);
 
@@ -572,6 +581,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 
 	vf->vf_ops->post_vsi_rebuild(vf);
 	vsi = ice_get_vf_vsi(vf);
+	if (WARN_ON(!vsi)) {
+		err = -EINVAL;
+		goto out_unlock;
+	}
+
 	ice_eswitch_update_repr(vsi);
 	ice_eswitch_replay_vf_mac_rule(vf);
 
@@ -610,6 +624,9 @@ void ice_dis_vf_qs(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
+	if (WARN_ON(!vsi))
+		return;
+
 	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
 	ice_vsi_stop_all_rx_rings(vsi);
 	ice_set_vf_state_qs_dis(vf);
@@ -790,6 +807,9 @@ static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)
 	u8 broadcast[ETH_ALEN];
 	int status;
 
+	if (WARN_ON(!vsi))
+		return -EINVAL;
+
 	if (ice_is_eswitch_mode_switchdev(vf->pf))
 		return 0;
 
@@ -875,6 +895,9 @@ static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 	int err;
 
+	if (WARN_ON(!vsi))
+		return -EINVAL;
+
 	if (vf->min_tx_rate) {
 		err = ice_set_min_bw_limit(vsi, (u64)vf->min_tx_rate * 1000);
 		if (err) {
@@ -938,6 +961,9 @@ void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
 
+	if (WARN_ON(!vsi))
+		return;
+
 	ice_vf_set_host_trust_cfg(vf);
 
 	if (ice_vf_rebuild_host_mac_cfg(vf))
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 2889e050a4c9..5405a0e752cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2392,6 +2392,11 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 	}
 
 	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
 	if (vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q))
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 8e38ee2faf58..b74ccbd1591a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1344,7 +1344,12 @@ static void ice_vf_fdir_dump_info(struct ice_vf *vf)
 	pf = vf->pf;
 	hw = &pf->hw;
 	dev = ice_pf_to_dev(pf);
-	vf_vsi = pf->vsi[vf->lan_vsi_idx];
+	vf_vsi = ice_get_vf_vsi(vf);
+	if (!vf_vsi) {
+		dev_dbg(dev, "VF %d: invalid VSI pointer\n", vf->vf_id);
+		return;
+	}
+
 	vsi_num = ice_get_hw_vsi_num(hw, vf_vsi->idx);
 
 	fd_size = rd32(hw, VSIQF_FD_SIZE(vsi_num));
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
