Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB93C745668
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 09:51:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FBF281FC8;
	Mon,  3 Jul 2023 07:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FBF281FC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688370673;
	bh=1aktEleVity45ETg/3f1lVyd1zegxS+wPPV+gSsmrws=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BmGGmQR+U7xCrc7x9xEdgO/3j6xginnKP97EVJWHnwCMPET2TklJ0hQHBRRp1oAMw
	 M945ruEuEJdr6GEWQ+tRK7pCJvRWB0ElXlyX60GtiGYVotyJrqPMRCKxK/IMnQE/Jr
	 SJLiO/Ddpinyu1kR3wpo2MrRnAyZNPM2v/7Ttz2EnoELxHpSLUlgsQ4KwEhHzok2WJ
	 A6jLIcB/SwLemibw4MYimrTM2QysGRC8d3YI09pWxSVomgRSSb3S2K/260ls9Np9Wp
	 1+32NzKF6twkIxHwwbSM+FToqMS7k56R+RiYziLgplp4tSFS9rjWMCNUUozUg8pmd9
	 N4MDmq0NyAtAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YHZQ0O0AfGiJ; Mon,  3 Jul 2023 07:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 201A881FB9;
	Mon,  3 Jul 2023 07:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 201A881FB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA6DF1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 07:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9233281B36
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 07:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9233281B36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7dVwIAo9Neis for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 07:51:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FB3681FA1
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FB3681FA1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 07:51:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="352644601"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="352644601"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 00:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="788428316"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="788428316"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jul 2023 00:51:03 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jul 2023 09:44:09 +0200
Message-Id: <20230703074409.102367-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688370666; x=1719906666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TOJbLV9rZM7EHyckEVVAVpOJK6Wmdoy39BU8/o4UcZ4=;
 b=TQ4//UqygdCH3WjHVYHqeE3fwfMJEBOuLOVHnn8eZWq33vnzUlYyU2YU
 rDa/E45iRBUMfFpENt89Q9vONYJHrtYgi5zzcQhUAtVt1DTYyVVgPcpPX
 Y6qYmCYjfe/COXXtvHXJCtk7f4ZflE9hCeNpFnIra+SYA1UZE6Bf4cQTv
 nhVrUMn5lc4S8O7pSpPSTq7jpf1qV9oTTwuLt4vssOSLH0PeD0yTesyj+
 qzwk84LL/T91NsJQanyqUYYgdHs7QFx6wAwGzviOQRDWxBeeWWnkvIeON
 WmZrqfi4wIsLZ2511ze57lIATS6QfKL4y6/GpoafJ9Sq/NSrg4uK1KCrs
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TQ4//Uqy
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix memory management in
 ice_ethtool_fdir.c
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix ethtool FDIR logic to not use momory after its release.
In the ice_ethtool_fdir.c file there are 2 spots where code can
refer to pointers which may be missing.

In the ice_cfg_fdir_xtrct_seq() function seg may be freed but
even then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).

In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input
may firstly fail to be added via ice_fdir_update_list_entry() but then
may be tried to being deleted by ice_fdir_update_list_entry.

Terminate in both cases when the returned value of the previous
operation is other than 0, free memory and don't use it anymore.

Replace managed memory alloc with kzalloc/kfree in
ice_cfg_fdir_xtrct_seq() since seg/tun_seg are used only by
ice_fdir_set_hw_fltr_rule().

Reported-by: Michal Schmidt <mschmidt@redhat.com>
Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 55 ++++++++++---------
 1 file changed, 28 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index ead6d50fc0ad..89d6a1d2e7e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1204,21 +1204,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 		       struct ice_rx_flow_userdef *user)
 {
 	struct ice_flow_seg_info *seg, *tun_seg;
-	struct device *dev = ice_pf_to_dev(pf);
 	enum ice_fltr_ptype fltr_idx;
 	struct ice_hw *hw = &pf->hw;
 	bool perfect_filter;
 	int ret;
 
-	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
-	if (!seg)
-		return -ENOMEM;
-
-	tun_seg = devm_kcalloc(dev, ICE_FD_HW_SEG_MAX, sizeof(*tun_seg),
-			       GFP_KERNEL);
-	if (!tun_seg) {
-		devm_kfree(dev, seg);
-		return -ENOMEM;
+	seg = kzalloc(sizeof(*seg), GFP_KERNEL);
+	tun_seg = kcalloc(ICE_FD_HW_SEG_MAX, sizeof(*tun_seg), GFP_KERNEL);
+	if (!tun_seg || !seg) {
+		ret = -ENOMEM;
+		goto err_exit;
 	}
 
 	switch (fsp->flow_type & ~FLOW_EXT) {
@@ -1281,16 +1276,25 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 				     ICE_FLOW_FLD_OFF_INVAL);
 	}
 
-	/* add filter for outer headers */
 	fltr_idx = ice_ethtool_flow_to_fltr(fsp->flow_type & ~FLOW_EXT);
+
+	if (perfect_filter)
+		set_bit(fltr_idx, hw->fdir_perfect_fltr);
+	else
+		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
+
+	/* add filter for outer headers */
 	ret = ice_fdir_set_hw_fltr_rule(pf, seg, fltr_idx,
 					ICE_FD_HW_SEG_NON_TUN);
-	if (ret == -EEXIST)
-		/* Rule already exists, free memory and continue */
-		devm_kfree(dev, seg);
-	else if (ret)
+	if (ret == -EEXIST) {
+		/* Rule already exists, free memory and count as success */
+		ret = 0;
+		goto err_exit;
+	} else if (ret) {
 		/* could not write filter, free memory */
+		ret = -EOPNOTSUPP;
 		goto err_exit;
+	}
 
 	/* make tunneled filter HW entries if possible */
 	memcpy(&tun_seg[1], seg, sizeof(*seg));
@@ -1298,25 +1302,20 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 					ICE_FD_HW_SEG_TUN);
 	if (ret == -EEXIST) {
 		/* Rule already exists, free memory and count as success */
-		devm_kfree(dev, tun_seg);
+		kfree(tun_seg);
 		ret = 0;
 	} else if (ret) {
 		/* could not write tunnel filter, but outer filter exists */
-		devm_kfree(dev, tun_seg);
+		kfree(tun_seg);
 	}
 
-	if (perfect_filter)
-		set_bit(fltr_idx, hw->fdir_perfect_fltr);
-	else
-		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
-
-	return ret;
+		return ret;
 
 err_exit:
-	devm_kfree(dev, tun_seg);
-	devm_kfree(dev, seg);
+	kfree(tun_seg);
+	kfree(seg);
 
-	return -EOPNOTSUPP;
+	return ret;
 }
 
 /**
@@ -1914,7 +1913,9 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
 
 	/* input struct is added to the HW filter list */
-	ice_fdir_update_list_entry(pf, input, fsp->location);
+	ret = ice_fdir_update_list_entry(pf, input, fsp->location);
+	if (ret)
+		goto release_lock;
 
 	ret = ice_fdir_write_all_fltr(pf, input, true);
 	if (ret)
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
