Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 966896E43F4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 11:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24ABC613DA;
	Mon, 17 Apr 2023 09:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24ABC613DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681724137;
	bh=uPjze/Un9Gushw+4eS1tAEYA5kOg+mseAIq7S8CIjHI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4MRAGW/xnF97rnohUH5CtLsTtBzhkV64IrSiBZNOiJzFi2kC2R2wRHczueLIz2jGu
	 hXDF2dX9LFDuutzOptmdnDuKvIJa4NeYE1KI7hI2DGEnKj2STNWVIsorKnPzc5L9fL
	 bUIIu1y/bVgorqeGZnk4E5pNYBaBV45lx6QxPLJ4X420T3XGFU9aAXcEAun4WRFVKK
	 kQPJwh+kFPiJKGaO7qf/JCtJ/hlEyLBqJDxz/V/gO8biF2PARdTIhRmxL3f7OuKGUG
	 1gQ6IY0Dx+w1zAmT3lq/HXlwvZlBTk55fk1MZFclETFWwbOIDQ0Mmi0VV366rkZUIV
	 OSkFH9blqL7PA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1-W4hqNY0T3; Mon, 17 Apr 2023 09:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03E5A613A2;
	Mon, 17 Apr 2023 09:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03E5A613A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3EB0C1C40E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8F1D61374
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8F1D61374
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QkKsJl06Ty3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 09:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A11F361130
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A11F361130
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="333644083"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="333644083"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:35:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640899246"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="640899246"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2023 02:35:18 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B4B4B37E30;
 Mon, 17 Apr 2023 10:35:17 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Apr 2023 11:34:01 +0200
Message-Id: <20230417093412.12161-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417093412.12161-1-wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681724121; x=1713260121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YeDTlqNWIhn+3zDARr1uzRUJAFrSA/jxugFwYu6on8s=;
 b=aHNZ7aCRvOZ4ED4ajS3EUh8mCYhFVPo+siPnXWIEqLroRkerHHbRtPuO
 7pKC59PRY12fUoXSzt0Mje6OAvVGUmLb0W6AzyaDx2OaCvEN2UpLVijPu
 kvYlO8FMhYFovaFTq1Lp6N4qOeLNi27l1d85aSaS/7HQqb4BpK+4c8l6+
 y6s/PJzGe3yl1I79h1IeITVkeHYB1ZUeRI/tmcuTWYQhELNLRL1xB+qLJ
 gc+fwmBK9LJrpdKb779fORiWMZ4mXaZLT2okCyLcOUyBQ6GXpwFAGgHaa
 IZI+5iRD0VfKNQazrtGmvGg3WoX2f1Ygh3ZlxCWI1wdk8LOkrfGPowmy4
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aHNZ7aCR
Subject: [Intel-wired-lan] [PATCH net-next 01/12] ice: Minor switchdev fixes
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce a few fixes that are needed for bridge offload
to work properly.

- Skip adv rule removal in ice_eswitch_disable_switchdev.
  Advanced rules for ctrl VSI will be removed anyway when the
  VSI will cleaned up, no need to do it explicitly.

- Don't allow to change promisc mode in switchdev mode.
  When switchdev is configured, PF netdev is set to be a
  default VSI. This is needed for the slow-path to work correctly.
  All the unmatched packets will be directed to PF netdev.

  It is possible that this setting might be overwritten by
  ndo_set_rx_mode. Prevent this by checking if switchdev is
  enabled in ice_vsi_sync_fltr.

- Disable vlan pruning for uplink VSI. In switchdev mode, uplink VSI
  is configured to be default VSI which means it will receive all
  unmatched packets. In order to receive vlan packets we need to
  disable vlan pruning as well. This is done by dis_rx_filtering
  vlan op.

- There is possibility that ice_eswitch_port_start_xmit might be
  called while some resources are still not allocated which might
  cause NULL pointer dereference. Fix this by checking if switchdev
  configuration was finished.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 14 +++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c    |  2 +-
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index ad0a007b7398..bfd003135fc8 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -103,6 +103,10 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 		rule_added = true;
 	}
 
+	vlan_ops = ice_get_compat_vsi_vlan_ops(uplink_vsi);
+	if (vlan_ops->dis_rx_filtering(uplink_vsi))
+		goto err_dis_rx;
+
 	if (ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_set_allow_override))
 		goto err_override_uplink;
 
@@ -114,6 +118,8 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 err_override_control:
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 err_override_uplink:
+	vlan_ops->ena_rx_filtering(uplink_vsi);
+err_dis_rx:
 	if (rule_added)
 		ice_clear_dflt_vsi(uplink_vsi);
 err_def_rx:
@@ -331,6 +337,9 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 	np = netdev_priv(netdev);
 	vsi = np->vsi;
 
+	if (!vsi || !ice_is_switchdev_running(vsi->back))
+		return NETDEV_TX_BUSY;
+
 	if (ice_is_reset_in_progress(vsi->back->state) ||
 	    test_bit(ICE_VF_DIS, vsi->back->state))
 		return NETDEV_TX_BUSY;
@@ -378,9 +387,13 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 {
 	struct ice_vsi *uplink_vsi = pf->switchdev.uplink_vsi;
 	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
+	struct ice_vsi_vlan_ops *vlan_ops;
+
+	vlan_ops = ice_get_compat_vsi_vlan_ops(uplink_vsi);
 
 	ice_vsi_update_security(ctrl_vsi, ice_vsi_ctx_clear_allow_override);
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
+	vlan_ops->ena_rx_filtering(uplink_vsi);
 	ice_clear_dflt_vsi(uplink_vsi);
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
@@ -503,7 +516,6 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 
 	ice_eswitch_napi_disable(pf);
 	ice_eswitch_release_env(pf);
-	ice_rem_adv_rule_for_vsi(&pf->hw, ctrl_vsi->idx);
 	ice_eswitch_release_reprs(pf, ctrl_vsi);
 	ice_vsi_release(ctrl_vsi);
 	ice_repr_rem_from_all_vfs(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7c04057c524c..f198c845631f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -385,7 +385,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	}
 	err = 0;
 	/* check for changes in promiscuous modes */
-	if (changed_flags & IFF_ALLMULTI) {
+	if (changed_flags & IFF_ALLMULTI && !ice_is_switchdev_running(pf)) {
 		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
 			err = ice_set_promisc(vsi, ICE_MCAST_PROMISC_BITS);
 			if (err) {
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
