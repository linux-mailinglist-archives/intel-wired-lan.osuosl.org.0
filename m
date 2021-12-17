Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1F6478A23
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 12:38:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A14C41805;
	Fri, 17 Dec 2021 11:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEcTw5ug09nK; Fri, 17 Dec 2021 11:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51712417B8;
	Fri, 17 Dec 2021 11:38:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFFD91BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B927E61091
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:38:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bLVkoUNGa4Yy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 11:38:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21D366102F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639741107; x=1671277107;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wQE0LO9+jQYqiEeMtGdG9vV5NRrui1kz2UcVTnZHupo=;
 b=ToDnMrxKblDBgxw36Edj6N0EItHxVw4rO2OH9Gx8UVsReE080N6GmDi0
 5rieu3mPzh2NRaWtJL/Xa2+utrrpeQxysYK1d9fnMriBhJJcMBekYgugT
 03k7TS1+zHPrCd1KD5jeBhcPsCDzDYNe4uELHoJsEaQzOjwEhbHP/Z7C4
 G8titALPeCXD+EZXYTSS4Sj6Q4lBvDNtl+sTDX2WY7q9MLwLO/47JT3Zc
 j5n1A/Ws20nV/nrRUvXiVvCAbRsM+aJoFGWNJQFggVroTtJaYqIS5nqGA
 ESsvVdUeBYa0i2lueq8wIDAT0MBik9zBllm0prgHfFF//LhjqZ8/SENY2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="239547643"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="239547643"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 03:38:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="568997855"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 17 Dec 2021 03:38:24 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1BHBcNlo029413
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:38:23 GMT
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Dec 2021 12:36:25 +0100
Message-Id: <20211217113625.31128-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Match on all profiles in
 slow-path
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

In switchdev mode, slow-path rules need to match all protocols, in order
to correctly redirect unfiltered or missed packets to the uplink. To set
this up for the virtual function to uplink flow, the rule that redirects
packets to the control VSI must have the tunnel type set to
ICE_SW_TUN_AND_NON_TUN. As a result of that new tunnel type being set,
ice_get_compat_fv_bitmap will select ICE_PROF_ALL. At that point all
profiles would be selected for this rule, resulting in the desired
behavior. Without this change slow-path would not work with
tunnel protocols.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c       | 1 +
 drivers/net/ethernet/intel/ice/ice_protocol_type.h | 1 +
 drivers/net/ethernet/intel/ice/ice_switch.c        | 4 +++-
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 30a00fe59c52..f70eaf49b083 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -44,6 +44,7 @@ int ice_eswitch_add_vf_mac_rule(struct ice_pf *pf, struct ice_vf *vf,
 				       ctrl_vsi->rxq_map[vf->vf_id];
 	rule_info.flags_info.act |= ICE_SINGLE_ACT_LB_ENABLE;
 	rule_info.flags_info.act_valid = true;
+	rule_info.tun_type = ICE_SW_TUN_AND_NON_TUN;
 
 	err = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info,
 			       vf->repr->mac_rule);
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index dc1b0e9e6df5..695b6dd61dc2 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -47,6 +47,7 @@ enum ice_protocol_type {
 
 enum ice_sw_tunnel_type {
 	ICE_NON_TUN = 0,
+	ICE_SW_TUN_AND_NON_TUN,
 	ICE_SW_TUN_VXLAN,
 	ICE_SW_TUN_GENEVE,
 	ICE_SW_TUN_NVGRE,
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 4834debafcba..170c0a418cca 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4618,6 +4618,7 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
 	case ICE_SW_TUN_NVGRE:
 		prof_type = ICE_PROF_TUN_GRE;
 		break;
+	case ICE_SW_TUN_AND_NON_TUN:
 	default:
 		prof_type = ICE_PROF_ALL;
 		break;
@@ -5386,7 +5387,8 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 	if (status)
 		goto err_ice_add_adv_rule;
 
-	if (rinfo->tun_type != ICE_NON_TUN) {
+	if (rinfo->tun_type != ICE_NON_TUN &&
+	    rinfo->tun_type != ICE_SW_TUN_AND_NON_TUN) {
 		status = ice_fill_adv_packet_tun(hw, rinfo->tun_type,
 						 s_rule->pdata.lkup_tx_rx.hdr,
 						 pkt_offsets);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
