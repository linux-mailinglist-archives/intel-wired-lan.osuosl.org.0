Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 795EB513D47
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Apr 2022 23:14:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D6E082CD4;
	Thu, 28 Apr 2022 21:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3R8ntfubTmh2; Thu, 28 Apr 2022 21:14:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13DB482ED2;
	Thu, 28 Apr 2022 21:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E1E81BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 21:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B80F82ED2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 21:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fjhl5NQhxLiO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Apr 2022 21:14:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAB3882CD4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 21:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651180482; x=1682716482;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jCagDcNOlVnP3brrN35IIvVsBbNZ9tU5Y6YJz15ps1w=;
 b=EQ1pGONuNYq86+uRxgATiwEMEnmspGJNNkNyVqDsu26gxYy7C+7OLRyO
 LhsvcgH2W+HmjAfiHUdm4riaXVexbJWKmdQyHLMyRy2JNC0VEjPC17RAl
 pAuKrfd2b0z30G7ir1w+6fkYS1LjwoJDgiyF8/96MXsu6PardVYuyhGHa
 ggC6fPfG3/GVPir41eNaMSSBa0uiTB4v4ckqAN6CTnFq8jEys86xNVNYn
 jXoy8MGcZ2is2ItHw36+6YyipAkxgPUQweniuIrnP/SmFUosnCmI2xNqJ
 foxvBlBn8ks3C8+AC/TD1zhyDb3qZ11BTpyPJj8cxCFhT96OCORUeKGP5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="248356888"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="248356888"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="808796629"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by fmsmga006.fm.intel.com with ESMTP; 28 Apr 2022 14:14:40 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Apr 2022 14:11:42 -0700
Message-Id: <20220428211142.806462-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: fix possible under reporting of
 ethtool Tx and Rx statistics
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The hardware statistics counters are not cleared during resets so the
drivers first access is to initialize the baseline and then subsequent
reads are for reporting the counters. The statistics counters are read
during the watchdog subtask when the interface is up. If the baseline
is not initialized before the interface is up, then there can be a brief
window in which some traffic can be transmitted/received before the
initial baseline reading takes place.

Directly initialize ethtool statistics in driver open so the baseline will
be initialized when the interface is up, and any dropped packets
incremented before the interface is up won't be reported.

Fixes: 28dc1b86f8ea9 ("ice: ignore dropped packets during init")
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 949669fed7d6..963a5f40e071 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6172,9 +6172,10 @@ static int ice_up_complete(struct ice_vsi *vsi)
 			ice_ptp_link_change(pf, pf->hw.pf_id, true);
 	}
 
-	/* clear this now, and the first stats read will be used as baseline */
-	vsi->stat_offsets_loaded = false;
-
+	/* Perform an initial read of the statistics registers now to
+	 * set the baseline so counters are ready when interface is up
+	 */
+	ice_update_eth_stats(vsi);
 	ice_service_task_schedule(pf);
 
 	return 0;

base-commit: 337f37766fedc611a7f621b8c45cafe3bc265125
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
