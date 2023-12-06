Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEF0807943
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 21:19:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 931A661552;
	Wed,  6 Dec 2023 20:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 931A661552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701893958;
	bh=XFZv9Dq8g1Uvd/n8iDQzAdfr+yxuC1Mom0GaZR3uvqA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Mn7t74tKpqunyjZ0SjINXMjgKjuiby/iOf29RmMrA/51D7pYebdnlYusVjDSSJzo+
	 zAsBM+rLaDBI8DG0AGZdgos7jD2/lKKfSXTSbJ6gwsNLZvRGOuLTItn7LSsly8YTT7
	 dwUdoG5UXA7+22LnOYu5L9nyQ3rSQghlndhexuuKgV4snpUSP9q5m9tDcnK8HF6WOw
	 ibKgNa44k202IvciWG3enecIum1HMDd7scF/v+L8OTL4z6YJOlp379bdG7IT2J9o1E
	 FhLJFpn1fmv0fRLKVV53qGPmkfkYhkZGvVLsWPghq2ZaaGBEt3VcpdSlbc8ByJw+nH
	 WUXj3F6kEaNAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgaOpm2YniKg; Wed,  6 Dec 2023 20:19:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4663660BE1;
	Wed,  6 Dec 2023 20:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4663660BE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6801BF82C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 20:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAE6541DFA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 20:19:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAE6541DFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJjo7kqDwWMg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 20:19:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CA78408A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 20:19:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CA78408A0
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="393849135"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="393849135"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 12:19:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="771422076"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="771422076"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 12:19:09 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Date: Wed,  6 Dec 2023 12:19:05 -0800
Message-ID: <20231206201905.846723-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701893951; x=1733429951;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NplvjNbEFM1WsC4sfnvrDmZLgEk7qco917sLaQ7BfYQ=;
 b=ZrwLSdAEUE9l1AifldqDesYFvs8n+YP278OSZEwx23sYW89Ds7zshW3s
 C8WZlTHb49+bWtH/apQ3fonHVdJ4Qr9xs5g/zMhUqEGIOvvxF+f+o2ORE
 /2XH8vNhCUg9Wc25C5o3EuMwMgcosU+jQd0leWz6kiCljhrB1hxzQdarB
 0Z3oPN1RQ5Pv9ZC4mK14esDNC4py8Wrqfl88VkD67ONFqlJutP2WHvgAT
 R3+BiwP+fMXjOd15K/fRob7VQtSfEZe7UQK0I56vfwGdxjGr1jWgK1jlQ
 yMluC2vjfQ1IUFFaDB1DEvD85+0A3vzIVjAeZz85Ylcv0uIQsgpAmyC4O
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZrwLSdAE
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: stop trashing VF VSI
 aggregator node ID information
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When creating new VSIs, they are assigned into an aggregator node in the
scheduler tree. Information about which aggregator node a VSI is assigned
into is maintained by the vsi->agg_node structure. In ice_vsi_decfg(), this
information is being destroyed, by overwriting the valid flag and the
agg_id field to zero.

For VF VSIs, this breaks the aggregator node configuration replay, which
depends on this information. This results in VFs being inserted into the
default aggregator node. The resulting configuration will have unexpected
Tx bandwidth sharing behavior.

This was broken by commit 6624e780a577 ("ice: split ice_vsi_setup into
smaller functions"), which added the block to reset the agg_node data.

The vsi->agg_node structure is not managed by the scheduler code, but is
instead a wrapper around an aggregator node ID that is tracked at the VSI
layer. Its been around for a long time, and its primary purpose was for
handling VFs. The SR-IOV VF reset flow does not make use of the standard VSI
rebuild/replay logic, and uses vsi->agg_node as part of its handling to
rebuild the aggregator node configuration.

The logic for aggregator nodes stretches  back to early ice driver code from
commit b126bd6bcd67 ("ice: create scheduler aggregator node config and move
VSIs")

The logic in ice_vsi_decfg() which trashes the ice_agg_node data is clearly
wrong. It destroys information that is necessary for handling VF reset,. It
is also not the correct way to actually remove a VSI from an aggregator
node. For that, we need to implement logic in the scheduler code. Further,
non-VF VSIs properly replay their aggregator configuration using existing
scheduler replay logic.

To fix the VF replay logic, remove this broken aggregator node cleanup
logic. This is the simplest way to immediately fix this.

This ensures that VFs will have proper aggregate configuration after a
reset. This is especially important since VFs often perform resets as part
of their reconfiguration flows. Without fixing this, VFs will be placed in
the default aggregator node and Tx bandwidth will not be shared in the
expected and configured manner.

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
This is the simplest fix to resolve the aggregator node problem. However, I
think we should clean this up properly. I don't know why the VF VSIs have
their own custom code for replaying aggregator configuration. I also think
its odd that there is both structures to track aggregator information in
ice_sched.c, but we use a separate structure in ice.h for the ice_vsi
structure. I plan to investigate this and clean it up in next. However, I
wanted to get a smaller fix out to net sooner rather than later.

 drivers/net/ethernet/intel/ice/ice_lib.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 4b1e56396293..de7ba87af45d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2620,10 +2620,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 	if (vsi->type == ICE_VSI_VF &&
 	    vsi->agg_node && vsi->agg_node->valid)
 		vsi->agg_node->num_vsis--;
-	if (vsi->agg_node) {
-		vsi->agg_node->valid = false;
-		vsi->agg_node->agg_id = 0;
-	}
 }
 
 /**
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
