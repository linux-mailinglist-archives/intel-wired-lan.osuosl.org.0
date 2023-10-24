Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7240B7D4EEC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05F4E41D75;
	Tue, 24 Oct 2023 11:35:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05F4E41D75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147321;
	bh=g48xopn0UM4w4/wSYmlwsDaw1c5e2ZglLOWscfnpZ/M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8DPlLVwr1NtfWTONOzL7riyJWORG1zQ0Q2UMXvcVGZKhTkA5qiJKleaTPk6g59vbe
	 e5PWO4Tv/3JHHzT/puXwdGcvkegfzXcaZ0VjH362NSPD45ZHmQL+4L0qUhqvXL7qEM
	 4dC75BIA6Z7QPBHBqOhw1vvjkj5fkZakILb4RN5IqSTAUKjNid6WhbgVFtItf7ovBm
	 qy4nhzugdjSteTFaWZEqNc6ihj1LMQ4ib2ifF26L4TGZD6A5kVYEpeMzoZ6+JEJmo3
	 M19T1sY9yBOvKV5Fe2df6NYK+oIs0/5ksC1szv8AfL0fDD7bykz4iTe0jtvfnUc75O
	 gMAoi5pPaolGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GYS1aYjC7G4E; Tue, 24 Oct 2023 11:35:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C2AF401CF;
	Tue, 24 Oct 2023 11:35:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C2AF401CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49C2F1BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1FD8E43126
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FD8E43126
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JBP2eNRbUq7W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:34:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACD8F42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACD8F42ECD
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660547"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660547"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146087"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:37 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:21 +0200
Message-ID: <20231024110929.19423-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147297; x=1729683297;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P8Uxdqm7LCe9w0pzTpg2S+dVJ+WoFhyJhxi4rgKgiew=;
 b=j1h+owS0DJ3ZyRaBE+dn3CvDBYZOU/5PPiitfAzQDkLP+3UGn4T+11eb
 ayLmtHFAqzscW/ZDZPTwkDifTc2qmk0GsifgJEsFjuz2+nn8ecU/bOnnd
 6k5H6suwGeIFR0YZd+QQHP9kRwOhz2UtsGZ0xvaoy+WTypp0adJVv8yab
 BT9jIne9KSdbD5M2lgeOd1+Dhmd2W1zWNVftieG2xDIJJoN2S+PL9KXPY
 s16aV0dGEEdKQgYbm+U3tyPfZccwvqmUxBsH8tpFoYZsmIYPb2M/TlR44
 ejoYCRlQ6jcTNZLN1iNSuARek+0ansv2ohFRydDZwzoyBQthpH8mMFzQv
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j1h+owS0
Subject: [Intel-wired-lan] [PATCH iwl-next v1 07/15] ice: remove VF pointer
 reference in eswitch code
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make eswitch code generic by removing VF pointer reference in functions.
It is needed to support eswitch mode for other type of devices.

Previously queue id used for Rx was based on VF number. Use ::q_id saved
in port representor instead.

After adding or removing port representor ::q_id value can change. It
isn't good idea to iterate over representors list using this value.
Use xa_find starting from the first one instead to get next port
representor to remap.

The number of port representors has to be equal to ::num_rx/tx_q. Warn if
it isn't true.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 39 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_eswitch.h |  5 ++-
 drivers/net/ethernet/intel/ice/ice_repr.c    |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  2 +-
 4 files changed, 25 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index a6b528bc2023..66cbe2c80fea 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -47,7 +47,8 @@ ice_eswitch_add_sp_rule(struct ice_pf *pf, struct ice_repr *repr)
 	err = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info,
 			       &repr->sp_rule);
 	if (err)
-		dev_err(ice_pf_to_dev(pf), "Unable to add slow-path rule in switchdev mode");
+		dev_err(ice_pf_to_dev(pf), "Unable to add slow-path rule for eswitch for PR %d",
+			repr->id);
 
 	kfree(list);
 	return err;
@@ -142,6 +143,7 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = pf->eswitch.control_vsi;
+	unsigned long repr_id = 0;
 	int q_id;
 
 	ice_for_each_txq(vsi, q_id) {
@@ -149,13 +151,14 @@ static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 		struct ice_tx_ring *tx_ring;
 		struct ice_rx_ring *rx_ring;
 		struct ice_repr *repr;
-		struct ice_vf *vf;
 
-		vf = ice_get_vf_by_id(pf, q_id);
-		if (WARN_ON(!vf))
-			continue;
+		repr = xa_find(&pf->eswitch.reprs, &repr_id, U32_MAX,
+			       XA_PRESENT);
+		if (WARN_ON(!repr))
+			break;
 
-		repr = vf->repr;
+		repr_id += 1;
+		repr->q_id = q_id;
 		q_vector = repr->q_vector;
 		tx_ring = vsi->tx_rings[q_id];
 		rx_ring = vsi->rx_rings[q_id];
@@ -178,8 +181,6 @@ static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 		rx_ring->q_vector = q_vector;
 		rx_ring->next = NULL;
 		rx_ring->netdev = repr->netdev;
-
-		ice_put_vf(vf);
 	}
 }
 
@@ -284,20 +285,17 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 
 /**
  * ice_eswitch_update_repr - reconfigure port representor
- * @vsi: VF VSI for which port representor is configured
+ * @repr: pointer to repr struct
+ * @vsi: VSI for which port representor is configured
  */
-void ice_eswitch_update_repr(struct ice_vsi *vsi)
+void ice_eswitch_update_repr(struct ice_repr *repr, struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
-	struct ice_repr *repr;
-	struct ice_vf *vf;
 	int ret;
 
 	if (!ice_is_switchdev_running(pf))
 		return;
 
-	vf = vsi->vf;
-	repr = vf->repr;
 	repr->src_vsi = vsi;
 	repr->dst->u.port_info.port_id = vsi->vsi_num;
 
@@ -306,9 +304,10 @@ void ice_eswitch_update_repr(struct ice_vsi *vsi)
 
 	ret = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
 	if (ret) {
-		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr, ICE_FWD_TO_VSI);
-		dev_err(ice_pf_to_dev(pf), "Failed to update VF %d port representor",
-			vsi->vf->vf_id);
+		ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
+					       ICE_FWD_TO_VSI);
+		dev_err(ice_pf_to_dev(pf), "Failed to update VSI of port representor %d",
+			repr->id);
 	}
 }
 
@@ -340,7 +339,7 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 	skb_dst_drop(skb);
 	dst_hold((struct dst_entry *)repr->dst);
 	skb_dst_set(skb, (struct dst_entry *)repr->dst);
-	skb->queue_mapping = repr->vf->vf_id;
+	skb->queue_mapping = repr->q_id;
 
 	return ice_start_xmit(skb, netdev);
 }
@@ -486,7 +485,7 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 	ice_eswitch_remap_rings_to_vectors(pf);
 
 	if (ice_vsi_open(ctrl_vsi))
-		goto err_setup_reprs;
+		goto err_vsi_open;
 
 	if (ice_eswitch_br_offloads_init(pf))
 		goto err_br_offloads;
@@ -497,6 +496,8 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 
 err_br_offloads:
 	ice_vsi_close(ctrl_vsi);
+err_vsi_open:
+	ice_eswitch_release_reprs(pf);
 err_setup_reprs:
 	ice_repr_rem_from_all_vfs(pf);
 err_repr_add:
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index b18bf83a2f5b..f43db1cce3ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -17,7 +17,7 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 		     struct netlink_ext_ack *extack);
 bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
 
-void ice_eswitch_update_repr(struct ice_vsi *vsi);
+void ice_eswitch_update_repr(struct ice_repr *repr, struct ice_vsi *vsi);
 
 void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf);
 
@@ -34,7 +34,8 @@ static inline void
 ice_eswitch_set_target_vsi(struct sk_buff *skb,
 			   struct ice_tx_offload_params *off) { }
 
-static inline void ice_eswitch_update_repr(struct ice_vsi *vsi) { }
+static inline void
+ice_eswitch_update_repr(struct ice_repr *repr, struct ice_vsi *vsi) { }
 
 static inline int ice_eswitch_configure(struct ice_pf *pf)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index e56c59a304ef..77cc77ab826a 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -336,6 +336,7 @@ static int ice_repr_add(struct ice_vf *vf)
 	if (err)
 		goto err_netdev;
 
+	ether_addr_copy(repr->parent_mac, vf->hw_lan_addr);
 	ice_virtchnl_set_repr_ops(vf);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index aca1f2ea5034..462ee9fdf815 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -928,7 +928,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		goto out_unlock;
 	}
 
-	ice_eswitch_update_repr(vsi);
+	ice_eswitch_update_repr(vf->repr, vsi);
 
 	/* if the VF has been reset allow it to come up again */
 	ice_mbx_clear_malvf(&vf->mbx_info);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
