Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B96750941
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 15:09:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B54AB822A0;
	Wed, 12 Jul 2023 13:09:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B54AB822A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689167346;
	bh=JK7zbiRnPs/tn5RcB56tvkT7z8xjwX2C1+Kc79e00jE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KP2OAFBkmvwJyYADBi6aewGJToc1MEoxWIn9zNO9VtKR6yi2iDDz+4SMh7y+HSVAa
	 WPe41+HS/l64pMFqo6qv3bjgiF9TDlClHb1XLmSGhPPlx1kQ19Pl0dIjk9EDplopxe
	 7H5DbxQaMpRx4Jcfpb/6PJMo60+8SnwFb4jChQd+vYRnx6yKPKR60oJuUZz2pPXY/0
	 8Ad63NIpee5+/GyjYBdbqDp1JK/5iZX05Qa4djYWQI1zkSg9I5tTmjxmNyzIrJvcz4
	 TGhZ2+Q+6TI1+ZGR1zS5sGuDCJywZEJ8Z0/iB8zpXxVQTIt+O2GG2RevblidsVKxBn
	 TvozmFpZDLpYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2yxvvQKEBnb; Wed, 12 Jul 2023 13:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B5F0822B7;
	Wed, 12 Jul 2023 13:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B5F0822B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 011871BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 13:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEDE140136
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 13:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEDE140136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZvITA1uHNBi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 13:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFBCC405EF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFBCC405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 13:08:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="368418359"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="368418359"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 06:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="715576686"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="715576686"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orsmga007.jf.intel.com with ESMTP; 12 Jul 2023 06:08:56 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jul 2023 15:02:10 +0200
Message-Id: <20230712130210.33864-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689167338; x=1720703338;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hXQMCcFin/UYaNu3Fk8IAoCNHk3fcBHqYNPenPuzrw4=;
 b=lspl2bWkJSu2nBRl6aZ/Lvv1zt1SJ6iXrrQoj29XM04/z/dvaKLyNKXe
 qQRl7zocs8HBlA8VBrtTRAMZ1TAa8AOa2Ox3tPTnPdrdm3WPtcKRVet2c
 x83rtNbwtgHFRrB2c2K6xEeSEaF9Oirle+iAPiprl4TZpglq8TmaiFdeS
 aoYrnoMVXUbMPaL5PTSFSInKRSevWP1gl7GPsDLxfVynZZOy9/hkpeRCM
 rWCl0HBqwyvoxg9k70L65OjOWRkCGexYhMM5R/4onZMMSQx1dvEF8cx5w
 F6JWnx/Tuplcqh7fhoS96Zt/l/nE3SMrbIGe6tACkBxta0dUiQJGLDlpf
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lspl2bWk
Subject: [Intel-wired-lan] [PATCH iwl-net v5] ice: Fix memory management in
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
v5: minor changes
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 26 ++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index ead6d50fc0ad..8c6e13f87b7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1281,16 +1281,21 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 				     ICE_FLOW_FLD_OFF_INVAL);
 	}
 
-	/* add filter for outer headers */
 	fltr_idx = ice_ethtool_flow_to_fltr(fsp->flow_type & ~FLOW_EXT);
+
+	assign_bit(fltr_idx, hw->fdir_perfect_fltr, perfect_filter);
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
 		goto err_exit;
+	}
 
 	/* make tunneled filter HW entries if possible */
 	memcpy(&tun_seg[1], seg, sizeof(*seg));
@@ -1305,18 +1310,13 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
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
@@ -1914,7 +1914,9 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
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
