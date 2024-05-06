Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 475788BC9C6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 10:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E35E7406A2;
	Mon,  6 May 2024 08:42:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T2cqLiM9l7gF; Mon,  6 May 2024 08:42:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B852140714
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714984934;
	bh=zB/5jFC5Gy2APpWIEu+N+fdUIh3IBJcgdr7YJGeCUiI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RxUjOOhqLeTnFpE65o6tfCUM5CYGfhlPWwY1L7lUA9cMq8aUkBDR/QCWErAx28pjS
	 Y4WZHVluNqKULZbzgauussLX1U2Dn+eiKUqRcv6H2y/9YHvH+OEONZA1G71vKsmCsT
	 4K2C80C921UbV0gLYlNzmxUuSaqL971tIIXDJ9KZvwcPYlN0oeFwpdRSx2rqgiwBgw
	 efg2bMXuLD2+xQnwdZUzA63t93G4nbDDG1dulwAhTJS9qhWVcwtmzyRhboaoHY1TRb
	 +K+1SoZUmGhZCLijuf3pkTLfjcfaXxkWzgKiYj7u+aS4CtkglCojMM+p73ia8Soq7h
	 /sW6xPdTBIguA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B852140714;
	Mon,  6 May 2024 08:42:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D57B41BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0F1F40714
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mw1rDQ5-G6JH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 08:42:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC38A4069F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC38A4069F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC38A4069F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:10 +0000 (UTC)
X-CSE-ConnectionGUID: Sw3leCF/SXC7SvXSXZtfzA==
X-CSE-MsgGUID: 8VmjnVy/T1OICVG8iR4w2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14505106"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14505106"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:42:11 -0700
X-CSE-ConnectionGUID: eoiCBZEwTKK2z2mhekZY8A==
X-CSE-MsgGUID: LWG2MtAPR5KTjfrZNTiFmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28050157"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa009.fm.intel.com with ESMTP; 06 May 2024 01:42:08 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 May 2024 10:46:52 +0200
Message-ID: <20240506084653.532111-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
References: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714984931; x=1746520931;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PfM8XjXN6/WU18JZS9mknua1WPAgEF86RL/6y9HcEao=;
 b=hwFW/+JPiz+xn7ah/TyDIzQDorTrlHPc5EoyrmtbfTfEqsYbIuy3ITSx
 SZk+e+ECdJUF9VuHl9R96R1b8a8WVQaWZuj37vsJNkFlPonq4fTw1msbr
 WA3acAzs0NnnxEIrxsb5Gk6F6WoQWrYxQiE8q2Rpry0srwrS2+2Y50aTB
 1m0brXwQlTDorOISouaKD1DH9TMZhCUagjRXj8HXTtoBU3sjw5PfVPrjV
 VPmBuvsowLPVJoOxquZuOOdyL8yDKeJabjQStITTM3IyIXekm1hGKQxDv
 djVn7Ig1Q0c7QolbWaDuv1U4pC+Tu1mWGY7wpcAINhiFFB1/aBNaJxuYw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hwFW/+JP
Subject: [Intel-wired-lan] [iwl-next v2 3/4] ice: move VSI configuration
 outside repr setup
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is needed because subfunction port representor shouldn't configure
the source VSI during representor creation.

Move the code to separate function and call it only in case the VF port
representor is being created.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 55 ++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_eswitch.h | 10 ++++
 drivers/net/ethernet/intel/ice/ice_repr.c    |  7 +++
 3 files changed, 57 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 7b57a6561a5a..3f73f46111fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -117,17 +117,10 @@ static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
 	struct ice_vsi *vsi = repr->src_vsi;
 	struct metadata_dst *dst;
 
-	ice_remove_vsi_fltr(&pf->hw, vsi->idx);
 	repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
 				       GFP_KERNEL);
 	if (!repr->dst)
-		goto err_add_mac_fltr;
-
-	if (ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof))
-		goto err_dst_free;
-
-	if (ice_vsi_add_vlan_zero(vsi))
-		goto err_update_security;
+		return -ENOMEM;
 
 	netif_keep_dst(uplink_vsi->netdev);
 
@@ -136,16 +129,48 @@ static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
 	dst->u.port_info.lower_dev = uplink_vsi->netdev;
 
 	return 0;
+}
 
-err_update_security:
+/**
+ * ice_eswitch_cfg_vsi - configure VSI to work in slow-path
+ * @vsi: VSI structure of representee
+ * @mac: representee MAC
+ *
+ * Return: 0 on success, non-zero on error.
+ */
+int ice_eswitch_cfg_vsi(struct ice_vsi *vsi, const u8 *mac)
+{
+	int err;
+
+	ice_remove_vsi_fltr(&vsi->back->hw, vsi->idx);
+
+	err = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
+	if (err)
+		goto err_update_security;
+
+	err = ice_vsi_add_vlan_zero(vsi);
+	if (err)
+		goto err_vlan_zero;
+
+	return 0;
+
+err_vlan_zero:
 	ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
-err_dst_free:
-	metadata_dst_free(repr->dst);
-	repr->dst = NULL;
-err_add_mac_fltr:
-	ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac, ICE_FWD_TO_VSI);
+err_update_security:
+	ice_fltr_add_mac_and_broadcast(vsi, mac, ICE_FWD_TO_VSI);
 
-	return -ENODEV;
+	return err;
+}
+
+/**
+ * ice_eswitch_decfg_vsi - unroll changes done to VSI for switchdev
+ * @vsi: VSI structure of representee
+ * @mac: representee MAC
+ */
+void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac)
+{
+	ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
+	ice_fltr_add_mac_and_broadcast(vsi, mac, ICE_FWD_TO_VSI);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index e2e5c0c75e7d..9a25606e9740 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -28,6 +28,9 @@ netdev_tx_t
 ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 struct net_device *ice_eswitch_get_target(struct ice_rx_ring *rx_ring,
 					  union ice_32b_rx_flex_desc *rx_desc);
+
+int ice_eswitch_cfg_vsi(struct ice_vsi *vsi, const u8 *mac);
+void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac);
 #else /* CONFIG_ICE_SWITCHDEV */
 static inline void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf) { }
 
@@ -85,5 +88,12 @@ ice_eswitch_get_target(struct ice_rx_ring *rx_ring,
 {
 	return rx_ring->netdev;
 }
+
+static inline int ice_eswitch_cfg_vsi(struct ice_vsi *vsi, const u8 *mac)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac) { }
 #endif /* CONFIG_ICE_SWITCHDEV */
 #endif /* _ICE_ESWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 35a6ac8c0466..bdda3401e343 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -306,6 +306,7 @@ static void ice_repr_rem(struct ice_repr *repr)
 void ice_repr_rem_vf(struct ice_repr *repr)
 {
 	ice_repr_remove_node(&repr->vf->devlink_port);
+	ice_eswitch_decfg_vsi(repr->src_vsi, repr->parent_mac);
 	unregister_netdev(repr->netdev);
 	ice_devlink_destroy_vf_port(repr->vf);
 	ice_virtchnl_set_dflt_ops(repr->vf);
@@ -401,11 +402,17 @@ struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
 	if (err)
 		goto err_netdev;
 
+	err = ice_eswitch_cfg_vsi(repr->src_vsi, repr->parent_mac);
+	if (err)
+		goto err_cfg_vsi;
+
 	ice_virtchnl_set_repr_ops(vf);
 	ice_repr_set_tx_topology(vf->pf);
 
 	return repr;
 
+err_cfg_vsi:
+	unregister_netdev(repr->netdev);
 err_netdev:
 	ice_repr_rem(repr);
 err_repr_add:
-- 
2.42.0

