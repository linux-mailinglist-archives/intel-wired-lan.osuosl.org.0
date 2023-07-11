Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA13174EB88
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 12:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CA7C40C05;
	Tue, 11 Jul 2023 10:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CA7C40C05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689070318;
	bh=PzH8Wmn5M1w7bRvojFA+DaB0UkrRduymP6tK12Kg/xU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Xh5k36jrB9KZ72ccmYWsx6xzeEGHhzZ5fXqJi0GsmiPILeEI3Bpx62LY+3d7n98RS
	 q7fdkpAHIV/PWKG6jwaslFKdRIkONkmngs9eNCKdJHa23xrasOtvoRDQ6IDbseQ1ok
	 shNjcvIWJLSlPfuTdNPJ9aE8hL0P4WxQhzldTcOSE7FoscE7K15G0Tj5YUxHhW077j
	 jojxBJh6nYF3m3iSrG2hIKnc8u1RfPAr/yidwMQ6zUnciUs6447WKCHyn5KcXk9E/E
	 g6hUivEbdbVAjGvBbIACE7H3V93tFRvly4NUzqUJKslYMJJuf3E4noz1ItlX+XDCub
	 uopgv/dk82Oiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F5UK-07KHp0v; Tue, 11 Jul 2023 10:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D44F540204;
	Tue, 11 Jul 2023 10:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D44F540204
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A850A1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 10:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FBE181FEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 10:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FBE181FEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SYooHBSyrUi5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 10:11:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EC7881FE4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EC7881FE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 10:11:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="362042095"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="362042095"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="865694791"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="865694791"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2023 03:11:49 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 11 Jul 2023 12:04:50 +0200
Message-Id: <20230711100450.30492-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689070311; x=1720606311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xKofiLXnxe4wy6v0Z65u/Y52tDYtw8t8riMKkQ2RpTI=;
 b=XFIuEUhJg77Wm6Kkws1YCCbsMRlKzU3gZjhAXfyGLHR1nX/sD2LX4xsi
 w+lEoUUR0IE5y8Zlm9+vOeSGWJga1xGD2PE3ULRvZ4aNTJtYqTBwaWdVR
 A/QXK88Wqc2pKTaiuxE8vTHas+BnPPRDnvMq96SyHHlgYZkUUFeGeJ7F7
 XGbJbqjWPTQ82UXxEGuehsmxnyEf0bQMrzf9LPNnUhE1kiUjruOwCLRcO
 jn9i20EqZy5MxkqiSUQP3HhCGvYtw8W1zttKdNVrLaQdhPF/uZbxBgf7j
 2n66qUaStm3bt2c4yJXni/Gr9TvKR5fm3zezhd1fvCVm/diqDsXkJx2am
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XFIuEUhJ
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: Fix memory management in
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

Reported-by: Michal Schmidt <mschmidt@redhat.com>
Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: extend CC list, fix freeing memory before return
v3: correct typos in the commit msg
v4: restore devm() approach
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 30 +++++++++++--------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index ead6d50fc0ad..b6308780362b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1281,16 +1281,25 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
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
@@ -1305,18 +1314,13 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 		devm_kfree(dev, tun_seg);
 	}
 
-	if (perfect_filter)
-		set_bit(fltr_idx, hw->fdir_perfect_fltr);
-	else
-		clear_bit(fltr_idx, hw->fdir_perfect_fltr);
-
 	return ret;
 
 err_exit:
 	devm_kfree(dev, tun_seg);
 	devm_kfree(dev, seg);
 
-	return -EOPNOTSUPP;
+	return ret;
 }
 
 /**
@@ -1914,7 +1918,9 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
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
