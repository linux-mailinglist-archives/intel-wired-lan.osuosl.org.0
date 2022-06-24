Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE47C559785
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 12:17:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6426541140;
	Fri, 24 Jun 2022 10:17:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6426541140
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656065822;
	bh=ZJP5egU/qGHCkcJQNyzgxMWtxvk89zOamRS1vt4H60M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AC5e7Y8fJQTtQyR9sICcFgqgxUXynHneUD1gh/BbnG+J85lgwg9LSZ8YvieP8i4cs
	 WQCcPKFYt4wCkloiBwzc9qEXhiijl+fmR2HNPp9tRqDt3JGjhhW/XXtV+JQYTPufBi
	 jaieZ9KAeT059yR7lXE/WW7TeVwGaCCqMIRvPlHyuHJGSIJSOeZEFe403RwdAGbIFs
	 Arc+wFhEzZMs5O+T0trZ/d0mj4soiKjLbxj9IVGHcW5qUdUt6Uka7nXwF+C1LkmsKW
	 A+6iKUowOKarAAihMcTs2FPggTzyFozyVN3VSRoAu/HMWJGwXTT9cf6xFCC+6/RboB
	 ckK4hqz+dC1SQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zsmz7xgMFi12; Fri, 24 Jun 2022 10:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3678C40477;
	Fri, 24 Jun 2022 10:17:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3678C40477
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92D391BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69DC8425C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:16:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69DC8425C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CgkpncHyxaZa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 10:16:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AEF2425AB
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AEF2425AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:16:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="269701094"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="269701094"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 03:16:41 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="678488605"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 03:16:40 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Jun 2022 12:16:11 +0200
Message-Id: <20220624101611.1007933-3-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220624101611.1007933-1-michal.wilczynski@intel.com>
References: <20220624101611.1007933-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656065813; x=1687601813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BnOrpn9w42KJ87vfgcA+EmHfwOA5eiiinZ2hVnM8MLo=;
 b=XbKchU21/UNIGsw5fR2tFeeTpBkoi3F4YF0yu8U1dgezdcWz48izCTBZ
 XTrewcLQ3CJRXFvGAmTcNnM4S1Wv8weWTFTsPqQz6lZSFUud8BPRFMTjI
 mvECW/ywJhFB6xp7aviDOPWl7o3jVw4UDbx6AQwtoyjIfMxM9FSSCYtsi
 6zILC9XkOBNnx0em8rxFhnJ8wOrhBQEVlqjkoQhjoe8THbzNL24PaEI09
 CCdrvZLVXnJzbU6KSf7po55hY/Bir2EzUok0V+N2EgARQyrTu/9wJV85V
 or+7SYfsnTDNO2cM1q8wUlxDTGHv0MeWNylu1Mq35uiCtliZN49MB9l9v
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XbKchU21
Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: Fix promiscuous mode
 not turning off
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When trust is turned off for the VF, the expectation is that
promiscuous and allmulticast filters are removed.
Currently default VSI filter is not getting cleared in this
flow.

Example:

ip link set enp236s0f0 vf 0 trust on
ip link set enp236s0f0v0 promisc on
ip link set enp236s0f0 vf 0 trust off
/* promiscuous mode is still enabled on VF0 */

Remove switch filters for both cases.
This commit fixes above behavior by removing default VSI filters
and allmulticast filters when vf-true-promisc-support is OFF.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 78 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  9 +--
 3 files changed, 70 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 9038d2687ba6..617803185ca6 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -297,6 +297,72 @@ bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf)
 	return is_vf_promisc;
 }
 
+/**
+ * ice_vf_get_promisc_masks - Calculate masks for promiscuous modes
+ * @vf: the VF pointer
+ * @vsi: the VSI to configure
+ * @ucast_m: promiscuous mask to apply to unicast
+ * @mcast_m: promiscuous mask to apply to multicast
+ *
+ * Decide which mask should be used for unicast and multicast filter,
+ * based on presence of VLANs
+ */
+void ice_vf_get_promisc_masks(struct ice_vf *vf, struct ice_vsi *vsi,
+			      u8 *ucast_m, u8 *mcast_m)
+{
+	if (ice_vf_is_port_vlan_ena(vf) ||
+	    ice_vsi_has_non_zero_vlans(vsi)) {
+		*mcast_m = ICE_MCAST_VLAN_PROMISC_BITS;
+		*ucast_m = ICE_UCAST_VLAN_PROMISC_BITS;
+	} else {
+		*mcast_m = ICE_MCAST_PROMISC_BITS;
+		*ucast_m = ICE_UCAST_PROMISC_BITS;
+	}
+}
+
+/**
+ * ice_vf_clear_all_promisc_modes - Clear promisc/allmulticast on VF VSI
+ * @vf: the VF pointer
+ * @vsi: the VSI to configure
+ *
+ * Clear all promiscuous/allmulticast filters for a VF
+ */
+static int ice_vf_clear_all_promisc_modes(struct ice_vf *vf,
+					  struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vf->pf;
+	u8 ucast_m, mcast_m;
+	int ret = 0;
+
+	ice_vf_get_promisc_masks(vf, vsi, &ucast_m, &mcast_m);
+	if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states)) {
+		if (!test_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags)) {
+			if (ice_is_dflt_vsi_in_use(vsi->port_info))
+				ret = ice_clear_dflt_vsi(vsi);
+		} else {
+			ret = ice_vf_clear_vsi_promisc(vf, vsi, ucast_m);
+		}
+
+		if (ret) {
+			dev_err(ice_pf_to_dev(vf->pf), "Disabling promiscuous mode failed\n");
+		} else {
+			clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
+			dev_info(ice_pf_to_dev(vf->pf), "Disabling promiscuous mode succeeded\n");
+		}
+	}
+
+	if (test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
+		ret = ice_vf_clear_vsi_promisc(vf, vsi, mcast_m);
+		if (ret) {
+			dev_err(ice_pf_to_dev(vf->pf), "Disabling allmulticast mode failed\n");
+		} else {
+			clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
+			dev_info(ice_pf_to_dev(vf->pf), "Disabling allmulticast mode succeeded\n");
+		}
+	}
+	return ret;
+}
+
 /**
  * ice_vf_set_vsi_promisc - Enable promiscuous mode for a VF VSI
  * @vf: the VF to configure
@@ -487,7 +553,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	struct ice_vsi *vsi;
 	struct device *dev;
 	struct ice_hw *hw;
-	u8 promisc_m;
 	int err = 0;
 	bool rsd;
 
@@ -554,16 +619,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	/* disable promiscuous modes in case they were enabled
 	 * ignore any error if disabling process failed
 	 */
-	if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
-	    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
-		if (ice_vf_is_port_vlan_ena(vf) || vsi->num_vlan)
-			promisc_m = ICE_UCAST_VLAN_PROMISC_BITS;
-		else
-			promisc_m = ICE_UCAST_PROMISC_BITS;
-
-		if (ice_vf_clear_vsi_promisc(vf, vsi, promisc_m))
-			dev_err(dev, "disabling promiscuous mode failed\n");
-	}
+	ice_vf_clear_all_promisc_modes(vf, vsi);
 
 	ice_eswitch_del_vf_mac_rule(vf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 1acb35c9ff01..74bd4ce556e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -215,6 +215,8 @@ bool ice_is_vf_disabled(struct ice_vf *vf);
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
 void ice_set_vf_state_qs_dis(struct ice_vf *vf);
 bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
+void ice_vf_get_promisc_masks(struct ice_vf *vf, struct ice_vsi *vsi,
+			      u8 *ucast_m, u8 *mcast_m);
 int
 ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 47ce713274cf..d46786cdc162 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1046,14 +1046,7 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	if (ice_vf_is_port_vlan_ena(vf) ||
-	    ice_vsi_has_non_zero_vlans(vsi)) {
-		mcast_m = ICE_MCAST_VLAN_PROMISC_BITS;
-		ucast_m = ICE_UCAST_VLAN_PROMISC_BITS;
-	} else {
-		mcast_m = ICE_MCAST_PROMISC_BITS;
-		ucast_m = ICE_UCAST_PROMISC_BITS;
-	}
+	ice_vf_get_promisc_masks(vf, vsi, &ucast_m, &mcast_m);
 
 	if (!test_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags)) {
 		if (alluni) {
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
