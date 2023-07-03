Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 735E5745B41
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 13:37:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFCC981FBF;
	Mon,  3 Jul 2023 11:37:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFCC981FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688384225;
	bh=SPQOGkT/aDJCLPlkR3INI2aDVUHBBa6TV5YWjnVM4qw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GV3uCHjzhkL2vaSgmzRlGy+cALgcUPAD6ZursakCA5jKivSh6Y3Jp2Q82CfzvxhN+
	 TZAIseRFKJH4AtiB/LYCNFtOF9sO+x1L5K3exqVQsWK+2xwANzUJ7jIMJHUqssFK38
	 8+hnv35VCcsx7qfYeL+K21Mt39fMzd3Fu3PjDESecxF/EyUgEH8cB1hb+acyEykMwA
	 BgVCEpOk5EirPE6XQEe2JcGJChRlzThYb06TSw+8VmJZY05pezkvJYSVrepEQ2smUn
	 YAP1EId4JlAC1jx3VH3psrEIw+Bnt58hbscFwdV88a08EUaNssWHedOv0UpCzpCoUC
	 fc8xNmyIyc0Kg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zGUiRkSJic4A; Mon,  3 Jul 2023 11:37:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 890F481F98;
	Mon,  3 Jul 2023 11:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 890F481F98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C64471BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AAF784063B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:36:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAF784063B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mWnxg5R9CI0U for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 11:36:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CFED40198
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CFED40198
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:36:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="428901633"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="428901633"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 04:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="965165092"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="965165092"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jul 2023 04:36:55 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jul 2023 13:30:00 +0200
Message-Id: <20230703113000.104067-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688384218; x=1719920218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X2NORQHfU3Zs0GjVSCJk/BzJf/wI12tYvrnYPYL8Tt0=;
 b=HXb7wqohLloIvZIfH+TKt0fQ79p8mIERMzuKepzfCTzoZhAm0iy/V+Y7
 fbFmMSWzoHybaoh4QzBMfS56ZWHFh8/xD0RpCUTOdWRQRMtmruQ/wP5Zt
 qiWG462PYO5fq8nqC0hOPzYi3/25BTuhmMlVQO9rHS69VyvneCuaPy06n
 fkvupTCDgOMhfctV1LweXi59zoFqkwpJs4CB98Y6Hm9DQTRcyPoUaahCR
 WSISNrkoH8XkTYozDgpzPblw3MOb0WNiFVQiefdC2t3+ZRE6oQP57309B
 Z5IBX5m7/AEKIk7fDFA3Honu9d6KKReW7Ul/vfIA3PQGS0FKHj9EZEshq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HXb7wqoh
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix memory management in
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
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
v2: extend CC list, fix freeing memory before return
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 62 +++++++++----------
 1 file changed, 28 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index ead6d50fc0ad..619b32f4bc53 100644
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
+		goto exit;
 	}
 
 	switch (fsp->flow_type & ~FLOW_EXT) {
@@ -1264,7 +1259,7 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 		ret = -EINVAL;
 	}
 	if (ret)
-		goto err_exit;
+		goto exit;
 
 	/* tunnel segments are shifted up one. */
 	memcpy(&tun_seg[1], seg, sizeof(*seg));
@@ -1281,42 +1276,39 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
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
+		goto exit;
+	} else if (ret) {
 		/* could not write filter, free memory */
-		goto err_exit;
+		ret = -EOPNOTSUPP;
+		goto exit;
+	}
 
 	/* make tunneled filter HW entries if possible */
 	memcpy(&tun_seg[1], seg, sizeof(*seg));
 	ret = ice_fdir_set_hw_fltr_rule(pf, tun_seg, fltr_idx,
 					ICE_FD_HW_SEG_TUN);
-	if (ret == -EEXIST) {
+	if (ret == -EEXIST)
 		/* Rule already exists, free memory and count as success */
-		devm_kfree(dev, tun_seg);
 		ret = 0;
-	} else if (ret) {
-		/* could not write tunnel filter, but outer filter exists */
-		devm_kfree(dev, tun_seg);
-	}
 
-	if (perfect_filter)
-		set_bit(fltr_idx, hw->fdir_perfect_fltr);
-	else
-		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
+exit:
+	kfree(tun_seg);
+	kfree(seg);
 
 	return ret;
-
-err_exit:
-	devm_kfree(dev, tun_seg);
-	devm_kfree(dev, seg);
-
-	return -EOPNOTSUPP;
 }
 
 /**
@@ -1914,7 +1906,9 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
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
