Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC99A5656A7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 15:13:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34CF0415A9;
	Mon,  4 Jul 2022 13:13:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34CF0415A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656940390;
	bh=IxNZIKvEg4hTp4TtreJhJ+qEIL5HWkIHlLZhA07X3d4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lNoWRViP5ZWhk8tiXwFejeBaRqPhsjafymRa0nDUZQoTBT6BEAPEY+wHuGTmvbGrP
	 VkdcMf45RYuOMyo4tpWjIsHw3g+8XknDZLFeop44xkzeua/XSpsMdHXLYdH72HhKmC
	 OWNBdDIM2IManvgkzZF3bMOgy02z0soBfwkhLW1VYX8U46+m7FI/5MFcX5xDYsM5bU
	 hx3+g8M2qyChWvcQK0X5dsQnD4KT8Ey9qa870RlS3YgZf61IAGA7Mpw4AuFv+3p5B4
	 jiEHUtBpZCwj+Gy+lh5tKhnUMmHoRvhCk22ElhI/Q6wdJDmJAv9KAw2nXFOa3Fwunc
	 sfN7v+Rp07YGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p3b4jCoZrb5d; Mon,  4 Jul 2022 13:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB325408D3;
	Mon,  4 Jul 2022 13:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB325408D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 053591BF35F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1B8881AF5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:12:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1B8881AF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5LPHVlDeoosl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 13:12:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9ACAD82771
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9ACAD82771
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:12:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="284236150"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="284236150"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 06:12:55 -0700
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="542586287"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 06:12:54 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 15:12:27 +0200
Message-Id: <20220704131227.2966160-3-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220704131227.2966160-1-michal.wilczynski@intel.com>
References: <20220704131227.2966160-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656940375; x=1688476375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ca7+vBQzUQTZ7HVIH3Isvyfhs/MCPZcqfg4Nz930bjU=;
 b=KgQGNEqy32jf7zpN/T8on4/t2PNpt02CL8C1AVRJqacTMR7Ltdz9bIEh
 i6QPcUSw25nox3854Lb/XP196mXh2L/s4hr7EOOZqMgdX32pVwhdkC9zq
 mwfwEkUUp7Y4VjtNtlhy0htQC2dhikrUydaljXgJDxKyFuLumW4n89wOC
 wsGZcPX2HSxBOLHKiwGytur97fdnxhnh/zLpAbJ13Kq2BlgyyW/X9vsCR
 T6+/EhHLqYpneu3ynjmugCPs0Cuvo69gh84zufhDkeXxvdbG72tOIESdZ
 a9sCNWdr1p/gqt8/2JIAtpUsU5J3zg0Ds4Bke5pBVbYY7sXNfZvgqGIXZ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KgQGNEqy
Subject: [Intel-wired-lan] [PATCH net v3 2/2] ice: Fix promiscuous mode not
 turning off
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

When trust is turned off for the VF, the expectation is that promiscuous
and allmulticast filters are removed. Currently default VSI filter is not
getting cleared in this flow.

Example:

ip link set enp236s0f0 vf 0 trust on
ip link set enp236s0f0v0 promisc on
ip link set enp236s0f0 vf 0 trust off
/* promiscuous mode is still enabled on VF0 */

Remove switch filters for both cases.
This commit fixes above behavior by removing default VSI filters and
allmulticast filters when vf-true-promisc-support is OFF.

Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 79 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  9 +--
 3 files changed, 72 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 9038d2687ba6..8fd7c3e37f5e 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -297,6 +297,73 @@ bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf)
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
+void
+ice_vf_get_promisc_masks(struct ice_vf *vf, struct ice_vsi *vsi,
+			 u8 *ucast_m, u8 *mcast_m)
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
+static int
+ice_vf_clear_all_promisc_modes(struct ice_vf *vf, struct ice_vsi *vsi)
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
@@ -487,7 +554,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	struct ice_vsi *vsi;
 	struct device *dev;
 	struct ice_hw *hw;
-	u8 promisc_m;
 	int err = 0;
 	bool rsd;
 
@@ -554,16 +620,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
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
index 1acb35c9ff01..52bd9a3816bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -215,6 +215,9 @@ bool ice_is_vf_disabled(struct ice_vf *vf);
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
 void ice_set_vf_state_qs_dis(struct ice_vf *vf);
 bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
+void
+ice_vf_get_promisc_masks(struct ice_vf *vf, struct ice_vsi *vsi,
+			 u8 *ucast_m, u8 *mcast_m);
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
