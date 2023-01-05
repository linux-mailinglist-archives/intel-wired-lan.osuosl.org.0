Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1717A65EA70
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 13:09:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B03C60E7E;
	Thu,  5 Jan 2023 12:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B03C60E7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672920554;
	bh=h/AIafncursKudQI9FDsqCDWm6rEkyU7wx+bdE05nPA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WgOCSrzN1X14bIlM75dqlljacAiBGSejo/QpXkWxNggVqqGowNqP97F4XeRx1ipOy
	 4rJNLHdvCLcQBntIlJaKRhEL2+/ZokwEBU5REiwywEyCQtm/PV/OdgY4z5WRCXeRVC
	 m7sm5owomKSSjhAw2jI379M/EU7UZZk1/R7x6axKIZ0AxkKpzYB0LfukAIFhw8DcXG
	 TZ/w0vwD1V06hAXpPE90f0T/qZ8ILhhCLVAXJC5f/++KvMhnL3mUN0NbhQiQ7ddCi2
	 fmFiXTuhUwF4Bx0kx8y+wwpltOWlwZbvkfWgMm+cjJ/S2+LoRSjg9L/wy4iLmWCtFL
	 0hOayERUsz6jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AgpD2TE26kZY; Thu,  5 Jan 2023 12:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 399E660E19;
	Thu,  5 Jan 2023 12:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 399E660E19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C0A91BF318
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 12:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65FBC82010
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 12:09:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65FBC82010
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id naZgeF7dBEmG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 12:09:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A68EF8143A
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A68EF8143A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 12:09:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="320896280"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="320896280"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:09:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="763109126"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="763109126"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2023 04:09:05 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Jan 2023 07:05:18 -0500
Message-Id: <20230105120518.29776-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672920547; x=1704456547;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tEdtkacBWgPOX605RJin9EqOtDc84r190wA88mhrugc=;
 b=VeY/+JwZTQK353QnpeBZ+qH+Gzei9UuuFwO8RlhAcayDymNn4NdsPM8D
 KjBrLuWRd6SPsIf4qCI9NVrCtLVKRRzE4PK4pc9V9Lc6BUGAjC4hXh38T
 5NygZCGy7SJ9xSRyLW0Q/dycSh4yhEKyTuUlP5zZKsWaRA3RaruM0EWfN
 0vfxi3+lQpKVsYO05eSzswwb5Uf8GUl0Xl0fCpX29abxk5NkyJWg3o2+S
 U6CWn4hn4f7L9mmAIG89gZJ6OO3KovDjERoUkWldg3iRl9TqUoyLQEuvJ
 hm/LzQbt4DIB8kPEwUbnooRgxofCUoVIXWW6+SGyFm17tNqUAY80Ysh2z
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VeY/+JwZ
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix deadlock on the rtnl_mutex
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
Cc: netdev@vger.kernel.org, leon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is a deadlock on rtnl_mutex when attempting to take the lock
in unregister_netdev() after it has already been taken by
ethnl_set_channels(). This happened when unregister_netdev() was
called inside of ice_vsi_rebuild().
Fix that by removing the unregister_netdev() usage and replace it with
ice_vsi_clear_rings() that deallocates the tx and rx rings for the VSI.

Fixes: df0f847915b4 ("ice: Move common functions out of ice_main.c part 6/7")
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed goto unwind to remove code redundancy
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 35 ++++++++++++------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 94aa834cd9a6..e5e96dad3563 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3479,8 +3479,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		ice_vsi_set_num_qs(vsi, NULL);
 
 	ret = ice_vsi_alloc_arrays(vsi);
-	if (ret < 0)
-		goto err_vsi;
+	if (ret < 0){
+		ice_vsi_clear(vsi);
+		goto err_reset;
+	}
 
 	ice_vsi_get_qs(vsi);
 
@@ -3489,16 +3491,19 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	/* Initialize VSI struct elements and create VSI in FW */
 	ret = ice_vsi_init(vsi, init_vsi);
-	if (ret < 0)
-		goto err_vsi;
-
+	if (ret < 0){
+		ice_vsi_clear(vsi);
+		goto err_reset;
+	}
 	switch (vtype) {
 	case ICE_VSI_CTRL:
 	case ICE_VSI_SWITCHDEV_CTRL:
 	case ICE_VSI_PF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
-		if (ret)
-			goto err_rings;
+		if (ret){
+			ice_vsi_clear_rings(vsi);
+			goto err_reset;
+		}
 
 		ret = ice_vsi_setup_vector_base(vsi);
 		if (ret)
@@ -3544,8 +3549,10 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		break;
 	case ICE_VSI_VF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
-		if (ret)
-			goto err_rings;
+		if (ret){
+			ice_vsi_clear_rings(vsi);
+			goto err_reset;
+		}
 
 		ret = ice_vsi_set_q_vectors_reg_idx(vsi);
 		if (ret)
@@ -3618,15 +3625,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 err_vectors:
 	ice_vsi_free_q_vectors(vsi);
-err_rings:
-	if (vsi->netdev) {
-		vsi->current_netdev_flags = 0;
-		unregister_netdev(vsi->netdev);
-		free_netdev(vsi->netdev);
-		vsi->netdev = NULL;
-	}
-err_vsi:
-	ice_vsi_clear(vsi);
+err_reset:
 	set_bit(ICE_RESET_FAILED, pf->state);
 	kfree(coalesce);
 	return ret;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
