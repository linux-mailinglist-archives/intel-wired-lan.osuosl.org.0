Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE0A3757E4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:50:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E5D783C50;
	Thu,  6 May 2021 15:50:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XtTkg6jW6ppJ; Thu,  6 May 2021 15:50:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97BDF83C42;
	Thu,  6 May 2021 15:50:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 414CA1BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7D4F60660
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-F36aNu5I8Z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4478F60668
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:39 +0000 (UTC)
IronPort-SDR: v/bMDa1d4xekADfFiC9EFq//8CiKQa7ASe+wx2kyEZiaeWfvdZIp32Omc90UEsRYTK0/E0ceL+
 4UHtD+JMiztA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389327"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389327"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:36 -0700
IronPort-SDR: mTekwoOxQU8XZjC8bZddO1Yge1KzgM+QMj7oCjlr0hSj2/CgK1T9BR7ndJxxMUQY2X6bMmV2Kh
 nC3gBddjWUlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369487"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:36 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:40:03 -0700
Message-Id: <20210506154008.12880-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 08/13] ice: Fix replacing VF hardware
 MAC to existing MAC filter
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

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

VF was not able to change its hardware MAC address in case
the new address was already present in the MAC filter list.
Change the handling of VF add mac request to not return
if requested MAC address is already present on the list
and check if its hardware MAC needs to be updated in this case.

Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 3c9bff68b05e..ef00f3e6522f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3719,6 +3719,7 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	u8 *mac_addr = vc_ether_addr->addr;
 	enum ice_status status;
+	int ret = 0;
 
 	/* device MAC already added */
 	if (ether_addr_equal(mac_addr, vf->dev_lan_addr.addr))
@@ -3731,20 +3732,23 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 
 	status = ice_fltr_add_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
 	if (status == ICE_ERR_ALREADY_EXISTS) {
-		dev_err(dev, "MAC %pM already exists for VF %d\n", mac_addr,
+		dev_dbg(dev, "MAC %pM already exists for VF %d\n", mac_addr,
 			vf->vf_id);
-		return -EEXIST;
+		/* don't return since we might need to update
+		 * the primary MAC in ice_vfhw_mac_add() below
+		 */
+		ret = -EEXIST;
 	} else if (status) {
 		dev_err(dev, "Failed to add MAC %pM for VF %d\n, error %s\n",
 			mac_addr, vf->vf_id, ice_stat_str(status));
 		return -EIO;
+	} else {
+		vf->num_mac++;
 	}
 
 	ice_vfhw_mac_add(vf, vc_ether_addr);
 
-	vf->num_mac++;
-
-	return 0;
+	return ret;
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
