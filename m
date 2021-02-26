Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E55F2326974
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98BC68438F;
	Fri, 26 Feb 2021 21:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sLetK8mSzIJt; Fri, 26 Feb 2021 21:29:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B304884331;
	Fri, 26 Feb 2021 21:29:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 998611BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 882306F824
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RV3hGvNbvax4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CB166EA49
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
IronPort-SDR: 8qBYG/7WdlXya7W5Bm64in/VRlyvbZHBtm0CMfgAkWq8Wxq0hGmoE7GH19akMQhYakbnPSNmfT
 SZ6AJKlwRPZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="173138971"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="173138971"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:57 -0800
IronPort-SDR: 8SMZy7Z/cbMidhNxQiJ9+pdbFF5MfCHJC/0DhIX/w8wvWxgDT2gn2BOhH0gJ8fI0P1XV+MvanD
 rYmfKzVjr/cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913469"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:56 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:30 -0800
Message-Id: <20210226211932.46683-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 11/13] ice: Use port number instead of
 PF ID for WoL
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

As per the spec, the WoL control word read from the NVM should be
interpreted as port numbers, and not PF numbers. So when checking
if WoL supported, use the port number instead of the PF ID.

Also, ice_is_wol_supported doesn't really need a pointer to the pf
struct, but just needs a pointer to the hw instance.

Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c    | 9 ++++-----
 3 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 522c7aa61cc7..def5439c3f6c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -620,7 +620,7 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
 const char *ice_stat_str(enum ice_status stat_err);
 const char *ice_aq_str(enum ice_aq_err aq_err);
-bool ice_is_wol_supported(struct ice_pf *pf);
+bool ice_is_wol_supported(struct ice_hw *hw);
 int
 ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 		    bool is_tun);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2dcfa685b763..32ba71a16165 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3472,7 +3472,7 @@ static void ice_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 		netdev_warn(netdev, "Wake on LAN is not supported on this interface!\n");
 
 	/* Get WoL settings based on the HW capability */
-	if (ice_is_wol_supported(pf)) {
+	if (ice_is_wol_supported(&pf->hw)) {
 		wol->supported = WAKE_MAGIC;
 		wol->wolopts = pf->wol_ena ? WAKE_MAGIC : 0;
 	} else {
@@ -3492,7 +3492,7 @@ static int ice_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 
-	if (vsi->type != ICE_VSI_PF || !ice_is_wol_supported(pf))
+	if (vsi->type != ICE_VSI_PF || !ice_is_wol_supported(&pf->hw))
 		return -EOPNOTSUPP;
 
 	/* only magic packet is supported */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 255a07c1e33a..9f1adff85be7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3537,15 +3537,14 @@ static int ice_init_interrupt_scheme(struct ice_pf *pf)
 }
 
 /**
- * ice_is_wol_supported - get NVM state of WoL
- * @pf: board private structure
+ * ice_is_wol_supported - check if WoL is supported
+ * @hw: pointer to hardware info
  *
  * Check if WoL is supported based on the HW configuration.
  * Returns true if NVM supports and enables WoL for this port, false otherwise
  */
-bool ice_is_wol_supported(struct ice_pf *pf)
+bool ice_is_wol_supported(struct ice_hw *hw)
 {
-	struct ice_hw *hw = &pf->hw;
 	u16 wol_ctrl;
 
 	/* A bit set to 1 in the NVM Software Reserved Word 2 (WoL control
@@ -3554,7 +3553,7 @@ bool ice_is_wol_supported(struct ice_pf *pf)
 	if (ice_read_sr_word(hw, ICE_SR_NVM_WOL_CFG, &wol_ctrl))
 		return false;
 
-	return !(BIT(hw->pf_id) & wol_ctrl);
+	return !(BIT(hw->port_info->lport) & wol_ctrl);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
