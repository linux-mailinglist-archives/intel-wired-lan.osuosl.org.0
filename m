Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A139749850
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 11:26:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A95641747;
	Thu,  6 Jul 2023 09:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A95641747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688635565;
	bh=De03K1ejbP+XeiHkLdpCAkB99GLOHrmA+SBK0+8OaO8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v8kN9Ebl8ln/NowR1QNQkRK0/meGxddKqvFodx6jxwaCioQSjaFukutzIbdchT5aF
	 ZIru9fIdwb5sLaE0ktffHiWPC8rMuTLRiRzLfdIZ57ll9ZO17HOyCMqUIAsLrcVcgq
	 d4VIS/HkAkHmu98ezAmeqDPVv5ETXNZd0fne+YWOyCRUeS+tq7idxksXL+6duVgD7A
	 ioiku1QpBF6NLmMFgrtVBhQE/5baadbhj04KN0Mlx1MkGEHJ8gx//9rjm3ihguJXpY
	 6k+4lBqt7kXYF5r6I+QYqmEMa/DEfE+e3P2xIRlXJgb92/K2s9/fEx8Aq7wGLA8nmx
	 Wa4SNwWXrLqFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NiSLK8EeLKzq; Thu,  6 Jul 2023 09:26:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFCBA40891;
	Thu,  6 Jul 2023 09:26:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFCBA40891
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 768E21BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 09:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F5E781FBE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 09:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F5E781FBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IYySZpXzqgoK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 09:25:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 003FF81FA6
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 003FF81FA6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 09:25:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="427233148"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="427233148"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 02:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="784863739"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="784863739"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jul 2023 02:25:51 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jul 2023 11:19:10 +0200
Message-Id: <20230706091910.124498-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688635555; x=1720171555;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tpxhDS4eUcvbMNVT3Hp8qJc0b+xaK7HRLOVFFXA4q1A=;
 b=oCrPbUYIL+/aAjmV+SvWsUxSDilhjMYIasJocbhl7S5DKNOjKLadPxcu
 YcVxGRQTq10ZKshEOnVm/n9nMrnwo1xvSStDIUACMayExoi4PasQUlR7M
 rc0qoxx7H6fLT23yG9cbv9il9USgpYwAn+JZx0DSu83euDSnuq8lg1r3s
 A1opo7G1hu6Rvl3Mk/Xivs6sDrqFi9wykzetXbHufahh6y1JNGHu9GgxF
 q1K9bq66P3ru7Vm2hSHCs98tA/FUFwgc/SL1pNFTbRNsDY8uCgzE1zRkJ
 ZkU4DDzgo2JnOc0XphNIT8jhukgf2mg2OHDuvvnWyvKykwkMcYhVJH3Vu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oCrPbUYI
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: Fix memory management in
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

Fix ethtool FDIR logic to not use memory after its release.
In the ice_ethtool_fdir.c file there are 2 spots where code can
refer to pointers which may be missing.

In the ice_cfg_fdir_xtrct_seq() function seg may be freed but
even then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).

In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input
may first fail to be added via ice_fdir_update_list_entry() but then
may be deleted by ice_fdir_update_list_entry.

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
v3: correct typos in the commit msg
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
