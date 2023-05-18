Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 964C7707E0B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 12:27:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A30D42881;
	Thu, 18 May 2023 10:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A30D42881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684405626;
	bh=qXDptahzQ+OqBA6Sv/ceytFEG1sqmoV10ZLjDe7U0lw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8cshf7NC+3GgNJECXOFGTe7OrEylGgadSOkimvXtUyubJdSpzLA8d8Jtjhn3syVgl
	 1L7EoLW+kBAN7qBfvWxWpPQNlOFqD2fT9MVWSz45mDZIHad6hNtK/5h9Tho1tAORbr
	 n/pDe467OOA/7THudYurec8BY86Vhw0cSUuTHT2tjP5HBZhqM2wIv1km+TCDPuWSUU
	 20E15JcVrYju0Ya2bK+6WAP5oRJLI9BZQMp6kw5atySg9K9qWczEo44pDcG8AwXe99
	 J7Tz1UYZj7VFaIfjaZKo8hMnNtkk7Y5kA9OKwA8R/17laWEV7+9JSYmpXpI8F8bDjo
	 7EFt0lXUzGVCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qouldLuzYKaO; Thu, 18 May 2023 10:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4CC04282A;
	Thu, 18 May 2023 10:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4CC04282A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAE631BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCD0C4062A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCD0C4062A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i4gbQKed5v4u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 10:26:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4082440125
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4082440125
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438371422"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438371422"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 03:26:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="767143732"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="767143732"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 18 May 2023 03:26:20 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AF81A27BA3;
 Thu, 18 May 2023 11:26:19 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 May 2023 12:25:00 +0200
Message-Id: <20230518102509.20913-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230518102509.20913-1-wojciech.drewek@intel.com>
References: <20230518102509.20913-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684405597; x=1715941597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ninw869I6P0cFGI0nOQ6S8ycG12PdZIEkTEIVH21FGs=;
 b=F0CymuYwHyy0McNWyRzdIe3Wv2g0xl2SKCsXFK/pXoKBq7lRBCa3ould
 sGSoepmpIrQIgQBfWxnYDL4HwBMvAjJLKlvsw9aCzxhRNI5nruFMEa1tH
 yYw/zoDxCmajKpWUi06RpKO18iMxy8yReBRniJU3Ciyhyj8uNHzonVQ2N
 CBQpFdurYZZLDBpBjeOHF/bi6vMTIXOgNLXRN7tC7xPcfWSAwDVONPRlN
 Tsu7H4KqV8mDFxrcD14tPCTvTrH/uNxFzMS5lHO2l4UIofGaZkuGlOums
 4SbPrrCj3R3prNXapa8DpH+Wa1WhUnE9jsiNekRiaYfyUS5PNIqSQU0ls
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F0CymuYw
Subject: [Intel-wired-lan] [PATCH iwl-next v2 01/10] ice: Minor switchdev
 fixes
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
  enabled in ice_set_rx_mode.

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
v2: enclose bitops into separate set of braces, move
    ice_is_switchdev_running check to ice_set_rx_mode
    from ice_vsi_sync_fltr
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 14 +++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c    |  4 ++--
 2 files changed, 15 insertions(+), 3 deletions(-)

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
index b0d1e6116eb9..80b2b4d39278 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -385,7 +385,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 	}
 	err = 0;
 	/* check for changes in promiscuous modes */
-	if (changed_flags & IFF_ALLMULTI) {
+	if ((changed_flags & IFF_ALLMULTI)) {
 		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
 			err = ice_set_promisc(vsi, ICE_MCAST_PROMISC_BITS);
 			if (err) {
@@ -5767,7 +5767,7 @@ static void ice_set_rx_mode(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
-	if (!vsi)
+	if (!vsi || ice_is_switchdev_running(vsi->back))
 		return;
 
 	/* Set the flags to synchronize filters
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
