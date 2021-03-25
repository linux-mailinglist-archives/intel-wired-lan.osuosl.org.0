Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288C5349C80
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C357640207;
	Thu, 25 Mar 2021 22:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7irkPguM90r; Thu, 25 Mar 2021 22:45:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB8704000B;
	Thu, 25 Mar 2021 22:45:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 205CA1BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F49784AF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HLFlou9FQg2Y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDBD184B53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
IronPort-SDR: VVCo1OGqOGJPxDHIwRRLpogfbfkPUA38qNSXeQxjCDpeCGUBq4IRW512z5Vd1EO6i2HibdqfKL
 1nK1L5GscZqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031244"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031244"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:02 -0700
IronPort-SDR: hhils3renyzvjBtTzxAD0AvWz3JI4SDsbGmc9tdQ5LqwdTm8jSOR8rvorhP7dtGCze7aCe6HfF
 v18AxzeAFo4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251373"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:14 -0700
Message-Id: <20210325223517.17722-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 11/14] ice: Remove unnecessary variable
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

In ice_init_phy_user_cfg, vsi is used only to get to hw. Remove this
and just use pi->hw

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1e31940a4717..d54e88cb9600 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1810,16 +1810,11 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 	struct ice_phy_info *phy = &pi->phy;
 	struct ice_pf *pf = pi->hw->back;
 	enum ice_status status;
-	struct ice_vsi *vsi;
 	int err = 0;
 
 	if (!(phy->link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
 		return -EIO;
 
-	vsi = ice_get_main_vsi(pf);
-	if (!vsi)
-		return -EINVAL;
-
 	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
 		return -ENOMEM;
@@ -1839,7 +1834,7 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 	ice_copy_phy_caps_to_cfg(pi, pcaps, &pi->phy.curr_user_phy_cfg);
 
 	/* check if lenient mode is supported and enabled */
-	if (ice_fw_supports_link_override(&vsi->back->hw) &&
+	if (ice_fw_supports_link_override(pi->hw) &&
 	    !(pcaps->module_compliance_enforcement &
 	      ICE_AQC_MOD_ENFORCE_STRICT_MODE)) {
 		set_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
