Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A2D374A20
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 May 2021 23:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E554402B6;
	Wed,  5 May 2021 21:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hK-XmNFt-Fx0; Wed,  5 May 2021 21:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6908240248;
	Wed,  5 May 2021 21:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5A01BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14E6E845ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntoKG3J_O905 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 May 2021 21:28:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E1A0B845DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 21:28:28 +0000 (UTC)
IronPort-SDR: 6VQlvrBhbzHAoYqj96TrrUt4eUGTPvixDNlMg1qtnt8GqzaSHQ6Z9325peSQOBSx5wOQ/cxvDF
 JoLmN88Nadgw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="283743041"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="283743041"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 14:28:28 -0700
IronPort-SDR: CPFtqIS/fTtNZJ42EHdPgLGKSFOcS8BiS3yzZZB7X5mbUZW9bxTIzcS+snVHDoBFnhCVvRUA2M
 LmYnGRL7o2Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="622213115"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 05 May 2021 14:28:28 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 May 2021 14:17:57 -0700
Message-Id: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 1/4] ice: Remove toggling of antispoof
 for VF trusted promiscuous mode
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

From: Brett Creeley <brett.creeley@intel.com>

Currently when a trusted VF enables promiscuous mode spoofchk will be
disabled. This is wrong and should only be modified from the
ndo_set_vf_spoofchk callback. Fix this by removing the call to toggle
spoofchk for trusted VFs.

Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c   | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index d7115a2a10d7..4001dc723e1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2992,24 +2992,6 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 	rm_promisc = !allmulti && !alluni;
 
 	if (vsi->num_vlan || vf->port_vlan_info) {
-		struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
-		struct net_device *pf_netdev;
-
-		if (!pf_vsi) {
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-			goto error_param;
-		}
-
-		pf_netdev = pf_vsi->netdev;
-
-		ret = ice_set_vf_spoofchk(pf_netdev, vf->vf_id, rm_promisc);
-		if (ret) {
-			dev_err(dev, "Failed to update spoofchk to %s for VF %d VSI %d when setting promiscuous mode\n",
-				rm_promisc ? "ON" : "OFF", vf->vf_id,
-				vsi->vsi_num);
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		}
-
 		ret = ice_cfg_vlan_pruning(vsi, true, !rm_promisc);
 		if (ret) {
 			dev_err(dev, "Failed to configure VLAN pruning in promiscuous mode\n");
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
