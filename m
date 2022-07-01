Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A405A5636CB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 17:18:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24D02613F1;
	Fri,  1 Jul 2022 15:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24D02613F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656688712;
	bh=PxpHomAz+XQi8/fSVfDTREWz52AaTrPr+eNyCRKdsr4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3qiyL5oUdFjcsTyKOtFpPHWkb/OoJZlgCMX7vBlqvY4DpzeUZ7aNUb2PDHoYmBjG2
	 dB3Re728QQR7V8Us5NvGdsogkhQK96/xROZ5h+8p9eYEjhINg+tSiSoL2vF68tZzFi
	 rzczI97gp+8tqN6s06ihooltMhmzmHA0Wm75mNZeCOQu8Cm/UTYrOPLqyF6DKmuTqo
	 udTnY8ko7SZGJujmxr8Ua+2fJuLX1wsTWEv/4MnWrVYjaVO48RB4PQWUn7jE/nJN9t
	 efwii5A7LgYzKZwgbwLNKb/k//RrzuN23JF6n4RD/CbmOJ0KduAIXOJUuJiiV8EYKl
	 7T+jBab5jzIvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wkgPV_O_afxJ; Fri,  1 Jul 2022 15:18:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB7B36140E;
	Fri,  1 Jul 2022 15:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB7B36140E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D89D1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:18:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 08CFB84716
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08CFB84716
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0fZRiP2yPSIf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 15:18:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30F078470C
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30F078470C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:18:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="271445250"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="271445250"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:18:23 -0700
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="596288324"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:18:22 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Jul 2022 17:17:50 +0200
Message-Id: <20220701151750.2441885-3-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220701151750.2441885-1-michal.wilczynski@intel.com>
References: <20220701151750.2441885-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656688704; x=1688224704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ALAV1LU7Wf6PCeNv5XG3g3BuMDZq5Is/JOgG1n23myg=;
 b=hE/ef6zfYFCFptWAqv1EdrnzV/MO33DdkcGaZFWuZJQs94H8IT6KLe5s
 Ap93xjJUpckL3XfullNsIGj//Tsf7JLQndVgcRYO0c3JB/ZCLmtZviiUq
 BYrEssbdgCW+gTjcXhgmPtB/bqW6mgMKr6shQZV7Z+zUsEyAWwKDUr+S5
 H2ywl1un5HZvXkfcz/Nu/shPHRtBrv+wcdshqBR/EzWtJn/VydvyGQW8a
 XZyP0DqfpEuImbZMzIbdmg1sRw7tevEOJjPyTHBCqeENBxYJ+m4juRT9p
 Kb3EtxY28OJQWLZpVdQ+X9MEadSaxUOykXQI9Ev3O52BuexYzTvq0cx9F
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hE/ef6zf
Subject: [Intel-wired-lan] [PATCH net v2 2/2] ice: Fix promiscuous mode not
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
