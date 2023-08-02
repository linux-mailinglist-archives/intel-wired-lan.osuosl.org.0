Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8536376C762
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:49:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98ED681FFA;
	Wed,  2 Aug 2023 07:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98ED681FFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690962545;
	bh=k4JBznYcrw7RV1t5dDx9Cq6R7aqrDwI7rQJP/yRYoSw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Sm81S8OtcKUl2Ncj6wOF30DDXpqHsAhN/iynP1qTPePaNL+gRz1m5H1YShoPFAl1n
	 qm1VwLQCLi+DG31DEqtz5AeC6mxLtBxqPfmungfLAHSayCj3tOdiWpntE4H8sxQLOq
	 DwP1JIhIuvUZLLlX4MOF9j9Souz5qz0ZtCSt3j8b1b/w9Ju62xWXpSDBNHIuiXwL+g
	 Wmj2Tn+FCMnFaU/CRZoF8XY4C1Mvk8WsN7M3KOy03UYQIfrgi7nL1A3mElvDHCQ1qa
	 1w0c5BGj2Y0tIEPcZ9WHDPulCVUij6UNc0jLO74/rkelhFh2As9WXdwkd2B2Ryhk/c
	 PozbU7LgcFPgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GqYZhg3EaKz9; Wed,  2 Aug 2023 07:49:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86AD080C5E;
	Wed,  2 Aug 2023 07:49:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86AD080C5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4516D1BF360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C5E7561139
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5E7561139
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mlKpVorGoaMA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:48:44 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D54260B0C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:48:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D54260B0C
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="372242016"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="372242016"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:48:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="843038821"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="843038821"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2023 00:48:42 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Aug 2023 09:48:40 +0200
Message-Id: <20230802074840.3650208-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690962524; x=1722498524;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eIAd+/bA3LxQCHH/dusMNgdX9qic97iYGuywDxBjBe0=;
 b=FwBXMza37uPSVXxCRDEIdtbHwz9k4rL3xJojX/G1dYJ1/FgMRTOHlTpq
 CheD1YbF2l7NlvSKNdwM8EbYhrx1akMMNrBdESkv062k1EavapvyJsDtA
 lUUxni2L+Pl9RZkKyZVZGK2lTnmW+EOlRU1gNaCzfpGiSAF+FXx6EV0vi
 85X8TUlcdu/X2GgiEHvjT+QKBczQWB08vT/dLSs16ev5ajqi/RfhuuVvK
 Xu49rA3gjiwko3Ov437/YSErvWBeKr3e/jxS3HODeBbxN/mtoqe52Acx/
 xQwPT7El9BaLLWGquYG1QcKOXwlwDRnNTZL5Mgd9iyEogGmkd2Ouej8Z/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FwBXMza3
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix potential calltrace
 i40e_sync_vsi_filters()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add defensive check for pf->vf != NULL before referencing pf->vf[].

Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 29ad1797adce..a86bfa3bba74 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2609,7 +2609,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 			retval = i40e_correct_mac_vlan_filters
 				(vsi, &tmp_add_list, &tmp_del_list,
 				 vlan_filters);
-		else
+		else if (pf->vf)
 			retval = i40e_correct_vf_mac_vlan_filters
 				(vsi, &tmp_add_list, &tmp_del_list,
 				 vlan_filters, pf->vf[vsi->vf_id].trusted);
@@ -2782,7 +2782,8 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 	}
 
 	/* if the VF is not trusted do not do promisc */
-	if ((vsi->type == I40E_VSI_SRIOV) && !pf->vf[vsi->vf_id].trusted) {
+	if (vsi->type == I40E_VSI_SRIOV && pf->vf &&
+	    !pf->vf[vsi->vf_id].trusted) {
 		clear_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
 		goto out;
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
