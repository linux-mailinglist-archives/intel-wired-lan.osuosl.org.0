Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EB64C05F1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:27:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D378860F1D;
	Wed, 23 Feb 2022 00:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2fJLuoDvorCW; Wed, 23 Feb 2022 00:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D127460BAD;
	Wed, 23 Feb 2022 00:27:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 141C71BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3255960B6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m-TT2tlpUkc8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96AEB60BAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576040; x=1677112040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aM+1SDIjM9AOw2l1bSnIQZ2vxPo/yI2R9PndcjbhK4s=;
 b=NPlYGmUod09ylA+ZwUG8oXDQf5ZzVRViwxH1lpyIPkYWw7/aNbpKpqfU
 GbWP55mBF+t7JyKMxixYsmCmOj9vw1BcuSu3N38GNu2wh+apIn4995lSS
 ruEh+JxGM3SFjLYvkyv9B237/rpirZapBxYMJOguHgOCK64T/AEQTnyzd
 wYGDp4EXdt5TuZnIY2apTuQMv6HAqtYH0y1a2jBGsU8usybOpKQfx37L5
 CTJr3Rd4UVg0/QTZECyjKe3ouBe/E+oKoJ1r1xOgFz7QYUxkddgOfvtVC
 k7DEMXeRGGudshtJPETVSho3Id4LyPOtIY3t3trYSN7wByU76sVqrJxfP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468971"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468971"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728014"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:54 -0800
Message-Id: <20220223002712.2771809-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 07/25] ice: refactor spoofchk
 control code in ice_sriov.c
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

The API to control the VSI spoof checking for a VF VSI has three
functions: enable, disable, and set. The set function takes the VSI and
the VF and decides whether to call enable or disable based on the
vf->spoofchk field.

In some flows, vf->spoofchk is not yet set, such as the function used to
control the setting for a VF. (vf->spoofchk is only updated after a
success).

Simplify this API by refactoring ice_vf_set_spoofchk_cfg to be
"ice_vsi_apply_spoofchk" which takes the boolean and allows all callers
to avoid having to determine whether to call enable or disable
themselves.

This matches the expected callers better, and will prevent the need to
export more than one function when this code must be called from another
file.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 7cd910bb7a7a..8d22b5d94706 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -985,16 +985,15 @@ static int ice_vsi_dis_spoofchk(struct ice_vsi *vsi)
 }
 
 /**
- * ice_vf_set_spoofchk_cfg - apply Tx spoof checking setting
- * @vf: VF set spoofchk for
+ * ice_vsi_apply_spoofchk - Apply Tx spoof checking setting to a VSI
  * @vsi: VSI associated to the VF
+ * @enable: whether to enable or disable the spoof checking
  */
-static int
-ice_vf_set_spoofchk_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
+static int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable)
 {
 	int err;
 
-	if (vf->spoofchk)
+	if (enable)
 		err = ice_vsi_ena_spoofchk(vsi);
 	else
 		err = ice_vsi_dis_spoofchk(vsi);
@@ -1478,7 +1477,7 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 		dev_err(dev, "failed to rebuild Tx rate limiting configuration for VF %u\n",
 			vf->vf_id);
 
-	if (ice_vf_set_spoofchk_cfg(vf, vsi))
+	if (ice_vsi_apply_spoofchk(vsi, vf->spoofchk))
 		dev_err(dev, "failed to rebuild spoofchk configuration for VF %d\n",
 			vf->vf_id);
 
@@ -1915,7 +1914,7 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 		goto release_vsi;
 	}
 
-	err = ice_vf_set_spoofchk_cfg(vf, vsi);
+	err = ice_vsi_apply_spoofchk(vsi, vf->spoofchk);
 	if (err) {
 		dev_warn(dev, "Failed to initialize spoofchk setting for VF %d\n",
 			 vf->vf_id);
@@ -3129,10 +3128,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 		goto out_put_vf;
 	}
 
-	if (ena)
-		ret = ice_vsi_ena_spoofchk(vf_vsi);
-	else
-		ret = ice_vsi_dis_spoofchk(vf_vsi);
+	ret = ice_vsi_apply_spoofchk(vf_vsi, ena);
 	if (ret)
 		dev_err(dev, "Failed to set spoofchk %s for VF %d VSI %d\n error %d\n",
 			ena ? "ON" : "OFF", vf->vf_id, vf_vsi->vsi_num, ret);
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
