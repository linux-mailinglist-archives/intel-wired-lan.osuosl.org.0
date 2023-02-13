Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4F56944D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 12:44:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E790D81754;
	Mon, 13 Feb 2023 11:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E790D81754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676288664;
	bh=vLIv+U3eqSzcK6MJR4ZSqO/n99o3DVPkaLKDgPFcwXI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=x64jTK3P2iyX7G38tC8+AaN3tX3GObhAcgcU8+eJgSq9+nZk5sZqcHsClEK/aEGXM
	 e2saXAX4Z15dWRIk+Txk3S/WJz93RKpFeXAUpXrxi5iFPjz1uDN32XdEI1FUYKLHQp
	 XcLh4FfjxSmrUzgr/tvpTo4vxbTfb160itNOushTJitfK6Bt212ghOm8AisD3QVgL/
	 i1nCMx2ByjRBP4+2DnF32IaZTuBeAcCKZvc5zATx6cZwYAehwh6QCPvTMfo+nBNgOS
	 WNsCttJYQZ8jkUCH8teREBpUhcoicKEuLXCfvi1RlJ5Pmxmn58Q8RGmiPH+VLWASdA
	 VLi1goaO0jvRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6JyYiKekPkb; Mon, 13 Feb 2023 11:44:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0DE48132C;
	Mon, 13 Feb 2023 11:44:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0DE48132C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58D811BF39E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 11:44:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3EC1E812F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 11:44:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EC1E812F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Ay0BzWXCr36 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 11:44:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E031812F1
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E031812F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 11:44:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="329501439"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="329501439"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 03:44:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="732457722"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="732457722"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 13 Feb 2023 03:44:15 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Feb 2023 12:27:33 +0100
Message-Id: <20230213112733.12570-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676288657; x=1707824657;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DQFvvOw1PLSpjUDsMMH5btyu9tDYUm48VdFgEM6ctac=;
 b=jDz3ocPBry0e7fTCkqVpyhS+M3eJPJQiXTiEXoPXBe069/XF9GbCLAA6
 CJNS+K/QvlpXAylU4zUg/jJskxmfeC1LbnbVgV5AI8rXysYoYIKGAeqIw
 Rm8vVxpQVeuAcqbq40+89H8usZloqHXB/l023GmBI2TEHwXGNGEARRCqh
 hhraCt+8Y3Mpr/EJUn1YNRYW7Hpm3J9fPKf4j+gD2W47KYYQWfvtdzL8R
 yru0olZxk5u6ReWlE+EuqwdphOdvBpdFV39P1Ry3K9Dgxq2cEngN+1Q01
 zhZN2qz//vLczgByAnlDICCnW38mbhOBtOa221odXI5mOix8dnsdEqxMJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jDz3ocPB
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: don't ignore return
 codes in VSI related code
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
Cc: Dan Carpenter <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There were few smatch warnings reported by Dan:
- ice_vsi_cfg_xdp_txqs can return 0 instead of ret, which is cleaner
- return values in ice_vsi_cfg_def were ignored
- in ice_vsi_rebuild return value was ignored in case rebuild failed,
  it was a never reached code, however, rewrite it for clarity.
- ice_vsi_cfg_tc can return 0 instead of ret

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Reported-by: Dan Carpenter <error27@gmail.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5e81f7ae252c..a1c4fa6a51cb 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2129,7 +2129,7 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
 	ice_for_each_rxq(vsi, i)
 		ice_tx_xsk_pool(vsi, i);
 
-	return ret;
+	return 0;
 }
 
 /**
@@ -2696,12 +2696,14 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 		return ret;
 
 	/* allocate memory for Tx/Rx ring stat pointers */
-	if (ice_vsi_alloc_stat_arrays(vsi))
+	ret = ice_vsi_alloc_stat_arrays(vsi);
+	if (ret)
 		goto unroll_vsi_alloc;
 
 	ice_alloc_fd_res(vsi);
 
-	if (ice_vsi_get_qs(vsi)) {
+	ret = ice_vsi_get_qs(vsi);
+	if (ret) {
 		dev_err(dev, "Failed to allocate queues. vsi->idx = %d\n",
 			vsi->idx);
 		goto unroll_vsi_alloc_stat;
@@ -2814,6 +2816,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 		break;
 	default:
 		/* clean up the resources and exit */
+		ret = -EINVAL;
 		goto unroll_vsi_init;
 	}
 
@@ -3511,10 +3514,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 		if (vsi_flags & ICE_VSI_FLAG_INIT) {
 			ret = -EIO;
 			goto err_vsi_cfg_tc_lan;
-		} else {
-			kfree(coalesce);
-			return ice_schedule_reset(pf, ICE_RESET_PFR);
 		}
+
+		kfree(coalesce);
+		return ice_schedule_reset(pf, ICE_RESET_PFR);
 	}
 
 	ice_vsi_realloc_stat_arrays(vsi, prev_txq, prev_rxq);
@@ -3762,7 +3765,7 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	dev = ice_pf_to_dev(pf);
 	if (vsi->tc_cfg.ena_tc == ena_tc &&
 	    vsi->mqprio_qopt.mode != TC_MQPRIO_MODE_CHANNEL)
-		return ret;
+		return 0;
 
 	ice_for_each_traffic_class(i) {
 		/* build bitmap of enabled TCs */
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
