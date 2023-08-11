Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3E07789B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 11:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BE06821E1;
	Fri, 11 Aug 2023 09:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BE06821E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691746127;
	bh=fettQ6tXHLL11uQ7iVHTifxddBBSm4f+EMM/i3M/vdY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oENC0o3bU2xAydIe6kAcn1oQSEODG9e3MzsqNIK90tExgG/TXz2DH9nHgSLZIrXPe
	 adorabw9t9ra3noFuXhJjdlHqQXEUdqCSFHvmjC12zOb9e4u+1KozBJD2fVmigRUm3
	 ARbxgwdUcEFQ2b0K3KdGIpXJ/U9lmf4LzcmUoa35K2Ip4CUHbLLfAnc60CbjMCx4kz
	 mfE7dkDHxA+gRzX0348oaurpDGw4Z05eg3ET5tECSEKSlviqKcYNh2b6hbNW9HxZGA
	 JABLTqklsxJ6gditLnMSLdT8SQeEzvUDIguW6FVschmxY7b+h8itFgMuU+iBm+Jb3O
	 22PCKVi6o2Hiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PH8dWpfd0Qfv; Fri, 11 Aug 2023 09:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 874B282102;
	Fri, 11 Aug 2023 09:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 874B282102
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB1391BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D35740185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:28:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D35740185
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dxZzTsUbcEli for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 09:28:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1DB440266
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 09:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1DB440266
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="374407794"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="374407794"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 02:28:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="876094205"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 11 Aug 2023 02:28:29 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Aug 2023 11:28:22 +0200
Message-Id: <20230811092822.1706691-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691746120; x=1723282120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TwWk3Wig3MtqfJyTlfgbRD2o0SIMutI69ytG4q7BNzk=;
 b=j4XFF72fZrOjElf3KrLdT2u4OQDoTVIsShtC94kFAtxwtuOsL44Bs/YD
 icGkHt/XGeDuJhHLz7W5c5bFY+YdL8VBotNXHoJU8vEHDQeB+xADo+RRv
 +8AsJ5MhyPnRG9o/X+knpKFWNS/wYKZeEcDVBhXmUdypR7OcFWaWt6QOt
 vGZpXyJIxhazaeY3f9jwatbBpvWG/ratixec/WvbwQ4Dyn9xOyf0xxMgl
 6DvHK/zKxY4JyTNUY24m5uHW95IQbulT+hu2Y6lcPRhEXdqg4fYVlXlGs
 yvHh5yPeqOXM+iErSIQ3SxdLBC/R24PIo3/JYz6ycRihFM5rcuDEQXBKr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j4XFF72f
Subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix potential NULL
 pointer dereferencing of pf->vf i40e_sync_vsi_filters()
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

Add check for pf->vf not being NULL before dereferencing
pf->vf[vsi->vf_id] in updating VSI filter sync.
Add a similar check before dereferencing !pf->vf[vsi->vf_id].trusted
in the condition for clearing promisc mode bit.

Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2: Changed title and commit message.
v2 -> v3: Fixed mistakes in the commit message.
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
